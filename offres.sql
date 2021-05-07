-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 29 avr. 2021 à 14:49
-- Version du serveur :  5.7.24
-- Version de PHP : 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `vsbc`
--

-- --------------------------------------------------------

--
-- Structure de la table `offres`
--

CREATE TABLE `offres` (
  `numero_offre` int(17) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `lieu` varchar(90) NOT NULL,
  `duree` varchar(8) NOT NULL,
  `date_start` date NOT NULL,
  `risques` int(3) NOT NULL,
  `prix` int(14) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `offres`
--

INSERT INTO `offres` (`numero_offre`, `titre`, `lieu`, `duree`, `date_start`, `risques`, `prix`, `description`) VALUES
(666, 'Tropico @é10', 'Tropico', '30 jours', '2021-04-29', 5, 10000, 'fsdqljknvqslkjnvnqf dqfjd dfjlknfqdjl @10é\"'),
(11111, 'No rage', 'Sète, Occitanie , France   ', '1 jour', '2021-04-29', 5, 1500, 'Je suis une description inutile voilà;\r\n\r\nmerci. '),
(12122, 'Voyage voyage', 'Montpellier, Occitanie, France', '2 jours', '2021-04-30', 3, 1500, 'sghgkyfjsgqfshfuysebvtueseyrvfusdbkqfbusrljkbwezsxjvybvsuxvjhfb udjhvxfbbuvjdc');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `offres`
--
ALTER TABLE `offres`
  ADD PRIMARY KEY (`numero_offre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
