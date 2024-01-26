from flask import jsonify
from models.zapatilla import Zapatilla
from models.marca import Marca

def get_zapatillas(genero=None):
    if genero:
        zapatillas = Zapatilla.query.filter_by(genero=genero).all()
    else:
        zapatillas = Zapatilla.query.all()

    if not zapatillas:
        return {'error': 'not found'}
    
    return [
        {
            'id': zapatilla.id,
            'nombre': zapatilla.nombre,
            'marca': zapatilla.marca.nombre if zapatilla.marca else None,
            'modelo': zapatilla.modelo,
            'talla': zapatilla.talla,
            'genero': zapatilla.genero,
            'imagen_url': zapatilla.imagen_url,
            'descripcion': zapatilla.descripcion
        }
        for zapatilla in zapatillas
    ]

def get_load_zapatilla (last_zapatilla_id):
    more_zapatillas = Zapatilla.get_more_zapatillas(last_zapatilla_id)

    return jsonify([
        {
            'id': zapatilla.id,
            'nombre': zapatilla.nombre,
            'marca': zapatilla.marca.nombre if zapatilla.marca else None,
            'modelo': zapatilla.modelo,
            'talla': zapatilla.talla,
            'genero': zapatilla.genero,
            'imagen_url': zapatilla.imagen_url,
            'descripcion': zapatilla.descripcion
        }
        for zapatilla in more_zapatillas
    ])





def zapatillas_id(zapatilla_id):
    zapatilla = Zapatilla.query.get(zapatilla_id)
    
    if not zapatilla:
        return {'error': 'Zapatilla no encontrada'}

    return {
        'id': zapatilla.id,
        'nombre': zapatilla.nombre,
        'marca': zapatilla.marca.nombre,
        'modelo': zapatilla.modelo,
        'talla': zapatilla.talla,
        'genero': zapatilla.genero,
        'imagen_url': zapatilla.imagen_url,
        'descripcion': zapatilla.descripcion
    }