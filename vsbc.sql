-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 06 mai 2021 à 14:57
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
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `texte` varchar(144) NOT NULL,
  `id_offre` int(17) NOT NULL,
  `id_membre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `pseudo` varchar(15) NOT NULL,
  `mail` varchar(90) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `adresse` varchar(90) NOT NULL,
  `code_postal` varchar(8) NOT NULL,
  `ville` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `offres`
--

CREATE TABLE `offres` (
  `numero_offre` int(17) NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `lieu` varchar(90) DEFAULT NULL,
  `duree` varchar(8) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `risques` int(3) DEFAULT NULL,
  `prix` int(14) DEFAULT NULL,
  `description` text,
  `nom_offre` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `offres`
--

INSERT INTO `offres` (`numero_offre`, `titre`, `lieu`, `duree`, `date_start`, `risques`, `prix`, `description`, `nom_offre`) VALUES
(53, 'Voyage de la ligue', 'Corée du sud', '666', '5555-12-05', 5, 666666, 'L\'île d\'Alcatraz, en anglais Alcatraz Island, est une île située dans la baie de San Francisco à 1,92 km (1,19 mile ) du port de San Francisco e', 'alcatraz'),
(54, 'Voyage de la ligue', 'Ile d\'alcatraz', '100', '2021-05-05', 5, 666666, 'je suis une offre inutile voilà voilà', 'blood-a'),
(55, 'Voyage de la ligue', 'Ile d\'alcatraz', '100', '2021-05-05', 5, 666666, 'je suis une offre inutile voilà voilà', 'blood-a'),
(56, 'Voyage de la ligue', 'Ile d\'alcatraz', '100', '2021-05-05', 5, 666666, 'je suis une offre inutile voilà voilà', 'blood-a'),
(57, 'Voyage de la ligue', 'Ile d\'alcatraz', '100', '2021-05-05', 5, 666666, 'je suis une offre inutile voilà voilà', 'blood-a'),
(58, 'aa', 'aa', '444', '9415-08-07', 5, 9999, 'je suis une offre inutile voilà voilà', 'blood-a'),
(59, 'aa', 'aa', '66', '4444-04-04', 4, 4, 'je suis une offre inutile voilà voilà', 'blood-a'),
(60, 'aa', 'aa', '66', '4444-04-04', 4, 4, 'je suis une offre inutile voilà voilà', 'blood-a'),
(61, 'aa', 'aa', '66', '4444-04-04', 4, 4, 'je suis une offre inutile voilà voilà', 'blood-a'),
(62, 'Voyage de la ligue', 'Ile d\'alcatraz', '3', '2021-05-22', 1, 2500, 'Une visite d’Alcatraz est une excursion incontournable. Cette prison mythique, dont jamais aucun prisonnier ne réussit à s’évader, est bâtie sur une île dans la baie de San Francisco. Face à San Francisco, capitale culturelle de la Californie, l’île d’Alcatraz continue d’alimenter la légende. Vous y visiterez bien sûr le pénitencier, où Al Capone fut enfermé de 1934 à 1939. Mais l’île d’Alcatraz est également un site réputé de la côte Ouest pour l’observation des oiseaux sauvages : pélican brun, aigrette neigeuse, colibri d’Anna ou goéland d’Audubon… Lors de ce voyage, vous apprendrez également que le phare d’Alcatraz est le plus ancien de la côte ouest des États-Unis encore en activité, il guide les bateaux dans la baie de San Francisco depuis 1854 !', 'alcatraz');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `numero_offre` int(17) NOT NULL,
  `id_membre` int(11) NOT NULL,
  `nombres_personnes` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_membre` (`id_membre`),
  ADD KEY `id_offre` (`id_offre`);

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `offres`
--
ALTER TABLE `offres`
  ADD PRIMARY KEY (`numero_offre`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD KEY `numero_offre` (`numero_offre`),
  ADD KEY `id_membre` (`id_membre`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `offres`
--
ALTER TABLE `offres`
  MODIFY `numero_offre` int(17) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires_ibfk_1` FOREIGN KEY (`id_membre`) REFERENCES `membres` (`id`),
  ADD CONSTRAINT `commentaires_ibfk_2` FOREIGN KEY (`id_offre`) REFERENCES `stage`.`offres_old` (`numero_offre`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`numero_offre`) REFERENCES `stage`.`offres_old` (`numero_offre`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`id_membre`) REFERENCES `membres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
