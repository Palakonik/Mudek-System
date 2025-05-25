import os

class Config:
    SECRET_KEY = 'senin_secret_keyin_buraya'  # CSRF ve session için
    SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://root:berkay@localhost/mudek_sistemi'
    SQLALCHEMY_TRACK_MODIFICATIONS = False