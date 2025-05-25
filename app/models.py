from . import db
from flask_login import UserMixin

class User(db.Model, UserMixin):
    __tablename__ = 'users'
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(50), unique=True, nullable=False)
    password_hash = db.Column(db.String(255), nullable=False)

class Student(db.Model):
    __tablename__ = 'students'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(50))
    surname = db.Column(db.String(50))
    student_number = db.Column(db.String(20), unique=True)
    email = db.Column(db.String(100))

class Course(db.Model):
    __tablename__ = 'courses'
    id = db.Column(db.Integer, primary_key=True)
    course_name = db.Column(db.String(100))
    course_code = db.Column(db.String(20))
    credit = db.Column(db.Integer)
    instructor = db.Column(db.String(100))

class Exam(db.Model):
    __tablename__ = 'exams'
    id = db.Column(db.Integer, primary_key=True)
    course_id = db.Column(db.Integer, db.ForeignKey('courses.id'))
    exam_name = db.Column(db.String(100))

    course = db.relationship('Course', backref='exams')

class Grade(db.Model):
    __tablename__ = 'grades'
    id = db.Column(db.Integer, primary_key=True)
    student_id = db.Column(db.Integer, db.ForeignKey('students.id'))
    exam_id = db.Column(db.Integer, db.ForeignKey('exams.id'))
    grade = db.Column(db.Float)

    student = db.relationship('Student', backref='grades')
    exam = db.relationship('Exam', backref='grades')

class ProgramOutcome(db.Model):
    __tablename__ = 'program_outcomes'
    id = db.Column(db.Integer, primary_key=True)
    code = db.Column(db.String(10))
    description = db.Column(db.Text)

class ExamPO(db.Model):
    __tablename__ = 'exam_po_relations'
    id = db.Column(db.Integer, primary_key=True)
    exam_id = db.Column(db.Integer, db.ForeignKey('exams.id'))
    po_id = db.Column(db.Integer, db.ForeignKey('program_outcomes.id'))
    contributes = db.Column(db.Boolean, default=True)

    po = db.relationship('ProgramOutcome', backref='exam_relations')
    exam = db.relationship('Exam', backref='po_relations')

class StudentCourse(db.Model):
    __tablename__ = 'student_courses'
    id = db.Column(db.Integer, primary_key=True)
    student_id = db.Column(db.Integer, db.ForeignKey('students.id'))
    course_id = db.Column(db.Integer, db.ForeignKey('courses.id'))

class CoursePO(db.Model):
    __tablename__ = 'course_po_relations'
    id = db.Column(db.Integer, primary_key=True)
    course_id = db.Column(db.Integer, db.ForeignKey('courses.id'))
    po_id = db.Column(db.Integer, db.ForeignKey('program_outcomes.id'))
    contributes = db.Column(db.Boolean, default=True)