from flask import Blueprint
from controllers.marcas_controller import MarcaController

marcas_bp = Blueprint('marcas', __name__)
marca_controller = MarcaController()

@marcas_bp.route('/marcas/<int:marca_id>/zapatillas', methods=['GET'])
def get_zapatillas_por_marca(marca_id):
    return marca_controller.get_zapatillas_por_marca(marca_id)

@marcas_bp.route('/marcas', methods=['GET'])
def get_marcas_route():
    return marca_controller.get_marcas()
