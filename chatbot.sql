-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2025 a las 18:10:38
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
  `palabra_clave3` varchar(255) DEFAULT NULL,
  `respuesta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `palabra_clave1`, `palabra_clave2`, `palabra_clave3`, `respuesta`) VALUES
(8, 'servicios', NULL, NULL, 'El Fabio ofrece servicios integrales que incluyen formación técnico-profesional (con enfoque por competencias), procesos de inscripción y admisión, trámites administrativos (como solicitud de record de notas, certificaciones, constancias de estudios, entre otros), pasantías y vinculación con el sector productivo, además de contar con servicios de orientación y atención médica dentro de su dispensario.'),
(9, 'servicio', NULL, NULL, 'El Fabio ofrece servicios integrales que incluyen formación técnico-profesional (con enfoque por competencias), procesos de inscripción y admisión, trámites administrativos (como solicitud de record de notas, certificaciones, constancias de estudios, entre otros), pasantías y vinculación con el sector productivo, además de contar con servicios de orientación y atención médica dentro de su dispensario.'),
(10, 'mision', NULL, NULL, 'Nuestra misión es formar técnicos competentes, capaces de integrarse a la producción de bienes y servicios de manera eficiente, mejorando la calidad de vida de sus estudiantes, sus familias y del país.'),
(11, 'vision', NULL, NULL, 'Nuestra Visión es ser el modelo de institución educativa Técnico–Profesional inclusiva, que brinda una formación por competencias técnicas e integrales de calidad y es preferida por la comunidad, empresas e instituciones.'),
(12, 'papeles', NULL, NULL, 'Los requisitos para ingresar al Fabio son: Presentar el acta de nacimiento original; Aprobar la prueba de admisión; Entregar 2 fotos tamaño 2x2 (de frente, sin maquillaje ni prendas); Contar con un certificado médico expedido por el Centro Médico del Instituto Tecnológico; Llenar el formulario de inscripción; Presentarse acompañado por padre, madre o tutor; No tener asignaturas pendientes; Tomar la prueba de Psicometría que aplica el Instituto; Presentar un fólder limpio y sin escrituras; Entregar el record de notas completo de primero, segundo y tercero de secundaria.'),
(13, 'documentos', NULL, NULL, 'Los requisitos para ingresar al Fabio son: Presentar el acta de nacimiento original; Aprobar la prueba de admisión; Entregar 2 fotos tamaño 2x2 (de frente, sin maquillaje ni prendas); Contar con un certificado médico expedido por el Centro Médico del Instituto Tecnológico; Llenar el formulario de inscripción; Presentarse acompañado por padre, madre o tutor; No tener asignaturas pendientes; Tomar la prueba de Psicometría que aplica el Instituto; Presentar un fólder limpio y sin escrituras; Entregar el record de notas completo de primero, segundo y tercero de secundaria.'),
(14, 'documento', NULL, NULL, 'Los requisitos para ingresar al Fabio son: Presentar el acta de nacimiento original; Aprobar la prueba de admisión; Entregar 2 fotos tamaño 2x2 (de frente, sin maquillaje ni prendas); Contar con un certificado médico expedido por el Centro Médico del Instituto Tecnológico; Llenar el formulario de inscripción; Presentarse acompañado por padre, madre o tutor; No tener asignaturas pendientes; Tomar la prueba de Psicometría que aplica el Instituto; Presentar un fólder limpio y sin escrituras; Entregar el record de notas completo de primero, segundo y tercero de secundaria.'),
(15, 'requisitos', NULL, NULL, 'Los requisitos para ingresar al Fabio son: Presentar el acta de nacimiento original; Aprobar la prueba de admisión; Entregar 2 fotos tamaño 2x2 (de frente, sin maquillaje ni prendas); Contar con un certificado médico expedido por el Centro Médico del Instituto Tecnológico; Llenar el formulario de inscripción; Presentarse acompañado por padre, madre o tutor; No tener asignaturas pendientes; Tomar la prueba de Psicometría que aplica el Instituto; Presentar un fólder limpio y sin escrituras; Entregar el record de notas completo de primero, segundo y tercero de secundaria.'),
(16, 'requisito', NULL, NULL, 'Los requisitos para ingresar al Fabio son: Presentar el acta de nacimiento original; Aprobar la prueba de admisión; Entregar 2 fotos tamaño 2x2 (de frente, sin maquillaje ni prendas); Contar con un certificado médico expedido por el Centro Médico del Instituto Tecnológico; Llenar el formulario de inscripción; Presentarse acompañado por padre, madre o tutor; No tener asignaturas pendientes; Tomar la prueba de Psicometría que aplica el Instituto; Presentar un fólder limpio y sin escrituras; Entregar el record de notas completo de primero, segundo y tercero de secundaria.'),
(17, 'historia', NULL, NULL, 'La historia del Fabio inicia con los inicios del Plan de Reforma en los años 70, pasando por su establecimiento en 1977 como Liceo de Educación Media y luego transformándose –en 1992– en una institución de modalidad Técnico Profesional. Más adelante, en el período 2002–2003, se implementa un relanzamiento con un nuevo Proyecto Educativo de Centro, lo que permitió la modernización de su gestión, infraestructura y oferta educativa.'),
(18, 'inscribirme', NULL, NULL, 'Los requisitos para ingresar al Fabio son: Presentar el acta de nacimiento original; Aprobar la prueba de admisión; Entregar 2 fotos tamaño 2x2 (de frente, sin maquillaje ni prendas); Contar con un certificado médico expedido por el Centro Médico del Instituto Tecnológico; Llenar el formulario de inscripción; Presentarse acompañado por padre, madre o tutor; No tener asignaturas pendientes; Tomar la prueba de Psicometría que aplica el Instituto; Presentar un fólder limpio y sin escrituras; Entregar el record de notas completo de primero, segundo y tercero de secundaria.'),
(19, 'aulas', NULL, NULL, 'El instituto dispone de 24 aulas.'),
(20, 'mision', 'vision', NULL, 'Misión: Formar técnicos competentes, capaces de integrarse a la producción de bienes y servicios de manera eficiente, mejorando la calidad de vida de sus estudiantes, sus familias y del país. Visión: Ser el modelo de institución educativa Técnico–Profesional inclusiva, que brinda una formación por competencias técnicas e integrales de calidad y es preferida por la comunidad, empresas e instituciones.'),
(21, 'Director', NULL, NULL, 'El director actual es Julio Antonio Duval.'),
(22, 'director', 'ex', NULL, 'El ex director era Rafael Bienvenido Mercedes Pérez, M.A.'),
(23, 'director', 'anterior', NULL, 'El anterior director era Rafael Bienvenido Mercedes Pérez, M.A.'),
(24, 'Director', NULL, NULL, 'El director actual es Julio Antonio Duval.'),
(25, 'director', 'ex', NULL, 'El ex director era Rafael Bienvenido Mercedes Pérez, M.A.'),
(26, 'director', 'anterior', NULL, 'El anterior director era Rafael Bienvenido Mercedes Pérez, M.A.'),
(27, 'director', 'antiguo', NULL, 'El antiguo director era Rafael Bienvenido Mercedes Pérez, M.A.'),
(33, 'crearon', NULL, NULL, 'El Fabio fue fundado en 1977 (se inició como Liceo de Educación Media Dr. Fabio Amable Mota durante el año escolar 1977–1978).'),
(34, 'fundo', NULL, NULL, 'El Fabio fue fundado en 1977 (se inició como Liceo de Educación Media Dr. Fabio Amable Mota durante el año escolar 1977–1978).'),
(35, 'fundacion', NULL, NULL, 'El Fabio fue fundado en 1977 (se inició como Liceo de Educación Media Dr. Fabio Amable Mota durante el año escolar 1977–1978).'),
(36, 'creo', NULL, NULL, 'El Fabio fue fundado en 1977 (se inició como Liceo de Educación Media Dr. Fabio Amable Mota durante el año escolar 1977–1978).'),
(37, 'creacion', NULL, NULL, 'El Fabio fue fundado en 1977 (se inició como Liceo de Educación Media Dr. Fabio Amable Mota durante el año escolar 1977–1978).'),
(38, 'Historia', NULL, NULL, 'La historia del Fabio inicia con los inicios del Plan de Reforma en los años 70, pasando por su establecimiento en 1977 como Liceo de Educación Media y luego transformándose –en 1992– en una institución de modalidad Técnico Profesional. Más adelante, en el período 2002–2003, se implementa un relanzamiento con un nuevo Proyecto Educativo de Centro, lo que permitió la modernización de su gestión, infraestructura y oferta educativa.'),
(39, 'fundado', NULL, NULL, 'El Fabio fue fundado en 1977 (se inició como Liceo de Educación Media Dr. Fabio Amable Mota durante el año escolar 1977–1978).'),
(40, 'Primer', 'director', NULL, 'El primer director del Instituto Tecnológico Fabio Amable Mota fue Roberto Matos Vargas. Según fuentes históricas, él asumió la dirección cuando el centro aún se llamaba Liceo Domingo Faustino Sarmiento, nombre que luego fue cambiado en honor al Dr. Fabio Amable Mota, destacado médico, educador y filósofo dominicano.'),
(41, 'docentes', NULL, NULL, 'El Fabio cuenta actualmente con 56 docentes.'),
(42, 'docente', NULL, NULL, 'El Fabio cuenta actualmente con 56 docentes.'),
(43, 'Distrito', NULL, NULL, 'Está adscrito al Distrito Escolar 10-03.'),
(44, 'region', NULL, NULL, 'El Instituto Tecnológico Fabio Amable Mota (ITFAM) pertenece a la Regional de Educación 10, específicamente al Distrito Educativo 10-03, que abarca parte del municipio Santo Domingo Este, en la provincia Santo Domingo.'),
(45, 'regional', NULL, NULL, 'El Instituto Tecnológico Fabio Amable Mota (ITFAM) pertenece a la Regional de Educación 10, específicamente al Distrito Educativo 10-03, que abarca parte del municipio Santo Domingo Este, en la provincia Santo Domingo.'),
(46, 'Modalidad', NULL, NULL, 'El Instituto Tecnológico Fabio Amable Mota (ITFAM) ofrece una modalidad educativa técnico-profesional, orientada a formar jóvenes con competencias técnicas, valores y habilidades prácticas que les permitan integrarse al mundo laboral o continuar estudios superiores.'),
(47, 'coordinadora', 'docente', NULL, 'Felicia Ramírez Lara desempeña el cargo de coordinadora docente en el Instituto Tecnológico Fabio Amable Mota (ITFAM). En su rol, ha estado involucrada en la planificación y supervisión de actividades académicas, así como en la gestión de eventos institucionales. Además, ha participado activamente en eventos del instituto, como competencias de gimnasia rítmica, donde ha brindado apoyo y supervisión en su calidad de coordinadora general.'),
(48, 'coordinadora', 'general', NULL, 'Felicia Ramírez Lara desempeña el cargo de coordinadora docente en el Instituto Tecnológico Fabio Amable Mota (ITFAM). En su rol, ha estado involucrada en la planificación y supervisión de actividades académicas, así como en la gestión de eventos institucionales. Además, ha participado activamente en eventos del instituto, como competencias de gimnasia rítmica, donde ha brindado apoyo y supervisión en su calidad de coordinadora general.'),
(49, 'cordinadora', 'docente', NULL, 'Felicia Ramírez Lara desempeña el cargo de coordinadora docente en el Instituto Tecnológico Fabio Amable Mota (ITFAM). En su rol, ha estado involucrada en la planificación y supervisión de actividades académicas, así como en la gestión de eventos institucionales. Además, ha participado activamente en eventos del instituto, como competencias de gimnasia rítmica, donde ha brindado apoyo y supervisión en su calidad de coordinadora general.'),
(50, 'coordinadora', 'técnica', NULL, 'Jenny Peguero es una profesional comprometida con la educación técnico-profesional en la República Dominicana.'),
(51, 'cordinadora', 'técnica', NULL, 'Jenny Peguero es una profesional comprometida con la educación técnico-profesional en la República Dominicana.'),
(52, 'aula', NULL, NULL, 'El instituto dispone de 24 aulas.'),
(53, 'Cantidad', 'estudiantes', NULL, 'Actualmente, el Fabio tiene aproximadamente 648 estudiantes.'),
(54, 'cuantos', 'estudiantes', NULL, 'Actualmente, el Fabio tiene aproximadamente 648 estudiantes.'),
(55, 'numero', 'estudiantes', NULL, 'Actualmente, el Fabio tiene aproximadamente 648 estudiantes.'),
(56, 'Cantidad', 'estudiante', NULL, 'Actualmente, el Fabio tiene aproximadamente 648 estudiantes.'),
(57, 'cuantos', 'estudiante', NULL, 'Actualmente, el Fabio tiene aproximadamente 648 estudiantes.'),
(58, 'numero', 'estudiante', NULL, 'Actualmente, el Fabio tiene aproximadamente 648 estudiantes.'),
(59, 'cuanto', 'estudiante', NULL, 'Actualmente, el Fabio tiene aproximadamente 648 estudiantes.'),
(60, 'Cantidad', 'docentes', 'área', 'LENGUA - ESPAÑOLA\n1. Simona del Carmen Almanzar Leclerc\n2. Vervelis Márquez Alcántara\n3. Nelson Antonio Arciega Espina\n\nMATEMÁTICAS\n4. Wilson Antonio Abreu Cárdenes\n5. Yaderis Marine Bautista Batista\n6. Alan Hernández\n7. Jefree Antonio Contreras Medina\n\nCIENCIAS SOCIALES\n8. Diomari Dominico Mosate\n9. Salvador Encarnación\n10. Crisana Rojas\n11. Luisa Ramírez\n\nCIENCIAS NATURALES\n12. Altagracia María Rivas de Rivas\n13. Criser Ventura Amador\n14. Raysa Jaqueline Castro Méndez\n15. Elizabeth Marte García\n16. Teodoro Peña Tejada\n\nEDUCACIÓN ARTÍSTICA\n17. Juana Cristina Toribio Peña\n18. Jazmín Acosta\n\nLENGUAS EXTRANJERAS\n19. Milly Alberta Ramírez Méndez\n20. Nelly Mercedes Illidge Rodríguez\n21. Xavier Alcántara Cuevas\n22. Mario Mesa\n23. Carlos Manuel Mateo\n\nEDUCACIÓN FÍSICA\n24. Sugey Josefina Sánchez Tejeda\n25. Omar Aquiles Medrano\n26. Juan Arias\n\nGESTIÓN ADM. Y TRIBUTARIA\n27. Arelis Altagracia Rijo Guerrero\n28. Breiny Valencia\n29. Brunilda Sabino\n30. Cruz Reyes\n31. Yvelisse Concepción\n32. Esther Santos\n33. Rochelys Rodríguez\n34. Ingrid Isabel Sánchez Estévez\n\nDESARROLLO DE APLICACIONES INFORMÁTICA\n35. Eddy Durán Guzmán\n36. Ana Ysabelarroyo de Jesús\n37. Luis Estévez Correa\n38. Franny Herrera\n39. Niurky Guzmán\n40. Edward Bernardo Pérez Arias\n41. Pedro David Chalas García\n\nCUIDADO DE ENFERMERÍA Y PROMOCIÓN DE LA SALUD\n42. Nidia Santana Arias\n43. Emilia Josefina Duval Méndez\n44. Odalis Samboy\n\nINSTALACIONES ELÉCTRICAS\n45. Abraham Lima Mateo\n46. Roberto Rodríguez Vargas\n47. María Mercedes Heredia\n\nMECATRÓNICA\n48. Alexander Merán Vallejo\n49. Virgilio Odalis Reyes Marte\n50. Oscar Rafael Beltré de León\n51. Jesús Rosario Santana\n\nEQUIPOS ELECTRÓNICOS\n52. Yonny de los Santos\n53. Ángela Altagracia Sánchez Bruján\n\nELECTROMECÁNICA DE VEHÍCULOS\n54. Eduar Pérez Bello\n55. Evangelista Araujo Cordero\n56. Francis Charles');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
