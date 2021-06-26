-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 26, 2021 at 07:49 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `proyecto_integrador`
--

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
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;