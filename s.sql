-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Aug 14, 2017 at 12:51 PM
-- Server version: 5.5.38
-- PHP Version: 5.5.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `r_`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidatos`
--

CREATE TABLE `candidatos` (
`user_event_id` int(11) NOT NULL,
  `user_event_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_event_lastName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_event_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `user_event_pass` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domicilio` text COLLATE utf8_unicode_ci,
  `edad` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genero` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `escolaridad` text COLLATE utf8_unicode_ci,
  `disponibilidad` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experiencia` text COLLATE utf8_unicode_ci,
  `detalles` text COLLATE utf8_unicode_ci,
  `ingles` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cel` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `puesto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rfc` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `curp` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nacimiento` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `civil` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nns` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cedula` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `escuela` text COLLATE utf8_unicode_ci,
  `municipio` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auto` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_event_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stats` tinyint(4) NOT NULL DEFAULT '0',
  `reclutador_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `candidatos`
--

INSERT INTO `candidatos` (`user_event_id`, `user_event_name`, `user_event_lastName`, `user_event_email`, `user_event_pass`, `domicilio`, `edad`, `genero`, `escolaridad`, `disponibilidad`, `experiencia`, `detalles`, `ingles`, `cel`, `puesto`, `rfc`, `curp`, `nacimiento`, `civil`, `nns`, `cedula`, `escuela`, `municipio`, `auto`, `user_event_timestamp`, `stats`, `reclutador_id`) VALUES
(4, 'javier', 'caballero', 'sdf@ssd.cd', NULL, 'sdfsdjk g fg 8g', '23', 'dsf', 'df', 'si', 'ds iniñn kkp 9niunio nkni bu b', 'cxbdf ub h 9h ', 'si', 'df', 'dsgsg', 'dgsdg', 'vsfdb', '2017-08-14', 'sdgsdg', 'ddgsdg', 'sdfsd', 'dgdsg', 'sdf', 'si', '2017-08-14 06:37:50', 2, 12);

-- --------------------------------------------------------

--
-- Table structure for table `empresa`
--

CREATE TABLE `empresa` (
`empresa_id` int(11) NOT NULL,
  `empresa_tit` varchar(150) NOT NULL,
  `empresa_mail` varchar(40) NOT NULL,
  `empresa_pass` varchar(40) NOT NULL,
  `empresa_contacto` varchar(150) NOT NULL,
  `empresa_direccion` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empresa`
--

INSERT INTO `empresa` (`empresa_id`, `empresa_tit`, `empresa_mail`, `empresa_pass`, `empresa_contacto`, `empresa_direccion`) VALUES
(3, 'gamesa', 'empresa@empresa.com', '827ccb0eea8a706c4c34a16891f84e7b', 'javier h', 'r trtherht erhdffg');

-- --------------------------------------------------------

--
-- Table structure for table `empresa_candidatos`
--

CREATE TABLE `empresa_candidatos` (
`ec_id` int(11) NOT NULL,
  `ec_empresa` int(11) NOT NULL,
  `ec_candidato` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empresa_candidatos`
--

INSERT INTO `empresa_candidatos` (`ec_id`, `ec_empresa`, `ec_candidato`) VALUES
(2, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
`user_id` int(11) NOT NULL,
  `user_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_lastName` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_mail` varchar(40) COLLATE utf8_bin NOT NULL,
  `user_pass` varchar(40) COLLATE utf8_bin NOT NULL,
  `user_admin` int(11) NOT NULL DEFAULT '0',
  `user_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_lastName`, `user_mail`, `user_pass`, `user_admin`, `user_timestamp`) VALUES
(3, 'Javier', 'Caballero', 'oui55555@hotmail.com', 'c3535302398f1a30964c79c03b3596be', 1, '0000-00-00 00:00:00'),
(12, 'Javier', 'CCpp', 'javier@capsulaweb.com.mx', 'c3535302398f1a30964c79c03b3596be', 0, '0000-00-00 00:00:00'),
(13, 'nuevo ree', 'reclutadir', 'asdasd@asd.asdad', 'd3badc3b8426e06a454e3fddd72cbf76', 0, '2017-07-19 04:58:00'),
(14, 'nuevo admin', 'administrador', 'asdads@asdas.sadj', 'b9816c6803ce379d6c709f0eb10bc42a', 1, '2017-07-19 04:58:19'),
(15, 'admin', 'admniistrador', 'admin@admin.com', '827ccb0eea8a706c4c34a16891f84e7b', 1, '2017-07-19 04:59:49'),
(16, 'reclutador', 'rec', 'rec@rec.rec', '827ccb0eea8a706c4c34a16891f84e7b', 0, '2017-07-19 05:03:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidatos`
--
ALTER TABLE `candidatos`
 ADD PRIMARY KEY (`user_event_id`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
 ADD PRIMARY KEY (`empresa_id`);

--
-- Indexes for table `empresa_candidatos`
--
ALTER TABLE `empresa_candidatos`
 ADD PRIMARY KEY (`ec_id`), ADD KEY `ec_empresa` (`ec_empresa`,`ec_candidato`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `user_mail` (`user_mail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidatos`
--
ALTER TABLE `candidatos`
MODIFY `user_event_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `empresa`
--
ALTER TABLE `empresa`
MODIFY `empresa_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `empresa_candidatos`
--
ALTER TABLE `empresa_candidatos`
MODIFY `ec_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;