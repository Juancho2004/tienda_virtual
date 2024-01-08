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