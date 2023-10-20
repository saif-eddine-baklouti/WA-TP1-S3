-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 20 oct. 2023 à 01:17
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecole`
--

-- --------------------------------------------------------

--
-- Structure de la table `condidat`
--

CREATE TABLE `condidat` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `date_naissance` date NOT NULL,
  `email` varchar(45) NOT NULL,
  `adresse` varchar(145) NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `condidat`
--

INSERT INTO `condidat` (`id`, `nom`, `prenom`, `date_naissance`, `email`, `adresse`) VALUES
(1, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(2, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(3, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(4, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(5, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(6, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(7, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(8, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(9, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(10, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(26, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(30, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(31, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(33, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(34, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(35, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(36, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(37, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(40, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(45, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(47, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street'),
(48, 'Doe', 'John', '1990-04-15', 'john.doe@email.com', '123 Main Street');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `matiere_de_programme`
--

CREATE TABLE `matiere_de_programme` (
  `programme_id` int(11) NOT NULL,
  `matiere_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `programme`
--

CREATE TABLE `programme` (
  `id` int(11) NOT NULL,
  `nom_programme` varchar(45) DEFAULT NULL,
  `description` varchar(145) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `programme`
--

INSERT INTO `programme` (`id`, `nom_programme`, `description`) VALUES
(15, 'Développement Web Full Stack', 'Conception d\'applications web front-end et back-end.'),
(16, 'Science des Données', 'Analyse de données et apprentissage automatique.'),
(17, 'Sécurité Informatique', 'Protection des systèmes contre les menaces.'),
(18, 'Intelligence Artificielle', 'Conception de systèmes d\'intelligence artificielle.'),
(19, 'Développement d\'Applications Mobiles', 'Création d\'apps pour iOS et Android.'),
(20, 'Réseaux et Infrastructure Informatique', 'Conception et gestion des infrastructures réseau.'),
(21, 'Développement de Jeux Vidéo', 'Création de jeux vidéo interactifs.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `condidat`
--
ALTER TABLE `condidat`
  ADD PRIMARY KEY (`id`);
  

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `matiere_de_programme`
--
ALTER TABLE `matiere_de_programme`
  ADD PRIMARY KEY (`programme_id`,`matiere_id`),
  ADD KEY `fk_programme_has_matiere_matiere1_idx` (`matiere_id`),
  ADD KEY `fk_programme_has_matiere_programme_idx` (`programme_id`);

--
-- Index pour la table `programme`
--
ALTER TABLE `programme`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `condidat`
--
ALTER TABLE `condidat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `programme`
--
ALTER TABLE `programme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `condidat`
--

--
-- Contraintes pour la table `matiere_de_programme`
--
ALTER TABLE `matiere_de_programme`
  ADD CONSTRAINT `fk_programme_has_matiere_matiere1` FOREIGN KEY (`matiere_id`) REFERENCES `matiere` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_programme_has_matiere_programme` FOREIGN KEY (`programme_id`) REFERENCES `programme` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
