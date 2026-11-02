-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2026 a las 14:24:42
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kiosco_la_esquina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Alfajores'),
(2, 'Chocolates y Golosinas'),
(3, 'Bebidas y Energizantes'),
(4, 'Galletitas y Snacks'),
(5, 'Caramelos y Chicles'),
(6, 'Cigarrillos y Varios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id` int(11) NOT NULL,
  `venta_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id`, `venta_id`, `producto_id`, `cantidad`, `subtotal`) VALUES
(1, 1, 1, 2, 1700.00),
(2, 1, 36, 1, 1400.00),
(3, 2, 71, 2, 3200.00),
(4, 2, 116, 1, 1200.00),
(5, 3, 10, 1, 1800.00),
(6, 3, 153, 1, 900.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `stock`, `categoria_id`) VALUES
(1, 'Alfajor Guaymallén Negro Triple', 850.00, 60, 1),
(2, 'Alfajor Guaymallén Blanco Triple', 850.00, 50, 1),
(3, 'Alfajor Guaymallén Membrillo Simple', 450.00, 70, 1),
(4, 'Alfajor Guaymallén Dulce de Leche Simple', 450.00, 70, 1),
(5, 'Alfajor Jorgito Chocolate', 1200.00, 40, 1),
(6, 'Alfajor Jorgito Blanco Merengue', 1200.00, 35, 1),
(7, 'Alfajor Jorgito de Fruta', 1000.00, 30, 1),
(8, 'Alfajor Capitán del Espacio Negro', 1500.00, 24, 1),
(9, 'Alfajor Capitán del Espacio Blanco', 1500.00, 20, 1),
(10, 'Alfajor Rasta Negro 70g', 1800.00, 30, 1),
(11, 'Alfajor Rasta Blanco 70g', 1800.00, 25, 1),
(12, 'Alfajor Cofler Block Triple 60g', 1950.00, 45, 1),
(13, 'Alfajor Terrabusi Triple DDL', 1900.00, 30, 1),
(14, 'Alfajor Terrabusi Clásico Simple', 1100.00, 40, 1),
(15, 'Alfajor Fulbito Relleno Maní', 450.00, 80, 1),
(16, 'Alfajor Tatín Negro Simple', 600.00, 50, 1),
(17, 'Alfajor Tatín Blanco Simple', 600.00, 50, 1),
(18, 'Alfajor Cachafaz Negro Mousse', 2200.00, 25, 1),
(19, 'Alfajor Cachafaz Blanco DDL', 2200.00, 25, 1),
(20, 'Alfajor Havanna Semisur 60g', 2500.00, 20, 1),
(21, 'Alfajor Havanna 70% Cacao', 2700.00, 20, 1),
(22, 'Alfajor Milka Mousse Triple', 2000.00, 30, 1),
(23, 'Alfajor Milka Oreo Triple', 2100.00, 28, 1),
(24, 'Alfajor Águila Mini Torta', 2200.00, 22, 1),
(25, 'Alfajor Águila Clásico Negro', 1900.00, 25, 1),
(26, 'Alfajor Balcarce Simple DDL', 1800.00, 20, 1),
(27, 'Alfajor Entre Dos Negro', 2100.00, 18, 1),
(28, 'Alfajor Portezuelo ChocoTorta', 1950.00, 20, 1),
(29, 'Alfajor Jorgelin Negro', 1400.00, 35, 1),
(30, 'Alfajor Jorgelin Blanco', 1400.00, 35, 1),
(31, 'Alfajor Pepitos Triple', 1850.00, 25, 1),
(32, 'Alfajor Grandote Negro', 950.00, 40, 1),
(33, 'Alfajor Grandote Blanco', 950.00, 40, 1),
(34, 'Alfajor Fantoche Triple Negro', 1700.00, 35, 1),
(35, 'Alfajor Fantoche Single', 1000.00, 40, 1),
(36, 'Chocolate Cofler Block 38g', 1400.00, 40, 2),
(37, 'Chocolate Cofler Block 100g', 3200.00, 20, 2),
(38, 'Chocolate Cofler Maní 55g', 1600.00, 25, 2),
(39, 'Chocolate Cofler Air 55g', 1600.00, 25, 2),
(40, 'Chocolate Dos Corazones Felfort', 950.00, 50, 2),
(41, 'Bocadito Cabsha 1un', 500.00, 70, 2),
(42, 'Bananita Dolca 30g', 900.00, 35, 2),
(43, 'Barra Tita Terrabusi', 750.00, 60, 2),
(44, 'Barra Rhodesia Terrabusi', 900.00, 55, 2),
(45, 'Chocolate Marroc Felfort', 600.00, 80, 2),
(46, 'Rocklets Paquete 40g', 1300.00, 45, 2),
(47, 'Rocklets Tubo Grande', 2500.00, 15, 2),
(48, 'Mantecol Barra 64g', 1600.00, 30, 2),
(49, 'Mantecol Familiar 111g', 2800.00, 15, 2),
(50, 'Vauquita Dulce de Leche 25g', 700.00, 65, 2),
(51, 'Bon o Bon Leche 1un', 550.00, 100, 2),
(52, 'Bon o Bon White 1un', 550.00, 50, 2),
(53, 'Bon o Bon Triple 1un', 1100.00, 30, 2),
(54, 'Kinder Bueno White', 2400.00, 20, 2),
(55, 'Kinder Bueno Classic', 2400.00, 20, 2),
(56, 'Kinder Chocolate Barra x4', 1800.00, 30, 2),
(57, 'Huevo Kinder Sorpresa', 3200.00, 25, 2),
(58, 'Snickers 48g', 1700.00, 35, 2),
(59, 'Twix 50g', 1700.00, 30, 2),
(60, 'Milky Way 45g', 1650.00, 20, 2),
(61, 'Mars 47g', 1650.00, 20, 2),
(62, 'Toblerone Suizo 100g', 4500.00, 10, 2),
(63, 'KitKat 41.5g', 1700.00, 40, 2),
(64, 'Haskell Bonafide Maní con Choco', 1500.00, 25, 2),
(65, 'Oblita Arcor', 800.00, 40, 2),
(66, 'Cereal Fort Arcor', 700.00, 45, 2),
(67, 'Turrón de Maní Arcor 25g', 400.00, 90, 2),
(68, 'Turrón con Frutas Arcor', 450.00, 50, 2),
(69, 'Nucrem Felfort 84g', 1900.00, 20, 2),
(70, 'Pastillas DRF Menta', 400.00, 60, 2),
(71, 'Pastillas DRF Frutilla', 400.00, 60, 2),
(72, 'Pastillas La Yapa Frutal', 450.00, 55, 2),
(73, 'Mentholina Lata Chiquita', 900.00, 30, 2),
(74, 'Sugus Confitería Paquete', 850.00, 40, 2),
(75, 'Shot Cabsha', 1200.00, 35, 2),
(76, 'Shot Maní 50g', 1700.00, 30, 2),
(77, 'Block Mini Felfort', 500.00, 50, 2),
(78, 'Paragüitas de Chocolate Felfort', 600.00, 60, 2),
(79, 'Moneditas de Chocolate Felfort', 550.00, 70, 2),
(80, 'Bastoncito Helado Holanda', 800.00, 40, 2),
(81, 'Coca Cola Original 500ml', 1600.00, 48, 3),
(82, 'Coca Cola Sin Azúcar 500ml', 1600.00, 36, 3),
(83, 'Coca Cola Original 1.5 Litros', 2800.00, 24, 3),
(84, 'Coca Cola Retornable 2 Litros', 3100.00, 20, 3),
(85, 'Sprite Lima Limón 500ml', 1500.00, 30, 3),
(86, 'Sprite Lima Limón 1.5 Litros', 2700.00, 18, 3),
(87, 'Fanta Naranja 500ml', 1500.00, 30, 3),
(88, 'Fanta Naranja 1.5 Litros', 2700.00, 18, 3),
(89, 'Agua Mineral Villavicencio 500ml', 1000.00, 50, 3),
(90, 'Agua Mineral Villavicencio 1.5L', 1800.00, 25, 3),
(91, 'Agua Mineral con Gas Villavicencio 500ml', 1000.00, 30, 3),
(92, 'Saborizada Levité Manzana 500ml', 1200.00, 40, 3),
(93, 'Saborizada Levité Pomelo 500ml', 1200.00, 40, 3),
(94, 'Saborizada Ser Naranja 500ml', 1250.00, 30, 3),
(95, 'Energizante Monster Energy Green 473ml', 2500.00, 24, 3),
(96, 'Energizante Monster Ultra White 473ml', 2500.00, 20, 3),
(97, 'Energizante Red Bull 250ml', 2400.00, 20, 3),
(98, 'Energizante Red Bull Sugarfree 250ml', 2400.00, 15, 3),
(99, 'Speed Unlimited 473ml', 2000.00, 30, 3),
(100, 'Cerveza Quilmes Lata 473ml', 1800.00, 36, 3),
(101, 'Cerveza Brahma Lata 473ml', 1750.00, 36, 3),
(102, 'Cerveza Stella Artois Lata 473ml', 2200.00, 30, 3),
(103, 'Cerveza Patagonia Amber Lager 473ml', 2500.00, 24, 3),
(104, 'Cerveza Heineken Lata 473ml', 2300.00, 25, 3),
(105, 'Gatorade Manzana 500ml', 1600.00, 30, 3),
(106, 'Gatoradearanja 500ml', 1600.00, 30, 3),
(107, 'Powerade Frutos Tropicales 500ml', 1600.00, 30, 3),
(108, 'Jugo Cepita Naranja 1 Litro', 2100.00, 20, 3),
(109, 'Jugo Baggio Pera 1 Litro', 2100.00, 20, 3),
(110, 'Jugo Baggio Multifruta 200ml', 600.00, 50, 3),
(111, 'Jugo Cepita Naranja 200ml', 600.00, 50, 3),
(112, 'Soda en Sijón / Botella 1.5L', 1400.00, 20, 3),
(113, 'Hielos Bolsita 2kg', 1500.00, 15, 3),
(114, 'Schweppes Tonic 500ml', 1650.00, 20, 3),
(115, 'Paso de los Toros Pomelo 500ml', 1500.00, 20, 3),
(116, 'Galletitas Don Satur Bizcochos Grasa 200g', 1100.00, 40, 4),
(117, 'Galletitas Don Satur Agritas 200g', 1100.00, 35, 4),
(118, 'Galletitas Don Satur Bizcochos Dulces 200g', 1100.00, 30, 4),
(119, 'Galletitas Oreo 118g', 1500.00, 50, 4),
(120, 'Galletitas Oreo Mini Vasito', 1300.00, 25, 4),
(121, 'Galletitas Chocolinas 170g', 1700.00, 30, 4),
(122, 'Galletitas Melitas Arcor 150g', 1200.00, 25, 4),
(123, 'Galletitas Sonrisas Frutilla 118g', 1100.00, 35, 4),
(124, 'Galletitas Pepitos 119g', 1550.00, 40, 4),
(125, 'Galletitas Express Surtidas 200g', 1000.00, 40, 4),
(126, 'Galletitas Cerealitas Clásicas 200g', 1600.00, 45, 4),
(127, 'Galletitas Cerealitas con Avena y Miel', 1700.00, 30, 4),
(128, 'Galletitas Frutigran con Avena y Pasas', 1500.00, 35, 4),
(129, 'Galletitas Traviata 101g', 900.00, 40, 4),
(130, 'Galletitas Bagley Opera', 1400.00, 25, 4),
(131, 'Galletitas Lincoln Paquete 170g', 1150.00, 30, 4),
(132, 'Papas Fritas Lay\'s Clásicas 85g', 2200.00, 25, 4),
(133, 'Papas Fritas Lay\'s Jamón 85g', 2200.00, 25, 4),
(134, 'Papas Fritas Pehuamar 80g', 1900.00, 30, 4),
(135, 'Palitos Salados Pehuamar 90g', 1400.00, 30, 4),
(136, 'Maní Salado Krachitos 65g', 950.00, 40, 4),
(137, 'Maní con Chocolate Krachitos 80g', 1400.00, 25, 4),
(138, 'Pochoclo Dulce Kikaku 100g', 1200.00, 20, 4),
(139, 'Tutucas Paquete Grande', 1100.00, 20, 4),
(140, 'Papas Fritas Lays Tubo Stax 155g', 3500.00, 15, 4),
(141, 'Kriko Snacks Queso 80g', 1300.00, 25, 4),
(142, 'Tubys Snacks Maíz 70g', 1100.00, 30, 4),
(143, 'Conitos de Queso 3D\'s 45g', 1500.00, 30, 4),
(144, 'Cheetos Queso 65g', 1600.00, 25, 4),
(145, 'Doritos Queso 75g', 2200.00, 20, 4),
(146, 'Twistos Jamón 100g', 1700.00, 25, 4),
(147, 'Galletitas Rumba Paquete', 1250.00, 30, 4),
(148, 'Galletitas Maná Paquete', 900.00, 40, 4),
(149, 'Galletitas Bagley Sonrisas Dulce de Leche', 1100.00, 30, 4),
(150, 'Galletitas Diversión Arcor', 1200.00, 25, 4),
(151, 'Chicles Beldent Menta 10un', 800.00, 60, 5),
(152, 'Chicles Beldent Sandia 10un', 800.00, 60, 5),
(153, 'Chicles Topline Seven Menta 14g', 900.00, 50, 5),
(154, 'Chicles Babas / Bubbaloo Frutilla 1un', 250.00, 120, 5),
(155, 'Caramelos Palitos de la Selva (Bolsita 10un)', 600.00, 75, 5),
(156, 'Caramelos Sugus Confitados Paquete', 850.00, 40, 5),
(157, 'Caramelos Butter Toffees Arcor 100g', 1400.00, 30, 5),
(158, 'Caramelos Media Hora Paquete', 700.00, 40, 5),
(159, 'Caramelos Flynn Paff Surtidos x10', 600.00, 80, 5),
(160, 'Chupetín Pico Dulce 1un', 350.00, 100, 5),
(161, 'Chupetín Evolution Pop 1un', 350.00, 90, 5),
(162, 'Caramelos Masticables Frutales Billiken', 650.00, 50, 5),
(163, 'Pastillas Hall Menta Fuerte', 900.00, 40, 5),
(164, 'Pastillas Hall Cereza', 900.00, 40, 5),
(165, 'Gomitas Yummy Mogul Bolsita 60g', 1100.00, 45, 5),
(166, 'Cigarrillos Marlboro Box 20', 3800.00, 30, 6),
(167, 'Cigarrillos Marlboro Crafted 20', 3400.00, 30, 6),
(168, 'Cigarrillos Philip Morris Box 20', 3500.00, 30, 6),
(169, 'Cigarrillos Philip Morris Red 10', 1900.00, 25, 6),
(170, 'Cigarrillos Lucky Strike Box 20', 3400.00, 25, 6),
(171, 'Cigarrillos Chesterfield Box 20', 3200.00, 30, 6),
(172, 'Encendedor BIC Grande 1un', 1200.00, 40, 6),
(173, 'Encendedor recargable económico 1un', 600.00, 50, 6),
(174, 'Pilas Duracell AA Pack x2', 3200.00, 20, 6),
(175, 'Pilas Duracell AAA Pack x2', 3200.00, 20, 6),
(176, 'Papelillos para armar Master / OCB', 900.00, 40, 6),
(177, 'Filtros para armar cigarrillo bolsa', 800.00, 30, 6),
(178, 'Preservativos Tulipán Pack x2', 1500.00, 25, 6),
(179, 'Preservativos Prime Skyn x3', 2800.00, 20, 6),
(180, 'SubtePASS / Carga Virtual Común', 100.00, 999, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Administrador', 'Control total del sistema y usuarios'),
(2, 'Encargado', 'Gestiona stock, precios y productos'),
(3, 'Cajero', 'Registra ventas e imprime tickets');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `rol_id`) VALUES
(1, 'Elias Cortez', 'elias.cortez@kioscolaesquina.com', 'admin123', 1),
(2, 'Agustina Giménez', 'agustina.gimenez@kioscolaesquina.com', 'encargado2026', 2),
(3, 'Lucas Maidana', 'lucas.maidana@kioscolaesquina.com', 'cajero123', 3),
(4, 'Camila Rossi', 'camila.rossi@kioscolaesquina.com', 'cajero456', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `usuario_id`, `fecha`, `total`) VALUES
(1, 3, '2026-10-20 13:30:00', 3100.00),
(2, 4, '2026-10-20 14:15:00', 4400.00),
(3, 3, '2026-10-20 15:00:00', 2700.00);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_productos_claros`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_productos_claros` (
`codigo` int(11)
,`producto` varchar(100)
,`precio` decimal(10,2)
,`stock` int(11)
,`categoria` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_ventas_claras`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_ventas_claras` (
`ticket_nro` int(11)
,`cajero` varchar(100)
,`fecha` timestamp
,`total` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_productos_claros`
--
DROP TABLE IF EXISTS `vista_productos_claros`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_productos_claros`  AS SELECT `p`.`id` AS `codigo`, `p`.`nombre` AS `producto`, `p`.`precio` AS `precio`, `p`.`stock` AS `stock`, `c`.`nombre` AS `categoria` FROM (`productos` `p` join `categorias` `c` on(`p`.`categoria_id` = `c`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_ventas_claras`
--
DROP TABLE IF EXISTS `vista_ventas_claras`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_ventas_claras`  AS SELECT `v`.`id` AS `ticket_nro`, `u`.`nombre` AS `cajero`, `v`.`fecha` AS `fecha`, `v`.`total` AS `total` FROM (`ventas` `v` join `usuarios` `u` on(`v`.`usuario_id` = `u`.`id`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venta_id` (`venta_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `rol_id` (`rol_id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`),
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
