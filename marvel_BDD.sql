-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.7.31 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour mcu
CREATE DATABASE IF NOT EXISTS `mcu` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mcu`;

-- Listage de la structure de la table mcu. actors
CREATE TABLE IF NOT EXISTS `actors` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `prename` varchar(20) NOT NULL,
  `birth` date NOT NULL,
  `creation_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `uptade_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `ID_actor` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Listage des données de la table mcu.actors : ~25 rows (environ)
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` (`ID`, `name`, `prename`, `birth`, `creation_date`, `uptade_date`) VALUES
	(1, 'Affleck', 'Ben', '1972-08-15', '2021-07-27 12:35:23', '2021-07-27 12:35:24'),
	(2, 'Garner', 'Jennifer', '1972-04-17', '2021-07-27 12:35:24', '2021-07-27 12:35:25'),
	(3, 'Farrell', 'Colin', '1976-05-31', '2021-07-27 12:35:26', '2021-07-27 12:35:25'),
	(4, 'Clarke Duncan', 'Michael', '1957-12-10', '2021-07-27 12:35:26', '2021-07-27 12:35:27'),
	(5, 'Favreau', 'Jon', '1966-10-19', '2021-07-27 12:35:29', '2021-07-27 12:35:27'),
	(6, 'Maguire', 'Tobey', '1975-06-27', '2021-07-27 12:35:29', '2021-07-27 12:35:30'),
	(7, 'Dunst', 'Kirsten', '1982-04-30', '2021-07-27 12:35:31', '2021-07-27 12:35:30'),
	(8, 'Franco', 'James', '1978-04-19', '2021-07-27 12:35:32', '2021-07-27 12:35:32'),
	(9, 'Dafoe', 'Willem', '1955-07-22', '2021-07-27 12:35:33', '2021-07-27 12:35:32'),
	(10, 'Molina', 'Alefredo', '1953-05-24', '2021-07-27 12:35:34', '2021-07-27 12:35:34'),
	(11, 'Haden Church', 'Thomas', '1960-06-17', '2021-07-27 12:35:35', '2021-07-27 12:35:35'),
	(12, 'Grace', 'Topher', '1978-07-12', '2021-07-27 12:35:36', '2021-07-27 12:35:36'),
	(13, 'Lee', 'Stan', '1922-12-28', '2021-07-27 12:35:37', '2021-07-27 12:35:37'),
	(14, 'Cage', 'Nicolas', '1964-01-07', '2021-07-27 12:35:38', '2021-07-27 12:35:38'),
	(15, 'Mendes', 'Eva', '1974-03-05', '2021-07-27 12:35:48', '2021-07-27 12:35:39'),
	(16, 'Bentley', 'Wes', '1978-09-04', '2021-07-27 12:35:49', '2021-07-27 12:35:39'),
	(17, 'Downey Jr.', 'Robert', '1965-04-04', '2021-07-27 12:35:48', '2021-07-27 12:35:40'),
	(18, 'Paltrow', 'Gwyneth', '1972-09-27', '2021-07-27 12:35:47', '2021-07-27 12:35:40'),
	(19, 'Howard', 'Terrence', '1969-03-11', '2021-07-27 12:35:47', '2021-07-27 12:35:41'),
	(20, 'Rourke', 'Mickey', '1952-09-16', '2021-07-27 12:35:46', '2021-07-27 12:35:41'),
	(21, 'Cheadle', 'Don', '1964-11-29', '2021-07-27 12:35:46', '2021-07-27 12:35:42'),
	(22, 'Johansson', 'Scarlett', '1984-11-22', '2021-07-27 12:35:45', '2021-07-27 12:35:42'),
	(23, 'Rockwell', 'Sam', '1968-11-05', '2021-07-27 12:35:45', '2021-07-27 12:35:43'),
	(24, 'Kingsley', 'Ben', '1943-12-31', '2021-07-27 12:35:44', '2021-07-27 12:35:43'),
	(25, 'Pearce', 'Guy', '1967-10-05', '2021-07-27 12:35:44', '2021-07-27 12:35:43');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;

-- Listage de la structure de la table mcu. movies
CREATE TABLE IF NOT EXISTS `movies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `release_date` year(4) NOT NULL,
  ` duration` time(4) NOT NULL,
  ` director` varchar(40) NOT NULL,
  `creation_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `uptade_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `ID_movie` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Listage des données de la table mcu.movies : ~8 rows (environ)
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` (`ID`, `title`, `release_date`, ` duration`, ` director`, `creation_date`, `uptade_date`) VALUES
	(1, 'Dardevil', '2003', '01:44:00.0000', 'Mark Steven Johnson', '2021-07-27 12:33:23', '2021-07-27 15:05:09'),
	(2, 'Spider-Man', '2002', '02:01:00.0000', 'Sam Raimi', '2021-07-27 12:33:24', '2021-07-27 12:33:31'),
	(3, 'Spider-Man 2', '2004', '02:15:00.0000', 'Sam Raimi', '2021-07-27 12:33:25', '2021-07-27 12:33:31'),
	(4, 'Ghost Rider', '2007', '01:54:00.0000', 'Mark Steven Johnson', '2021-07-27 12:33:25', '2021-07-27 12:33:32'),
	(5, 'Spider-Man 3', '2007', '02:19:00.0000', 'Sam Raimi', '2021-07-27 12:33:26', '2021-07-27 12:33:32'),
	(6, 'Iron Man', '2008', '02:05:00.0000', 'Jon Favreau', '2021-07-27 12:33:26', '2021-07-27 12:33:33'),
	(7, 'Iron Man 2', '2010', '02:05:00.0000', 'Jon Favreau', '2021-07-27 12:33:27', '2021-07-27 12:33:33'),
	(8, 'Iron Man 3', '2013', '02:10:00.0000', 'Shane Black', '2021-07-27 12:33:27', '2021-07-27 12:33:34');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;

-- Listage de la structure de la table mcu. secondary
CREATE TABLE IF NOT EXISTS `secondary` (
  `id_actor` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  KEY `id_actor_actors` (`id_actor`),
  KEY `id_movie_movies` (`id_movie`),
  CONSTRAINT `id_actor_actors` FOREIGN KEY (`id_actor`) REFERENCES `actors` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_movie_movies` FOREIGN KEY (`id_movie`) REFERENCES `movies` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Listage des données de la table mcu.secondary : ~42 rows (environ)
/*!40000 ALTER TABLE `secondary` DISABLE KEYS */;
INSERT INTO `secondary` (`id_actor`, `id_movie`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 2),
	(7, 2),
	(8, 2),
	(9, 2),
	(6, 3),
	(7, 3),
	(8, 3),
	(9, 3),
	(10, 3),
	(14, 4),
	(15, 4),
	(16, 4),
	(6, 5),
	(6, 5),
	(7, 5),
	(8, 5),
	(9, 5),
	(11, 5),
	(12, 5),
	(13, 2),
	(13, 3),
	(13, 5),
	(17, 6),
	(18, 6),
	(19, 6),
	(20, 6),
	(17, 7),
	(18, 7),
	(20, 7),
	(21, 7),
	(22, 7),
	(23, 7),
	(17, 8),
	(18, 8),
	(21, 8),
	(24, 8),
	(25, 8);
/*!40000 ALTER TABLE `secondary` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
