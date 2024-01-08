from flask import Flask
from routes.zapatillas import zapatillas_bp
from routes.marcas import marcas_bp
from flask_cors import CORS
from models.zapatilla import db

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://postgres:messi@localhost:5433/zapatillas'


# Configura CORS
CORS(app)

# Inicializa la aplicación Flask con la instancia de SQLAlchemy
db.init_app(app)

# Registra los blueprints
app.register_blueprint(zapatillas_bp)
app.register_blueprint(marcas_bp)

if __name__ == '__main__':
    app.run(debug=True)