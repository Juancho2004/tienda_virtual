from models.marca import Marca
from models.zapatilla import Zapatilla

class MarcaController:
    def get_zapatillas_por_marca(self, marca_id):
        marca = Marca.query.get(marca_id)
        if not marca:
            return {'error': 'Marca no encontrada'}
        
        zapatillas = Zapatilla.query.filter_by(marca_id=marca_id).all()
        
        if not zapatillas:
            return {'error': 'No se encontraron zapatillas para esta marca'}
        
        return [
            {
                'id': zapatilla.id,
                'nombre': zapatilla.nombre,
                'marca': zapatilla.marca.nombre,
                'modelo': zapatilla.modelo,
                'talla': zapatilla.talla,
                'genero': zapatilla.genero,
                'imagen_url': zapatilla.imagen_url,
                'descripcion': zapatilla.descripcion
            }
            for zapatilla in zapatillas
        ]

    def get_marcas(self):
        marcas = Marca.query.all()
        
        return [
                {
                    'id': marca.id,
                    'nombre': marca.nombre,
                    'nombre': marca.nombre,
                }
                for marca in marcas
            ]
    
