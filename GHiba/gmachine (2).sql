-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 22 jan. 2022 à 02:51
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gmachine`
--

-- --------------------------------------------------------

--
-- Structure de la table `machine`
--

CREATE TABLE `machine` (
  `Id` int(11) NOT NULL,
  `reference` varchar(50) NOT NULL,
  `marque` varchar(80) NOT NULL,
  `dateAchat` date NOT NULL,
  `prix` double NOT NULL,
  `idSalle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `machine`
--

INSERT INTO `machine` (`Id`, `reference`, `marque`, `dateAchat`, `prix`, `idSalle`) VALUES
(2, 'HB1412', 'dell', '2022-01-25', 12900, 2),
(3, 'GHG', 'hp', '2022-01-10', 1990, 2),
(5, 'AM0116', 'Asuz', '2022-01-07', 2900, 2),
(18, 'KAMA9', 'kama', '2022-04-20', 5667, 10),
(19, 'KIAYS', 'kasy', '2022-05-02', 2990, 10),
(22, 'GH67', 'lenovo', '2022-01-27', 2000, 15),
(23, 'GYT68', 'leno', '2022-02-17', 3900, 24),
(24, 'BG56', 'LG', '2022-04-15', 4000, 23),
(25, 'BHG65', 'Dell', '2022-04-29', 5900, 21),
(26, 'HNK564', 'lenno', '2022-04-29', 9000, 18),
(27, 'BHN786', 'LG9', '2022-06-23', 7500, 15),
(28, 'LKJ89', 'Samsung', '2022-02-03', 1000, 20),
(29, 'AB456', 'Appel', '2021-10-07', 7600, 16),
(30, 'GB65', 'apple', '2022-01-28', 4500, 18),
(31, 'GB65FS', 'iphone', '2021-11-04', 9000, 18),
(32, 'AD341', 'Mac', '2022-07-01', 7500, 18),
(33, 'HG565', 'toshiba', '2022-01-08', 6760, 18),
(34, 'GB65K', 'lp', '2022-01-07', 3500, 23),
(35, 'xqs4', 'lpp3', '2022-01-05', 5000, 23),
(36, 'B65V', 'Hila78', '2022-01-28', 7500, 23),
(37, 'FZE34', 'ghi5', '2022-01-19', 6000, 16),
(38, 'KJ78D', 'KAMA', '2022-02-05', 9500, 16),
(39, 'BG565', 'hiboch', '2022-01-04', 4500, 16),
(40, 'VFD342', 'KassyDI', '2022-10-06', 9900, 16),
(41, 'VQ45', 'BelGo', '2022-09-09', 8900, 16);

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `Type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id`, `code`, `Type`) VALUES
(2, 'B1', 'Buvette'),
(4, 'CC2', 'centre carriereess'),
(8, 'Bibl1', 'Bibliotheque'),
(9, 'AA1', 'Tp'),
(10, 'HBK0405', 'Archit'),
(15, 'GB0412', 'travaux pratique'),
(16, 'HBH0205', 'centre'),
(17, 'LN67', 'nor'),
(18, 'lkoa26', 'cuisine'),
(19, 'GH768', 'CC4'),
(20, 'J78', 'cave'),
(21, 'BH768', 'CTravaux'),
(22, 'AB1811', 'para'),
(23, 'TY67', 'pharma'),
(24, 'SO98', 'soins');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `nomComplet` varchar(50) NOT NULL,
  `username` varchar(80) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `etat` int(1) NOT NULL,
  `password` varchar(10) NOT NULL,
  `isAdmin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nomComplet`, `username`, `email`, `telephone`, `etat`, `password`, `isAdmin`) VALUES
(1, 'Hiba Belgouzdem', 'hibanou', 'hibabel@gmail.com', '0684731356', 1, 'hibahiba', 1),
(4, 'simido mani', 'simido', 'mani@gmail.com', '06789898', 0, 'hibahiba', 0),
(5, 'karima ben', 'kama', 'kama@gmail.com', '066163456', 0, 'hibahiba', 0),
(10, 'adam belgo', 'adam', 'belgoAdam@gmail.com', '0678787878', 1, 'hibahiba', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fksalle` (`idSalle`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `machine`
--
ALTER TABLE `machine`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `machine`
--
ALTER TABLE `machine`
  ADD CONSTRAINT `fksalle` FOREIGN KEY (`idSalle`) REFERENCES `salle` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
