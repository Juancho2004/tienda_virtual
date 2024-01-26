from datetime import datetime
from models.marca import db

db = db 

class Whatsapp(db.Model):
    _tablename_ = 'whatsapp'

    id = db.Column(db.Integer, primary_key=True)
    numero_celular = db.Column(db.String(15))
    mensaje_cliente = db.Column(db.String(1000))
    fecha_creacion = db.Column(db.DateTime, default=datetime.utcnow)