from flask import Flask, request, jsonify, send_from_directory
import sqlite3
import re

app = Flask(__name__)

# Función para limpiar y dividir el texto en palabras
def limpiar_texto(texto):
    texto = texto.lower()
    texto = re.sub(r'[^\w\s]', '', texto)
    return set(texto.split())

# Función para inicializar la base de datos con ejemplos
def inicializar_base_datos():
    conn = sqlite3.connect('chatbot.db')
    cursor = conn.cursor()
    
    # Crear tabla de respuestas
    cursor.execute('''
        CREATE TABLE IF NOT EXISTS respuestas (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            palabras_clave TEXT NOT NULL,
            respuesta TEXT NOT NULL
        )
    ''')
    
    # Insertar ejemplos iniciales
    ejemplos = [
        ("historia", "La historia del centro San José comenzó en 1990, cuando se fundó como un lugar dedicado a la educación y el bienestar."),
        ("historia,fabio", "La historia del centro Fabio Amable Mota es especial. Fue establecido en 2005 en honor a Fabio, un líder comunitario."),
    ]
    
    cursor.executemany("INSERT OR IGNORE INTO respuestas (palabras_clave, respuesta) VALUES (?, ?)", ejemplos)
    conn.commit()
    conn.close()

# Función para buscar la mejor respuesta basada en palabras clave
def buscar_respuesta(pregunta):
    palabras = limpiar_texto(pregunta)
    conn = sqlite3.connect('chatbot.db')
    cursor = conn.cursor()
    
    cursor.execute("SELECT palabras_clave, respuesta FROM respuestas")
    resultados = cursor.fetchall()
    
    mejor_respuesta = None
    max_coincidencias = 0
    
    for palabras_clave, respuesta in resultados:
        claves = set(palabras_clave.split(','))
        coincidencias = len(claves.intersection(palabras))
        # Solo consideramos coincidencias si todas las palabras clave requeridas están presentes
        if claves.issubset(palabras) and coincidencias > max_coincidencias:
            max_coincidencias = coincidencias
            mejor_respuesta = respuesta
    
    conn.close()
    return mejor_respuesta if mejor_respuesta else "Lo siento, no tengo información sobre eso."

# Ruta para servir el archivo index.html
@app.route('/')
def index():
    return send_from_directory('.', 'index.html')

# Ruta para manejar las solicitudes del chatbot
@app.route('/chat', methods=['POST'])
def chat():
    data = request.get_json()
    pregunta = data.get('message', '')
    respuesta = buscar_respuesta(pregunta)
    return jsonify({'response': respuesta})

# Inicializar la base de datos al iniciar la aplicación
inicializar_base_datos()

if __name__ == '__main__':
    app.run(debug=True)