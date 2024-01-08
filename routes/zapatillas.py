from flask import Blueprint
from controllers.zapatillas_controller import get_zapatillas

zapatillas_bp = Blueprint('zapatillas', __name__)

@zapatillas_bp.route('/zapatillas', methods=['GET'])
@zapatillas_bp.route('/zapatillas/<genero>', methods=['GET'])
def get_zapatillas_route(genero=None):
    return get_zapatillas(genero)
