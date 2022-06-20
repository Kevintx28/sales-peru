-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2022 a las 13:53:50
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sales-peru`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `client_id` text NOT NULL,
  `client_codigocliente` text NOT NULL,
  `client_tipo` text NOT NULL,
  `client_person_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE `person` (
  `person_id` text NOT NULL,
  `person_nombres` text NOT NULL,
  `person_paterno` text NOT NULL,
  `person_materno` text NOT NULL,
  `person_nro_di` text NOT NULL,
  `person_usuario` text NOT NULL,
  `person_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `person`
--

INSERT INTO `person` (`person_id`, `person_nombres`, `person_paterno`, `person_materno`, `person_nro_di`, `person_usuario`, `person_password`) VALUES
('123456', 'Eder', 'Gutierrez', 'Quispe', '43974466', 'sistemas', 'tupapi'),
('1655088682932', 'Alexander', 'Alexander', 'Alexander', 'Alexander', 'Alexander', 'Alexander'),
('1655119481673', 'Pedro', 'Pedro', 'Pedro', 'Pedro', 'Pedro', 'Pedro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `worker`
--

CREATE TABLE `worker` (
  `worker_id` text NOT NULL,
  `worker_salario` decimal(10,0) NOT NULL,
  `worker_codigotrabajador` text NOT NULL,
  `worker_person_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `worker`
--

INSERT INTO `worker` (`worker_id`, `worker_salario`, `worker_codigotrabajador`, `worker_person_id`) VALUES
('1655088682932', '0', 'codigo', '1655088682932'),
('1655088824500', '0', 'codigo', '1655088824500'),
('1655093748482', '0', 'codigo', '1655093748482'),
('1655093817186', '0', 'codigo', '1655093817186'),
('1655093880210', '0', 'codigo', '1655093880210'),
('1655093917578', '0', 'codigo', '1655093917578'),
('1655094018834', '0', 'codigo', '1655094018834'),
('1655094164428', '0', 'codigo', '1655094164428'),
('1655094910620', '0', 'codigo', '1655094910620'),
('1655116943774', '0', 'codigo', '1655116943774'),
('1655117119355', '0', 'codigo', '1655117119355'),
('1655117486310', '0', 'codigo', '1655117486310'),
('1655117537893', '0', 'codigo', '1655117537893'),
('1655117763846', '0', 'codigo', '1655117763846'),
('1655119481673', '0', 'codigo', '1655119481673');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`(20));

--
-- Indices de la tabla `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`worker_id`(20));
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
