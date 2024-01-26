from flask import Blueprint
from controllers.zapatillas_controller import get_zapatillas, get_load_zapatilla, zapatillas_id

zapatillas_bp = Blueprint('zapatillas', __name__)

@zapatillas_bp.route('/zapatillas', methods=['GET'])
@zapatillas_bp.route('/zapatillas/<genero>', methods=['GET'])
def get_zapatillas_route(genero=None):
    return get_zapatillas(genero)

@zapatillas_bp.route('/load-more-zapatillas/<last_zapatilla_id>', methods=['GET'])
def load_more_zapatillas(last_zapatilla_id):
    return get_load_zapatilla(last_zapatilla_id)

@zapatillas_bp.route('/zapatillas_id/<zapatilla_id>', methods=['GET'])
def get_zapatilla_by_id(zapatilla_id):
    return zapatillas_id(zapatilla_id)


