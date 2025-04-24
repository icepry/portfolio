-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 07 fév. 2025 à 09:33
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
  `sponsor_id` int NOT NULL DEFAULT '1',
  `date_reservation` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `statut` enum('en attente','confirmée','annulée') DEFAULT 'confirmée',
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `nombre_places` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sponsor_id` (`sponsor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `sponsor_id`, `date_reservation`, `statut`, `nom`, `prenom`, `email`, `telephone`, `nombre_places`) VALUES
(55, 1, '2025-02-06 09:09:18', 'confirmée', 'xxxxx', 'Xxxx', 'xxxxxxx@xxx.xxx', '0000000000', 1),
(56, 1, '2025-02-06 10:32:54', 'confirmée', 'xxxxx', 'Xxxx', 'xxxxxxx@xxx.xxx', '0000000000', 5),
(57, 1, '2025-02-06 10:33:23', 'confirmée', 'xxxxx', 'Xxxx', 'xxxxxxx@xxx.xxx', '0000000000', 5),
(58, 1, '2025-02-06 13:19:11', 'confirmée', 'xxxxx', 'Xxxx', 'xxxxxxx@xxx.xxx', '0000000000', 1),
(59, 1, '2025-02-06 14:32:22', 'confirmée', 'xxxxx', 'Xxxx', 'xxxxxxx@xxx.xxx', '0000000000', 1),
(60, 1, '2025-02-06 14:32:26', 'confirmée', 'xxxxx', 'Xxxx', 'xxxxxxx@xxx.xxx', '0000000000', 1),
(61, 1, '2025-02-06 14:32:31', 'confirmée', 'xxxxx', 'Xxxx', 'xxxxxxx@xxx.xxx', '0000000000', 1),
(62, 1, '2025-02-06 14:32:35', 'confirmée', 'xxxxx', 'Xxxx', 'xxxxxxx@xxx.xxx', '0000000000', 1),
(63, 1, '2025-02-06 14:32:38', 'confirmée', 'xxxxx', 'Xxxx', 'xxxxxxx@xxx.xxx', '0000000000', 1),
(64, 1, '2025-02-06 14:32:52', 'confirmée', 'xxxxx', 'Xxxx', 'xxxxxxx@xxx.xxx', '0000000000', 1),
(65, 1, '2025-02-06 14:32:56', 'confirmée', 'xxxxx', 'Xxxx', 'xxxxxxx@xxx.xxx', '0000000000', 1),
(66, 1, '2025-02-06 14:32:59', 'confirmée', 'xxxxx', 'Xxxx', 'xxxxxxx@xxx.xxx', '0000000000', 1),
(67, 1, '2025-02-06 14:33:06', 'confirmée', 'xxxxx', 'Xxxx', 'xxxxxxx@xxx.xxx', '0000000000', 1);

-- --------------------------------------------------------

--
-- Structure de la table `sponsors`
--

DROP TABLE IF EXISTS `sponsors`;
CREATE TABLE IF NOT EXISTS `sponsors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `lien_unique` varchar(255) NOT NULL,
  `places_limite` int DEFAULT '0',
  `places_reservees` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lien_unique` (`lien_unique`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `sponsors`
--

INSERT INTO `sponsors` (`id`, `nom`, `lien_unique`, `places_limite`, `places_reservees`) VALUES
(1, 'Crédit Agricole ', 'https://www.credit-agricole.fr/ca-briepicardie/particulier.html', 0, 0),
(2, 'Sponsor 2', 'https://site.com/reservation/sponsor2', 0, 0),
(3, 'Sponsor 3', 'https://site.com/reservation/sponsor3', 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
