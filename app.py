from flask import Flask, jsonify, request

app = Flask(__name__)

# Ruta principal (GET)
@app.route('/api/', methods=['GET'])
def home():
    return jsonify({"message": "¡Bienvenido a la API!"})

# Ruta para recibir datos (POST)
@app.route('/api/data', methods=['POST'])
def get_data():
    data = request.get_json()
    return jsonify({"data_received": data})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
