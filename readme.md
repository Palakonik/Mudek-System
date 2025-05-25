# ?? M�dek-System

M�DEK akreditasyon s�reci kapsam�nda program ��kt�lar�n�n (P�) takibini kolayla�t�rmak amac�yla geli�tirilmi� web tabanl� bir sistemdir. Flask, MySQL, HTML/CSS ve JavaScript teknolojileriyle in�a edilmi�tir.

---

## ?? �zellikler

- ?? Program ��kt�lar�n�n (P�) tan�mlanmas� ve d�zenlenmesi
- ?? ��renci ��kt�lar�n�n de�erlendirilmesi
- ????? ��retim �yeleri taraf�ndan veri giri�i
- ?? Raporlama ve ��kt� analizleri
- ?? Kullan�c� giri�i ve yetkilendirme (admin/��retim �yesi)

---

## ?? Kullan�lan Teknolojiler

- **Backend:** Python (Flask)
- **Veritaban�:** MySQL
- **Frontend:** HTML, CSS, JavaScript (gerekirse Bootstrap)
- **Versiyon Kontrol:** Git & GitHub

---

## ?? Kurulum (Yerel Geli�tirme)

### 1. Reponun klonlanmas�

```bash
git clone https://github.com/Palakonik/Mudek-System.git
cd Mudek-System

### 2. Sanal ortam olu�tur ve aktif et

conda create -n mudek-env python=3.10
conda activate mudek-env

### 3. Gerekli paketlerin y�klenmesi

pip install -r requirements.txt

### 4. Veritaban� yap�land�rmas�

config.py veya .env dosyas�n� d�zenleyerek kendi MySQL kullan�c� ad� ve �ifreni gir.

### 5. Uygulamay� Ba�lat

python run.py

## ?? Ekran G�r�nt�leri

### Ana Sayfa
![Ana Sayfa](screenshots/anasayfa.png)

### Raporlar Sayfas�
![Raporlar](screenshots/raporlar.png)

### ��renciler (Students) Sayfas�
![Students](screenshots/students.png)

### Dersler (Courses) Sayfas�
![Courses](screenshots/courses.png)

### Giri� (Login) Sayfas�
![Login](screenshots/login.png)

### S�navlar (Exam) Sayfas�
![Exam](screenshots/exam.png)

### Notlar (Grades) Sayfas�
![Exam](screenshots/exam.png)

### Program ��kt�lar� (Program Outcomes) Sayfas�
![Program Outcomes](screenshots/program_outcomes.png)

?? Lisans
Bu proje MIT lisans� ile lisanslanm��t�r. Ayr�nt�lar i�in LICENSE dosyas�na g�z atabilirsiniz.

?? �leti�im
Her t�rl� �neri veya katk� i�in ileti�ime ge�ebilirsin:

?? ihsan.gs125@gmail.com
?? GitHub: @Palakonik



