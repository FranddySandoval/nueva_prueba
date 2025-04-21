-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2025 a las 15:14:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chatbot`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `palabra_clave1` varchar(50) NOT NULL,
  `palabra_clave2` varchar(50) DEFAULT NULL,
  `respuesta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `palabra_clave1`, `palabra_clave2`, `respuesta`) VALUES
(8, 'servicios', NULL, 'El Fabio ofrece servicios integrales que incluyen formación técnico-profesional (con enfoque por competencias), procesos de inscripción y admisión, trámites administrativos (como solicitud de record de notas, certificaciones, constancias de estudios, entre otros), pasantías y vinculación con el sector productivo, además de contar con servicios de orientación y atención médica dentro de su dispensario.'),
(9, 'servicio', NULL, 'El Fabio ofrece servicios integrales que incluyen formación técnico-profesional (con enfoque por competencias), procesos de inscripción y admisión, trámites administrativos (como solicitud de record de notas, certificaciones, constancias de estudios, entre otros), pasantías y vinculación con el sector productivo, además de contar con servicios de orientación y atención médica dentro de su dispensario.'),
(10, 'mision', NULL, 'Nuestra misión es formar técnicos competentes, capaces de integrarse a la producción de bienes y servicios de manera eficiente, mejorando la calidad de vida de sus estudiantes, sus familias y del país.'),
(11, 'vision', NULL, 'Nuestra Visión es ser el modelo de institución educativa Técnico–Profesional inclusiva, que brinda una formación por competencias técnicas e integrales de calidad y es preferida por la comunidad, empresas e instituciones.'),
(12, 'papeles', NULL, 'Los requisitos para ingresar al Fabio son: Presentar el acta de nacimiento original; Aprobar la prueba de admisión; Entregar 2 fotos tamaño 2x2 (de frente, sin maquillaje ni prendas); Contar con un certificado médico expedido por el Centro Médico del Instituto Tecnológico; Llenar el formulario de inscripción; Presentarse acompañado por padre, madre o tutor; No tener asignaturas pendientes; Tomar la prueba de Psicometría que aplica el Instituto; Presentar un fólder limpio y sin escrituras; Entregar el record de notas completo de primero, segundo y tercero de secundaria.'),
(13, 'documentos', NULL, 'Los requisitos para ingresar al Fabio son: Presentar el acta de nacimiento original; Aprobar la prueba de admisión; Entregar 2 fotos tamaño 2x2 (de frente, sin maquillaje ni prendas); Contar con un certificado médico expedido por el Centro Médico del Instituto Tecnológico; Llenar el formulario de inscripción; Presentarse acompañado por padre, madre o tutor; No tener asignaturas pendientes; Tomar la prueba de Psicometría que aplica el Instituto; Presentar un fólder limpio y sin escrituras; Entregar el record de notas completo de primero, segundo y tercero de secundaria.'),
(14, 'documento', NULL, 'Los requisitos para ingresar al Fabio son: Presentar el acta de nacimiento original; Aprobar la prueba de admisión; Entregar 2 fotos tamaño 2x2 (de frente, sin maquillaje ni prendas); Contar con un certificado médico expedido por el Centro Médico del Instituto Tecnológico; Llenar el formulario de inscripción; Presentarse acompañado por padre, madre o tutor; No tener asignaturas pendientes; Tomar la prueba de Psicometría que aplica el Instituto; Presentar un fólder limpio y sin escrituras; Entregar el record de notas completo de primero, segundo y tercero de secundaria.'),
(15, 'requisitos', NULL, 'Los requisitos para ingresar al Fabio son: Presentar el acta de nacimiento original; Aprobar la prueba de admisión; Entregar 2 fotos tamaño 2x2 (de frente, sin maquillaje ni prendas); Contar con un certificado médico expedido por el Centro Médico del Instituto Tecnológico; Llenar el formulario de inscripción; Presentarse acompañado por padre, madre o tutor; No tener asignaturas pendientes; Tomar la prueba de Psicometría que aplica el Instituto; Presentar un fólder limpio y sin escrituras; Entregar el record de notas completo de primero, segundo y tercero de secundaria.'),
(16, 'requisito', NULL, 'Los requisitos para ingresar al Fabio son: Presentar el acta de nacimiento original; Aprobar la prueba de admisión; Entregar 2 fotos tamaño 2x2 (de frente, sin maquillaje ni prendas); Contar con un certificado médico expedido por el Centro Médico del Instituto Tecnológico; Llenar el formulario de inscripción; Presentarse acompañado por padre, madre o tutor; No tener asignaturas pendientes; Tomar la prueba de Psicometría que aplica el Instituto; Presentar un fólder limpio y sin escrituras; Entregar el record de notas completo de primero, segundo y tercero de secundaria.'),
(17, 'historia', NULL, 'La historia del Fabio inicia con los inicios del Plan de Reforma en los años 70, pasando por su establecimiento en 1977 como Liceo de Educación Media y luego transformándose –en 1992– en una institución de modalidad Técnico Profesional. Más adelante, en el período 2002–2003, se implementa un relanzamiento con un nuevo Proyecto Educativo de Centro, lo que permitió la modernización de su gestión, infraestructura y oferta educativa.'),
(18, 'inscribirme', NULL, 'Los requisitos para ingresar al Fabio son: Presentar el acta de nacimiento original; Aprobar la prueba de admisión; Entregar 2 fotos tamaño 2x2 (de frente, sin maquillaje ni prendas); Contar con un certificado médico expedido por el Centro Médico del Instituto Tecnológico; Llenar el formulario de inscripción; Presentarse acompañado por padre, madre o tutor; No tener asignaturas pendientes; Tomar la prueba de Psicometría que aplica el Instituto; Presentar un fólder limpio y sin escrituras; Entregar el record de notas completo de primero, segundo y tercero de secundaria.'),
(19, 'aulas', NULL, 'El instituto dispone de 24 aulas.'),
(20, 'mision', 'vision', 'Misión: Formar técnicos competentes, capaces de integrarse a la producción de bienes y servicios de manera eficiente, mejorando la calidad de vida de sus estudiantes, sus familias y del país. Visión: Ser el modelo de institución educativa Técnico–Profesional inclusiva, que brinda una formación por competencias técnicas e integrales de calidad y es preferida por la comunidad, empresas e instituciones.'),
(21, 'Director', NULL, 'El director actual es Julio Antonio Duval.'),
(22, 'director', 'ex', 'El ex director era Rafael Bienvenido Mercedes Pérez, M.A.'),
(23, 'director', 'anterior', 'El anterior director era Rafael Bienvenido Mercedes Pérez, M.A.'),
(24, 'Director', NULL, 'El director actual es Julio Antonio Duval.'),
(25, 'director', 'ex', 'El ex director era Rafael Bienvenido Mercedes Pérez, M.A.'),
(26, 'director', 'anterior', 'El anterior director era Rafael Bienvenido Mercedes Pérez, M.A.'),
(27, 'director', 'antiguo', 'El antiguo director era Rafael Bienvenido Mercedes Pérez, M.A.'),
(33, 'crearon', NULL, 'El Fabio fue fundado en 1977 (se inició como Liceo de Educación Media Dr. Fabio Amable Mota durante el año escolar 1977–1978).'),
(34, 'fundo', NULL, 'El Fabio fue fundado en 1977 (se inició como Liceo de Educación Media Dr. Fabio Amable Mota durante el año escolar 1977–1978).'),
(35, 'fundacion', NULL, 'El Fabio fue fundado en 1977 (se inició como Liceo de Educación Media Dr. Fabio Amable Mota durante el año escolar 1977–1978).'),
(36, 'creo', NULL, 'El Fabio fue fundado en 1977 (se inició como Liceo de Educación Media Dr. Fabio Amable Mota durante el año escolar 1977–1978).'),
(37, 'creacion', NULL, 'El Fabio fue fundado en 1977 (se inició como Liceo de Educación Media Dr. Fabio Amable Mota durante el año escolar 1977–1978).'),
(38, 'Historia', NULL, 'La historia del Fabio inicia con los inicios del Plan de Reforma en los años 70, pasando por su establecimiento en 1977 como Liceo de Educación Media y luego transformándose –en 1992– en una institución de modalidad Técnico Profesional. Más adelante, en el período 2002–2003, se implementa un relanzamiento con un nuevo Proyecto Educativo de Centro, lo que permitió la modernización de su gestión, infraestructura y oferta educativa.'),
(39, 'fundado', NULL, 'El Fabio fue fundado en 1977 (se inició como Liceo de Educación Media Dr. Fabio Amable Mota durante el año escolar 1977–1978).'),
(40, 'Primer', 'director', 'El primer director del Instituto Tecnológico Fabio Amable Mota fue Roberto Matos Vargas. Según fuentes históricas, él asumió la dirección cuando el centro aún se llamaba Liceo Domingo Faustino Sarmiento, nombre que luego fue cambiado en honor al Dr. Fabio Amable Mota, destacado médico, educador y filósofo dominicano.'),
(41, 'docentes', NULL, 'El Fabio cuenta actualmente con 56 docentes.'),
(42, 'docente', NULL, 'El Fabio cuenta actualmente con 56 docentes.'),
(43, 'Distrito', NULL, 'Está adscrito al Distrito Escolar 10-03.'),
(44, 'region', NULL, 'El Instituto Tecnológico Fabio Amable Mota (ITFAM) pertenece a la Regional de Educación 10, específicamente al Distrito Educativo 10-03, que abarca parte del municipio Santo Domingo Este, en la provincia Santo Domingo.'),
(45, 'regional', NULL, 'El Instituto Tecnológico Fabio Amable Mota (ITFAM) pertenece a la Regional de Educación 10, específicamente al Distrito Educativo 10-03, que abarca parte del municipio Santo Domingo Este, en la provincia Santo Domingo.'),
(46, 'Modalidad', NULL, 'El Instituto Tecnológico Fabio Amable Mota (ITFAM) ofrece una modalidad educativa técnico-profesional, orientada a formar jóvenes con competencias técnicas, valores y habilidades prácticas que les permitan integrarse al mundo laboral o continuar estudios superiores.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
