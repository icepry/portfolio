-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 30 jan. 2025 à 16:25
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cjd`
--

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `utilisateur_id` int NOT NULL,
  `sponsor_id` int NOT NULL,
  `date_reservation` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `statut` enum('en attente','confirmée','annulée') DEFAULT 'en attente',
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `nombre_places` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `utilisateur_id` (`utilisateur_id`),
  KEY `sponsor_id` (`sponsor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `utilisateur_id`, `sponsor_id`, `date_reservation`, `statut`, `nom`, `prenom`, `email`, `telephone`, `nombre_places`) VALUES
(1, 1, 1, '2025-01-28 15:44:57', 'confirmée', NULL, NULL, NULL, NULL, NULL),
(2, 2, 2, '2025-01-28 15:44:57', 'en attente', NULL, NULL, NULL, NULL, NULL),
(16, 0, 0, '2025-01-30 09:33:21', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(17, 0, 0, '2025-01-30 09:39:35', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(18, 0, 0, '2025-01-30 09:43:00', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 4),
(19, 0, 0, '2025-01-30 09:45:39', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 5),
(20, 0, 0, '2025-01-30 09:47:02', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 5),
(21, 0, 0, '2025-01-30 09:50:39', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 9),
(22, 0, 0, '2025-01-30 09:56:04', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(23, 0, 0, '2025-01-30 09:56:11', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(24, 0, 0, '2025-01-30 09:56:32', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(25, 0, 0, '2025-01-30 09:57:39', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(26, 0, 0, '2025-01-30 10:03:53', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(27, 0, 0, '2025-01-30 10:10:55', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(28, 0, 0, '2025-01-30 10:15:45', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 3),
(29, 0, 0, '2025-01-30 10:17:34', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(30, 0, 0, '2025-01-30 10:19:37', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(31, 0, 0, '2025-01-30 10:22:46', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(32, 0, 0, '2025-01-30 10:22:47', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(33, 0, 0, '2025-01-30 10:24:35', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 2),
(34, 0, 0, '2025-01-30 10:28:47', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 2),
(35, 0, 0, '2025-01-30 10:29:31', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 5),
(36, 0, 0, '2025-01-30 10:38:02', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(37, 0, 0, '2025-01-30 10:39:09', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(38, 0, 0, '2025-01-30 10:39:50', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(39, 0, 0, '2025-01-30 13:30:47', 'en attente', 'Dubois', 'Alexandre ', 'a@a.c', '1', 1),
(40, 0, 0, '2025-01-30 13:41:50', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(41, 0, 0, '2025-01-30 16:20:12', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(42, 0, 0, '2025-01-30 16:20:17', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(43, 0, 0, '2025-01-30 16:20:32', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1),
(44, 0, 0, '2025-01-30 16:21:49', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '22222222', 1),
(45, 0, 0, '2025-01-30 16:23:55', 'en attente', 'Dubois', 'Alexandre', 'alexandre05.dubois@gmail.com', '0782682669', 1);

-- --------------------------------------------------------

--
-- Structure de la table `sponsors`
--

DROP TABLE IF EXISTS `sponsors`;
CREATE TABLE IF NOT EXISTS `sponsors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `lien_unique` varchar(255) NOT NULL,
  `nombre_places_limite` int NOT NULL,
  `places_reservees` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lien_unique` (`lien_unique`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `sponsors`
--

INSERT INTO `sponsors` (`id`, `nom`, `lien_unique`, `nombre_places_limite`, `places_reservees`) VALUES
(1, 'Sponsor 1', 'https://site.com/reservation/sponsor1', 100, 0),
(2, 'Sponsor 2', 'https://site.com/reservation/sponsor2', 50, 0),
(3, 'Sponsor 3', 'https://site.com/reservation/sponsor3', 200, 0);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `date_inscription` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `email`, `mot_de_passe`, `telephone`, `date_inscription`) VALUES
(1, 'Jean Dupont', 'jean.dupont@example.com', 'motdepasse123', '0612345678', '2025-01-28 15:44:57'),
(2, 'Alice Martin', 'alice.martin@example.com', 'motdepasse456', '0698765432', '2025-01-28 15:44:57');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
