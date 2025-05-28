# coding=utf-8
from flask import render_template, request, redirect, url_for, flash
from flask_login import login_user, logout_user, login_required, current_user
from . import db, login_manager
from .models import User, Student, Course, Exam, Grade, ProgramOutcome, ExamPO, StudentCourse, CoursePO
from flask import Blueprint
import csv
import os
from werkzeug.utils import secure_filename

from flask import current_app as app

@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))

@app.route('/')
def index():
    return redirect(url_for('login'))

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        user = User.query.filter_by(username=username).first()
        if user and password == user.password_hash: 
            login_user(user)
            return redirect(url_for('dashboard'))
        else:
            flash('Kullanici adi sifre yanlis.')
    return render_template('login.html')

@app.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect(url_for('login'))

@app.route('/dashboard')
@login_required
def dashboard():
    return render_template('dashboard.html')

@app.route('/students')
@login_required
def list_students():
    query = Student.query

    filter_type = request.args.get('filter_type')
    filter_value = request.args.get('filter_value')

    if filter_type == 'course' and filter_value:
        student_ids = [rel.student_id for rel in StudentCourse.query.filter_by(course_id=filter_value).all()]
        query = query.filter(Student.id.in_(student_ids))
    elif filter_type == 'po' and filter_value:
        course_ids = [rel.course_id for rel in CoursePO.query.filter_by(po_id=filter_value).all()]
        student_ids = [rel.student_id for rel in StudentCourse.query.filter(StudentCourse.course_id.in_(course_ids)).all()]
        query = query.filter(Student.id.in_(student_ids))

    students = query.all()
    courses = Course.query.all()
    pos = ProgramOutcome.query.all()
    return render_template('students.html', students=students, courses=courses, pos=pos)

@app.route('/students/add', methods=['POST'])
@login_required
def add_student():
    name = request.form['name']
    surname = request.form['surname']
    number = request.form['student_number']
    email = request.form['email']

    
    existing_student = Student.query.filter_by(student_number=number).first()
    if existing_student:
        flash("Bu ogrenci numarasi zaten kayitli. Lutfen baska bir numara girin.")
        return redirect(url_for('list_students'))

    new_student = Student(name=name, surname=surname, student_number=number, email=email)

    try:
        db.session.add(new_student)
        db.session.commit()
        flash("Ogrenci basariyla eklendi.")
    except Exception as e:
        db.session.rollback()
        flash("Ogrenci eklenemedi. Sistem hatasi.")
    return redirect(url_for('list_students'))

@app.route('/students/delete/<int:student_id>', methods=['POST'])
@login_required
def delete_student(student_id):
    student = Student.query.get_or_404(student_id)
    db.session.delete(student)
    db.session.commit()
    flash("Ogrenci silindi.")
    return redirect(url_for('list_students'))

@app.route('/courses')
@login_required
def list_courses():
    query = Course.query

    credit = request.args.get('credit')
    instructor = request.args.get('instructor')
    po_id = request.args.get('po_id')

    if credit:
        query = query.filter_by(credit=credit)
    if instructor:
        query = query.filter(Course.instructor.ilike(f"%{instructor}%"))
    if po_id:
        
        course_ids = [rel.course_id for rel in CoursePO.query.filter_by(po_id=po_id).all()]
        query = query.filter(Course.id.in_(course_ids))

    courses = query.all()
    pos = ProgramOutcome.query.all()
    return render_template('courses.html', courses=courses, pos=pos)

@app.route('/courses/add', methods=['POST'])
@login_required
def add_course():
    name = request.form['course_name']
    code = request.form['course_code']
    credit = request.form['credit']
    instructor = request.form['instructor']

    # Ayni ders kodu var mi kontrol et
    existing_course = Course.query.filter_by(course_code=code).first()
    if existing_course:
        flash("Bu ders kodu zaten kayitli. Lutfen farkli bir kod girin.")
        return redirect(url_for('list_courses'))

    new_course = Course(course_name=name, course_code=code, credit=credit, instructor=instructor)

    try:
        db.session.add(new_course)
        db.session.commit()
        flash("Ders basariyla eklendi.")
    except Exception as e:
        db.session.rollback()
        flash("Ders eklenemedi. Sistem hatasi.")
    return redirect(url_for('list_courses'))

@app.route('/courses/delete/<int:course_id>', methods=['POST'])
@login_required
def delete_course(course_id):
    course = Course.query.get_or_404(course_id)
    db.session.delete(course)
    db.session.commit()
    flash("Ders silindi.")
    return redirect(url_for('list_courses'))

@app.route('/exams')
@login_required
def list_exams():
    exams = Exam.query.all()
    courses = Course.query.all()
    return render_template('exams.html', exams=exams, courses=courses)

@app.route('/exams/add', methods=['POST'])
@login_required
def add_exam():
    course_id = request.form['course_id']
    exam_name = request.form['exam_name']
    new_exam = Exam(course_id=course_id, exam_name=exam_name)
    db.session.add(new_exam)
    db.session.commit()
    flash("Sinav eklendi.")
    return redirect(url_for('list_exams'))

@app.route('/exams/delete/<int:exam_id>', methods=['POST'])
@login_required
def delete_exam(exam_id):
    exam = Exam.query.get_or_404(exam_id)
    db.session.delete(exam)
    db.session.commit()
    flash("Sinav silindi.")
    return redirect(url_for('list_exams'))



@app.route('/grades', methods=['GET', 'POST'])
@login_required
def grades():
    if request.method == 'POST':
        file = request.files['file']
        if file and file.filename.endswith('.csv'):
            filename = secure_filename(file.filename)
            filepath = os.path.join('uploads', filename)
            file.save(filepath)

            hatali_satirlar = []
            eklendi_sayisi = 0

            with open(filepath, 'r', encoding='utf-8') as f:
                reader = csv.reader(f)
                next(reader)  # Ba�l�k sat�r�n� atla

                for i, row in enumerate(reader, start=2):  # sat�r numaras� 2'den ba�lar
                    try:
                        student_number, exam_id, grade_val = row
                        grade_val = float(grade_val)

                        if grade_val < 0 or grade_val > 100:
                            hatali_satirlar.append(f"{i}. satir: Gecersiz not ({grade_val})")
                            continue

                        student = Student.query.filter_by(student_number=student_number).first()
                        if not student:
                            hatali_satirlar.append(f"{i}. satir: Ogrenci bulunamadi ({student_number})")
                            continue

                        # Not zaten var mi kontrolu
                        existing_grade = Grade.query.filter_by(student_id=student.id, exam_id=int(exam_id)).first()
                        if existing_grade:
                            hatali_satirlar.append(f"{i}. satir: Bu ogrenci bu sinava zaten not almis.")
                            continue

                        # Ekleme islemi
                        grade = Grade(student_id=student.id, exam_id=int(exam_id), grade=grade_val)
                        db.session.add(grade)
                        eklendi_sayisi += 1

                    except Exception as e:
                        hatali_satirlar.append(f"{i}. satir: Format hatasi veya bilinmeyen hata")

                db.session.commit()

            # Flash mesajlari
            if eklendi_sayisi > 0:
                flash(f"{eklendi_sayisi} not basariyla yuklendi.", "success")
            if hatali_satirlar:
                flash("Bazi satirlar yuklenemedi:", "danger")
                for hata in hatali_satirlar:
                    flash(hata, "warning")
        else:
            flash("Lutfen .csv dosyasi yukleyin.", "danger")

        return redirect(url_for('grades'))

    all_grades = Grade.query.all()
    return render_template('grades.html', grades=all_grades, exams=Exam.query.all())

@app.route('/reports')
@login_required
def reports():
    students = Student.query.all()
    outcomes = ProgramOutcome.query.all()
    courses = Course.query.all()

    # Tum ogrenciler icin PC ortalamalari
    student_results = []
    for student in students:
        po_scores = {}
        po_counts = {}

        for grade in student.grades:
            for rel in grade.exam.po_relations:
                po_id = rel.po_id
                po_scores[po_id] = po_scores.get(po_id, 0) + grade.grade
                po_counts[po_id] = po_counts.get(po_id, 0) + 1

        po_averages = {po_id: round(po_scores[po_id] / po_counts[po_id], 2) for po_id in po_scores}
        student_results.append({'student': student, 'po_averages': po_averages})

    # FILTRELENMIS OGRENCIYI BUL
    selected_student_data = None
    student_number = request.args.get('student_number')
    student_name = request.args.get('student_name')

    filtered_student = None
    if student_number:
        filtered_student = Student.query.filter_by(student_number=student_number).first()
    elif student_name:
        filtered_student = Student.query.filter(Student.name.ilike(f"%{student_name}%")).first()

    if filtered_student:
        po_scores = {}
        po_counts = {}

        for grade in filtered_student.grades:
            for rel in grade.exam.po_relations:
                po_id = rel.po_id
                po_scores[po_id] = po_scores.get(po_id, 0) + grade.grade
                po_counts[po_id] = po_counts.get(po_id, 0) + 1

        po_averages = {po_id: round(po_scores[po_id] / po_counts[po_id], 2) for po_id in po_scores}
        selected_student_data = {'student': filtered_student, 'po_averages': po_averages}

    # PC'ye gore genel ortalama
    po_summary = []
    for po in outcomes:
        related_exams = [rel.exam_id for rel in po.exam_relations]
        grades = Grade.query.filter(Grade.exam_id.in_(related_exams)).all()
        avg = round(sum(g.grade for g in grades) / len(grades), 2) if grades else 0
        po_summary.append({'po': po, 'average': avg})

    # Derslere gore genel ortalama
    course_summary = []
    for course in courses:
        exam_ids = [exam.id for exam in course.exams]
        grades = Grade.query.filter(Grade.exam_id.in_(exam_ids)).all()
        avg = round(sum(g.grade for g in grades) / len(grades), 2) if grades else 0
        course_summary.append({'course': course, 'average': avg})

    return render_template(
        'reports.html',
        results=student_results,
        po_summary=po_summary,
        course_summary=course_summary,
        outcomes=outcomes,
        courses=courses,
        students=students,
        selected_student_data=selected_student_data
    )

@app.route('/students/edit/<int:student_id>', methods=['GET', 'POST'])
@login_required
def edit_student(student_id):
    student = Student.query.get_or_404(student_id)
    if request.method == 'POST':
        student.name = request.form['name']
        student.surname = request.form['surname']
        student.student_number = request.form['student_number']
        student.email = request.form['email']
        try:
            db.session.commit()
            flash("Ogrenci guncellendi.")
        except:
            db.session.rollback()
            flash("Ayni numaraya sahip ogrenci bulunuyor.")
        return redirect(url_for('list_students'))
    return render_template('edit_student.html', student=student)


@app.route('/courses/edit/<int:course_id>', methods=['GET', 'POST'])
@login_required
def edit_course(course_id):
    course = Course.query.get_or_404(course_id)
    if request.method == 'POST':
        course.course_name = request.form['course_name']
        course.course_code = request.form['course_code']
        course.credit = request.form['credit']
        course.instructor = request.form['instructor']

        try:
            db.session.commit()
            flash("Ders guncellendi.")
        except:
            db.session.rollback()
            flash("Ayni koda sahip ders bulunuyor.")
        return redirect(url_for('list_courses'))
    return render_template('edit_course.html', course=course)



@app.route('/program_outcomes')
@login_required
def program_outcomes():
    outcomes = ProgramOutcome.query.all()
    return render_template('program_outcomes.html', outcomes=outcomes)

@app.route('/course/<int:course_id>/grades')
@login_required
def course_grades(course_id):
    course = Course.query.get_or_404(course_id)
    exams = Exam.query.filter_by(course_id=course_id).all()
    exam_ids = [exam.id for exam in exams]
    grades = Grade.query.filter(Grade.exam_id.in_(exam_ids)).all()
    return render_template('course_grades.html', course=course, grades=grades)
