-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2017 a las 23:57:57
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreria`
--
CREATE DATABASE IF NOT EXISTS `libreria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `libreria`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(5) NOT NULL,
  `nombre_autor` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id_autor`, `nombre_autor`) VALUES
(1, 'Jane Austen'),
(2, 'Gabriel Garcia Marquez'),
(3, 'Franz Kafka'),
(4, 'Virgina Woolf'),
(5, 'J.K. Rowlling'),
(6, 'Mark Twain'),
(7, 'John Green'),
(8, 'George Orwell'),
(9, 'Marcela Paz'),
(10, 'Agatha Christie'),
(11, 'Stephen King'),
(12, 'Isabel Allende'),
(13, 'George R.R. Martin'),
(14, 'Ray Bradbury'),
(15, 'J.R.R. Tolkien');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `id_editorial` int(5) NOT NULL,
  `nombre_editorial` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`id_editorial`, `nombre_editorial`) VALUES
(201, 'Editorial Antuco'),
(202, 'Editorial Planeta'),
(203, 'Editorial CIEM'),
(204, 'Editorial Oceano'),
(205, 'Editorial Tepual'),
(206, 'Ediciones MR'),
(207, 'Ediciones Recrea'),
(208, 'Editorial Alfaguara'),
(209, 'Editorial Americana'),
(210, 'Ediciones Mil Hojas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(5) NOT NULL,
  `nombre_genero` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nombre_genero`) VALUES
(1, 'Drama'),
(2, 'Novela'),
(3, 'Policial'),
(4, 'Terror'),
(5, 'Ficcion'),
(6, 'Juvenil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria`
--

CREATE TABLE `libreria` (
  `id_libreria` int(5) NOT NULL,
  `nombre_libreria` varchar(100) NOT NULL,
  `ubicacion_libreria` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libreria`
--

INSERT INTO `libreria` (`id_libreria`, `nombre_libreria`, `ubicacion_libreria`) VALUES
(101, 'Santa Feña', 'Nueva uno 3271, Macul'),
(102, 'Antartica', 'Costanera Center Local 169, Providencia'),
(103, 'Que Leo', 'Av. Providencia 341, Providencia'),
(104, 'Feria Chilena del Libro', 'Manuel Montt 188, Providencia'),
(105, 'Libropata', 'Calle 11, Santa Cruz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id_libro` int(5) NOT NULL,
  `isbn` varchar(12) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `precio_neto` int(6) NOT NULL,
  `id_tipo_tapa` int(5) NOT NULL,
  `id_editorial` int(5) NOT NULL,
  `id_autor` int(5) NOT NULL,
  `id_genero` int(5) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id_libro`, `isbn`, `titulo`, `precio_neto`, `id_tipo_tapa`, `id_editorial`, `id_autor`, `id_genero`, `imagen`) VALUES
(1, '101-001-0001', 'Orgullo y Prejuicio', 12500, 11111, 201, 1, 1, 'imagen/1.jpg'),
(2, '101-002-0002', 'Emma', 15000, 11111, 201, 1, 1, 'imagen/2.jpg'),
(3, '101-003-0003', 'Sentido y Sensibilidad', 17600, 11111, 201, 1, 1, 'imagen/3.jpg'),
(4, '101-004-0004', 'Cien Años de Soledad', 10000, 11111, 201, 2, 2, 'imagen/4.jpg'),
(5, '101-005-0005', 'El amor en tiempos de colera', 19200, 11111, 202, 2, 2, 'imagen/5.jpg'),
(6, '101-006-0006', 'La Hojarasca', 9990, 11111, 202, 2, 2, 'imagen/6.jpg'),
(7, '101-007-0007', 'El Proceso', 13998, 11111, 202, 3, 1, 'imagen/7.jpg'),
(8, '101-008-0008', 'El Castillo', 14300, 11111, 202, 3, 1, 'imagen/8.jpg'),
(9, '101-009-0009', 'La Metamorfosis', 16000, 11111, 203, 3, 1, 'imagen/9.jpg'),
(10, '101-010-0010', 'Señora Dalloway', 17890, 11111, 203, 4, 1, 'imagen/10.jpg'),
(11, '101-011-0011', 'Al Faro', 16000, 11111, 203, 4, 1, 'imagen/11.jpg'),
(12, '101-012-0012', 'Entre Actos', 10000, 11111, 203, 4, 1, 'imagen/12.jpg'),
(13, '101-013-0013', 'Harry Potter y la piedra filosofal', 13000, 11111, 204, 5, 5, 'imagen/13.jpg'),
(14, '101-014-0014', 'Harry Potter y la camara secreta', 14500, 11111, 204, 5, 5, 'imagen/14.jpg'),
(15, '101-015-0015', 'Una Vacante Imprevista', 15000, 11111, 204, 5, 5, 'imagen/15.jpg'),
(16, '101-016-0016', 'Las Aventuras de Tom Sawyer', 12390, 11111, 204, 6, 2, 'imagen/16.jpg'),
(17, '101-017-0017', 'Las Aventuras de Huckleberry Finn', 12450, 11111, 205, 6, 2, 'imagen/17.jpg'),
(18, '101-018-0018', 'Bajo la misma estrella', 11230, 11111, 205, 7, 6, 'imagen/18.jpg'),
(19, '101-019-0019', 'Ciudad de Papel', 12000, 11111, 205, 7, 6, 'imagen/19.jpg'),
(20, '101-020-0020', 'Buscando a Alaska', 15000, 11111, 205, 7, 6, 'imagen/20.jpg'),
(21, '101-021-0021', '1984', 20000, 11111, 206, 8, 5, 'imagen/21.jpg'),
(22, '101-022-0022', 'Rebelion en la Granja', 21990, 11111, 206, 8, 5, 'imagen/22.jpg'),
(23, '101-023-0023', 'Que no muera la aspidistra', 17650, 11111, 206, 8, 5, 'imagen/23.jpg'),
(24, '101-024-0024', 'Papelucho', 7500, 11111, 206, 9, 6, 'imagen/24.jpg'),
(25, '101-025-0025', 'Papelucho en la clinica', 7900, 11111, 207, 9, 6, 'imagen/25.jpg'),
(26, '101-026-0026', 'Papelucho Historiador', 4500, 11111, 207, 9, 6, 'imagen/26.jpg'),
(27, '101-027-0027', 'La Casa Torcida', 12990, 11111, 207, 10, 3, 'imagen/27.jpg'),
(28, '101-028-0028', 'Asesinato en el orient express', 12990, 11111, 207, 10, 3, 'imagen/28.jpg'),
(29, '101-029-0029', 'Los Diez Negritos', 15990, 11111, 208, 10, 3, 'imagen/29.jpg'),
(30, '101-030-0030', 'El Resplandor', 19990, 11111, 208, 11, 4, 'imagen/30.jpg'),
(31, '101-031-0031', 'IT', 18990, 11111, 208, 11, 4, 'imagen/31.jpg'),
(32, '101-032-0032', 'Carrie', 21990, 11111, 208, 11, 4, 'imagen/32.jpg'),
(33, '101-033-0033', 'El Misterio de Salem\'s Loot', 25990, 11111, 209, 11, 4, 'imagen/33.jpg'),
(34, '101-034-0034', 'La Casa de los Espiritus', 16990, 11111, 209, 12, 2, 'imagen/34.jpg'),
(35, '101-035-0035', 'Paula', 15990, 11111, 209, 12, 2, 'imagen/35.jpg'),
(36, '101-036-0036', 'El Amante Japones', 19990, 11111, 209, 12, 2, 'imagen/36.jpg'),
(37, '101-037-0037', 'Danza de Dragones', 25990, 11111, 210, 13, 5, 'imagen/37.jpg'),
(38, '101-038-0038', 'Festin de Cuervos', 25990, 11111, 210, 13, 5, 'imagen/38.jpg'),
(39, '101-039-0039', 'El Caballero de los Siete Reinos', 27990, 11111, 210, 13, 5, 'imagen/39.jpg'),
(40, '101-040-0040', 'Farenheit 451', 13990, 11111, 210, 14, 5, 'imagen/40.jpg'),
(41, '101-041-0041', 'Cronicas Marcianas', 13990, 11111, 210, 14, 5, 'imagen/41.jpg'),
(42, '101-042-0042', 'El Hombre Ilustrado', 14990, 11111, 209, 14, 5, 'imagen/42.jpg'),
(43, '101-043-0043', 'El Señor de los Anillos', 21990, 11111, 208, 15, 5, 'imagen/43.jpg'),
(44, '101-044-0044', 'El Hobbit', 22990, 11111, 207, 15, 5, 'imagen/44.jpg'),
(45, '101-045-0045', 'El Retorno del Rey', 25990, 11111, 202, 15, 5, 'imagen/45.jpg'),
(46, '102-001-0001', 'Orgullo y Prejuicio', 15000, 22222, 203, 1, 1, 'imagen/1.jpg'),
(47, '102-002-0002', 'Emma', 10000, 22222, 203, 1, 1, 'imagen/2.jpg'),
(48, '102-003-0003', 'Sentido y Sensibilidad', 16990, 22222, 203, 1, 1, 'imagen/3.jpg'),
(49, '102-004-0004', 'Cien Años de Soledad', 11000, 22222, 203, 2, 2, 'imagen/4.jpg'),
(50, '102-005-0005', 'El amor en tiempos de colera', 11200, 22222, 201, 2, 2, 'imagen/5.jpg'),
(51, '102-006-0006', 'La Hojarasca', 8990, 22222, 201, 2, 2, 'imagen/6.jpg'),
(52, '102-007-0007', 'El Proceso', 6000, 22222, 201, 3, 1, 'imagen/7.jpg'),
(53, '102-008-0008', 'El Castillo', 12500, 22222, 201, 3, 1, 'imagen/8.jpg'),
(54, '102-009-0009', 'La Metamorfosis', 17000, 22222, 204, 3, 1, 'imagen/9.jpg'),
(55, '102-010-0010', 'Señora Dalloway', 20000, 22222, 204, 4, 1, 'imagen/10.jpg'),
(56, '102-011-0011', 'Al Faro', 12000, 22222, 204, 4, 1, 'imagen/11.jpg'),
(57, '102-012-0012', 'Entre Actos', 13000, 22222, 204, 4, 1, 'imagen/12.jpg'),
(58, '102-013-0013', 'Harry Potter y la piedra filosofal', 12990, 22222, 206, 5, 5, 'imagen/13.jpg'),
(59, '102-014-0014', 'Harry Potter y la camara secreta', 13500, 22222, 206, 5, 5, 'imagen/14.jpg'),
(60, '102-015-0015', 'Una Vacante Imprevista', 16000, 22222, 206, 5, 5, 'imagen/15.jpg'),
(61, '102-016-0016', 'Las Aventuras de Tom Sawyer', 14000, 22222, 206, 6, 2, 'imagen/16.jpg'),
(62, '102-017-0017', 'Las Aventuras de Huckleberry Finn', 12450, 22222, 208, 6, 2, 'imagen/17.jpg'),
(63, '102-018-0018', 'Bajo la misma estrella', 11230, 22222, 208, 7, 6, 'imagen/18.jpg'),
(64, '102-019-0019', 'Ciudad de Papel', 12000, 22222, 208, 7, 6, 'imagen/19.jpg'),
(65, '102-020-0020', 'Buscando a Alaska', 15000, 22222, 208, 7, 6, 'imagen/20.jpg'),
(66, '102-021-0021', '1984', 20000, 33333, 209, 8, 5, 'imagen/21.jpg'),
(67, '102-022-0022', 'Rebelion en la Granja', 18990, 33333, 209, 8, 5, 'imagen/22.jpg'),
(68, '102-023-0023', 'Que no muera la aspidistra', 14990, 33333, 209, 8, 5, 'imagen/23.jpg'),
(69, '102-024-0024', 'Papelucho', 4500, 33333, 209, 9, 6, 'imagen/24.jpg'),
(70, '102-025-0025', 'Papelucho en la clinica', 5000, 33333, 210, 9, 6, 'imagen/25.jpg'),
(71, '102-026-0026', 'Papelucho Historiador', 3500, 33333, 210, 9, 6, 'imagen/26.jpg'),
(72, '102-027-0027', 'La Casa Torcida', 10990, 33333, 210, 10, 3, 'imagen/27.jpg'),
(73, '102-028-0028', 'Asesinato en el orient express', 14990, 33333, 210, 10, 3, 'imagen/28.jpg'),
(74, '102-029-0029', 'Los Diez Negritos', 11990, 33333, 202, 10, 3, 'imagen/29.jpg'),
(75, '102-030-0030', 'El Resplandor', 24990, 33333, 202, 11, 4, 'imagen/30.jpg'),
(76, '102-031-0031', 'IT', 13990, 33333, 202, 11, 4, 'imagen/31.jpg'),
(77, '102-032-0032', 'Carrie', 22990, 33333, 202, 11, 4, 'imagen/32.jpg'),
(78, '102-033-0033', 'El Misterio de Salem\'s Loot', 17990, 44444, 205, 11, 4, 'imagen/33.jpg'),
(79, '102-034-0034', 'La Casa de los Espiritus', 14990, 44444, 205, 12, 2, 'imagen/34.jpg'),
(80, '102-035-0035', 'Paula', 12990, 44444, 209, 12, 2, 'imagen/35.jpg'),
(81, '102-036-0036', 'El Amante Japones', 20990, 44444, 205, 12, 2, 'imagen/36.jpg'),
(82, '102-037-0037', 'Danza de Dragones', 22990, 44444, 207, 13, 5, 'imagen/37.jpg'),
(83, '102-038-0038', 'Festin de Cuervos', 22990, 44444, 207, 13, 5, 'imagen/38.jpg'),
(84, '102-039-0039', 'El Caballero de los Siete Reinos', 23990, 44444, 207, 13, 5, 'imagen/39.jpg'),
(85, '102-040-0040', 'Farenheit 451', 12990, 44444, 207, 14, 5, 'imagen/40.jpg'),
(86, '102-041-0041', 'Cronicas Marcianas', 15990, 44444, 207, 14, 5, 'imagen/41.jpg'),
(87, '102-042-0042', 'El Hombre Ilustrado', 9990, 44444, 203, 14, 5, 'imagen/42.jpg'),
(88, '102-043-0043', 'El Señor de los Anillos', 22990, 44444, 201, 15, 5, 'imagen/43.jpg'),
(89, '102-044-0044', 'El Hobbit', 20990, 44444, 202, 15, 5, 'imagen/44.jpg'),
(90, '102-045-0045', 'El Retorno del Rey', 23990, 44444, 209, 15, 5, 'imagen/45.jpg'),
(91, '103-001-0001', 'Orgullo y Prejuicio', 11990, 22222, 210, 1, 1, 'imagen/1.jpg'),
(92, '103-002-0002', 'Emma', 15990, 22222, 210, 1, 1, 'imagen/2.jpg'),
(93, '103-003-0003', 'Sentido y Sensibilidad', 17650, 22222, 210, 1, 1, 'imagen/3.jpg'),
(94, '103-004-0004', 'Cien Años de Soledad', 12500, 22222, 201, 2, 2, 'imagen/4.jpg'),
(95, '103-005-0005', 'El amor en tiempos de colera', 13200, 22222, 201, 2, 2, 'imagen/5.jpg'),
(96, '103-006-0006', 'La Hojarasca', 19990, 33333, 201, 2, 2, 'imagen/6.jpg'),
(97, '103-007-0007', 'El Proceso', 18998, 33333, 201, 3, 1, 'imagen/7.jpg'),
(98, '103-008-0008', 'El Castillo', 13300, 33333, 201, 3, 1, 'imagen/8.jpg'),
(99, '103-009-0009', 'La Metamorfosis', 16990, 33333, 209, 3, 1, 'imagen/9.jpg'),
(100, '103-010-0010', 'Señora Dalloway', 17990, 33333, 209, 4, 1, 'imagen/10.jpg'),
(101, '103-011-0011', 'Al Faro', 16990, 44444, 209, 4, 1, 'imagen/11.jpg'),
(102, '103-012-0012', 'Entre Actos', 19900, 44444, 209, 4, 1, 'imagen/12.jpg'),
(103, '103-013-0013', 'Harry Potter y la piedra filosofal', 13990, 44444, 202, 5, 5, 'imagen/13.jpg'),
(104, '103-014-0014', 'Harry Potter y la camara secreta', 14590, 44444, 202, 5, 5, 'imagen/14.jpg'),
(105, '103-015-0015', 'Una Vacante Imprevista', 15990, 44444, 202, 5, 5, 'imagen/15.jpg'),
(106, '103-016-0016', 'Las Aventuras de Tom Sawyer', 15390, 44444, 202, 6, 2, 'imagen/16.jpg'),
(107, '103-017-0017', 'Las Aventuras de Huckleberry Finn', 11450, 55555, 208, 6, 2, 'imagen/17.jpg'),
(108, '103-018-0018', 'Bajo la misma estrella', 12230, 55555, 208, 7, 6, 'imagen/18.jpg'),
(109, '103-019-0019', 'Ciudad de Papel', 12990, 55555, 208, 7, 6, 'imagen/19.jpg'),
(110, '103-020-0020', 'Buscando a Alaska', 15990, 55555, 208, 7, 6, 'imagen/20.jpg'),
(111, '103-021-0021', '1984', 21990, 55555, 203, 8, 5, 'imagen/21.jpg'),
(112, '103-022-0022', 'Rebelion en la Granja', 20990, 66666, 203, 8, 5, 'imagen/22.jpg'),
(113, '103-023-0023', 'Que no muera la aspidistra', 17950, 66666, 203, 8, 5, 'imagen/23.jpg'),
(114, '103-024-0024', 'Papelucho', 4550, 66666, 203, 9, 6, 'imagen/24.jpg'),
(115, '103-025-0025', 'Papelucho en la clinica', 4990, 66666, 207, 9, 6, 'imagen/25.jpg'),
(116, '103-026-0026', 'Papelucho Historiador', 4590, 11111, 207, 9, 6, 'imagen/26.jpg'),
(117, '103-027-0027', 'La Casa Torcida', 19990, 11111, 207, 10, 3, 'imagen/27.jpg'),
(118, '103-028-0028', 'Asesinato en el orient express', 15990, 11111, 207, 10, 3, 'imagen/28.jpg'),
(119, '103-029-0029', 'Los Diez Negritos', 16990, 22222, 207, 10, 3, 'imagen/29.jpg'),
(120, '103-030-0030', 'El Resplandor', 20990, 22222, 204, 11, 4, 'imagen/30.jpg'),
(121, '103-031-0031', 'IT', 19990, 33333, 204, 11, 4, 'imagen/31.jpg'),
(122, '103-032-0032', 'Carrie', 23990, 33333, 204, 11, 4, 'imagen/32.jpg'),
(123, '103-033-0033', 'El Misterio de Salem\'s Loot', 22990, 33333, 204, 11, 4, 'imagen/33.jpg'),
(124, '103-034-0034', 'La Casa de los Espiritus', 17990, 44444, 206, 12, 2, 'imagen/34.jpg'),
(125, '103-035-0035', 'Paula', 14990, 44444, 206, 12, 2, 'imagen/35.jpg'),
(126, '103-036-0036', 'El Amante Japones', 18990, 55555, 206, 12, 2, 'imagen/36.jpg'),
(127, '103-037-0037', 'Danza de Dragones', 24990, 55555, 206, 13, 5, 'imagen/37.jpg'),
(128, '103-038-0038', 'Festin de Cuervos', 23990, 55555, 206, 13, 5, 'imagen/38.jpg'),
(129, '103-039-0039', 'El Caballero de los Siete Reinos', 28990, 55555, 205, 13, 5, 'imagen/39.jpg'),
(130, '103-040-0040', 'Farenheit 451', 15990, 66666, 205, 14, 5, 'imagen/40.jpg'),
(131, '103-041-0041', 'Cronicas Marcianas', 14990, 66666, 205, 14, 5, 'imagen/41.jpg'),
(132, '103-042-0042', 'El Hombre Ilustrado', 15990, 66666, 205, 14, 5, 'imagen/42.jpg'),
(133, '103-043-0043', 'El Señor de los Anillos', 22990, 66666, 201, 15, 5, 'imagen/43.jpg'),
(134, '103-044-0044', 'El Hobbit', 21990, 66666, 202, 15, 5, 'imagen/44.jpg'),
(135, '103-045-0045', 'El Retorno del Rey', 26990, 66666, 209, 15, 5, 'imagen/45.jpg'),
(136, '104-001-0001', 'Orgullo y Prejuicio', 10990, 66666, 201, 1, 1, 'imagen/1.jpg'),
(137, '104-002-0002', 'Emma', 14990, 66666, 202, 1, 1, 'imagen/2.jpg'),
(138, '104-003-0003', 'Sentido y Sensibilidad', 17990, 66666, 203, 1, 1, 'imagen/3.jpg'),
(139, '104-004-0004', 'Cien Años de Soledad', 12590, 66666, 204, 2, 2, 'imagen/4.jpg'),
(140, '104-005-0005', 'El amor en tiempos de colera', 13290, 55555, 205, 2, 2, 'imagen/5.jpg'),
(141, '104-006-0006', 'La Hojarasca', 18990, 55555, 206, 2, 2, 'imagen/6.jpg'),
(142, '104-007-0007', 'El Proceso', 18990, 55555, 207, 3, 1, 'imagen/7.jpg'),
(143, '104-008-0008', 'El Castillo', 13390, 55555, 208, 3, 1, 'imagen/8.jpg'),
(144, '104-009-0009', 'La Metamorfosis', 15990, 55555, 209, 3, 1, 'imagen/9.jpg'),
(145, '104-010-0010', 'Señora Dalloway', 16990, 55555, 210, 4, 1, 'imagen/10.jpg'),
(146, '104-011-0011', 'Al Faro', 18990, 55555, 201, 4, 1, 'imagen/11.jpg'),
(147, '104-012-0012', 'Entre Actos', 17900, 44444, 202, 4, 1, 'imagen/12.jpg'),
(148, '104-013-0013', 'Harry Potter y la piedra filosofal', 14990, 44444, 203, 5, 5, 'imagen/13.jpg'),
(149, '104-014-0014', 'Harry Potter y la camara secreta', 14990, 44444, 204, 5, 5, 'imagen/14.jpg'),
(150, '104-015-0015', 'Una Vacante Imprevista', 14990, 44444, 205, 5, 5, 'imagen/15.jpg'),
(151, '104-016-0016', 'Las Aventuras de Tom Sawyer', 15990, 33333, 206, 6, 2, 'imagen/16.jpg'),
(152, '104-017-0017', 'Las Aventuras de Huckleberry Finn', 11950, 33333, 207, 6, 2, 'imagen/17.jpg'),
(153, '104-018-0018', 'Bajo la misma estrella', 12990, 33333, 208, 7, 6, 'imagen/18.jpg'),
(154, '104-019-0019', 'Ciudad de Papel', 11990, 33333, 209, 7, 6, 'imagen/19.jpg'),
(155, '104-020-0020', 'Buscando a Alaska', 14990, 22222, 210, 7, 6, 'imagen/20.jpg'),
(156, '104-021-0021', '1984', 22990, 22222, 201, 8, 5, 'imagen/21.jpg'),
(157, '104-022-0022', 'Rebelion en la Granja', 21990, 22222, 202, 8, 5, 'imagen/22.jpg'),
(158, '104-023-0023', 'Que no muera la aspidistra', 17990, 22222, 203, 8, 5, 'imagen/23.jpg'),
(159, '104-024-0024', 'Papelucho', 4990, 22222, 204, 9, 6, 'imagen/24.jpg'),
(160, '104-025-0025', 'Papelucho en la clinica', 5990, 22222, 205, 9, 6, 'imagen/25.jpg'),
(161, '104-026-0026', 'Papelucho Historiador', 5990, 11111, 206, 9, 6, 'imagen/26.jpg'),
(162, '104-027-0027', 'La Casa Torcida', 18990, 11111, 207, 10, 3, 'imagen/27.jpg'),
(163, '104-028-0028', 'Asesinato en el orient express', 16990, 11111, 208, 10, 3, 'imagen/28.jpg'),
(164, '104-029-0029', 'Los Diez Negritos', 17990, 11111, 209, 10, 3, 'imagen/29.jpg'),
(165, '104-030-0030', 'El Resplandor', 21990, 66666, 210, 11, 4, 'imagen/30.jpg'),
(166, '104-031-0031', 'IT', 18990, 66666, 201, 11, 4, 'imagen/31.jpg'),
(167, '104-032-0032', 'Carrie', 24990, 55555, 202, 11, 4, 'imagen/32.jpg'),
(168, '104-033-0033', 'El Misterio de Salem\'s Loot', 21990, 55555, 203, 11, 4, 'imagen/33.jpg'),
(169, '104-034-0034', 'La Casa de los Espiritus', 16990, 55555, 204, 12, 2, 'imagen/34.jpg'),
(170, '104-035-0035', 'Paula', 13990, 44444, 205, 12, 2, 'imagen/35.jpg'),
(171, '104-036-0036', 'El Amante Japones', 17990, 44444, 206, 12, 2, 'imagen/36.jpg'),
(172, '104-037-0037', 'Danza de Dragones', 23990, 33333, 207, 13, 5, 'imagen/37.jpg'),
(173, '104-038-0038', 'Festin de Cuervos', 24990, 33333, 208, 13, 5, 'imagen/38.jpg'),
(174, '104-039-0039', 'El Caballero de los Siete Reinos', 27990, 22222, 209, 13, 5, 'imagen/39.jpg'),
(175, '104-040-0040', 'Farenheit 451', 14990, 22222, 210, 14, 5, 'imagen/40.jpg'),
(176, '104-041-0041', 'Cronicas Marcianas', 13990, 22222, 201, 14, 5, 'imagen/41.jpg'),
(177, '104-042-0042', 'El Hombre Ilustrado', 16990, 11111, 202, 14, 5, 'imagen/42.jpg'),
(178, '104-043-0043', 'El Señor de los Anillos', 21990, 11111, 203, 15, 5, 'imagen/43.jpg'),
(179, '104-044-0044', 'El Hobbit', 22990, 11111, 204, 15, 5, 'imagen/44.jpg'),
(180, '104-045-0045', 'El Retorno del Rey', 27990, 11111, 205, 15, 5, 'imagen/45.jpg'),
(181, '105-001-0001', 'Orgullo y Prejuicio', 14000, 22222, 210, 1, 1, 'imagen/1.jpg'),
(182, '105-002-0002', 'Emma', 11000, 66666, 210, 1, 1, 'imagen/2.jpg'),
(183, '105-003-0003', 'Sentido y Sensibilidad', 14990, 44444, 210, 1, 1, 'imagen/3.jpg'),
(184, '105-004-0004', 'Cien Años de Soledad', 11990, 44444, 210, 2, 2, 'imagen/4.jpg'),
(185, '105-005-0005', 'El amor en tiempos de colera', 10990, 44444, 210, 2, 2, 'imagen/5.jpg'),
(186, '105-006-0006', 'La Hojarasca', 9990, 44444, 203, 2, 2, 'imagen/6.jpg'),
(187, '105-007-0007', 'El Proceso', 7990, 44444, 203, 3, 1, 'imagen/7.jpg'),
(188, '105-008-0008', 'El Castillo', 12000, 44444, 203, 3, 1, 'imagen/8.jpg'),
(189, '105-009-0009', 'La Metamorfosis', 16000, 44444, 202, 3, 1, 'imagen/9.jpg'),
(190, '105-010-0010', 'Señora Dalloway', 12990, 44444, 202, 4, 1, 'imagen/10.jpg'),
(191, '105-011-0011', 'Al Faro', 11990, 44444, 202, 4, 1, 'imagen/11.jpg'),
(192, '105-012-0012', 'Entre Actos', 11990, 44444, 202, 4, 1, 'imagen/12.jpg'),
(193, '105-013-0013', 'Harry Potter y la piedra filosofal', 13990, 44444, 201, 5, 5, 'imagen/13.jpg'),
(194, '105-014-0014', 'Harry Potter y la camara secreta', 10990, 44444, 201, 5, 5, 'imagen/14.jpg'),
(195, '105-015-0015', 'Una Vacante Imprevista', 15990, 55555, 201, 5, 5, 'imagen/15.jpg'),
(196, '105-016-0016', 'Las Aventuras de Tom Sawyer', 10000, 55555, 201, 6, 2, 'imagen/16.jpg'),
(197, '105-017-0017', 'Las Aventuras de Huckleberry Finn', 13990, 55555, 207, 6, 2, 'imagen/17.jpg'),
(198, '105-018-0018', 'Bajo la misma estrella', 12500, 55555, 207, 7, 6, 'imagen/18.jpg'),
(199, '105-019-0019', 'Ciudad de Papel', 6990, 55555, 207, 7, 6, 'imagen/19.jpg'),
(200, '105-020-0020', 'Buscando a Alaska', 12990, 55555, 207, 7, 6, 'imagen/20.jpg'),
(201, '105-021-0021', '1984', 18990, 11111, 204, 8, 5, 'imagen/21.jpg'),
(202, '105-022-0022', 'Rebelion en la Granja', 13990, 11111, 204, 8, 5, 'imagen/22.jpg'),
(203, '105-023-0023', 'Que no muera la aspidistra', 18990, 11111, 204, 8, 5, 'imagen/23.jpg'),
(204, '105-024-0024', 'Papelucho', 5000, 11111, 204, 9, 6, 'imagen/24.jpg'),
(205, '105-025-0025', 'Papelucho en la clinica', 5500, 11111, 206, 9, 6, 'imagen/25.jpg'),
(206, '105-026-0026', 'Papelucho Historiador', 5000, 11111, 206, 9, 6, 'imagen/26.jpg'),
(207, '105-027-0027', 'La Casa Torcida', 9990, 11111, 206, 10, 3, 'imagen/27.jpg'),
(208, '105-028-0028', 'Asesinato en el orient express', 13990, 11111, 206, 10, 3, 'imagen/28.jpg'),
(209, '105-029-0029', 'Los Diez Negritos', 12990, 11111, 206, 10, 3, 'imagen/29.jpg'),
(210, '105-030-0030', 'El Resplandor', 21990, 11111, 206, 11, 4, 'imagen/30.jpg'),
(211, '105-031-0031', 'IT', 11990, 11111, 205, 11, 4, 'imagen/31.jpg'),
(212, '105-032-0032', 'Carrie', 20990, 11111, 205, 11, 4, 'imagen/32.jpg'),
(213, '105-033-0033', 'El Misterio de Salem\'s Loot', 14990, 44444, 205, 11, 4, 'imagen/33.jpg'),
(214, '105-034-0034', 'La Casa de los Espiritus', 15990, 44444, 205, 12, 2, 'imagen/34.jpg'),
(215, '105-035-0035', 'Paula', 11990, 66666, 209, 12, 2, 'imagen/35.jpg'),
(216, '105-036-0036', 'El Amante Japones', 23990, 66666, 209, 12, 2, 'imagen/36.jpg'),
(217, '105-037-0037', 'Danza de Dragones', 20990, 66666, 209, 13, 5, 'imagen/37.jpg'),
(218, '105-038-0038', 'Festin de Cuervos', 21990, 66666, 209, 13, 5, 'imagen/38.jpg'),
(219, '105-039-0039', 'El Caballero de los Siete Reinos', 19990, 66666, 208, 13, 5, 'imagen/39.jpg'),
(220, '105-040-0040', 'Farenheit 451', 10990, 66666, 209, 14, 5, 'imagen/40.jpg'),
(221, '105-041-0041', 'Cronicas Marcianas', 18990, 66666, 201, 14, 5, 'imagen/41.jpg'),
(222, '105-042-0042', 'El Hombre Ilustrado', 9990, 66666, 203, 14, 5, 'imagen/42.jpg'),
(223, '105-043-0043', 'El Señor de los Anillos', 24990, 66666, 202, 15, 5, 'imagen/43.jpg'),
(224, '105-044-0044', 'El Hobbit', 25990, 66666, 202, 15, 5, 'imagen/44.jpg'),
(225, '105-045-0045', 'El Retorno del Rey', 21990, 66666, 204, 15, 5, 'imagen/45.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_libreria`
--

CREATE TABLE `libro_libreria` (
  `id_libro` int(5) NOT NULL,
  `id_libreria` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libro_libreria`
--

INSERT INTO `libro_libreria` (`id_libro`, `id_libreria`) VALUES
(1, 101),
(2, 101),
(3, 101),
(4, 101),
(5, 101),
(6, 101),
(7, 101),
(8, 101),
(9, 101),
(10, 101),
(11, 101),
(12, 101),
(13, 101),
(14, 101),
(15, 101),
(16, 101),
(17, 101),
(18, 101),
(19, 101),
(20, 101),
(21, 101),
(22, 101),
(23, 101),
(24, 101),
(25, 101),
(26, 101),
(27, 101),
(28, 101),
(29, 101),
(30, 101),
(31, 101),
(32, 101),
(33, 101),
(34, 101),
(35, 101),
(36, 101),
(37, 101),
(38, 101),
(39, 101),
(40, 101),
(41, 101),
(42, 101),
(43, 101),
(44, 101),
(45, 101),
(46, 102),
(47, 102),
(48, 102),
(49, 102),
(50, 102),
(51, 102),
(52, 102),
(53, 102),
(54, 102),
(55, 102),
(56, 102),
(57, 102),
(58, 102),
(59, 102),
(60, 102),
(61, 102),
(62, 102),
(63, 102),
(64, 102),
(65, 102),
(66, 102),
(67, 102),
(68, 102),
(69, 102),
(70, 102),
(71, 102),
(72, 102),
(73, 102),
(74, 102),
(75, 102),
(76, 102),
(77, 102),
(78, 102),
(79, 102),
(80, 102),
(81, 102),
(82, 102),
(83, 102),
(84, 102),
(85, 102),
(86, 102),
(87, 102),
(88, 102),
(89, 102),
(90, 102),
(91, 103),
(92, 103),
(93, 103),
(94, 103),
(95, 103),
(96, 103),
(97, 103),
(98, 103),
(99, 103),
(100, 103),
(101, 103),
(102, 103),
(103, 103),
(104, 103),
(105, 103),
(106, 103),
(107, 103),
(108, 103),
(109, 103),
(110, 103),
(111, 103),
(112, 103),
(113, 103),
(114, 103),
(115, 103),
(116, 103),
(117, 103),
(118, 103),
(119, 103),
(120, 103),
(121, 103),
(122, 103),
(123, 103),
(124, 103),
(125, 103),
(126, 103),
(127, 103),
(128, 103),
(129, 103),
(130, 103),
(131, 103),
(132, 103),
(133, 103),
(134, 103),
(135, 103),
(136, 104),
(137, 104),
(138, 104),
(139, 104),
(140, 104),
(141, 104),
(142, 104),
(143, 104),
(144, 104),
(145, 104),
(146, 104),
(147, 104),
(148, 104),
(149, 104),
(150, 104),
(151, 104),
(152, 104),
(153, 104),
(154, 104),
(155, 104),
(156, 104),
(157, 104),
(158, 104),
(159, 104),
(160, 104),
(161, 104),
(162, 104),
(163, 104),
(164, 104),
(165, 104),
(166, 104),
(167, 104),
(168, 104),
(169, 104),
(170, 104),
(171, 104),
(172, 104),
(173, 104),
(174, 104),
(175, 104),
(176, 104),
(177, 104),
(178, 104),
(179, 104),
(180, 104),
(181, 105),
(182, 105),
(183, 105),
(184, 105),
(185, 105),
(186, 105),
(187, 105),
(188, 105),
(189, 105),
(190, 105),
(191, 105),
(192, 105),
(193, 105),
(194, 105),
(195, 105),
(196, 105),
(197, 105),
(198, 105),
(199, 105),
(200, 105),
(201, 105),
(202, 105),
(203, 105),
(204, 105),
(205, 105),
(206, 105),
(207, 105),
(208, 105),
(209, 105),
(210, 105),
(211, 105),
(212, 105),
(213, 105),
(214, 105),
(215, 105),
(216, 105),
(217, 105),
(218, 105),
(219, 105),
(220, 105),
(221, 105),
(222, 105),
(223, 105),
(224, 105),
(225, 105);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_tapa`
--

CREATE TABLE `tipo_tapa` (
  `id_tipo_tapa` int(5) NOT NULL,
  `descripcion_tapa` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_tapa`
--

INSERT INTO `tipo_tapa` (`id_tipo_tapa`, `descripcion_tapa`) VALUES
(11111, 'Blanda'),
(22222, 'Dura'),
(33333, 'Cartone'),
(44444, 'Tela'),
(55555, 'Holandesa'),
(66666, 'Piel');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`id_editorial`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `libreria`
--
ALTER TABLE `libreria`
  ADD PRIMARY KEY (`id_libreria`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id_libro`),
  ADD KEY `Libro_Autor_FK` (`id_autor`),
  ADD KEY `Libro_Editorial_FK` (`id_editorial`),
  ADD KEY `Libro_Tipo_tapa_FK` (`id_tipo_tapa`),
  ADD KEY `Libro_Genero_FK` (`id_genero`);

--
-- Indices de la tabla `libro_libreria`
--
ALTER TABLE `libro_libreria`
  ADD PRIMARY KEY (`id_libro`,`id_libreria`),
  ADD KEY `Libreria_FK` (`id_libreria`);

--
-- Indices de la tabla `tipo_tapa`
--
ALTER TABLE `tipo_tapa`
  ADD PRIMARY KEY (`id_tipo_tapa`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `Libro_Autor_FK` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`),
  ADD CONSTRAINT `Libro_Editorial_FK` FOREIGN KEY (`id_editorial`) REFERENCES `editorial` (`id_editorial`),
  ADD CONSTRAINT `Libro_Genero_FK` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`),
  ADD CONSTRAINT `Libro_Tipo_tapa_FK` FOREIGN KEY (`id_tipo_tapa`) REFERENCES `tipo_tapa` (`id_tipo_tapa`);

--
-- Filtros para la tabla `libro_libreria`
--
ALTER TABLE `libro_libreria`
  ADD CONSTRAINT `Libreria_FK` FOREIGN KEY (`id_libreria`) REFERENCES `libreria` (`id_libreria`),
  ADD CONSTRAINT `Libro_FK` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`id_libro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
