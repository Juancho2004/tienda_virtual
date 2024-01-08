from flask_sqlalchemy import SQLAlchemy
from datetime import datetime

db = SQLAlchemy()

class Marca(db.Model):
    __tablename__ = 'marcas' 

    id = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(80))
    estado = db.Column(db.Integer)
    fecha_creacion = db.Column(db.DateTime, default=datetime.utcnow)
    fecha_actualizacion = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)

