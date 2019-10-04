-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 12-12-2018 a las 17:06:22
-- Versión del servidor: 5.7.23
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `frikiland`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

DROP TABLE IF EXISTS `articulos`;
CREATE TABLE IF NOT EXISTS `articulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`) VALUES
(1, 'Better Call Saul', 'Better Call Saul es el perfecto sucesor de Breaking Bad, que alcanzó su temporada final en 2013. Esta camiseta probará que eres un fiel seguidor de la precuela que comenzó en 2015. El logo amarillo y rojo de la serie, destaca sobre el fondo negro de la camiseta.', '17.99', 1, 'bettercallsaul.jpg'),
(2, 'Breaking Bad', 'De adorable padre de familia a capo de la droga: En Breaking Bad, Walter White alias \"Heisenberg\", se adentra en el mundo de la droga y cada día se hunde un poco más. La camiseta negra muestra a Walter White en modo cómic. Bajo la imagen se puede leer \"Heisenberg\".', '17.99', 10, 'breakingbad.jpg'),
(3, 'Dora la exploradora', '¡Disfruta de Dora la exploradora con esta preciosa camiseta 100% algodón infantil!', '9.99', 4, 'dora.jpg'),
(5, 'Neegan', 'Esta camiseta ‘Negan - Just Getting Started’ pertenece a la serie ‘The Walking Dead’. y como no, aparecen Negan y Lucille, con el slogan, “We’re Just Getting Started”. Qué gran pareja hacen.', '19.99', 0, 'neegan.jpg'),
(6, 'Take the L', '¿Eres de los que se pasan las 24 horas jugando a Fortnite? Llévate el popular baile \'Take the L\' directamente a tu camiseta.', '17.99', 2, 'fortnite.jpg'),
(7, 'Star Wars', 'Multitud de gente adora \'Star Wars\'. ¿Eres uno de ellos? Hora de tener una camiseta como esta entre tus preciadas pertenencias. Con su famoso logo delantero ya tienes como romper el hielo.', '13.99', 0, 'starwars.jpg'),
(8, 'Señor de los Anillos', 'Esta camiseta del señor de los anillos es 100% algodón, con una preciosa foto de Aragorn con un fondo azul marino.', '22.99', 15, 'lordofrings.jpg'),
(9, 'Hogwarts', 'Si te ha llegado la carta de Hogwarts, ¿a qué esperas para comprar esta camiseta?', '24.99', 5, 'harrypotter.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('8su6uag2lc48fvpl1rqeiuf9lm2ec5p8', '::1', 1544616678, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343631363637383b),
('h2npli9v7ehsemtoqomsct8c59obfog9', '::1', 1544616980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343631363938303b),
('unvdash8vkatss8bei8ouh8h15hvsgme', '::1', 1544617294, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343631373239343b),
('5gk5u5kplrslq3an1eajop0a91oa8u1r', '::1', 1544617771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343631373737313b),
('f9u0rotmk0p5387lm75ja8qsshcqfre2', '::1', 1544618113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343631383131333b),
('n4h771ff4c1c4kr5n9cvp2f8vmct2muf', '::1', 1544618454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343631383435343b),
('56j6hbik1977dda3pkiudjku9gj35fla', '::1', 1544618773, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343631383737333b),
('u5h72jiks06ims14krd4ols0c6l0kh92', '::1', 1544619077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343631393037373b),
('0delj59sheo7adm4tomtq6eseg0df63j', '::1', 1544619406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343631393430363b),
('2f9d582vtp0an004csd7kl29rgvj6rhc', '::1', 1544619989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343631393938393b69734c6f67676564496e7c623a313b6e616d657c733a383a2253616e746961676f223b69647c733a323a223237223b657341646d696e6973747261646f727c733a313a2231223b),
('1ub4t03l1ksn6a1u0cj77s085b2fk25n', '::1', 1544621837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343632313833373b),
('seok3aclco63qfa0cb36qn5jm3i9jrof', '::1', 1544622373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343632323337333b69734c6f67676564496e7c623a313b6e616d657c733a383a2253616e746961676f223b69647c733a323a223237223b657341646d696e6973747261646f727c733a313a2231223b),
('3f431cth4kr6d6j6uu4u08a3ov9lbba5', '::1', 1544623283, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343632333238333b),
('dnf65nr8f366mvcar9vplg3jr2htj6s6', '::1', 1544623942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343632333934323b),
('6ciquc240i6254umkbsrk0k74ku381bv', '::1', 1544624335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343632343333353b),
('a34g0p0tmtetg2vnc8k0e2dho4q43ttd', '::1', 1544624646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343632343634363b),
('odrusnl7e42rmh73066fgh6jhdjqbupk', '::1', 1544625005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343632353030353b),
('stref08n2ouv8obegv5r8s2g45ihumaa', '::1', 1544625431, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343632353433313b),
('3ml1821qcrsot5tkt9vtf48t0ar6p8lc', '::1', 1544628359, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343632383335393b),
('7g9vpglhvfpbflgpo6j9g0o1ssmpuv8o', '::1', 1544628686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343632383638363b),
('i6iuasvbmrh0r3iv1aqv99am3qfkqeig', '::1', 1544629061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343632393036313b),
('3rejbsss510m26jsu4fpfj3snrrl7edq', '::1', 1544629467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343632393436373b),
('tpihhksl4mjfm0kq3i2d4qjkri90rue0', '::1', 1544629769, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343632393736393b),
('l4ugkgqs2b5k0su79992pjlc483s6sal', '::1', 1544630357, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343633303335373b),
('3kshfl1f3j26bm4ikpe3bhaf0kso6l3k', '::1', 1544630668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343633303636383b),
('2juoc7kl0kn8paldr5pd1uc7us9541jk', '::1', 1544631039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343633313033393b69734c6f67676564496e7c623a313b6e616d657c733a383a2253616e746961676f223b69647c733a323a223237223b657341646d696e6973747261646f727c733a313a2231223b),
('pnr3sp9sob5rhkf3l0jdg5m17arh6kfl', '::1', 1544632170, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343633323137303b69734c6f67676564496e7c623a313b6e616d657c733a383a2253616e746961676f223b69647c733a323a223237223b657341646d696e6973747261646f727c733a313a2231223b),
('l28dkd3kthu8ucnluhnppam8kj76emtd', '::1', 1544632472, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343633323437323b69734c6f67676564496e7c623a313b6e616d657c733a383a2253616e746961676f223b69647c733a323a223237223b657341646d696e6973747261646f727c733a313a2231223b),
('gssgnlmptsceda4315qnpkr5u9a2ianv', '::1', 1544632845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343633323834353b69734c6f67676564496e7c623a313b6e616d657c733a383a2253616e746961676f223b69647c733a323a223237223b657341646d696e6973747261646f727c733a313a2231223b),
('vmlqniht6jbrrgn3f25jt9m4hoj5sl7f', '::1', 1544633162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343633333136323b69734c6f67676564496e7c623a313b6e616d657c733a383a2253616e746961676f223b69647c733a323a223237223b657341646d696e6973747261646f727c733a313a2231223b),
('gbsetvm90smn843g4oc72s87ku689mjj', '::1', 1544634000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343633343030303b69734c6f67676564496e7c623a313b6e616d657c733a383a2253616e746961676f223b69647c733a323a223237223b657341646d696e6973747261646f727c733a313a2231223b),
('m88q0ktlgbg8bviinjhc81c2f9o30uiu', '::1', 1544634337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343633343333373b69734c6f67676564496e7c623a313b6e616d657c733a383a2253616e746961676f223b69647c733a323a223237223b657341646d696e6973747261646f727c733a313a2231223b),
('255ivj6nk8mujnlpfd0ujl3pj76pcgmh', '::1', 1544634356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534343633343333373b69734c6f67676564496e7c623a313b6e616d657c733a383a2253616e746961676f223b69647c733a323a223237223b657341646d696e6973747261646f727c733a313a2231223b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `idArticulo` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `comentario` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `titulo` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idArticulo`,`idUsuario`),
  KEY `idArticulo` (`idArticulo`),
  KEY `idUsuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
CREATE TABLE IF NOT EXISTS `direcciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pais` varchar(50) CHARACTER SET latin1 NOT NULL,
  `provincia` varchar(50) CHARACTER SET latin1 NOT NULL,
  `ciudad` varchar(50) CHARACTER SET latin1 NOT NULL,
  `codigoPostal` char(5) CHARACTER SET latin1 NOT NULL,
  `numero` int(11) NOT NULL,
  `escalera` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `piso` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `calle` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `direcciones`
--

INSERT INTO `direcciones` (`id`, `pais`, `provincia`, `ciudad`, `codigoPostal`, `numero`, `escalera`, `piso`, `calle`) VALUES
(5, 'España', 'Cai', 'Cai', '11010', 2147483647, '', NULL, 'Avd. Juan Carlos 1'),
(6, 'España', 'Cai', 'Cai', '11011', 45, '', NULL, 'Paco Alba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas_de_compra`
--

DROP TABLE IF EXISTS `lineas_de_compra`;
CREATE TABLE IF NOT EXISTS `lineas_de_compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idArticulo` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idArticulo` (`idArticulo`),
  KEY `idUsuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `lineas_de_compra`
--

INSERT INTO `lineas_de_compra` (`id`, `idArticulo`, `idUsuario`, `cantidad`) VALUES
(12, 3, 28, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
CREATE TABLE IF NOT EXISTS `newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`) VALUES
(11, 'santidky@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `idTarjeta` int(11) NOT NULL,
  `idDireccion` int(11) NOT NULL,
  `fechaPedido` date NOT NULL,
  `fechaEntrega` date NOT NULL,
  `estado` enum('Sin tramitar','En tramite','Enviado','Finalizado') COLLATE utf8mb4_unicode_ci NOT NULL,
  `transportista` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idTarjeta` (`idTarjeta`),
  KEY `idDireccion` (`idDireccion`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `idUsuario`, `idTarjeta`, `idDireccion`, `fechaPedido`, `fechaEntrega`, `estado`, `transportista`) VALUES
(11, 27, 6, 5, '2018-12-12', '2018-12-13', 'Finalizado', 'SEUR'),
(12, 28, 7, 6, '2018-12-12', '2018-12-19', 'Sin tramitar', 'Correos'),
(13, 27, 6, 5, '2018-12-12', '2018-12-19', 'Sin tramitar', 'Correos'),
(14, 27, 6, 5, '2018-12-12', '2018-12-19', 'Sin tramitar', 'Correos'),
(15, 27, 6, 5, '2018-12-12', '2018-12-19', 'Sin tramitar', 'Correos'),
(16, 27, 6, 5, '2018-12-12', '2018-12-19', 'Sin tramitar', 'Correos'),
(17, 27, 6, 5, '2018-12-12', '2018-12-19', 'Sin tramitar', 'Correos'),
(18, 27, 6, 5, '2018-12-12', '2018-12-19', 'Sin tramitar', 'Correos'),
(19, 27, 6, 5, '2018-12-12', '2018-12-19', 'Sin tramitar', 'Correos'),
(20, 27, 6, 5, '2018-12-12', '2018-12-19', 'Sin tramitar', 'Correos'),
(21, 27, 6, 5, '2018-12-12', '2018-12-19', 'Sin tramitar', 'Correos'),
(22, 27, 6, 5, '2018-12-12', '2018-12-19', 'Sin tramitar', 'Correos'),
(23, 27, 6, 5, '2018-12-12', '2018-12-19', 'Sin tramitar', 'Correos'),
(24, 27, 6, 5, '2018-12-12', '2018-12-19', 'Sin tramitar', 'Correos'),
(25, 27, 6, 5, '2018-12-12', '2018-12-19', 'Sin tramitar', 'Correos'),
(26, 27, 6, 5, '2018-12-12', '2018-12-19', 'Sin tramitar', 'Correos'),
(27, 27, 6, 5, '2018-12-12', '2018-12-19', 'Sin tramitar', 'Correos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_lineasdecompra`
--

DROP TABLE IF EXISTS `pedidos_lineasdecompra`;
CREATE TABLE IF NOT EXISTS `pedidos_lineasdecompra` (
  `idPedido` int(11) NOT NULL,
  `idLineaDeCompra` int(11) NOT NULL,
  PRIMARY KEY (`idPedido`,`idLineaDeCompra`),
  KEY `idLineaDeCompra` (`idLineaDeCompra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedidos_lineasdecompra`
--

INSERT INTO `pedidos_lineasdecompra` (`idPedido`, `idLineaDeCompra`) VALUES
(12, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

DROP TABLE IF EXISTS `pma__bookmark`;
CREATE TABLE IF NOT EXISTS `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

DROP TABLE IF EXISTS `pma__central_columns`;
CREATE TABLE IF NOT EXISTS `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin,
  PRIMARY KEY (`db_name`,`col_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

DROP TABLE IF EXISTS `pma__column_info`;
CREATE TABLE IF NOT EXISTS `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

DROP TABLE IF EXISTS `pma__designer_settings`;
CREATE TABLE IF NOT EXISTS `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('amishop', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

DROP TABLE IF EXISTS `pma__export_templates`;
CREATE TABLE IF NOT EXISTS `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

DROP TABLE IF EXISTS `pma__favorite`;
CREATE TABLE IF NOT EXISTS `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

DROP TABLE IF EXISTS `pma__history`;
CREATE TABLE IF NOT EXISTS `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

DROP TABLE IF EXISTS `pma__navigationhiding`;
CREATE TABLE IF NOT EXISTS `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

DROP TABLE IF EXISTS `pma__pdf_pages`;
CREATE TABLE IF NOT EXISTS `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('amishop', 1, 'pag');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

DROP TABLE IF EXISTS `pma__recent`;
CREATE TABLE IF NOT EXISTS `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('amishop', '[{\"db\":\"amishop\",\"table\":\"usuarios\"},{\"db\":\"amishop\",\"table\":\"articulos\"},{\"db\":\"amishop\",\"table\":\"pedidos\"},{\"db\":\"amishop\",\"table\":\"lineas_de_compra\"},{\"db\":\"amishop\",\"table\":\"pedidos_lineasdecompra\"},{\"db\":\"amishop\",\"table\":\"comentarios\"},{\"db\":\"amishop\",\"table\":\"direcciones\"},{\"db\":\"amishop\",\"table\":\"tarjetas\"},{\"db\":\"amishop\",\"table\":\"usuarios_tarjetas\"},{\"db\":\"amishop\",\"table\":\"usuarios_direcciones\"}]'),
('root', '[{\"db\":\"frikiland\",\"table\":\"usuarios\"},{\"db\":\"frikiland\",\"table\":\"articulos\"},{\"db\":\"frikiland\",\"table\":\"valoraciones\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

DROP TABLE IF EXISTS `pma__relation`;
CREATE TABLE IF NOT EXISTS `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

DROP TABLE IF EXISTS `pma__savedsearches`;
CREATE TABLE IF NOT EXISTS `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

DROP TABLE IF EXISTS `pma__table_coords`;
CREATE TABLE IF NOT EXISTS `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Volcado de datos para la tabla `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('amishop', 'articulos', 1, 659, 546),
('amishop', 'ci_sessions', 1, 0, 0),
('amishop', 'comentarios', 1, 824, 460),
('amishop', 'direcciones', 1, 627, 315),
('amishop', 'lineas_de_compra', 1, 235, 61),
('amishop', 'newsletter', 1, 488, 278),
('amishop', 'pedidos', 1, 696, 199),
('amishop', 'pma__bookmark', 1, 671, 74),
('amishop', 'pma__central_columns', 1, 408, 886),
('amishop', 'pma__column_info', 1, 223, 868),
('amishop', 'pma__designer_settings', 1, 500, 821),
('amishop', 'pma__export_templates', 1, 0, 0),
('amishop', 'pma__favorite', 1, 393, 935),
('amishop', 'pma__history', 1, 0, 0),
('amishop', 'pma__navigationhiding', 1, 0, 0),
('amishop', 'pma__pdf_pages', 1, 33, 0),
('amishop', 'pma__recent', 1, 119, 294),
('amishop', 'pma__relation', 1, 1, 491),
('amishop', 'pma__savedsearches', 1, 250, 855),
('amishop', 'pma__table_coords', 1, 0, 14),
('amishop', 'pma__table_info', 1, 248, 893),
('amishop', 'pma__table_uiprefs', 1, 376, 932),
('amishop', 'pma__tracking', 1, 192, 725),
('amishop', 'pma__userconfig', 1, 0, 21),
('amishop', 'pma__usergroups', 1, 8, 0),
('amishop', 'pma__users', 1, 295, 189),
('amishop', 'tarjetas', 1, 881, 105),
('amishop', 'usuarios', 1, 885, 316),
('amishop', 'usuarios_direcciones', 1, 567, 60),
('amishop', 'usuarios_tarjetas', 1, 255, 364),
('amishop', 'valoraciones', 1, 278, 291);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

DROP TABLE IF EXISTS `pma__table_info`;
CREATE TABLE IF NOT EXISTS `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

DROP TABLE IF EXISTS `pma__table_uiprefs`;
CREATE TABLE IF NOT EXISTS `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('amishop', 'amishop', 'articulos', '[]', '2018-01-08 18:34:26'),
('amishop', 'amishop', 'ci_sessions', '{\"sorted_col\":\"`ci_sessions`.`data`  DESC\"}', '2018-01-01 20:49:19'),
('amishop', 'amishop', 'comentarios', '{\"sorted_col\":\"`comentarios`.`titulo` ASC\"}', '2018-01-06 00:58:44'),
('amishop', 'amishop', 'newsletter', '{\"sorted_col\":\"`newsletter`.`id` ASC\"}', '2018-01-05 17:11:58'),
('amishop', 'amishop', 'usuarios', '{\"sorted_col\":\"`esAdministrador` ASC\"}', '2018-01-09 00:09:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

DROP TABLE IF EXISTS `pma__tracking`;
CREATE TABLE IF NOT EXISTS `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

DROP TABLE IF EXISTS `pma__userconfig`;
CREATE TABLE IF NOT EXISTS `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('amishop', '2018-01-08 23:44:25', '{\"lang\":\"es\",\"collation_connection\":\"utf8mb4_unicode_ci\"}'),
('root', '2018-12-12 13:46:29', '{\"lang\":\"es\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

DROP TABLE IF EXISTS `pma__usergroups`;
CREATE TABLE IF NOT EXISTS `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N',
  PRIMARY KEY (`usergroup`,`tab`,`allowed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

DROP TABLE IF EXISTS `pma__users`;
CREATE TABLE IF NOT EXISTS `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`usergroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas`
--

DROP TABLE IF EXISTS `tarjetas`;
CREATE TABLE IF NOT EXISTS `tarjetas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `numero` char(16) COLLATE utf8_spanish_ci NOT NULL,
  `cvv` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `fechaCaducidad` date NOT NULL,
  `marca` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tarjetas`
--

INSERT INTO `tarjetas` (`id`, `nombre`, `numero`, `cvv`, `fechaCaducidad`, `marca`) VALUES
(6, 'Santiago', '75546223131', '445', '2018-12-21', 'VISA'),
(7, 'Pablo', '75546223131', '445', '2018-12-31', 'VISA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `nombreUsuario` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `contrasena` char(64) COLLATE utf8_spanish_ci NOT NULL,
  `esAdministrador` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombreUsuario` (`nombreUsuario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `email`, `nombreUsuario`, `contrasena`, `esAdministrador`) VALUES
(27, 'Santiago', 'Godoy Poce', 'santi.godoy@alum.uca.es', 'SantiGodoyPW', '$2y$12$l9SKs5kLCLE6lrALssHcKOJb6U1G0fD.85eTYSMbQqhvJsGiU1oym', 1),
(28, 'Pablo', 'Pastor Muñoz', 'pablo@alum.uca,es', 'PabloP', '$2y$12$qtXAIpukvzRdCLvLnRLb0eTlleD5vIkToHPUD44TDT8CiAWHNxtdy', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_direcciones`
--

DROP TABLE IF EXISTS `usuarios_direcciones`;
CREATE TABLE IF NOT EXISTS `usuarios_direcciones` (
  `idDireccion` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idDireccion`,`idUsuario`),
  KEY `idDireccion` (`idDireccion`),
  KEY `idUsuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios_direcciones`
--

INSERT INTO `usuarios_direcciones` (`idDireccion`, `idUsuario`) VALUES
(5, 27),
(6, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_tarjetas`
--

DROP TABLE IF EXISTS `usuarios_tarjetas`;
CREATE TABLE IF NOT EXISTS `usuarios_tarjetas` (
  `idTarjeta` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idTarjeta`,`idUsuario`),
  KEY `idTarjeta` (`idTarjeta`),
  KEY `idUsuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios_tarjetas`
--

INSERT INTO `usuarios_tarjetas` (`idTarjeta`, `idUsuario`) VALUES
(6, 27),
(7, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoraciones`
--

DROP TABLE IF EXISTS `valoraciones`;
CREATE TABLE IF NOT EXISTS `valoraciones` (
  `idArticulo` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idArticulo`,`idUsuario`) USING BTREE,
  KEY `idArticulo` (`idArticulo`),
  KEY `idUsuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lineas_de_compra`
--
ALTER TABLE `lineas_de_compra`
  ADD CONSTRAINT `lineas_de_compra_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lineas_de_compra_ibfk_2` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`idDireccion`) REFERENCES `direcciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`idTarjeta`) REFERENCES `tarjetas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos_lineasdecompra`
--
ALTER TABLE `pedidos_lineasdecompra`
  ADD CONSTRAINT `pedidos_lineasdecompra_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedidos_lineasdecompra_ibfk_2` FOREIGN KEY (`idLineaDeCompra`) REFERENCES `lineas_de_compra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_direcciones`
--
ALTER TABLE `usuarios_direcciones`
  ADD CONSTRAINT `usuarios_direcciones_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_direcciones_ibfk_2` FOREIGN KEY (`idDireccion`) REFERENCES `direcciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_tarjetas`
--
ALTER TABLE `usuarios_tarjetas`
  ADD CONSTRAINT `usuarios_tarjetas_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_tarjetas_ibfk_2` FOREIGN KEY (`idTarjeta`) REFERENCES `tarjetas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  ADD CONSTRAINT `valoraciones_ibfk_1` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `valoraciones_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
