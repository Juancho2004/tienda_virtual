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

    @classmethod
    def get_more_zapatillas(cls, last_zapatilla_id, limit=2):
        try:
            last_id = int(last_zapatilla_id)
            
            if last_id == 1:
                last_id = last_id
            elif last_id == 2:
                last_id = int(last_zapatilla_id) +1
            elif last_id == 3:
                last_id = int(last_zapatilla_id) +2
            else:
                last_id = last_id + (last_id -1)    
        
        except ValueError:
            return []
        
        more_zapatillas = cls.query.filter(cls.id >= last_id).order_by(cls.id).limit(limit).all()
        return more_zapatillas