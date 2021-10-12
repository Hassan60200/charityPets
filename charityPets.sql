-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 12 oct. 2021 à 22:20
-- Version du serveur :  8.0.26-0ubuntu0.20.04.3
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `charityPets`
--

-- --------------------------------------------------------

--
-- Structure de la table `animal`
--

CREATE TABLE `animal` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `nameSlug` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `race` varchar(100) NOT NULL,
  `weight` float NOT NULL,
  `size` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `animal`
--

INSERT INTO `animal` (`id`, `name`, `nameSlug`, `type`, `race`, `weight`, `size`, `image`, `available`) VALUES
(1, 'chien', 'chien', 'canidé', 'berger allemand', 30, 60, 'https://images.pexels.com/photos/2797318/pexels-photo-2797318.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 1),
(2, 'Chat', 'chat', 'felins', 'miaou', 5, 30, 'https://images.pexels.com/photos/1314550/pexels-photo-1314550.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 1),
(3, 'panda', 'panda', 'panda', 'panda', 95, 150, 'https://images.pexels.com/photos/3608263/pexels-photo-3608263.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 1),
(4, 'mouton', 'mouton', 'mouton', 'mouton', 25, 50, 'https://images.pexels.com/photos/4927766/pexels-photo-4927766.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 1),
(5, 'serpent', 'serpent', 'serpent', 'serpentard', 10, 100, 'https://images.pexels.com/photos/1040659/pexels-photo-1040659.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 1),
(6, 'requin', 'requin', 'Poisson dangeureux', 'Marteau', 500, 350, 'https://images.pexels.com/photos/6497794/pexels-photo-6497794.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 1),
(7, 'dragon', 'dragon ', 'lezard', 'lezard volant', 200, 180, 'https://images.pexels.com/photos/3359734/pexels-photo-3359734.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 1),
(8, 'tortue', 'tortue', 'geniale', 'pervers', 20, 50, 'https://images.pexels.com/photos/5560909/pexels-photo-5560909.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 1),
(9, 'gorille', 'gorille', 'singes', 'singes', 150, 170, 'https://images.pexels.com/photos/46317/pexels-photo-46317.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 1),
(10, 'lion', 'lion', 'felins', 'lion', 86, 150, 'https://images.pexels.com/photos/1598377/pexels-photo-1598377.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 1),
(11, 'rennes', 'rennes', 'cheval avec des cornes', 'bretons', 60, 170, 'https://images.pexels.com/photos/2607423/pexels-photo-2607423.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 1),
(12, 'chien', 'chient-gentil', 'chien gentil', 'canidé', 20, 60, 'https://images.pexels.com/photos/4588047/pexels-photo-4588047.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 1),
(13, 'tigre', 'tigre', 'tigre du bengal', 'félins', 110, 170, 'https://images.pexels.com/photos/46251/sumatran-tiger-tiger-big-cat-stripes-46251.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 2),
(14, 'test', 'test', 'test', 'test', 215, 25, 'https://images.pexels.com/photos/4588047/pexels-photo-4588047.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 2);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `message` text NOT NULL,
  `user_id` int NOT NULL,
  `animal_id` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(16) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `tel` varchar(25) NOT NULL,
  `roles` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `last_name`, `first_name`, `email`, `password`, `address`, `zip_code`, `tel`, `roles`) VALUES
(2, 'DERKAOUI', 'HASSAN', 'derkaouihassan19@gmail.com', 'test', '28 rue saint-joseph', '60200', '0618815620', 2),
(3, 'doe', 'IPSSI', 'testUshopp@yopmail.fr', '1234', '10 rue du cimetière', '95000', '0155432665', 2),
(4, 'test', 'test', 'test@doe.fr', '1234', 'adqdsd', 'sqdsqds', 'sqdsqdsq', 1),
(5, 'roronoa', 'zoro', 'derkaouihassan@gmail.com', 'test', 'rue paul langevin', '93120', '0155432665', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nameSlug` (`nameSlug`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
