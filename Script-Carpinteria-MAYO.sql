-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2025 a las 04:31:12
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carpinteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Articulos BARBIE'),
(2, 'Articulos VARIOS'),
(3, 'MÁS ARTICULOS'),
(4, 'CAJA DE 3MM TIPO ZAPATOS'),
(5, 'CAJA DE TE ARTE FRANCES'),
(6, 'CAJA DE TE 3MM S/VIDRIO'),
(7, 'CAJA DE TE 3MM C/VIDRIO'),
(8, 'CAJADE TE 5MM S/VIDRIO'),
(9, 'CAJADE TE 5MM C/VIDRIO'),
(10, 'PERCHERO GANCHO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `categoria_id`, `codigo`, `nombre`, `precio`) VALUES
(1, 1, '000', 'Casa c/tejas, baranda,escalera', 27346),
(2, 1, '00', 'Casa c/baranda', 13188),
(3, 1, '01', 'Casa comun grande', 20074),
(4, 1, '02', 'Mesa ovalada', 872),
(5, 1, '03', 'Sillas grandes', 582),
(6, 1, '04', 'Sillon doble', 970),
(7, 1, '05', 'Mesa ratona', 582),
(8, 1, '06', 'Escritorio', 1746),
(9, 1, '07', 'Mesa cuadrada grande', 872),
(10, 1, '08', 'Ropero grande', 3546),
(11, 1, '09', 'Cama simple', 1106),
(12, 1, '010', 'Mesa de luz', 582),
(13, 1, '011', 'Cama cucheta doble', 1939),
(14, 1, '012', 'Comoda', 2094),
(15, 1, '013', 'Sillon SIMPLE', 872),
(16, 1, '014', 'Casa comun chica', 14120),
(17, 1, '015', 'Fuerte (Castillo)', 27144),
(18, 1, '016', 'Perchero mini', 543),
(19, 1, '017', 'Casa Americana', 40340),
(20, 1, '018', 'Set de belleza con cajon', 30763),
(21, 1, '018', 'Set de belleza ovalado', 27144),
(22, 1, '018', 'Set de belleza corona con cajon', 30763),
(23, 1, '018', 'Set de belleza corona', 27144),
(24, 1, '019', 'Frente de titeres', 4752),
(25, 1, '021', 'Mesedora', 1261),
(26, 1, '022', 'Casa colonial', 27346),
(27, 1, '023', 'Cama matrinomio', 2114),
(28, 1, '024', 'Alacena', 4514),
(29, 1, '025', 'Casa mini', 10201),
(30, 1, '026', 'Mesa mini', 699),
(31, 1, '027', 'Silla mini', 582),
(32, 1, '028', 'Cuna Grande', 5429),
(33, 1, '029', 'Ropero Chico', 2483),
(34, 1, '030', 'Cuna Mini', 543),
(35, 1, '031', 'Cama mini', 872),
(36, 1, '034', 'Cocina Mini', 1202),
(37, 1, '035', 'Heladera Mini', 1009),
(38, 1, '044', 'Casa c/bizagra', 22497),
(39, 1, '045A', 'Casa repisa c/ascensor', 24675),
(40, 1, '045', 'Casa repisa', 23031),
(41, 1, '046', 'Casa con ascensor chica', 16451),
(42, 1, '047', 'Casa con baranda nueva', 22619),
(43, 1, '048', 'Carrito de beb‚', 12667),
(44, 1, '049', 'porta cosmetico tipo romantico', 11557),
(45, 1, '050', 'porta rollo de mesa x3 cajones', 6522),
(46, 1, '051', 'Casa moderna', 32901),
(47, 1, '052', 'Porta plato porta cubiertos', 10995),
(48, 2, '1', 'Revistero chico', 4079),
(49, 2, '2', 'Revistero grande', 8158),
(50, 2, '4', 'Porta jugos', 3331),
(51, 2, '5', 'Yerbero y Azucarero', 3399),
(52, 2, '6', 'Portarrollo de pared', 2379),
(53, 2, '7', 'Porta cuchara', 1731),
(54, 2, '8', 'Lapicero c/frente bajo', 699),
(55, 2, '9', 'Tarjetero doble mesa', 699),
(56, 2, '10', 'Tarjetero', 889),
(57, 2, '11', 'Porta te de mesa', 677),
(58, 2, '14', 'Porta saquito vertical T/Postiza', 2719),
(59, 2, '15', 'Porta saquito vertical C/Tapa/F', 2719),
(60, 2, '16', 'Porta te vertical grande', 3059),
(61, 2, '17', 'Paraguero conico', 6798),
(62, 2, '19', 'Paraguero recto', 6118),
(63, 2, '20', 'Porta comestico de mesa chico', 5438),
(64, 2, '21', 'Porta carta grande', 2622),
(65, 2, '24', 'Caja P/servilleta cuadra/regu', 2230),
(66, 2, '26', 'P/espejo regulable chico', 2074),
(67, 2, '27', 'Servilleteros con forma', 744),
(68, 2, '28', 'Servilleteros con forma', 744),
(69, 2, '29', 'Servilleteros con forma', 744),
(70, 2, '30', 'Servilletero mariposa', 744),
(71, 2, '31', 'Servilleteros con forma', 744),
(72, 2, '32', 'Servilleteros con forma', 744),
(73, 2, '33', 'Panera frente de vidrio', 5290),
(74, 2, '34', 'Panera mesa c/laterales conicos', 4419),
(75, 2, '35', 'Bandeja chica economica', 1206),
(76, 2, '36', 'Lapicero c/media esfera', 677),
(77, 2, '37', 'Lapicero c/ondas', 635),
(78, 2, '38', 'Servilletero c/corazon', 550),
(79, 2, '39', 'Porta rollo 3 pos', 2039),
(80, 2, '40', 'Portarollo c/ frente vaca', 614),
(81, 2, '41', 'Portarollo c/frente casita', 614),
(82, 2, '44', 'Porta rollo vertical girasol', 1228),
(83, 2, '56', 'Porta bolsa', 4759),
(84, 2, '61', 'Perchero c/forma x3', 2412),
(85, 2, '62', 'Perchero c/forma x2', 1947),
(86, 2, '63', 'Perchero c/forma x3 anchos', 3237),
(87, 2, '64', 'Perchero c/forma', 2983),
(88, 2, '65', 'Perchero c/forma c/sop. Torneado x2', 2307),
(89, 2, '66', 'Perchero c/forma c/sop. Torneado x3', 2772),
(90, 2, '71', 'Carretilla', 2719),
(91, 2, '72', 'Llavero c/forma x4 divisiones', 974),
(92, 2, '73', 'Llavero c/forma x2 divisiones', 486),
(93, 2, '74', 'Fosfera b/llavero x3', 1015),
(94, 2, '83', 'Cabildo porta llave', 614),
(95, 2, '93', 'Llavero x4 bajo', 614),
(96, 2, '96', 'Base de reloj', 1756),
(97, 2, '97', 'Base de reloj', 1503),
(98, 2, '98', 'Base de reloj', 2053),
(99, 2, '97bis', 'Base de reloj', 953),
(100, 2, '97 bis', 'Base de reloj', 974),
(101, 2, '102', 'Bandeja con manija', 4531),
(102, 2, '102P', 'Bandeja con manija c/patas', 5240),
(103, 2, '103', 'Bandeja con patas 35x50', 3823),
(104, 2, '104', 'Bandeja arabica chica', 3733),
(105, 2, '105', 'Bandeja arabica grande', 3768),
(106, 2, '106', 'Bandeja c/manija 25x40', 4209),
(107, 2, '107', 'Porta servilleta', 1749),
(108, 2, '111', 'Paraguero c/calado en flor', 3999),
(109, 2, '112', 'Bandeja 5mm corazon 23x30', 1799),
(110, 2, '113', 'Bandeja azulejo x6', 1714),
(111, 2, '114', 'Placa reloj / doble moldura', 1524),
(112, 2, '115', 'Placa reloj/ doble moldura An.', 1481),
(113, 2, '117', 'Bandeja c/patas', 3258),
(114, 2, '118', 'Pa¤alera', 5438),
(115, 2, '124', 'Tetera Grande', 5404),
(116, 2, '128', 'Bandeja plana redonda', 3015),
(117, 2, '129', 'Bandeja ovalada grande S/Manija', 2553),
(118, 2, '130', 'Bandeja rectangular c/manija', 2603),
(119, 2, '131', 'Bandeja ovalada chica s/manija', 2483),
(120, 2, '132', 'Bandeja ovalada chica c/manija', 4611),
(121, 2, '135', 'Porta cosmeticos', 4079),
(122, 2, '150', 'Placa reloj / doble moldura', 1840),
(123, 2, '151', 'Tabla p/picar CHICA', 816),
(124, 2, '152', 'Tabla p/picar GRANDE', 1088),
(125, 2, '153', 'Fosforera corazon', 804),
(126, 2, '156', 'Porta tacos 5mm. p/lapiz', 635),
(127, 2, '157', 'Porta comesticos c/ondas', 3331),
(128, 2, '159', 'Porta saquito mesa c/servilletero', 1058),
(129, 2, '160', 'Caja de c/frente de pava', 1333),
(130, 2, '161', 'Fosforera', 825),
(131, 2, '162C', 'Porta pa¤uelos CHICO', 1143),
(132, 2, '162G', 'Porta pa¤uelos GRANDE', 1312),
(133, 2, '163', 'Porta cuchara', 2099),
(134, 2, '164', 'Caja te calada', 2264),
(135, 2, '165', 'Porta lapiz perrito', 2719),
(136, 2, '167', 'Bandeja grande c/PATAS', 3399),
(137, 2, '172', 'Porta rollo mesa girasol doble', 1544),
(138, 2, '174', 'Porta cosmetico oso grande', 2962),
(139, 2, '176', 'Porta bolsa casita', 4759),
(140, 2, '179', 'Pa¤elera con cajon', 9517),
(141, 2, '180', 'Porta carta x1 division', 1565),
(142, 2, '181', 'Porta carta x2 divisiones', 1778),
(143, 2, '182', 'Porta carta x3 divisiones', 1883),
(144, 2, '183', 'Porta rollo ARTE FRANCES', 1989),
(145, 2, '184 c/v', 'Caja de te x3 de 9mm', 2560),
(146, 2, '187', 'Porta papel higienico', 4071),
(147, 2, '184 s/v', 'Caja de te x3 de 9mm', 2390),
(148, 2, '188', 'Porta te vertical casita', 1695),
(149, 2, '189 x4', 'Caja de te arte frances', 2899),
(150, 2, '189 x6', 'Caja de te arte frances', 3957),
(151, 2, '192', 'Cajonera 25cm ancho 2 cajones', 4212),
(152, 2, '193', 'Cajonera 25cm ancho 3 cajones', 5163),
(153, 2, '194', 'Cajonera 25cm ancho 4 cajones', 6031),
(154, 2, '199', 'Caja c/tapa postiza 8x8', 614),
(155, 2, '200', 'Caja c/tapa postiza 8x11', 614),
(156, 2, '201', 'Caja c/tapa postiza 10x13', 804),
(157, 2, '202', 'Caja c/tapa postiza 13x15', 931),
(158, 2, '203', 'Caja c/tapa postiza 13x18', 1079),
(159, 2, '206', 'Cajon c/bizagra y broche chico', 2307),
(160, 2, '207', 'Cajon c/bizagra y broche mediano', 2793),
(161, 2, '208', 'Cajon c/bizagra y broche grande', 3026),
(162, 2, '215', 'Fosforera casita', 910),
(163, 2, '216', 'Bandejita chica porta taza', 1015),
(164, 2, '217', 'Caja de te economica x4', 2262),
(165, 2, '220', 'Panera de Mesa corazon', 2651),
(166, 2, '221', 'Lapicero medio punto', 673),
(167, 2, '223', 'Yerbero automatico chico', 3449),
(168, 2, '223', 'Yerbero automatico  grande', 3851),
(169, 2, '227', 'Revistero mediano c/onda', 5438),
(170, 2, '228', 'Revistero corazon c/soga', 5438),
(171, 2, '229', 'Costurero', 8158),
(172, 2, '230', 'Caja de te x3 c/tapa rebatible', 2129),
(173, 2, '233', 'Porta cosmetico con forma', 3059),
(174, 2, '235', 'Porta saumerico', 1694),
(175, 2, '239', 'Porta bolsa casita', 2094),
(176, 2, '240', 'Ordenador papeles chico', 868),
(177, 2, '241', 'Tarjetero p/te DOBLE', 846),
(178, 2, '246', 'Revistero c/baranda', 3639),
(179, 2, '247', 'Revistero pared', 5099),
(180, 2, '248', 'Porta rollo c/estante', 4524),
(181, 2, '249', 'Repisa de telefono', 3661),
(182, 2, '250', 'Repisa escalera GRANDE', 18957),
(183, 2, '252', 'Porta rollo c/est.corazon', 4236),
(184, 2, '253', 'Revistero de pared', 2433),
(185, 2, '254', 'Repisa escalera CHICA', 4690),
(186, 2, '255', 'Banquito de un escalon x9mm', 3301),
(187, 2, '256', 'Porta tijera', 1249),
(188, 2, '257', 'Porta comestico chico', 2719),
(189, 2, '259', 'Porta cuchara', 1924),
(190, 2, '261', 'Panera con persiana', 8158),
(191, 2, '264', 'Porta te frente de pava GRANDE', 1587),
(192, 2, '265', 'Porta te frente de pava CHICO', 1143),
(193, 2, '266', 'Papelero macetero', 2560),
(194, 2, '267', 'Porta reloj manzana', 1185),
(195, 2, '268', 'Caja pajaros c/techo tipo tejas', 4419),
(196, 2, '269', 'Caja pajaros c/techo 2 caidas', 4079),
(197, 2, '270', 'Caja pajaros c/techo plano c/puertas', 3059),
(198, 2, '271', 'Caja pajaros c/techo BAJA', 2379),
(199, 2, '272', 'Caja pajaros c/techo ALTA', 2379),
(200, 2, '273', 'Caja de pajarosp/colgar', 1565),
(201, 2, '283', 'Porta espejo regulable GRANDE', 4846),
(202, 2, '288', 'Banco Grande', 6051),
(203, 2, '289', 'Banco Mediano', 4274),
(204, 2, '290', 'Banco chico', 3194),
(205, 2, '291 x1', 'Banco escalera', 6118),
(206, 2, '291 x2', 'Banco escalera', 10197),
(207, 2, '293', 'Llaveros x3  posiciones ALTO', 571),
(208, 2, '294', 'Llaveros x3  posiciones BAJO', 571),
(209, 2, '295', 'Llaveros x3  posiciones GRANDE', 656),
(210, 2, '296', 'Llaveros x4  posiciones MEDIANO', 699),
(211, 2, '297', 'Llaveros x6  posiciones GRANDE', 825),
(212, 2, '300', 'Llavero x3 tipo casita', 677),
(213, 2, '301', 'Tabla de pizza', 656),
(214, 2, '303', 'Bandeja corazon', 1544),
(215, 2, '304', 'Bandeja plana x4 ovalada', 2307),
(216, 2, '305 s/p', 'Bandeja corazon', 4531),
(217, 2, '305c/p', 'Bandeja corazon', 5240),
(218, 2, '308', 'Porta sahumerio', 2541),
(219, 2, '311', 'Caja lustra zapatos chico', 6730),
(220, 2, '335', 'Porta taco 3mm simple', 318),
(221, 2, '336', 'Porta sobre', 3235),
(222, 2, '337', 'Porta saquito vertical', 2137),
(223, 2, '338', 'Tetera chica', 2793),
(224, 2, '339', 'Cajonera colonial x3', 6730),
(225, 2, '340', 'Portasobre c/frente calado', 3059),
(226, 2, '341', 'Porta saquito mesa c/servilletero', 1100),
(227, 2, '343', 'Botinero GRANDE', 8158),
(228, 2, '347', 'Lapicero mini', 402),
(229, 2, '348 chico', 'Apoya plato', 360),
(230, 2, '348 median', 'Apoya plato', 614),
(231, 2, '348 grande', 'Apoya plato', 846),
(232, 2, '349', 'Yerbero y azucarero', 3399),
(233, 2, '350', 'Porta comestico oso chico', 2264),
(234, 2, '354', 'Revistero de apoyo 3mm', 5290),
(235, 2, '355', 'Servillero c/ondas largo', 593),
(236, 2, '356', 'Servillero c/ondas largo chicas', 593),
(237, 2, '357', 'Servillero c/ondas largo canastita 3mm', 571),
(238, 2, '358', 'Servillero c/ondas largo canastitas', 529),
(239, 2, '362', 'Porta comestico Bomb‚', 3059),
(240, 2, '363', 'Porta carta x3 division p/colgar', 3449),
(241, 2, '364', 'Revistero Mediano', 6050),
(242, 2, '365', 'Porta sobre', 1756),
(243, 2, '366', 'Revistero c/cajon doble', 3808),
(244, 2, '367', 'Porta caja c/manija', 1756),
(245, 2, '371', 'Caja t/postiza 3,5x3,5x3', 275),
(246, 2, '372', '5x5x3', 508),
(247, 2, '373', '8x8x3', 614),
(248, 2, '374', '8x4x3 alto', 571),
(249, 2, '375', '5x10x3', 508),
(250, 2, '376', '10x10x3', 635),
(251, 2, '377', '12x12x3', 719),
(252, 2, '378', '12x8x3', 635),
(253, 2, '379', '6x12x3', 635),
(254, 2, '380', 'Caja t/zapato 5mm 15x15x15', 1629),
(255, 2, '381', '20x20x20', 2200),
(256, 2, '382', '25x25x25', 3004),
(257, 2, '383', '30x30x30', 4022),
(258, 2, '388', 'Bandeja economica', 1587),
(259, 2, '389', 'Caja de pajaros', 2719),
(260, 2, '390', 'Porta comesticos recto', 2719),
(261, 2, '391', 'Revistero economico', 4011),
(262, 2, '393', 'Cajonera x2 c/espejo', 6730),
(263, 2, '394', 'Porta cuchara', 1608),
(264, 2, '395', 'Porta servilleta', 1418),
(265, 2, '396', 'Porta llave arte frances', 1249),
(266, 2, '397', 'Porta reloj', 3829),
(267, 2, '404', 'Porta carta cajon x2 divisiones', 5438),
(268, 2, '406', 'Alajero c/1 cajon colonial', 4759),
(269, 2, '407', 'Alajero c/2 cajones colonial', 3978),
(270, 2, '409', 'Buzon', 6050),
(271, 2, '410', 'Costurero c/maquina y cajon', 6118),
(272, 2, '500', 'Porta carta x 1 division p/colgar', 1544),
(273, 2, '501', 'Porta espejo regulable corona solo', 2179),
(274, 2, '502', 'Porta espejo reg. corana c/2 cajones', 6730),
(275, 2, '503', 'Tapa de carpeta corazon', 1460),
(276, 2, '506', 'Caja porta vino', 1694),
(277, 2, '507', 'Porta saumerio parado', 1756),
(278, 2, '510', 'Porta saumerio parado', 677),
(279, 2, '511', 'Porta comestico c/manija grande', 2772),
(280, 2, '513', 'Lapicero 3mm s/base', 402),
(281, 2, '514', 'Lapicero 3mm c/base', 529),
(282, 2, '515', 'Porta rollo c/cajon', 3449),
(283, 2, '516', 'Porta esmalte', 5302),
(284, 2, '517', 'Cajon verdulero 45x23 c/ 3 tiras', 6708),
(285, 2, '518', 'Cajon verdulero 20x30 c/ 3 tiras', 4844),
(286, 2, '519', 'Cajon verdulero 20x15 c/ 3 tiras', 2981),
(287, 2, '520', 'Cajon verdulero 25x18 c/ 2 tiras', 2609),
(288, 2, '521', 'Cajon verdulero 20x12 c/ 2 tiras', 2236),
(289, 2, '522', 'Porta planchita', 2715),
(290, 2, '523', 'Porta esmalte x45 u.', 8158),
(291, 2, '524', 'Repisa camion 36 autitos', 13595),
(292, 2, '525', 'Porta lapiz con cajon', 5421),
(293, 3, 'N§15', 'Bandeja 3mm 15x20', 892),
(294, 3, 'N§20', 'Caja bandeja sourvenir 8x12', 485),
(295, 3, 'N§17', 'Canastita tipo p/cosmetico 14x10', 815),
(296, 3, 'N§18', 'Canastita tipo p/cosmetico 14x10 C/MANIJA', 950),
(297, 3, 'N§19', 'Canastico sourvenir 10x15', 620),
(298, 3, 'N§22', 'x vestidores 5 modelos', 640),
(299, 3, 'N§27', 'x manito p/anillos', 582),
(300, 3, 'N§28', 'Gato porta anillos', 602),
(301, 3, 'N§29', 'Espejo corona cajon', 582),
(302, 3, 'N§31', 'Porta retrato 6x9', 3181),
(303, 3, 'N§32', 'Porta retrato 10x15', 582),
(304, 3, 'N§33', 'Porta retrato 13x15', 815),
(305, 4, 'C1', '4X4X4', 338),
(306, 4, 'C2', '6X6X6', 452),
(307, 4, 'C3', '8X8X8', 617),
(308, 4, 'C4', '10X10X10', 921),
(309, 4, 'C5', '12X12X12', 1143),
(310, 4, 'C6', '14X14X14', 1192),
(311, 4, 'C7', '16X16X16', 1785),
(312, 4, 'C8', '18X18X18', 2072),
(313, 4, 'C9', '20X20X20', 2344),
(314, 4, 'C10', '22X22X22', 2772),
(315, 4, 'C11', '24X24X24', 3224),
(316, 4, 'C12', '26X26X26', 3751),
(317, 4, 'C13', '28X28X28', 4220),
(318, 4, 'C14', '30X30X30', 4903),
(319, 4, 'C15', '4X8X4', 428),
(320, 4, 'C16', '6X10X4', 541),
(321, 4, 'C17', '8X12X4', 617),
(322, 4, 'C18', '10X14X4', 724),
(323, 4, 'C19', '12X16X4', 864),
(324, 4, 'C20', '14X18X4', 987),
(325, 4, 'C21', '16X20X4', 889),
(326, 4, 'C22', '4X8X6', 510),
(327, 4, 'C23', '6X10X6', 650),
(328, 4, 'C24', '8X12X6', 732),
(329, 4, 'C25', '10X14X6', 814),
(330, 4, 'C26', '12X16X6', 1102),
(331, 4, 'C27', '14X18X6', 1374),
(332, 4, 'C28', '16X20X6', 1686),
(333, 4, 'C29', '4X8X8', 740),
(334, 4, 'C30', '6X10X8', 889),
(335, 4, 'C31', '8X12X8', 1062),
(336, 4, 'C32', '10X14X8', 1357),
(337, 4, 'C33', '12X16X8', 1497),
(338, 4, 'C34', '14X18X8', 1736),
(339, 4, 'C35', '16X20X8', 1975),
(340, 4, 'C36', '18X22X8', 2245),
(341, 4, 'C37', '6X6X4', 452),
(342, 4, 'C38', '8X8X4', 494),
(343, 4, 'C39', '10X10X4', 575),
(344, 4, 'C40', '12X12X6', 987),
(345, 4, 'C41', '8X8X6', 658),
(346, 4, 'C42', '10X10X6', 823),
(347, 4, 'C43', '12X12X6', 937),
(348, 4, 'C44', '14X14X6', 987),
(349, 4, 'C45', '10X10X8', 987),
(350, 4, 'C46', '12X12X8', 1069),
(351, 4, 'C47', '14X14X8', 1234),
(352, 4, 'C48', '16X16X8', 1398),
(353, 4, 'C49', '12X12X10', 1316),
(354, 4, 'C50', '14X14X10', 1645),
(355, 4, 'C51', '16X16X10', 1876),
(356, 4, 'C52', '18X18X10', 2122),
(357, 5, '', 'X4', 4236),
(358, 5, '', 'X6', 0),
(359, 6, '', 'X2', 1295),
(360, 6, '', 'X3', 1874),
(361, 6, '', 'X4', 2226),
(362, 6, '', 'X6', 2669),
(363, 6, '', 'X9', 3600),
(364, 6, '', 'X12', 4429),
(365, 7, '', 'X2', 1565),
(366, 7, '', 'X3', 2062),
(367, 7, '', 'X4', 2449),
(368, 7, '', 'X6', 2936),
(369, 7, '', 'X9', 3960),
(370, 7, '', 'X12', 4872),
(371, 8, '', 'X2', 2408),
(372, 8, '', 'X3', 2453),
(373, 8, '', 'X4', 3974),
(374, 8, '', 'X6', 4406),
(375, 8, '', 'X9', 5430),
(376, 8, '', 'X12', 6515),
(377, 9, '', 'X2', 2560),
(378, 9, '', 'X3', 3878),
(379, 9, '', 'X4', 5026),
(380, 9, '', 'X6', 5693),
(381, 9, '', 'X9', 7136),
(382, 9, '', 'X12', 8252),
(383, 10, '', 'X1', 1087),
(384, 10, '', 'X2', 1544),
(385, 10, '', 'X3', 2311),
(386, 10, '', 'X4', 2956),
(387, 10, '', 'X5', 3831);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
