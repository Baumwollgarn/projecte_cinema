-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: database:3306
-- Erstellungszeit: 09. Jun 2022 um 08:02
-- Server-Version: 10.7.3-MariaDB-1:10.7.3+maria~focal
-- PHP-Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cinemas`
--
CREATE DATABASE IF NOT EXISTS `cinemas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cinemas`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `actor`
--

CREATE TABLE `actor` (
  `idActor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `actor`
--

INSERT INTO `actor` (`idActor`) VALUES
(6),
(6),
(7),
(7),
(8),
(8),
(9),
(9),
(10),
(10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `actsIn`
--

CREATE TABLE `actsIn` (
  `idActor` int(11) NOT NULL,
  `idMovie` int(11) NOT NULL,
  `paper` enum('Protagonist','Antagonist','Secondary') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `actsIn`
--

INSERT INTO `actsIn` (`idActor`, `idMovie`, `paper`) VALUES
(6, 3, 'Protagonist'),
(7, 1, 'Protagonist'),
(8, 2, 'Protagonist'),
(9, 4, 'Antagonist'),
(10, 5, 'Protagonist');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `billboard`
--

CREATE TABLE `billboard` (
  `idBillboard` int(11) NOT NULL,
  `idMovie` int(11) NOT NULL,
  `idRoom` int(11) NOT NULL,
  `startTime` time NOT NULL,
  `price` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `billboard`
--

INSERT INTO `billboard` (`idBillboard`, `idMovie`, `idRoom`, `startTime`, `price`) VALUES
(1, 1, 1, '15:00:00', '8'),
(2, 2, 2, '18:00:00', '8'),
(3, 3, 3, '20:00:00', '8'),
(4, 4, 4, '15:00:00', '8'),
(5, 5, 5, '21:00:00', '8'),
(6, 1, 1, '15:00:00', '8'),
(7, 2, 2, '18:00:00', '8'),
(8, 3, 3, '20:00:00', '8'),
(9, 4, 4, '15:00:00', '8'),
(10, 5, 5, '21:00:00', '8'),
(11, 1, 1, '15:00:00', '8'),
(12, 2, 2, '18:00:00', '8'),
(13, 3, 3, '20:00:00', '8'),
(14, 4, 4, '15:00:00', '8'),
(15, 5, 5, '21:00:00', '8');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cinema`
--

CREATE TABLE `cinema` (
  `idCinema` int(11) NOT NULL,
  `idCity` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `location` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `cinema`
--

INSERT INTO `cinema` (`idCinema`, `idCity`, `name`, `address`, `phoneNumber`, `email`, `location`, `image`) VALUES
(1, 1, 'Aficine Manacor', 'Carrer Bas 7', '971 84 72 56', 'manacor@aficine.es', 'https://www.google.com/maps/place/Manacor+Aficine/@39.564743,3.2175197,15z/data=!4m2!3m1!1s0x0:0x821ba086da1a4697?sa=X&ved=2ahUKEwj8gviHqNf3AhUSyaQKHe1SA98Q_BJ6BAhIEAU', 'https://fastly.4sqi.net/img/general/600x600/QVYfMpHoOj1pAPbv57zMaDtXbmpydtwbkUJ3MUonWAg.jpg'),
(2, 2, 'Ocimax Palma', 'Carrer del Bisbe Pere de Puigdorfila 1', '971 75 06 73', 'palma@ocimax.es', 'https://www.google.com/maps/place/Cines+Ocimax/@39.5951261,2.646332,17z/data=!3m1!4b1!4m5!3m4!1s0x129792ef5f543867:0x1730d8284d097b85!8m2!3d39.595122!4d2.6485207', 'https://fra1.digitaloceanspaces.com/places/uploads/place/image/file/2847945/unnamed.jpg'),
(3, 3, 'Cinesa Festival Park', 'Autop. Palma-Inca Km. 7', '971 82 12 12', 'festivalpark@cinesa.com', 'https://www.google.com/maps/place/CINESA+FESTIVAL+PARK+·+IMAX/@39.6339406,2.7296783,17z/data=!3m1!4b1!4m5!3m4!1s0x1297eb3aa7de96e7:0x179d8a9f2da71485!8m2!3d39.6339365!4d2.731867', 'https://lh3.googleusercontent.com/p/AF1QipPyrA2xdQ21aP9oDs4nNO-ZLj_jeqqnxdp6vXwk'),
(4, 4, 'Auditorio de Alcudia', 'Plaça de la Porta de Mallorca', '971 89 71 85', 'auditorialcudia@alcudia.cat', 'https://goo.gl/maps/HhKGXNv8P2rQvtuw9', 'https://upload.wikimedia.org/wikipedia/commons/a/ad/Alcudia_auditorio.JPG'),
(5, 5, 'Auditorio de Valldemossa', 'Plaça de les vaques 2', '971 69 69 69', 'valldemossa@auditoris.cat', 'https://goo.gl/maps/bJJRwZYxTmqmvcRN8', 'https://s3.eu-central-1.amazonaws.com/images.jacksonlive.es/upload/spots/high/13151585609030.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `city`
--

CREATE TABLE `city` (
  `idCity` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `city`
--

INSERT INTO `city` (`idCity`, `name`) VALUES
(1, 'Manacor'),
(2, 'Palma de Mallorca'),
(3, 'Marratxi'),
(4, 'Alcudia'),
(5, 'Valldemossa');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `country`
--

CREATE TABLE `country` (
  `idCountry` int(11) NOT NULL,
  `countryCode` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `country`
--

INSERT INTO `country` (`idCountry`, `countryCode`) VALUES
(1, 'ESP'),
(2, 'GER'),
(3, 'FRA'),
(4, 'DEN'),
(5, 'ENG'),
(6, 'BRA'),
(7, 'ITA'),
(8, 'ESP'),
(9, 'GER'),
(10, 'FRA'),
(11, 'DEN'),
(12, 'ENG'),
(13, 'BRA'),
(14, 'ITA');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `director`
--

CREATE TABLE `director` (
  `idDirector` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `director`
--

INSERT INTO `director` (`idDirector`) VALUES
(1),
(1),
(2),
(2),
(3),
(3),
(4),
(4),
(5),
(5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `directsIn`
--

CREATE TABLE `directsIn` (
  `idDirector` int(11) NOT NULL,
  `idMovie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `directsIn`
--

INSERT INTO `directsIn` (`idDirector`, `idMovie`) VALUES
(1, 3),
(2, 1),
(3, 2),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `genre`
--

CREATE TABLE `genre` (
  `idGenre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `genre`
--

INSERT INTO `genre` (`idGenre`) VALUES
(1),
(2),
(3),
(4),
(5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `language`
--

CREATE TABLE `language` (
  `languageCode` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `language`
--

INSERT INTO `language` (`languageCode`) VALUES
('EN'),
('ES');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `movie`
--

CREATE TABLE `movie` (
  `idMovie` int(11) NOT NULL,
  `idCountry` int(11) DEFAULT NULL,
  `releaseDate` date NOT NULL,
  `duration` time NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `generic` varchar(55) NOT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `movie`
--

INSERT INTO `movie` (`idMovie`, `idCountry`, `releaseDate`, `duration`, `image`, `generic`, `rating`) VALUES
(1, 2, '2022-02-10', '02:44:19', 'https://m.media-amazon.com/images/M/MV5BZWY3OTdkZDQtYjdjMy00NDRmLThiZjItYjUzZGNkZDYyYzc0XkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg', 'El hombre del norte', 6),
(2, 4, '2021-09-23', '01:53:49', 'https://m.media-amazon.com/images/M/MV5BZjYyZWMyNjYtZjNlNC00NmNhLThjOTItYmViMGU5ZDU4YTM4XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_FMjpg_UX1000_.jpg', 'Red Rocket', 4),
(3, 5, '2019-12-23', '02:12:07', 'https://m.media-amazon.com/images/M/MV5BNWM0ZGJlMzMtZmYwMi00NzI3LTgzMzMtNjMzNjliNDRmZmFlXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg', 'Doctor Strange en el multiverso de la locura', 9),
(4, 1, '2020-07-11', '02:33:12', 'https://m.media-amazon.com/images/M/MV5BNTBjZTBlN2YtOWQzZC00YTAzLWFiOWUtYzRiZWRmNjA5YWFmXkEyXkFqcGdeQXVyMTA0NTIyOTQ@._V1_UY1200_CR91,0,630,1200_AL_.jpg', 'Sonic: La pelicula 2', 7),
(5, 6, '2021-01-02', '01:35:25', 'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/67529f0c031c8676b2f42cf393ae26e47a22fe748d523b6e5b2bf67e4473a4f9._RI_V_TTW_.jpg', 'La ciudad perdida', 3),
(6, 2, '2022-04-22', '02:44:19', 'https://m.media-amazon.com/images/M/MV5BOGZlNjZhNjgtMjQzZC00MDI0LWFmNGQtNmNiYTIyYTE3ODhkXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_UY1200_CR92,0,630,1200_AL_.jpg', 'Operación Mincemeat', 2),
(7, 4, '2022-05-01', '01:55:21', 'https://cloudfront-us-east-1.images.arcpublishing.com/infobae/SN5JMVZUSJESDB7Q33DVJINJTQ.jpeg', 'Ojos de fuego', 6),
(8, 1, '2022-02-22', '02:14:22', 'https://es.web.img2.acsta.net/pictures/19/05/27/12/17/3568868.jpg', 'Downton Abbey', 4),
(9, 5, '2022-01-10', '03:02:52', 'https://es.web.img3.acsta.net/pictures/22/03/02/17/55/2195133.jpg', 'Mentes Maravillosas', 2),
(10, 2, '2022-05-20', '01:34:57', 'https://uh.gsstatic.es/sfAttachPlugin/1969201.jpg', 'JFK: Caso revisado', 4),
(11, 2, '2021-11-22', '01:55:12', 'https://images.moviefit.me/t/o/517723-the-outfit.jpg', 'El sastre de la mafia', 8),
(12, 3, '2022-03-20', '02:11:47', 'https://es.web.img2.acsta.net/pictures/22/04/27/16/13/0033507.jpg', 'Father Stu', 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `movieGenre`
--

CREATE TABLE `movieGenre` (
  `idMovie` int(11) NOT NULL,
  `idGenre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `movieGenre`
--

INSERT INTO `movieGenre` (`idMovie`, `idGenre`) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `multimedia`
--

CREATE TABLE `multimedia` (
  `idMultimedia` int(11) NOT NULL,
  `idMovie` int(11) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `typeOf` enum('Image','Video') NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `multimedia`
--

INSERT INTO `multimedia` (`idMultimedia`, `idMovie`, `link`, `typeOf`, `priority`) VALUES
(1, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/oMSdFM12hOw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Video', 1),
(2, 2, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Wfndmy-6e28\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Video', 1),
(3, 3, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Rf8LAYJSOL8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Video', 1),
(4, 4, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/47r8FXYZWNU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Video', 1),
(5, 5, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nfKO9rYDmE8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Video', 1),
(6, 6, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zwkSyrN0mvY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Video', 1),
(7, 7, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/59MJfJPP5eo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Video', 1),
(8, 8, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/wN0Spmq610Q\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Video', 1),
(9, 9, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JvKFVauvK3M\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Video', 1),
(10, 10, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/65yEb1J1ybo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Video', 1),
(11, 11, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3UgJL23HxyU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Video', 1),
(12, 12, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/DHREzAdyCPs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Video', 1),
(13, 1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/oMSdFM12hOw\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Video', 1),
(14, 2, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Wfndmy-6e28\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Video', 1),
(15, 3, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Rf8LAYJSOL8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Video', 1),
(16, 4, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/47r8FXYZWNU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Video', 1),
(17, 5, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nfKO9rYDmE8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Video', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `paymentMethod`
--

CREATE TABLE `paymentMethod` (
  `idPaymentMethod` int(11) NOT NULL,
  `typeMethod` enum('CreditCard','Paypal') DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `cardNumber` varchar(50) DEFAULT NULL,
  `expireDate` date DEFAULT NULL,
  `CVV` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `paymentMethod`
--

INSERT INTO `paymentMethod` (`idPaymentMethod`, `typeMethod`, `email`, `cardNumber`, `expireDate`, `CVV`) VALUES
(1, 'CreditCard', 'miguel189@gmail.com', '4000 9876 7384 5574', '2024-01-01', 786),
(2, 'Paypal', 'laura_11@gmail.com', NULL, NULL, NULL),
(3, 'Paypal', 'valrodriguez@gmail.com', NULL, NULL, NULL),
(4, 'CreditCard', 'mulldtch@outlook.es', '6976 3758 3857 7772', '2023-05-01', 888),
(5, 'Paypal', 'cr@yahoo.es', NULL, NULL, NULL),
(6, 'CreditCard', 'miguel189@gmail.com', '4000 9876 7384 5574', '2024-01-01', 786),
(7, 'Paypal', 'laura_11@gmail.com', NULL, NULL, NULL),
(8, 'Paypal', 'valrodriguez@gmail.com', NULL, NULL, NULL),
(9, 'CreditCard', 'mulldtch@outlook.es', '6976 3758 3857 7772', '2023-05-01', 888),
(10, 'Paypal', 'cr@yahoo.es', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person`
--

CREATE TABLE `person` (
  `idPerson` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `person`
--

INSERT INTO `person` (`idPerson`, `firstName`, `lastName`) VALUES
(1, 'Samuel Marshall', 'Raimi'),
(2, 'Robert Neil', 'Eggers'),
(3, 'Sean', 'Baker'),
(4, 'Jeff', 'Fowler'),
(5, 'Aaron', 'Nee'),
(6, 'Benedict', 'Cumberbatch'),
(7, 'Alexander ', 'Skarsgard'),
(8, 'Simon Rex', 'Cutright'),
(9, 'Jim', 'Carrey'),
(10, 'Sandra Annette', 'Bullock'),
(11, 'Samuel Marshall', 'Raimi'),
(12, 'Robert Neil', 'Eggers'),
(13, 'Sean', 'Baker'),
(14, 'Jeff', 'Fowler'),
(15, 'Aaron', 'Nee'),
(16, 'Benedict', 'Cumberbatch'),
(17, 'Alexander ', 'Skarsgard'),
(18, 'Simon Rex', 'Cutright'),
(19, 'Jim', 'Carrey'),
(20, 'Sandra Annette', 'Bullock');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `purchase`
--

CREATE TABLE `purchase` (
  `idPurchase` int(11) NOT NULL,
  `idBillboard` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idRoomFK` int(11) DEFAULT NULL,
  `idPaymentMethod` int(11) DEFAULT NULL,
  `purchaseDate` date DEFAULT NULL,
  `totalPrice` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `purchase`
--

INSERT INTO `purchase` (`idPurchase`, `idBillboard`, `idUser`, `idRoomFK`, `idPaymentMethod`, `purchaseDate`, `totalPrice`) VALUES
(1, 1, 1, 1, 1, '2022-05-13', '8'),
(2, 2, 2, 2, 2, '2022-05-12', '8'),
(3, 3, 3, 3, 3, '2022-05-15', '8'),
(4, 4, 4, 4, 4, '2022-05-11', '8'),
(5, 5, 5, 5, 5, '2022-05-17', '8');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `purchaseSeat`
--

CREATE TABLE `purchaseSeat` (
  `idPurchase` int(11) NOT NULL,
  `idSeatFK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `purchaseSeat`
--

INSERT INTO `purchaseSeat` (`idPurchase`, `idSeatFK`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `room`
--

CREATE TABLE `room` (
  `idRoomPK` int(11) NOT NULL,
  `idRoom` int(11) DEFAULT NULL,
  `idCinema` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `room`
--

INSERT INTO `room` (`idRoomPK`, `idRoom`, `idCinema`) VALUES
(1, 1, 1),
(6, 1, 2),
(10, 1, 3),
(16, 1, 4),
(18, 1, 5),
(2, 2, 1),
(7, 2, 2),
(11, 2, 3),
(17, 2, 4),
(3, 3, 1),
(8, 3, 2),
(12, 3, 3),
(4, 4, 1),
(9, 4, 2),
(13, 4, 3),
(5, 5, 1),
(14, 5, 3),
(15, 6, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `seat`
--

CREATE TABLE `seat` (
  `idSeatPK` int(11) NOT NULL,
  `idSeat` int(11) NOT NULL,
  `idRoomFK` int(11) NOT NULL,
  `rowNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `seat`
--

INSERT INTO `seat` (`idSeatPK`, `idSeat`, `idRoomFK`, `rowNum`) VALUES
(1, 1, 1, 1),
(6, 1, 1, 2),
(11, 1, 1, 3),
(16, 1, 2, 1),
(21, 1, 2, 2),
(26, 1, 2, 3),
(31, 1, 3, 1),
(36, 1, 3, 2),
(41, 1, 3, 3),
(46, 1, 4, 1),
(50, 1, 4, 2),
(54, 1, 4, 3),
(58, 1, 5, 1),
(63, 1, 5, 2),
(68, 1, 5, 3),
(73, 1, 6, 1),
(78, 1, 6, 2),
(83, 1, 6, 3),
(88, 1, 7, 1),
(93, 1, 7, 2),
(98, 1, 7, 3),
(103, 1, 8, 1),
(108, 1, 8, 2),
(113, 1, 8, 3),
(118, 1, 9, 1),
(122, 1, 9, 2),
(126, 1, 9, 3),
(130, 1, 10, 1),
(135, 1, 10, 2),
(140, 1, 10, 3),
(145, 1, 11, 1),
(150, 1, 11, 2),
(155, 1, 11, 3),
(160, 1, 12, 1),
(165, 1, 12, 2),
(170, 1, 12, 3),
(175, 1, 13, 1),
(180, 1, 13, 2),
(185, 1, 13, 3),
(190, 1, 14, 1),
(195, 1, 14, 2),
(200, 1, 14, 3),
(205, 1, 15, 1),
(210, 1, 15, 2),
(215, 1, 15, 3),
(220, 1, 16, 1),
(225, 1, 16, 2),
(230, 1, 16, 3),
(235, 1, 17, 1),
(240, 1, 17, 2),
(245, 1, 17, 3),
(250, 1, 18, 1),
(255, 1, 18, 2),
(260, 1, 18, 3),
(2, 2, 1, 1),
(7, 2, 1, 2),
(12, 2, 1, 3),
(17, 2, 2, 1),
(22, 2, 2, 2),
(27, 2, 2, 3),
(32, 2, 3, 1),
(37, 2, 3, 2),
(42, 2, 3, 3),
(47, 2, 4, 1),
(51, 2, 4, 2),
(55, 2, 4, 3),
(59, 2, 5, 1),
(64, 2, 5, 2),
(69, 2, 5, 3),
(74, 2, 6, 1),
(79, 2, 6, 2),
(84, 2, 6, 3),
(89, 2, 7, 1),
(94, 2, 7, 2),
(99, 2, 7, 3),
(104, 2, 8, 1),
(109, 2, 8, 2),
(114, 2, 8, 3),
(119, 2, 9, 1),
(123, 2, 9, 2),
(127, 2, 9, 3),
(131, 2, 10, 1),
(136, 2, 10, 2),
(141, 2, 10, 3),
(146, 2, 11, 1),
(151, 2, 11, 2),
(156, 2, 11, 3),
(161, 2, 12, 1),
(166, 2, 12, 2),
(171, 2, 12, 3),
(176, 2, 13, 1),
(181, 2, 13, 2),
(186, 2, 13, 3),
(191, 2, 14, 1),
(196, 2, 14, 2),
(201, 2, 14, 3),
(206, 2, 15, 1),
(211, 2, 15, 2),
(216, 2, 15, 3),
(221, 2, 16, 1),
(226, 2, 16, 2),
(231, 2, 16, 3),
(236, 2, 17, 1),
(241, 2, 17, 2),
(246, 2, 17, 3),
(251, 2, 18, 1),
(256, 2, 18, 2),
(261, 2, 18, 3),
(3, 3, 1, 1),
(8, 3, 1, 2),
(13, 3, 1, 3),
(18, 3, 2, 1),
(23, 3, 2, 2),
(28, 3, 2, 3),
(33, 3, 3, 1),
(38, 3, 3, 2),
(43, 3, 3, 3),
(48, 3, 4, 1),
(52, 3, 4, 2),
(56, 3, 4, 3),
(60, 3, 5, 1),
(65, 3, 5, 2),
(70, 3, 5, 3),
(75, 3, 6, 1),
(80, 3, 6, 2),
(85, 3, 6, 3),
(90, 3, 7, 1),
(95, 3, 7, 2),
(100, 3, 7, 3),
(105, 3, 8, 1),
(110, 3, 8, 2),
(115, 3, 8, 3),
(120, 3, 9, 1),
(124, 3, 9, 2),
(128, 3, 9, 3),
(132, 3, 10, 1),
(137, 3, 10, 2),
(142, 3, 10, 3),
(147, 3, 11, 1),
(152, 3, 11, 2),
(157, 3, 11, 3),
(162, 3, 12, 1),
(167, 3, 12, 2),
(172, 3, 12, 3),
(177, 3, 13, 1),
(182, 3, 13, 2),
(187, 3, 13, 3),
(192, 3, 14, 1),
(197, 3, 14, 2),
(202, 3, 14, 3),
(207, 3, 15, 1),
(212, 3, 15, 2),
(217, 3, 15, 3),
(222, 3, 16, 1),
(227, 3, 16, 2),
(232, 3, 16, 3),
(237, 3, 17, 1),
(242, 3, 17, 2),
(247, 3, 17, 3),
(252, 3, 18, 1),
(257, 3, 18, 2),
(262, 3, 18, 3),
(4, 4, 1, 1),
(9, 4, 1, 2),
(14, 4, 1, 3),
(19, 4, 2, 1),
(24, 4, 2, 2),
(29, 4, 2, 3),
(34, 4, 3, 1),
(39, 4, 3, 2),
(44, 4, 3, 3),
(49, 4, 4, 1),
(53, 4, 4, 2),
(57, 4, 4, 3),
(61, 4, 5, 1),
(66, 4, 5, 2),
(71, 4, 5, 3),
(76, 4, 6, 1),
(81, 4, 6, 2),
(86, 4, 6, 3),
(91, 4, 7, 1),
(96, 4, 7, 2),
(101, 4, 7, 3),
(106, 4, 8, 1),
(111, 4, 8, 2),
(116, 4, 8, 3),
(121, 4, 9, 1),
(125, 4, 9, 2),
(129, 4, 9, 3),
(133, 4, 10, 1),
(138, 4, 10, 2),
(143, 4, 10, 3),
(148, 4, 11, 1),
(153, 4, 11, 2),
(158, 4, 11, 3),
(163, 4, 12, 1),
(168, 4, 12, 2),
(173, 4, 12, 3),
(178, 4, 13, 1),
(183, 4, 13, 2),
(188, 4, 13, 3),
(193, 4, 14, 1),
(198, 4, 14, 2),
(203, 4, 14, 3),
(208, 4, 15, 1),
(213, 4, 15, 2),
(218, 4, 15, 3),
(223, 4, 16, 1),
(228, 4, 16, 2),
(233, 4, 16, 3),
(238, 4, 17, 1),
(243, 4, 17, 2),
(248, 4, 17, 3),
(253, 4, 18, 1),
(258, 4, 18, 2),
(263, 4, 18, 3),
(5, 5, 1, 1),
(10, 5, 1, 2),
(15, 5, 1, 3),
(20, 5, 2, 1),
(25, 5, 2, 2),
(30, 5, 2, 3),
(35, 5, 3, 1),
(40, 5, 3, 2),
(45, 5, 3, 3),
(62, 5, 5, 1),
(67, 5, 5, 2),
(72, 5, 5, 3),
(77, 5, 6, 1),
(82, 5, 6, 2),
(87, 5, 6, 3),
(92, 5, 7, 1),
(97, 5, 7, 2),
(102, 5, 7, 3),
(107, 5, 8, 1),
(112, 5, 8, 2),
(117, 5, 8, 3),
(134, 5, 10, 1),
(139, 5, 10, 2),
(144, 5, 10, 3),
(149, 5, 11, 1),
(154, 5, 11, 2),
(159, 5, 11, 3),
(164, 5, 12, 1),
(169, 5, 12, 2),
(174, 5, 12, 3),
(179, 5, 13, 1),
(184, 5, 13, 2),
(189, 5, 13, 3),
(194, 5, 14, 1),
(199, 5, 14, 2),
(204, 5, 14, 3),
(209, 5, 15, 1),
(214, 5, 15, 2),
(219, 5, 15, 3),
(224, 5, 16, 1),
(229, 5, 16, 2),
(234, 5, 16, 3),
(239, 5, 17, 1),
(244, 5, 17, 2),
(249, 5, 17, 3),
(254, 5, 18, 1),
(259, 5, 18, 2),
(264, 5, 18, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `translateCountry`
--

CREATE TABLE `translateCountry` (
  `idCountry` int(11) NOT NULL,
  `languageCode` varchar(3) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `translateCountry`
--

INSERT INTO `translateCountry` (`idCountry`, `languageCode`, `name`) VALUES
(1, 'EN', 'Spain'),
(1, 'ES', 'Espana'),
(2, 'EN', 'Germany'),
(2, 'ES', 'Alemania'),
(3, 'EN', 'France'),
(3, 'ES', 'Francia'),
(4, 'EN', 'England'),
(4, 'ES', 'Inglaterra'),
(5, 'EN', 'Brasil'),
(5, 'ES', 'Brasil'),
(6, 'EN', 'Italy'),
(6, 'ES', 'Italia');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `translateGenre`
--

CREATE TABLE `translateGenre` (
  `idGenre` int(11) NOT NULL,
  `languageCode` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `translateGenre`
--

INSERT INTO `translateGenre` (`idGenre`, `languageCode`, `name`) VALUES
(1, 'EN', 'Action'),
(1, 'ES', 'Accion'),
(2, 'EN', 'Comedy'),
(2, 'ES', 'Comedia'),
(3, 'EN', 'Dramma'),
(3, 'ES', 'Drama'),
(4, 'EN', 'Adventure'),
(4, 'ES', 'Aventura'),
(5, 'EN', 'Science Fiction'),
(5, 'ES', 'Ciencia Ficcion');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `translateMovie`
--

CREATE TABLE `translateMovie` (
  `idMovie` int(11) NOT NULL,
  `languageCode` varchar(3) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `translateMovie`
--

INSERT INTO `translateMovie` (`idMovie`, `languageCode`, `title`, `description`) VALUES
(1, 'EN', 'The Northman', 'The Northman is an American-British epic historical drama thriller film directed by Robert Eggers, with a screenplay co-written by Icelandic poet and novelist Sjón.'),
(1, 'ES', 'El hombre del norte', 'El hombre del norte es una película de suspenso y drama histórico épico estadounidense-británica dirigida por Robert Eggers, con un guion coescrito por el poeta y novelista islandés Sjón.'),
(2, 'EN', 'Red Rocket', 'Mikey Saber, a charismatic con artist, plots his return to the big leagues in a small Texas town.'),
(2, 'ES', 'Red Rocket', 'Mikey Saber, un carismático estafador, planea su regreso a las grandes ligas en un pequeño pueblo de Texas.'),
(3, 'EN', 'Doctor Strange in the multiverse of madness', 'The adventures of Dr. Stephen Strange and his superpowers continue in the Marvel sequel \"Dr. Strange.\"'),
(3, 'ES', 'Doctor Strange en el multiverso de la locura', 'Continúan las aventuras del Dr. Stephen Strange y sus superpoderes en la secuela de Marvel \"Dr. Strange'),
(4, 'EN', 'Sonic: The movie 2', 'Sonic 2. The Movie is an action-adventure comedy film based on the video game franchise published by Sega.'),
(4, 'ES', 'Sonic: La pelicula 2', 'Sonic 2. La película es una película de comedia de acción y aventuras basada en la franquicia de videojuegos publicada por Sega.'),
(5, 'EN', 'The lost city', 'The Lost City is a 2022 American comedy-action-adventure film directed by the Nee brothers.'),
(5, 'ES', 'La ciudad perdida', 'La ciudad perdida es una película de comedia, acción y aventuras estadounidense de 2022 dirigida por los hermanos Nee');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `translatePerson`
--

CREATE TABLE `translatePerson` (
  `idPerson` int(11) NOT NULL,
  `languageCode` varchar(3) NOT NULL,
  `biography` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `translatePerson`
--

INSERT INTO `translatePerson` (`idPerson`, `languageCode`, `biography`) VALUES
(1, 'EN', 'https://en.wikipedia.org/wiki/Sam_Raimi'),
(1, 'ES', 'https://es.wikipedia.org/wiki/Sam_Raimi'),
(2, 'EN', 'https://en.wikipedia.org/wiki/Robert_Eggers'),
(2, 'ES', 'https://es.wikipedia.org/wiki/Robert_Eggers'),
(3, 'EN', 'https://en.wikipedia.org/wiki/Sean_Baker'),
(3, 'ES', 'https://es.wikipedia.org/wiki/Sean_Baker'),
(4, 'EN', 'https://en.wikipedia.org/wiki/Jeff_Fowler'),
(4, 'ES', 'https://es.wikipedia.org/wiki/Jeff_Fowler'),
(5, 'EN', 'https://en.wikipedia.org/wiki/Aaron_and_Adam_Nee'),
(5, 'ES', 'https://es.wikipedia.org/wiki/Aaron_and_Adam_Nee'),
(6, 'EN', 'https://en.wikipedia.org/wiki/Benedict_Cumberbatch'),
(6, 'ES', 'https://es.wikipedia.org/wiki/Benedict_Cumberbatch'),
(7, 'EN', 'https://en.wikipedia.org/wiki/Alexander_Skarsg%C3%A5rd'),
(7, 'ES', 'https://es.wikipedia.org/wiki/Alexander_Skarsg%C3%A5rd'),
(8, 'EN', 'https://en.wikipedia.org/wiki/Simon_Rex'),
(8, 'ES', 'https://es.wikipedia.org/wiki/Simon_Rex'),
(9, 'EN', 'https://en.wikipedia.org/wiki/Jim_Carrey'),
(9, 'ES', 'https://es.wikipedia.org/wiki/Jim_Carrey'),
(10, 'EN', 'https://en.wikipedia.org/wiki/Sandra_Bullock'),
(10, 'ES', 'https://es.wikipedia.org/wiki/Sandra_Bullock');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `identityNumber` varchar(20) DEFAULT NULL,
  `zipCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`idUser`, `name`, `email`, `identityNumber`, `zipCode`) VALUES
(1, 'Miguel', 'miguel89@gmail.com', '41285235P', '07500'),
(2, 'Laura', 'laura_11@gmail.com', '98989898C', '07611'),
(3, 'Valentina', 'valrodriguez@gmail.com', '44444444P', '07006'),
(4, 'Müller', 'mulldtch@outlook.es', '11112222F', '07013'),
(5, 'Cristian', 'cr@yahoo.es', '98675632R', '07004');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `actor`
--
ALTER TABLE `actor`
  ADD KEY `idActor` (`idActor`);

--
-- Indizes für die Tabelle `actsIn`
--
ALTER TABLE `actsIn`
  ADD PRIMARY KEY (`idActor`,`idMovie`),
  ADD KEY `idMovie` (`idMovie`);

--
-- Indizes für die Tabelle `billboard`
--
ALTER TABLE `billboard`
  ADD PRIMARY KEY (`idBillboard`,`idMovie`,`idRoom`,`startTime`),
  ADD KEY `idMovie` (`idMovie`),
  ADD KEY `idRoom` (`idRoom`);

--
-- Indizes für die Tabelle `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`idCinema`),
  ADD KEY `idCity` (`idCity`);

--
-- Indizes für die Tabelle `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`idCity`);

--
-- Indizes für die Tabelle `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`idCountry`);

--
-- Indizes für die Tabelle `director`
--
ALTER TABLE `director`
  ADD KEY `idDirector` (`idDirector`);

--
-- Indizes für die Tabelle `directsIn`
--
ALTER TABLE `directsIn`
  ADD PRIMARY KEY (`idDirector`,`idMovie`),
  ADD KEY `idMovie` (`idMovie`);

--
-- Indizes für die Tabelle `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`idGenre`);

--
-- Indizes für die Tabelle `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`languageCode`);

--
-- Indizes für die Tabelle `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`idMovie`),
  ADD KEY `idCountry` (`idCountry`);

--
-- Indizes für die Tabelle `movieGenre`
--
ALTER TABLE `movieGenre`
  ADD PRIMARY KEY (`idMovie`,`idGenre`),
  ADD KEY `idGenre` (`idGenre`);

--
-- Indizes für die Tabelle `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`idMultimedia`),
  ADD KEY `idMovie` (`idMovie`);

--
-- Indizes für die Tabelle `paymentMethod`
--
ALTER TABLE `paymentMethod`
  ADD PRIMARY KEY (`idPaymentMethod`);

--
-- Indizes für die Tabelle `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`idPerson`);

--
-- Indizes für die Tabelle `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`idPurchase`),
  ADD UNIQUE KEY `idUser` (`idUser`,`idPaymentMethod`,`purchaseDate`),
  ADD KEY `idBillboard` (`idBillboard`),
  ADD KEY `idRoomFK` (`idRoomFK`),
  ADD KEY `idPaymentMethod` (`idPaymentMethod`);

--
-- Indizes für die Tabelle `purchaseSeat`
--
ALTER TABLE `purchaseSeat`
  ADD PRIMARY KEY (`idPurchase`),
  ADD KEY `idSeatFK` (`idSeatFK`);

--
-- Indizes für die Tabelle `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`idRoomPK`),
  ADD UNIQUE KEY `idRoom` (`idRoom`,`idCinema`),
  ADD KEY `idCinema` (`idCinema`);

--
-- Indizes für die Tabelle `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`idSeatPK`),
  ADD UNIQUE KEY `idSeat` (`idSeat`,`idRoomFK`,`rowNum`),
  ADD KEY `idRoomFK` (`idRoomFK`);

--
-- Indizes für die Tabelle `translateCountry`
--
ALTER TABLE `translateCountry`
  ADD PRIMARY KEY (`idCountry`,`languageCode`),
  ADD KEY `translateCountry` (`languageCode`);

--
-- Indizes für die Tabelle `translateGenre`
--
ALTER TABLE `translateGenre`
  ADD PRIMARY KEY (`idGenre`,`languageCode`),
  ADD KEY `translateGenre2` (`languageCode`);

--
-- Indizes für die Tabelle `translateMovie`
--
ALTER TABLE `translateMovie`
  ADD PRIMARY KEY (`idMovie`,`languageCode`),
  ADD KEY `translateMovie2` (`languageCode`);

--
-- Indizes für die Tabelle `translatePerson`
--
ALTER TABLE `translatePerson`
  ADD PRIMARY KEY (`idPerson`,`languageCode`),
  ADD KEY `languageCode` (`languageCode`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `uc_id_user` (`idUser`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `billboard`
--
ALTER TABLE `billboard`
  MODIFY `idBillboard` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT für Tabelle `cinema`
--
ALTER TABLE `cinema`
  MODIFY `idCinema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `city`
--
ALTER TABLE `city`
  MODIFY `idCity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT für Tabelle `country`
--
ALTER TABLE `country`
  MODIFY `idCountry` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT für Tabelle `genre`
--
ALTER TABLE `genre`
  MODIFY `idGenre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `movie`
--
ALTER TABLE `movie`
  MODIFY `idMovie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `multimedia`
--
ALTER TABLE `multimedia`
  MODIFY `idMultimedia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT für Tabelle `paymentMethod`
--
ALTER TABLE `paymentMethod`
  MODIFY `idPaymentMethod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `person`
--
ALTER TABLE `person`
  MODIFY `idPerson` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT für Tabelle `purchase`
--
ALTER TABLE `purchase`
  MODIFY `idPurchase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `room`
--
ALTER TABLE `room`
  MODIFY `idRoomPK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT für Tabelle `seat`
--
ALTER TABLE `seat`
  MODIFY `idSeatPK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=529;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `actor`
--
ALTER TABLE `actor`
  ADD CONSTRAINT `actor_ibfk_1` FOREIGN KEY (`idActor`) REFERENCES `person` (`idPerson`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `actsIn`
--
ALTER TABLE `actsIn`
  ADD CONSTRAINT `actsin_ibfk_1` FOREIGN KEY (`idActor`) REFERENCES `actor` (`idActor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actsin_ibfk_2` FOREIGN KEY (`idMovie`) REFERENCES `movie` (`idMovie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `billboard`
--
ALTER TABLE `billboard`
  ADD CONSTRAINT `billboard_ibfk_1` FOREIGN KEY (`idMovie`) REFERENCES `movie` (`idMovie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billboard_ibfk_2` FOREIGN KEY (`idRoom`) REFERENCES `room` (`idRoom`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `cinema`
--
ALTER TABLE `cinema`
  ADD CONSTRAINT `cinema_ibfk_1` FOREIGN KEY (`idCity`) REFERENCES `city` (`idCity`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `director`
--
ALTER TABLE `director`
  ADD CONSTRAINT `director_ibfk_1` FOREIGN KEY (`idDirector`) REFERENCES `person` (`idPerson`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `directsIn`
--
ALTER TABLE `directsIn`
  ADD CONSTRAINT `directsin_ibfk_1` FOREIGN KEY (`idDirector`) REFERENCES `director` (`idDirector`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `directsin_ibfk_2` FOREIGN KEY (`idMovie`) REFERENCES `movie` (`idMovie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`idCountry`) REFERENCES `country` (`idCountry`);

--
-- Constraints der Tabelle `movieGenre`
--
ALTER TABLE `movieGenre`
  ADD CONSTRAINT `moviegenre_ibfk_1` FOREIGN KEY (`idMovie`) REFERENCES `movie` (`idMovie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `moviegenre_ibfk_2` FOREIGN KEY (`idGenre`) REFERENCES `genre` (`idGenre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `multimedia`
--
ALTER TABLE `multimedia`
  ADD CONSTRAINT `multimedia_ibfk_1` FOREIGN KEY (`idMovie`) REFERENCES `movie` (`idMovie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`idBillboard`) REFERENCES `billboard` (`idBillboard`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_ibfk_3` FOREIGN KEY (`idRoomFK`) REFERENCES `room` (`idRoomPK`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_ibfk_4` FOREIGN KEY (`idPaymentMethod`) REFERENCES `paymentMethod` (`idPaymentMethod`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `purchaseSeat`
--
ALTER TABLE `purchaseSeat`
  ADD CONSTRAINT `purchaseseat_ibfk_1` FOREIGN KEY (`idPurchase`) REFERENCES `purchase` (`idPurchase`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchaseseat_ibfk_2` FOREIGN KEY (`idSeatFK`) REFERENCES `seat` (`idSeatPK`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`idCinema`) REFERENCES `cinema` (`idCinema`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`idRoomFK`) REFERENCES `room` (`idRoomPK`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `translateCountry`
--
ALTER TABLE `translateCountry`
  ADD CONSTRAINT `translateCountry` FOREIGN KEY (`languageCode`) REFERENCES `language` (`languageCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `translateGenre` FOREIGN KEY (`idCountry`) REFERENCES `country` (`idCountry`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `translateGenre`
--
ALTER TABLE `translateGenre`
  ADD CONSTRAINT `translateGenre1` FOREIGN KEY (`idGenre`) REFERENCES `genre` (`idGenre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `translateGenre2` FOREIGN KEY (`languageCode`) REFERENCES `language` (`languageCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `translateMovie`
--
ALTER TABLE `translateMovie`
  ADD CONSTRAINT `translateMovie1` FOREIGN KEY (`idMovie`) REFERENCES `movie` (`idMovie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `translateMovie2` FOREIGN KEY (`languageCode`) REFERENCES `language` (`languageCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `translatePerson`
--
ALTER TABLE `translatePerson`
  ADD CONSTRAINT `translateperson_ibfk_1` FOREIGN KEY (`idPerson`) REFERENCES `person` (`idPerson`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `translateperson_ibfk_2` FOREIGN KEY (`languageCode`) REFERENCES `language` (`languageCode`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
