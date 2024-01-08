from datetime import datetime
from models.marca import db

db = db

class Zapatilla(db.Model):
    __tablename__ = 'zapatillas'
    
    id = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(80))
    marca_id = db.Column(db.Integer, db.ForeignKey('marcas.id'))
    modelo = db.Column(db.String(80))
    talla = db.Column(db.String(10))
    genero = db.Column(db.String(10))
    imagen_url = db.Column(db.String(200))
    estado = db.Column(db.Integer)
    fecha_creacion = db.Column(db.DateTime, default=datetime.utcnow)
    fecha_actualizacion = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)
    descripcion = db.Column(db.String(2500))

    marca = db.relationship('Marca', backref=db.backref('zapatillas', lazy=True))
