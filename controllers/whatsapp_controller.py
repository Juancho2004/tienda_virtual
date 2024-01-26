from flask import jsonify, request
from models.whatsapp import Whatsapp
from models.marca import db

def enviar_mensaje_whatsapp():
    try:

        data = request.json

        numero_celular = data.get('numero_celular')
        mensaje_cliente = data.get('mensaje_cliente')

        nuevo_mensaje = Whatsapp(numero_celular=numero_celular, mensaje_cliente=mensaje_cliente)
        db.session.add(nuevo_mensaje)
        db.session.commit()

        return jsonify({'success': True, 'message': 'Mensaje de WhatsApp enviado y guardado correctamente'})
    except Exception as e:
        return jsonify({'success': False, 'error': str(e)})