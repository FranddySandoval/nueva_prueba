<?php
session_start();
header('Content-Type: application/json; charset=utf-8');

// Función para normalizar texto: elimina mayúsculas, acentos y signos de puntuación
function normalizar(string $texto): string {
    $texto = mb_strtolower($texto, 'UTF-8');
    $texto = iconv('UTF-8', 'ASCII//TRANSLIT//IGNORE', $texto);
    $texto = preg_replace('/[^a-z0-9\s]/', ' ', $texto);
    $texto = preg_replace('/\s+/', ' ', $texto);
    return trim($texto);
}

// Configuración de la base de datos
$host       = 'localhost';
$base_datos = 'chatbot';
$usuario    = 'root';
$contrasena = '';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$base_datos;charset=utf8", $usuario, $contrasena);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo json_encode(['reply' => 'Error de conexión a la base de datos.']);
    exit;
}

if (!isset($_SESSION['chat'])) {
    $_SESSION['chat'] = [];
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Aceptar tanto 'pregunta' como 'message'
    $texto_original = trim($_POST['pregunta'] ?? $_POST['message'] ?? '');
    if ($texto_original === '') {
        echo json_encode(['reply' => 'No se recibió ningún mensaje.']);
        exit;
    }

    $pregunta = normalizar($texto_original);

    // Intentar leer la tabla; si falla, devolvemos error
    try {
        $stmt = $pdo->query("SELECT * FROM respuestas");
        $respuestas = $stmt->fetchAll(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        echo json_encode(['reply' => 'Error al consultar la base de datos.']);
        exit;
    }

    $respuesta_encontrada = '';

    // Primero: coincidencia de dos palabras clave
    foreach ($respuestas as $fila) {
        if (!empty($fila['palabra_clave2'])) {
            $k1 = normalizar($fila['palabra_clave1']);
            $k2 = normalizar($fila['palabra_clave2']);
            if (strpos($pregunta, $k1) !== false && strpos($pregunta, $k2) !== false) {
                $respuesta_encontrada = $fila['respuesta'];
                break;
            }
        }
    }

    // Si no hubo, buscar con una sola palabra clave
    if ($respuesta_encontrada === '') {
        foreach ($respuestas as $fila) {
            if (empty($fila['palabra_clave2'])) {
                $k1 = normalizar($fila['palabra_clave1']);
                if (strpos($pregunta, $k1) !== false) {
                    $respuesta_encontrada = $fila['respuesta'];
                    break;
                }
            }
        }
    }

    if ($respuesta_encontrada === '') {
        $respuesta_encontrada = 'Lo siento, no tengo una respuesta para eso.';
    }

    // Guardar en historial de chat
    $_SESSION['chat'][] = [
        'usuario' => $texto_original,
        'bot'     => $respuesta_encontrada
    ];

    // Devolver JSON al cliente
    echo json_encode(['reply' => $respuesta_encontrada]);
    exit;
}

// Si llegan GET u otro método
echo json_encode(['reply' => 'Método no soportado.']);
