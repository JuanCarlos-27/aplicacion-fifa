-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2022 a las 04:11:24
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_fifa`
--
CREATE DATABASE IF NOT EXISTS `db_fifa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_fifa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Equipos', 7, 'add_team'),
(26, 'Can change Equipos', 7, 'change_team'),
(27, 'Can delete Equipos', 7, 'delete_team'),
(28, 'Can view Equipos', 7, 'view_team'),
(29, 'Can add Posicion', 8, 'add_position'),
(30, 'Can change Posicion', 8, 'change_position'),
(31, 'Can delete Posicion', 8, 'delete_position'),
(32, 'Can view Posicion', 8, 'view_position'),
(33, 'Can add coach', 9, 'add_coach'),
(34, 'Can change coach', 9, 'change_coach'),
(35, 'Can delete coach', 9, 'delete_coach'),
(36, 'Can view coach', 9, 'view_coach'),
(37, 'Can add Jugador', 10, 'add_player'),
(38, 'Can change Jugador', 10, 'change_player'),
(39, 'Can delete Jugador', 10, 'delete_player'),
(40, 'Can view Jugador', 10, 'view_player');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$Yb2K1KD8lReEGZO1LymdFA$yXNGlMCo9tRWnLIiCcvRu29d90QE5kqQ5YlKApj++yo=', '2022-09-15 19:10:33.770835', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2022-09-15 19:06:36.638861');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coach`
--

CREATE TABLE `coach` (
  `id_coach` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `date_of_birth` date NOT NULL,
  `role` varchar(15) NOT NULL,
  `nationality` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `coach`
--

INSERT INTO `coach` (`id_coach`, `name`, `date_of_birth`, `role`, `nationality`) VALUES
(3, 'Gustavo Alfaro', '2022-09-15', '1', 'Ecuador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-09-15 19:27:47.727837', '1', 'España', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-09-15 19:30:33.254061', '1', 'España', 2, '[{\"changed\": {\"fields\": [\"Bandera nacional\", \"Escudo\"]}}]', 7, 1),
(3, '2022-09-15 19:35:47.117544', '1', 'España', 2, '[{\"changed\": {\"fields\": [\"Bandera nacional\", \"Escudo\"]}}]', 7, 1),
(4, '2022-09-15 19:46:18.797363', '1', 'MC', 1, '[{\"added\": {}}]', 8, 1),
(5, '2022-09-15 19:46:26.253042', '2', 'PO', 1, '[{\"added\": {}}]', 8, 1),
(6, '2022-09-15 19:46:41.701066', '3', 'DFC', 1, '[{\"added\": {}}]', 8, 1),
(7, '2022-09-15 19:46:54.197726', '4', 'LD', 1, '[{\"added\": {}}]', 8, 1),
(8, '2022-09-15 19:47:06.892593', '5', 'LI', 1, '[{\"added\": {}}]', 8, 1),
(9, '2022-09-15 19:47:19.525510', '6', 'MI', 1, '[{\"added\": {}}]', 8, 1),
(10, '2022-09-15 19:47:37.181245', '7', 'MD', 1, '[{\"added\": {}}]', 8, 1),
(11, '2022-09-15 19:48:31.133301', '8', 'MCO', 1, '[{\"added\": {}}]', 8, 1),
(12, '2022-09-15 19:48:43.285068', '9', 'MCD', 1, '[{\"added\": {}}]', 8, 1),
(13, '2022-09-15 19:49:12.205077', '10', 'DC', 1, '[{\"added\": {}}]', 8, 1),
(14, '2022-09-15 19:49:22.125166', '11', 'ED', 1, '[{\"added\": {}}]', 8, 1),
(15, '2022-09-15 19:49:30.471581', '12', 'EI', 1, '[{\"added\": {}}]', 8, 1),
(16, '2022-09-15 21:18:03.793979', '1', 'Alvaro', 1, '[{\"added\": {}}]', 10, 1),
(17, '2022-09-16 01:27:26.177170', '2', 'Alemania', 1, '[{\"added\": {}}]', 7, 1),
(18, '2022-09-16 01:27:56.782948', '3', 'Argentina', 1, '[{\"added\": {}}]', 7, 1),
(19, '2022-09-16 01:28:32.922931', '4', 'Belgica', 1, '[{\"added\": {}}]', 7, 1),
(20, '2022-09-16 01:29:17.435234', '5', 'Brasil', 1, '[{\"added\": {}}]', 7, 1),
(21, '2022-09-16 01:29:43.410948', '6', 'Camerun', 1, '[{\"added\": {}}]', 7, 1),
(22, '2022-09-16 01:32:48.053070', '6', 'Camerun', 2, '[{\"changed\": {\"fields\": [\"Escudo\"]}}]', 7, 1),
(23, '2022-09-16 01:34:35.885098', '6', 'Camerun', 2, '[{\"changed\": {\"fields\": [\"Escudo\"]}}]', 7, 1),
(24, '2022-09-16 01:36:27.709700', '7', 'Canada', 1, '[{\"added\": {}}]', 7, 1),
(25, '2022-09-16 01:37:00.380947', '8', 'Corea del Sur', 1, '[{\"added\": {}}]', 7, 1),
(26, '2022-09-16 01:38:04.940792', '8', 'Corea del Sur', 2, '[{\"changed\": {\"fields\": [\"Escudo\"]}}]', 7, 1),
(27, '2022-09-16 01:38:35.692997', '9', 'Croacia', 1, '[{\"added\": {}}]', 7, 1),
(28, '2022-09-16 01:39:02.136068', '10', 'Dinamarca', 1, '[{\"added\": {}}]', 7, 1),
(29, '2022-09-16 01:40:37.724617', '10', 'Dinamarca', 2, '[{\"changed\": {\"fields\": [\"Escudo\"]}}]', 7, 1),
(30, '2022-09-16 01:40:58.108634', '10', 'Dinamarca', 2, '[{\"changed\": {\"fields\": [\"Escudo\"]}}]', 7, 1),
(31, '2022-09-16 01:42:15.148591', '10', 'Dinamarca', 2, '[{\"changed\": {\"fields\": [\"Escudo\"]}}]', 7, 1),
(32, '2022-09-16 01:42:47.642560', '11', 'Ecuador', 1, '[{\"added\": {}}]', 7, 1),
(33, '2022-09-16 01:44:02.112464', '12', 'Francia', 1, '[{\"added\": {}}]', 7, 1),
(34, '2022-09-16 01:44:30.699702', '13', 'Ghana', 1, '[{\"added\": {}}]', 7, 1),
(35, '2022-09-16 01:45:02.155264', '14', 'Paises Bajos', 1, '[{\"added\": {}}]', 7, 1),
(36, '2022-09-16 01:45:23.356776', '15', 'Inglaterra', 1, '[{\"added\": {}}]', 7, 1),
(37, '2022-09-16 01:46:03.157791', '15', 'Inglaterra', 2, '[{\"changed\": {\"fields\": [\"Escudo\"]}}]', 7, 1),
(38, '2022-09-16 01:46:20.276173', '15', 'Inglaterra', 2, '[{\"changed\": {\"fields\": [\"Escudo\"]}}]', 7, 1),
(39, '2022-09-16 01:46:49.604739', '16', 'Iran', 1, '[{\"added\": {}}]', 7, 1),
(40, '2022-09-16 01:47:22.980438', '17', 'Japon', 1, '[{\"added\": {}}]', 7, 1),
(41, '2022-09-16 01:47:50.645935', '18', 'Marruecos', 1, '[{\"added\": {}}]', 7, 1),
(42, '2022-09-16 01:48:17.848051', '19', 'Mexico', 1, '[{\"added\": {}}]', 7, 1),
(43, '2022-09-16 01:48:50.299245', '20', 'Polonia', 1, '[{\"added\": {}}]', 7, 1),
(44, '2022-09-16 01:49:46.210565', '20', 'Polonia', 2, '[{\"changed\": {\"fields\": [\"Escudo\"]}}]', 7, 1),
(45, '2022-09-16 01:50:15.277019', '21', 'Portugal', 1, '[{\"added\": {}}]', 7, 1),
(46, '2022-09-16 01:50:41.620815', '22', 'Qatar', 1, '[{\"added\": {}}]', 7, 1),
(47, '2022-09-16 01:51:29.844656', '22', 'Qatar', 2, '[{\"changed\": {\"fields\": [\"Escudo\"]}}]', 7, 1),
(48, '2022-09-16 01:52:07.534246', '23', 'Senegal', 1, '[{\"added\": {}}]', 7, 1),
(49, '2022-09-16 01:52:47.835162', '24', 'Serbia', 1, '[{\"added\": {}}]', 7, 1),
(50, '2022-09-16 01:53:27.678944', '25', 'Suiza', 1, '[{\"added\": {}}]', 7, 1),
(51, '2022-09-16 01:53:56.726275', '26', 'Tunez', 1, '[{\"added\": {}}]', 7, 1),
(52, '2022-09-16 01:56:44.029566', '27', 'Uruguay', 1, '[{\"added\": {}}]', 7, 1),
(53, '2022-09-16 01:57:05.827286', '28', 'Estados Unidos', 1, '[{\"added\": {}}]', 7, 1),
(54, '2022-09-16 01:58:11.116848', '28', 'Estados Unidos', 2, '[{\"changed\": {\"fields\": [\"Escudo\"]}}]', 7, 1),
(55, '2022-09-16 01:58:51.180432', '26', 'Tunez', 2, '[{\"changed\": {\"fields\": [\"Escudo\"]}}]', 7, 1),
(56, '2022-09-16 02:08:49.770374', '3', 'Gustavo Alfaro', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'fifa_app', 'coach'),
(10, 'fifa_app', 'player'),
(8, 'fifa_app', 'position'),
(7, 'fifa_app', 'team'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-09-14 23:19:12.973398'),
(2, 'auth', '0001_initial', '2022-09-14 23:19:23.664124'),
(3, 'admin', '0001_initial', '2022-09-14 23:19:27.602797'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-09-14 23:19:27.665324'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-09-14 23:19:27.712208'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-09-14 23:19:28.556210'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-09-14 23:19:29.462732'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-09-14 23:19:29.697184'),
(9, 'auth', '0004_alter_user_username_opts', '2022-09-14 23:19:29.759700'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-09-14 23:19:30.698270'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-09-14 23:19:30.729528'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-09-14 23:19:30.792049'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-09-14 23:19:31.042123'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-09-14 23:19:31.198420'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-09-14 23:19:31.323458'),
(16, 'auth', '0011_update_proxy_permissions', '2022-09-14 23:19:31.370349'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-09-14 23:19:31.526644'),
(18, 'sessions', '0001_initial', '2022-09-14 23:19:32.730133'),
(19, 'fifa_app', '0001_initial', '2022-09-15 19:04:08.238740'),
(20, 'fifa_app', '0002_alter_coach_options_alter_coach_table', '2022-09-15 19:05:27.100169'),
(21, 'fifa_app', '0003_alter_position_position_description_and_more', '2022-09-15 19:31:08.217409'),
(22, 'fifa_app', '0004_alter_position_position_description', '2022-09-15 19:48:08.820705'),
(23, 'fifa_app', '0005_coach_nationality', '2022-09-15 20:51:14.001036'),
(24, 'fifa_app', '0006_alter_coach_nationality_player', '2022-09-15 21:07:43.791985'),
(25, 'fifa_app', '0007_alter_player_position_alter_player_shirt_number_and_more', '2022-09-15 21:13:04.909850'),
(26, 'fifa_app', '0008_alter_player_initial_player_and_more', '2022-09-16 01:23:22.448073'),
(27, 'fifa_app', '0009_alter_coach_role', '2022-09-16 02:06:33.297124');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ikwm4nazetusf71q85u08dfvzcqposxl', '.eJxVjDsOAiEUAO9CbQjw-IilvWcgD3jIqoFk2a2MdzckW2g7M5k3C7hvNeyD1rBkdmGSnX5ZxPSkNkV-YLt3nnrb1iXymfDDDn7rmV7Xo_0bVBx1bo1SYEhLAMwRXSFjvPBnpX2WIKPDon0xRaMw6CMJzDaR8taCBIfAPl_LHTdq:1oYuFt:ubLW6E3Hc6HiO6hhhGpOOU72TrTI5Ol__q4VX0uujFs', '2022-09-29 19:10:33.858854');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `players`
--

CREATE TABLE `players` (
  `id_player` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `date_of_birth` date NOT NULL,
  `photo` varchar(100) NOT NULL,
  `shirt_number` int(11) NOT NULL,
  `initial_player` varchar(20) NOT NULL,
  `position_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `players`
--

INSERT INTO `players` (`id_player`, `name`, `last_name`, `date_of_birth`, `photo`, `shirt_number`, `initial_player`, `position_id`, `team_id`) VALUES
(1, 'Alvaro', 'Morata', '2022-09-15', 'media/morata.png', 9, '1', 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `positions`
--

CREATE TABLE `positions` (
  `id_position` int(11) NOT NULL,
  `position_name` varchar(5) NOT NULL,
  `position_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `positions`
--

INSERT INTO `positions` (`id_position`, `position_name`, `position_description`) VALUES
(1, 'MC', 'Medio centro'),
(2, 'PO', 'Portero'),
(3, 'DFC', 'Defensa central'),
(4, 'LD', 'Lateral Derecho'),
(5, 'LI', 'Lateral Izquierdo'),
(6, 'MI', 'Medio Izquierdo'),
(7, 'MD', 'Medio Derecho'),
(8, 'MCO', 'Medio centro ofensivo'),
(9, 'MCD', 'Medio centro defensivo'),
(10, 'DC', 'Delantero centro'),
(11, 'ED', 'Extremo Derecho'),
(12, 'EI', 'Extremo Izquierdo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teams`
--

CREATE TABLE `teams` (
  `id_team` int(11) NOT NULL,
  `team_name` varchar(20) NOT NULL,
  `team_flag` varchar(100) NOT NULL,
  `team_shield` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `teams`
--

INSERT INTO `teams` (`id_team`, `team_name`, `team_flag`, `team_shield`) VALUES
(1, 'España', 'media/spain_flag.png', 'media/spain_shield.jpg'),
(2, 'Alemania', 'media/alemania.jpg', 'media/alemania.png'),
(3, 'Argentina', 'media/argentina.jpg', 'media/argentina.png'),
(4, 'Belgica', 'media/belgica.jpg', 'media/belgica.png'),
(5, 'Brasil', 'media/brazil.png', 'media/brazil_9auQ5Dg.png'),
(6, 'Camerun', 'media/Camerun.png', 'media/camerun_9BeXF6W.png'),
(7, 'Canada', 'media/canada.png', 'media/canada_Bbu42cD.png'),
(8, 'Corea del Sur', 'media/coreaSur.png', 'media/coreaSur_0GAwe1O.png'),
(9, 'Croacia', 'media/croacia.png', 'media/croacia_XVVuGI2.png'),
(10, 'Dinamarca', 'media/dinamarca.jpg', 'media/dinamarca_O43sysI.png'),
(11, 'Ecuador', 'media/ecuador.png', 'media/ecuador_i4aYQVV.png'),
(12, 'Francia', 'media/francia.jpg', 'media/francia.png'),
(13, 'Ghana', 'media/ghana.png', 'media/ghana_VBz24Zx.png'),
(14, 'Paises Bajos', 'media/holanda.png', 'media/holanda_c5uMXlc.png'),
(15, 'Inglaterra', 'media/inglaterra.jpg', 'media/inglaterra_WgnbQjH.png'),
(16, 'Iran', 'media/iran.jpg', 'media/iran.png'),
(17, 'Japon', 'media/japon.jpg', 'media/japon.png'),
(18, 'Marruecos', 'media/marruecos.jpg', 'media/marruecos.png'),
(19, 'Mexico', 'media/mexico.jpg', 'media/mexico.png'),
(20, 'Polonia', 'media/polonia.jpg', 'media/polonia_Od0qAFR.PNG'),
(21, 'Portugal', 'media/portugal.jpg', 'media/portugal.png'),
(22, 'Qatar', 'media/qatar.jpg', 'media/qatar.png'),
(23, 'Senegal', 'media/senegal.png', 'media/senegal_6mwxTqD.png'),
(24, 'Serbia', 'media/serbia.png', 'media/serbia_nczz5Uh.png'),
(25, 'Suiza', 'media/suiza.jpg', 'media/suiza.png'),
(26, 'Tunez', 'media/tunez.jpg', 'media/tunez.png'),
(27, 'Uruguay', 'media/uruguay.jpg', 'media/uruguay.png'),
(28, 'Estados Unidos', 'media/usa.jpg', 'media/usa_Y8Mu8Rx.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`id_coach`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id_player`),
  ADD KEY `players_position_id_7767c977_fk_positions_id_position` (`position_id`),
  ADD KEY `players_team_id_8b821f35_fk_teams_id_team` (`team_id`);

--
-- Indices de la tabla `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id_position`);

--
-- Indices de la tabla `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id_team`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `coach`
--
ALTER TABLE `coach`
  MODIFY `id_coach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `players`
--
ALTER TABLE `players`
  MODIFY `id_player` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `positions`
--
ALTER TABLE `positions`
  MODIFY `id_position` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `teams`
--
ALTER TABLE `teams`
  MODIFY `id_team` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_position_id_7767c977_fk_positions_id_position` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id_position`),
  ADD CONSTRAINT `players_team_id_8b821f35_fk_teams_id_team` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id_team`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
