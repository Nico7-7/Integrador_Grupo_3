-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 27, 2021 at 05:19 PM
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
(5, 'Dicen que sube esta? No le tengo mucha fe la verdad, lo poco que leí sentí algo negativo.', '2021-04-18', 5, 3),
(6, 'Con el precio actual del Wink, con comprar un dólar existe una re oportunidad de conseguir buen retorno.', '2021-04-15', 1, 2),
(7, 'A cuánto dicen que llega para Julio?', '2021-04-16', 1, 2),
(8, 'A 0,05 para mi...', '2021-04-17', 4, 2),
(9, 'Yo le tiro un 0,1 para Julio :)', '2021-04-17', 5, 2),
(10, 'VTHO la elijo como mejor performance del año dentro de las primeras 150 criptos.', '2021-04-16', 1, 3),
(11, 'Yo le tiro un 0,04 para noviembre', '2021-04-16', 12, 3),
(12, '0,04 fue su más alto y fue a fines de 2018, yo creo que a 0,06 llega.', '2021-04-17', 11, 3),
(13, 'Uff vieron que Gate.io suspendió los depósitos de PAID??', '2021-04-15', 3, 4),
(14, 'Sisi, y el trading con PAID también, esto va a afectar su precio.', '2021-04-15', 10, 4),
(15, 'Si, ya cayó de 5.3 a 2.5', '2021-04-19', 12, 4),
(16, 'Bajon, yo tenía parte en PAID Network. Esperemos que repunte.', '2021-04-19', 11, 4),
(17, 'Compré en 2019... la estoy pasando re bien ahora!', '2021-04-17', 3, 5),
(18, 'Yo quedé colgado, compré en la suba de 2018.', '2021-04-17', 10, 5),
(19, 'Igual Raúl ya recuperaste y ganaste bastante.', '2021-04-18', 12, 5),
(20, 'No, porque me desesperé y vendí :(', '2021-04-18', 10, 5),
(21, '¿Qué precio dicen que es bueno para entrar?', '2021-04-18', 11, 6),
(22, 'Un 1.5 para mí. Igual no soy asesora financiera.', '2021-04-19', 3, 6),
(23, 'Si, yo creo que un 1.7 ya es bueno.', '2021-04-19', 12, 6),
(24, 'Okay mil gracias, voy a seguir investigando.', '2021-04-20', 11, 6),
(25, 'Band Protocol, le tengo una fé a este.', '2021-04-18', 11, 7),
(26, 'Si?? Yo empecé a investigarlo hace poco.', '2021-04-18', 10, 7),
(27, 'Mmm este no me gusta tanto, siento que hay mejores oráculos.', '2021-04-19', 3, 7),
(28, 'Creo que tiene mucho potencial, y solo tiene 280 millones de Market Cap.', '2021-04-22', 12, 7),
(29, 'Hola!! Pregunta, ¿cómo ven a Chain Games?', '2021-04-18', 14, 8),
(30, 'Después de lo que pasó con Fortnite cayó bastante, pero creo que podría volver a ese precio.', '2021-04-19', 9, 8),
(31, 'Qué pasó con Fortnite??', '2021-04-19', 14, 8),
(32, 'No se quizo meter en las apuestas para juegos competitivos.', '2021-04-20', 7, 8),
(33, 'Uh, tendré que investigar más. Gracias!', '2021-04-21', 14, 8),
(34, 'La app que tiene StormX no me gusta nada, parece una estafa.', '2021-04-19', 5, 9),
(35, 'Sí, es medio rara. Pero igual el proyecto es muy bueno para mí.', '2021-04-20', 1, 9),
(36, '¿Por qué decís?', '2021-04-20', 5, 9),
(37, 'Tiene un equipo muy bueno con mucha experiencia en el tema, yo creo que va a crecer mucho.', '2021-04-22', 1, 9),
(38, 'Atentos, para mí está ahora a un MUY buen precio...', '2021-04-21', 13, 10),
(39, 'Opino igual, yo estoy haciendo \"dollar-cost\" con OMI.', '2021-04-22', 12, 10),
(40, 'Yo también estoy con dollar-cost con esta cripto.', '2021-04-23', 11, 10),
(41, 'El tema es que yo tengo todo en Binance y ahí no está.', '2021-04-23', 13, 10),
(42, 'Sisi yo tuve que comprar en BitForex.', '2021-04-23', 11, 10),
(43, 'Probé el juego en la compu y la verdad es bastante divertido.', '2021-04-20', 14, 11),
(44, 'Aparte tienen una muy buena idea, con la compra de terreno virtual.', '2021-04-21', 10, 11),
(45, 'Tremenda, yo compre en Binance con USDC.', '2021-04-21', 7, 11),
(46, 'Perdón, USDT.', '2021-04-21', 7, 11),
(47, 'El gran cardano [aplausos]', '2021-04-19', 6, 12),
(48, 'ADA! ADA! ADA!', '2021-04-19', 10, 12),
(49, 'IM-PRE-SIO-NAN-TE!!!', '2021-04-19', 12, 12),
(50, 'Por lejos mi proyecto favorito.', '2021-04-20', 3, 12),
(51, 'Y aparte el 29 de Abril hacen un anuncio con África... el futuro es ADA?', '2021-04-21', 4, 12),
(52, 'Uhh sii!! estoy esperando con ansias #cardanoAfrica.', '2021-04-21', 6, 12),
(53, 'Es parte de mi portfolio HODL, gran parte de él...', '2021-04-22', 10, 12),
(54, 'Si es bastante seguro. Ahora con la caída que tuvo voy a comprar un poco más.', '2021-04-22', 12, 12),
(55, 'Yo vendo, me alejo de cardano y me inclino por Polkadot.', '2021-04-22', 3, 12),
(56, 'Ethereum a 5000 para fin de Mayo, olvidate.', '2021-04-14', 2, 13),
(57, 'A 5000?? Me parece mucho, igual le está yendo muy bien.', '2021-04-14', 6, 13),
(58, 'Le doblo la apuesta a Sol, 10.000 para diciembre.', '2021-04-14', 6, 13),
(59, '10.000 en diciembre la veo viable.', '2021-04-15', 3, 13),
(60, 'Ethereum debería ser parte de cada portfolio de inversión.', '2021-04-16', 7, 13),
(61, 'Sin dudas, poco riesgo.', '2021-04-17', 2, 13),
(62, 'El poco riesgo es relativo, en cripto todo tiene riesgo.', '2021-04-17', 6, 13),
(63, 'Claro pero riesgo más bajo que la gran mayoría.', '2021-04-17', 7, 13),
(64, 'Murió el mercado, el Eth se sostuvo. Tremendo.', '2021-04-20', 4, 13),
(65, 'Sí un bajón. Entre el corte en China y las conspiraciones de USA, se fue todo en rojo.', '2021-04-21', 7, 13),
(66, 'Sumale ahora que Biden quiere aumentar el impuesto a los ricos.', '2021-04-21', 14, 13),
(67, 'Predicción para Polkadot en el largo?', '2021-04-19', 2, 14),
(68, '80 - 90 en diciembre en mi opinión.', '2021-04-19', 1, 14),
(69, 'Si baja a 30 vendo el auto por Polkadot', '2021-04-19', 7, 14),
(70, 'Yo creo que el DOT llega a 150.', '2021-04-20', 10, 14),
(71, '150 me parece excesivo, 100 puede ser.', '2021-04-23', 11, 14),
(72, 'Lo tengo en la mira, apenas corrija compro.', '2021-04-24', 2, 14),
(73, 'Igual Sol, unas ganas de que corrija.', '2021-04-24', 7, 14),
(74, 'Alguien más acá por Cripto Banter?', '2021-04-19', 14, 15),
(75, 'BUY CHAINLINK! BUY CHAINLINK! BUY CHAINLINK!', '2021-04-19', 6, 15),
(76, 'Crack Cripto Banter, lo veo todos los días.', '2021-04-22', 11, 15),
(77, 'A 32 es un regalo la verdad.', '2021-04-23', 1, 15),
(78, 'Recontra compro a 35.', '2021-04-23', 13, 15),
(79, 'Yo compro LINK a cualquier precio la verdad.', '2021-04-24', 11, 15),
(80, 'No me gusta Chainlink a mí, no me cierra el proyecto.', '2021-04-24', 10, 15),
(81, 'A mí me encanta.', '2021-04-24', 11, 15),
(82, 'Mmm mejor espero a que llegue a 33/34.', '2021-04-24', 13, 15),
(83, 'Nunca llegue a entender la funcionalidad de las stablecoins.', '2021-04-16', 3, 16),
(84, 'Están diseñadas para replicar el valor de monedas fíat como el dólar o el euro.', '2021-04-16', 6, 16),
(85, 'Hay un montón igual, USDT, DAI, USDC, BUSD.', '2021-04-17', 11, 16),
(86, 'Sisi, a mi la que más seguridad me da es BUSD porque está respaldada por Binance.', '2021-04-19', 7, 16),
(87, 'Klatyn a 2 dólares es compra siempre.', '2021-04-17', 7, 17),
(88, 'Me da bastante inseguridad este proyecto.', '2021-04-17', 10, 17),
(89, 'A mí también, no me gusta.', '2021-04-17', 11, 17),
(90, 'No estoy de acuerdo, a mí me encanta.', '2021-04-20', 13, 17),
(91, 'Aave siento que tiene mucho potencial de crecimiento todavía.', '2021-04-19', 7, 18),
(92, 'Ahora que cayó (como todo) es una buena ventana de compra.', '2021-04-19', 10, 18),
(93, 'Yo puse un limit en 315, ojalá llegue así se compra.', '2021-04-20', 11, 18),
(94, 'Te manejaste con stop loss también?', '2021-04-22', 13, 18),
(95, 'ATOM!!!', '2021-04-21', 3, 19),
(96, 'Claramente una que busco meter en mi portfolio.', '2021-04-21', 1, 19),
(97, 'Dónde la comprarías??', '2021-04-22', 6, 19),
(98, 'En Binance está, yo uso esa.', '2021-04-22', 1, 19),
(99, 'Alguien más haciendo staking de $CAKE?', '2021-04-23', 3, 20),
(100, 'La pregunta es quién NO está haciendo staking de CAKE!!', '2021-04-22', 7, 20),
(101, 'Yo no, ajaja. Que tenga un panqueque me parece poco confiable.', '2021-04-24', 10, 20),
(102, 'Claro, pero tiene un gas fee muchísimo menor.', '2021-04-24', 13, 20),
(103, 'Elrond va a llegar a 300 para fin de año', '2021-06-13', 17, 21),
(104, 'VTHO me sacó toda la plata', '2021-06-21', 17, 3);

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `url_imagen` varchar(255) NOT NULL,
  `nombre_producto` varchar(255) NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `actualizar_producto` date DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `descripcion_larga` varchar(400) NOT NULL,
  `descripcion_corta` varchar(255) NOT NULL,
  `num_comentarios` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `url_imagen`, `nombre_producto`, `fecha_publicacion`, `actualizar_producto`, `id_usuario`, `descripcion_larga`, `descripcion_corta`, `num_comentarios`) VALUES
(1, 'https://s2.coinmarketcap.com/static/img/coins/200x200/5117.png', 'Origin Protocol', '2021-04-14', NULL, 1, 'Origin Protocol es una plataforma de código abierto que permite la creación de mercados entre pares y aplicaciones de comercio electrónico, que utiliza la blockchain de Ethereum y el Sistema de Archivos IPFS. Origin Protocol pretende facilitar la creación de sistemas similares a Uber, Airbnb, Getaround, Fiverr y muchos otros.', 'Una plataforma para crear mercados y aplicaciones.', 4),
(2, 'https://s2.coinmarketcap.com/static/img/coins/200x200/4206.png', 'Wink', '2021-04-14', NULL, 1, 'WINk (WIN) es una plataforma de juego basada en Tron (TRX) que permite a los usuarios jugar, socializar y bloquear activos en múltiples ecosistemas blockchain mediante el uso del token nativo WIN.', 'Una plataforma de juego basada en Tron.', 4),
(3, 'https://research.binance.com/static/images/projects/vethor/logo1.png', 'VeThor Token', '2021-04-15', NULL, 1, 'VeThor Token (VTHO) es un activo digital con una capitalización de mercado de $686.78M. VeThor Token se encuentra en el rango de 121 en el rating global de criptomonedas con un volumen de trading diario medio de $160.78M. Es el token secundario en el ecosistema VeChain; el VTHO se consume al hacer transacciones o al subir datos a la cadena de bloques.', 'El token secundario en el ecosistema VeChain.', 4),
(4, 'https://icoholder.com/media/cache/ico_logo_view_page/files/img/c364d8534cf023bd26556dcb035d5b79.png', 'PAID Network', '2021-04-14', NULL, 1, 'Un ecosistema dApp que aprovecha la tecnología blockchain para ofrecer acuerdos SMART impulsados por DeFi para hacer negocios exponencialmente más eficientes. Permiten a los usuarios crear su propia política, asegurándose de que RECIBAN PAGOS. Diseñaron la plataforma con la eficiencia y la rentabilidad como su prioridad principal. ', 'Un ecosistema dApp con acuerdos inteligentes.', 4),
(5, 'https://www.forexsrovnavac.cz/assets/img/crypto/enjin-coin.png', 'Enjin Coin', '2021-04-16', NULL, 1, 'Una moneda creada para bienes virtuales y su finalidad convertirse en la criptomoneda más útil en la industria del videojuego. A su vez Enjin es una plataforma de juegos con la comunidad más grande en linea.', 'Una moneda para comprar bienes virtuales.', 4),
(6, 'https://www.forexsrovnavac.cz/assets/img/crypto/ontology.png', 'Ontology', '2021-04-18', NULL, 1, 'Ontology es una plataforma pública de cadenas de bloques que permite la creación e implementación de proyectos de diferentes tamaños; de esta manera, cierra la brecha entre las cadenas de bloques y los negocios.', 'Una plataforma pública de blockchain.', 4),
(7, 'https://icodrops.com/wp-content/uploads/2019/09/band_logo.jpg', 'Band Protocol', '2021-04-18', NULL, 2, 'Una plataforma criptográfica de oráculos descentralizados entre cadenas. Band Protocol v2 usa su propia cadena de bloques, BandChain, basada en Tendermint, con un algoritmo de consenso BFT (DPoS), y opera dentro del ecosistema Cosmos.', 'Una plataforma criptográfica de oráculos descentralizados.', 4),
(8, 'https://coincost.net/uploads/temp/04178d6b96b8c23fbf596de6000a1a72.png', 'Chain Games', '2021-04-17', NULL, 2, 'Chain Games es una plataforma que busca ser una opción más y prometedora para los jugadores que buscan un entorno de apuestas sin confianza cuando juegan a videojuegos competitivos con otros usuarios. La infraestructura elimina la necesidad de \"intermediarios o intermediarios externos\" durante los concursos.', 'Un protocolo para apuestas en juegos.', 5),
(9, 'https://assets.coingecko.com/coins/images/1369/large/StormX.png?1603113002', 'StormX', '2021-04-19', NULL, 4, 'StormX (STMX) es un mercado gamificado que permite a los usuarios ganar STMX, así como otras criptomonedas, por comprar en una de sus tiendas asociadas en Internet o por completar microtareas a través de su aplicación.', 'Una app que promueve las compras online con cripto.', 4),
(10, 'https://icoholder.com/files/img/0c374147dd170d41a31f5c0083059500.jpeg', 'Ecomi', '2021-04-19', NULL, 4, 'ECOMI ofrece una ventanilla única para coleccionables digitales a través de la aplicación VeVe que permite a los usuarios experimentar la propiedad real de coleccionables digitales de primera calidad.', 'Una ventanilla única para coleccionables digitales.', 5),
(11, 'https://assets.coingecko.com/coins/images/878/large/decentraland-mana.png?1550108745', 'Decentraland', '2021-04-18', NULL, 4, 'Una plataforma de realidad virtual desarrollada por el blockchain de Ethereum, en donde se puede crear, experimentar y monetizar apps y contenido.', 'Un juego de realidad virtual con compras in-game.', 4),
(12, 'https://s2.coinmarketcap.com/static/img/coins/200x200/2010.png', 'Cardano', '2021-04-19', NULL, 4, 'Una plataforma de blockchain de código abierto que busca redistribuir el poder de las estructuras contables entre los individuos, ayudando a crear una sociedad más segura, transparente y justa.', 'Una plataforma de blockchain para redistribuir el poder.', 10),
(13, 'https://64.media.tumblr.com/18a5246a4287ee4db0cd134d69954eb0/tumblr_inline_o4wvui8rKt1r2w261_400.png', 'Ethereum', '2021-04-14', NULL, 5, 'Un sistema blockchain descentralizado que funciona como plataforma para intercambiar numerosas criptomonedas, así como para la ejecución de contratos inteligentes.', 'Un sistema blockchain de intercambio y desarrollo.', 11),
(14, 'https://s2.coinmarketcap.com/static/img/coins/200x200/4129.png', 'Polkadot', '2021-04-19', NULL, 10, 'Un protocolo de sharding multicadena que facilita la transferencia entre cadenas de cualquier tipo de datos o activos, no solo tokens.', 'Un protocolo de sharding multicadena.', 7),
(15, 'https://s2.coinmarketcap.com/static/img/coins/200x200/1975.png', 'Chainlink', '2021-04-18', NULL, 10, 'Una red de oráculo descentralizado que tiene como objetivo conectar contratos inteligentes con datos del mundo real.', 'Una red de oráculo descentralizado.', 9),
(16, 'https://s2.coinmarketcap.com/static/img/coins/200x200/825.png', 'Tether', '2021-04-16', NULL, 11, 'Una moneda estable, que imita siempre el valor del dólar americano. Denominada USDT.', 'Una moneda estable que imita el valor del dólar.', 4),
(17, 'https://icoholder.com/media/cache/ico_logo_view_page/files/img/2694471c0ab0f122134bbd371541d521.jpeg', 'Klaytn', '2021-04-16', NULL, 11, 'Es un proyecto blockchain público de Kakao (una empresa de Internet surcoreana). Tiene como finalidad brindar una experiencia blockchain fácil de usar a millones de personas, a través de una plataforma de nivel empresarial.', 'Un proyecto blockchain con foco en el UX.', 4),
(18, 'https://assets.coingecko.com/coins/images/12645/large/AAVE.png?1601374110', 'Aave', '2021-04-16', NULL, 14, 'Aave es un protocolo de mercado monetario descentralizado (DEFI) y sin custodia en el que los usuarios pueden participar como depositantes o prestatarios.', 'Un protocolo de mercado monetario DeFi.', 4),
(19, 'https://assets.coingecko.com/coins/images/1481/large/cosmos_hub.png', 'Cosmos', '2021-04-16', NULL, 2, 'Cosmos es un proyecto centrado en brindar una infraestructura capaz de unir a varias blockchain independientes y hacerlas interoperables entre ellas.', 'Un proyecto que busca unificar blockchains.', 4),
(20, 'https://s2.coinmarketcap.com/static/img/coins/200x200/7186.png', 'PancakeSwap', '2021-04-17', NULL, 11, 'La plataforma PancakeSwap, desarrollada sobre la blockchain de Binance (BSC), figura ahora como la más grande por activos bloqueados en el sector de los exchanges descentralizados (DEX).', 'Una plataforma de intercambio de criptomonedas con BSC.', 4),
(21, 'https://coincost.net/uploads/temp/82719f912ddf6377a0f150b373c83357.png', 'Elrond', '2021-05-13', NULL, 11, 'Un proyecto que aspira a conseguir una blockchain tan rápida y escalable que pueda ser utilizada para las finanzas, el uso empresarial y más, gracias a su sistema adaptativo de fragmentación del estado, que permite que las transacciones sean gestionadas rápidamente por múltiples validadores.', 'Una blockchain rápida y escalable.', 0),
(22, 'https://s2.coinmarketcap.com/static/img/coins/200x200/5034.png', 'Kusama', '2021-05-17', NULL, 17, 'Es la testnet de Polkadot, el protocolo blockchain que conecta múltiples blockchains especializadas en una sola red unificada. Representa una versión experimental de investigación y desarrollo comunitario para el protocolo inicial Polkadot.', 'La testnet de Polkadot.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `apellido_usuario` varchar(255) NOT NULL,
  `num_comentarios_hechos` int(11) DEFAULT NULL,
  `cant_productos` int(11) DEFAULT NULL,
  `url_imagen_usuario` varchar(255) DEFAULT NULL,
  `mail` varchar(255) NOT NULL,
  `fecha_registracion` date DEFAULT NULL,
  `editar_perfil` date DEFAULT NULL,
  `texto_usuario` varchar(255) DEFAULT NULL,
  `contrasenia` varchar(255) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `apellido_usuario`, `num_comentarios_hechos`, `cant_productos`, `url_imagen_usuario`, `mail`, `fecha_registracion`, `editar_perfil`, `texto_usuario`, `contrasenia`, `fecha_nacimiento`) VALUES
(1, 'Bautista', 'Migliore', 11, 6, 'https://media-exp1.licdn.com/dms/image/C5603AQEJr4VmhoWDxw/profile-displayphoto-shrink_800_800/0/1604009810434?e=1624492800&v=beta&t=8UUIXnr8HwHwf9LTAN0mPsk4fxEMfQknzS4min7avTs', 'bmigliore@udesa.edu.ar', '2021-04-13', NULL, 'Hola! Soy Bauti, y te invito a ver mis productos :)', 'BautiMigliore1', NULL),
(2, 'Sol', 'Ana', 5, 3, 'https://img.europapress.es/fotoweb/fotonoticia_20200907131946_420.jpg', 'sol_ana20@hotmail.com', '2021-04-15', NULL, NULL, 'Solana123', NULL),
(3, 'Samanta', 'Rosales', 10, NULL, 'https://image.freepik.com/foto-gratis/mujer-adolescente-aislada-azul-mostrando-levantando-dedo_1368-115667.jpg', 'srosalesmm5@gmail.com', '2021-04-15', NULL, 'Fan de las criptomonedas, con ganas de aprender a diario. Capricornio', 'Sam.RosalesCR7', NULL),
(4, 'Arya', 'Frias', 4, 4, 'https://divem.accem.es/wp-content/uploads/2018/05/brian-fraser-337137-1030x687.jpg', 'arya_stark_frias@gmail.com', '2021-04-14', NULL, 'Invirtiendo a full!!!', 'aRYAsTARK9', NULL),
(5, 'Manuel', 'Gonzales', 4, 1, 'https://www.diariodecuyo.com.ar/__export/1586191744739/sites/diariodecuyo/img/2020/04/06/screenshot_1.jpg', 'gonzalesmanu4@gmail.com', '2021-04-15', NULL, 'Hincha de Olimpo, en contra de Dogecoin...', 'Manumanucho3', NULL),
(6, 'Franco', 'Gutner', 8, NULL, 'https://image.freepik.com/foto-gratis/hombre-pelirrojo-barbudo-guapo-joven-desconcertado-peinado-casual-mirando-confusamente-camara-arrugando-frente-pie-contra-pared-rosa_295783-9558.jpg', 'fgutner10quito@gmail.com', '2021-04-15', NULL, 'Actualmente todo en Bitcoin.', 'FfGutner_5', NULL),
(7, 'Pilar', 'Teza', 12, NULL, 'https://i.pinimg.com/736x/d6/92/86/d69286dea9ee4b208b97f3f1acef9922.jpg', 'piliteza@gmail.com', '2021-04-16', NULL, '¿Por qué no?', 'SoyPilixx2', NULL),
(8, 'Abril', 'Frondizi', NULL, NULL, 'https://cde.peru.com//ima/0/0/7/4/5/745653/611x458/mujeres.jpg', 'abrufrondizi@gmail.com', '2021-04-16', NULL, 'La inflación se zafa a través las criptos.', 'AbruFrondz4', NULL),
(9, 'Carolina', 'Guide', 1, NULL, NULL, 'carolinaguide@gmail.com', '2021-04-17', NULL, NULL, 'CaroCaro33', NULL),
(10, 'Raul', 'Carra', 12, 2, NULL, 'rau_carra_rau@outlook.com', '2021-04-14', NULL, 'Gurú de las criptomonedas.', 'RuloCarra7', NULL),
(11, 'Nicolás', 'Cavalieri', 14, 4, NULL, 'ncavalieri@udesa.edu.ar', '2021-04-15', NULL, 'Seguime si te interesan las tokes DeFi!', 'Ncava23Ponzio', NULL),
(12, 'Joaquín', 'Lugones', 8, NULL, NULL, 'joalugoness@gmail.com', '2021-04-15', NULL, NULL, 'JoacoLug0', NULL),
(13, 'Catalina', 'Rosella', 7, NULL, NULL, 'crosella@udesa.edu.ar', '2021-04-16', NULL, 'Estudiante universitaria.', 'RosellaCata2', NULL),
(14, 'Juana', 'Miranda', 6, 1, NULL, 'juamirandana@gmail.com', '2021-04-18', NULL, '', 'JujuMira2', NULL),
(15, 'Micaela', 'Gutierrez', NULL, NULL, 'https://pbs.twimg.com/profile_images/768045805584412672/ixQhQDC_.jpg', 'mica_guti_fotolog@gmail.com', NULL, NULL, 'Hola. soy Mica <3', 'sftgyjhukj', NULL),
(16, 'Hugo', 'Fuchs', NULL, NULL, 'https://profile-images.xing.com/images/dc7114bdd2142411e9c530c31aeee888-2/hugo-fuchs.1024x1024.jpg', 'fuchshugo1@gmail.com', NULL, NULL, 'HODL', 'Huguete777', NULL),
(17, 'Wenceslao', 'Menceyra', 4, 1, NULL, 'w.menceyra@scms.edu.ar', NULL, '2021-06-25', 'Hola soy Wences', '$2a$10$UPH1TeAEkW1UE56KEHHOee.Pxn1AnEoxVN/kgBn6CtZ6HDCu.aXea', '2002-06-06'),
(18, 'Julián', 'Estevez', NULL, NULL, NULL, 'julianestevez@gmail.com', NULL, NULL, 'Mi perro sabe más que yo :)', '$2a$10$zUuWapirZNF8LKePzcO.2eV9zGBux8vF7HvsCpKkyEloTowZQ1oly', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_usuario_comentador` (`id_usuario_comentador`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
