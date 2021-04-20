-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 20, 2021 at 02:13 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `proyecto_integrador`
--

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `texto` varchar(255) NOT NULL,
  `fecha_comentado` date NOT NULL,
  `id_usuario_comentador` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`id`, `texto`, `fecha_comentado`, `id_usuario_comentador`, `id_producto`) VALUES
(1, 'Origin es un proyecto genial, tiene muchísimo potencial.', '2021-04-15', 1, 1),
(2, 'Ustedes que opinan?? En mi opinión, llega a USD 5 para Noviembre (ahora esta USD 1.5)', '2021-04-15', 1, 1),
(3, 'A mí también me encanta!! Es un super protocolo, de riesgo medio en mi opinión...', '2021-04-16', 4, 1),
(4, 'Mmm, esta es una interesante que podría poner en mi portfolio de inversión. Voy a seguir investigándola.', '2021-04-17', 2, 1),
(5, 'Dicen que sube esta? No le tengo mucha fe la verdad, lo poco que leí sentí algo negativo.', '2021-04-18', 5, 1),
(6, 'Con el precio actual del Wink, con comprar un dólar existe una re oportunidad de conseguir buen retorno.', '2021-04-15', 1, 2),
(7, 'A cuánto dicen que llega para Julio?', '2021-04-16', 1, 2),
(8, 'A 0,05 para mi...', '2021-04-17', 4, 2),
(9, 'Yo le tiro un 0,1 para Julio :)', '2021-04-17', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `url_imagen` varchar(255) NOT NULL,
  `nombre_producto` varchar(255) NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `num_comentarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `url_imagen`, `nombre_producto`, `fecha_publicacion`, `id_usuario`, `descripcion`, `num_comentarios`) VALUES
(1, 'https://s2.coinmarketcap.com/static/img/coins/200x200/5117.png', 'Origin Protocol', '2021-04-14', 1, 'Origin Protocol es una plataforma de código abierto que permite la creación de mercados entre pares y aplicaciones de comercio electrónico, que utiliza la blockchain de Ethereum y el Sistema de Archivos IPFS. Origin Protocol pretende facilitar la creación de sistemas similares a Uber, Airbnb, Getaround, Fiverr y muchos otros.', 5),
(2, 'https://s2.coinmarketcap.com/static/img/coins/200x200/4206.png', 'Wink', '2021-04-14', 1, 'WINk (WIN) es una plataforma de juego basada en Tron (TRX) que permite a los usuarios jugar, socializar y bloquear activos en múltiples ecosistemas blockchain mediante el uso del token nativo WIN.', 4),
(3, 'https://research.binance.com/static/images/projects/vethor/logo1.png', 'VeThor Token', '2021-04-15', 1, 'VeThor Token (VTHO) es un activo digital con una capitalización de mercado de $686.78M. VeThor Token se encuentra en el rango de 121 en el rating global de criptomonedas con un volumen de trading diario medio de $160.78M. Es el token secundario en el ecosistema VeChain; el VTHO se consume al hacer transacciones o al subir datos a la cadena de bloques.', 4),
(4, 'https://icoholder.com/media/cache/ico_logo_view_page/files/img/c364d8534cf023bd26556dcb035d5b79.png', 'PAID Network', '2021-04-14', 1, 'PAID Network es un ecosistema dApp que aprovecha la tecnología blockchain para ofrecer acuerdos SMART impulsados por DeFi para hacer negocios exponencialmente más eficientes. Permiten a los usuarios crear su propia política, asegurándose de que RECIBAN PAGOS. Diseñaron la plataforma con la eficiencia y la rentabilidad como su prioridad principal. ', 6),
(5, 'https://cryptocoinspy.com/wp-content/uploads/2018/03/enjin.png', 'Enjin Coin', '2021-04-16', 1, 'Enjin Coin es una moneda creada para bienes virtuales y su finalidad convertirse en la criptomoneda más útil en la industria del videojuego. A su vez Enjin es una plataforma de juegos con la comunidad más grande en linea.', 7),
(6, 'https://bitcoin.es/wp-content/uploads/2018/03/Captura-de-pantalla-2018-03-08-a-las-19.13.56.png', 'Ontology', '2021-04-18', 4, 'Ontology es una plataforma pública de cadenas de bloques que permite la creación e implementación de proyectos de diferentes tamaños; de esta manera, cierra la brecha entre las cadenas de bloques y los negocios.', 4),
(7, 'https://icodrops.com/wp-content/uploads/2019/09/band_logo.jpg', 'Band Protocol', '2021-04-18', 5, 'Band Protocol es una plataforma criptográfica de oráculos descentralizados entre cadenas. Band Protocol v2 usa su propia cadena de bloques, BandChain, basada en Tendermint, con un algoritmo de consenso BFT (DPoS), y opera dentro del ecosistema Cosmos.', 4),
(8, 'https://coincost.net/uploads/temp/04178d6b96b8c23fbf596de6000a1a72.png', 'Chain Games', '2021-04-17', 2, 'Chain Games es una plataforma que busca ser una opción más y prometedora para los jugadores que buscan un entorno de apuestas sin confianza cuando juegan a videojuegos competitivos con otros usuarios. La infraestructura elimina la necesidad de \"intermediarios o intermediarios externos\" durante los concursos.', 5),
(9, 'https://assets.coingecko.com/coins/images/1369/large/StormX.png?1603113002', 'StormX', '2021-04-19', 1, 'StormX (STMX) es un mercado gamificado que permite a los usuarios ganar STMX, así como otras criptomonedas, por comprar en una de sus tiendas asociadas en Internet o por completar microtareas a través de su aplicación.', 4),
(10, 'https://icoholder.com/files/img/0c374147dd170d41a31f5c0083059500.jpeg', 'Ecomi', '2021-04-19', 1, 'ECOMI ofrece una ventanilla única para coleccionables digitales a través de la aplicación VeVe que permite a los usuarios experimentar la propiedad real de coleccionables digitales de primera calidad.', 5);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `apellido_usuario` varchar(255) NOT NULL,
  `num_seguidores` int(11) DEFAULT NULL,
  `num_comentarios_hechos` int(11) DEFAULT NULL,
  `cant_productos` int(11) DEFAULT NULL,
  `url_imagen_usuario` varchar(255) DEFAULT NULL,
  `mail` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `texto_usuario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `apellido_usuario`, `num_seguidores`, `num_comentarios_hechos`, `cant_productos`, `url_imagen_usuario`, `mail`, `fecha`, `texto_usuario`) VALUES
(1, 'Bautista', 'Migliore', 7, 11, 8, 'https://media-exp1.licdn.com/dms/image/C5603AQEJr4VmhoWDxw/profile-displayphoto-shrink_800_800/0/1604009810434?e=1624492800&v=beta&t=8UUIXnr8HwHwf9LTAN0mPsk4fxEMfQknzS4min7avTs', 'bmigliore@udesa.edu.ar', '2021-04-13', 'Hola! Soy Bauti, y te invito a ver mis productos :)'),
(2, 'Sol', 'Ana', 2, 1, 2, 'https://img.europapress.es/fotoweb/fotonoticia_20200907131946_420.jpg', 'sol_ana20@hotmail.com', '2021-04-15', NULL),
(3, 'Samanta', 'Rosales', 5, NULL, NULL, 'https://image.freepik.com/foto-gratis/mujer-adolescente-aislada-azul-mostrando-levantando-dedo_1368-115667.jpg', 'srosalesmm5@gmail.com', '2021-04-15', 'Fan de las criptomonedas, con ganas de aprender a diario. Capricornio'),
(4, 'Arya', 'Frias', 3, 2, 4, 'https://divem.accem.es/wp-content/uploads/2018/05/brian-fraser-337137-1030x687.jpg', 'arya_stark_frias@gmail.com', '2021-04-14', 'Invirtiendo a full!!!'),
(5, 'Manuel', 'Gonzales', NULL, 2, 1, 'https://www.diariodecuyo.com.ar/__export/1586191744739/sites/diariodecuyo/img/2020/04/06/screenshot_1.jpg', 'gonzalesmanu4@gmail.com', '2021-04-15', 'Hincha de Olimpo, en contra de Dogecoin...'),
(11, 'Ignacio', 'Zapata', 13, 14, 2, NULL, 'igna134za@outlook.com', '2021-04-15', 'Seguime si te interesan las tokes DeFi!'),
(12, 'Joaquín', 'Lugones', 1, 8, NULL, NULL, 'joalugoness@gmail.com', '2021-04-15', NULL),
(13, 'Erica', 'Gimenez', 15, 7, NULL, 'http://cdn3.upsocl.com/wp-content/uploads/2016/07/13-6.png', 'egimenez37@gmail.com', '2021-04-16', '50 años, y con ganas de conseguir dinero para una mejor jubilación.'),
(14, 'Juana', 'Miranda', 5, 6, 1, NULL, 'juamirandana@gmail.com', '2021-04-18', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario_comentador` (`id_usuario_comentador`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_usuario_comentador`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`);

--
-- Constraints for table `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
