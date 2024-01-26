from flask import Blueprint
from controllers.whatsapp_controller import enviar_mensaje_whatsapp

whatsapp_bp = Blueprint('whatsapp', __name__)

@whatsapp_bp.route('/enviar-mensaje', methods=['POST'])
def enviar_mensaje_route():
    return enviar_mensaje_whatsapp()