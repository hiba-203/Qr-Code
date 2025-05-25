-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 23 mai 2025 à 22:35
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `parkigdena`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_ad` int(20) NOT NULL,
  `nom_ad` text NOT NULL,
  `mdp_ad` varchar(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_ad`, `nom_ad`, `mdp_ad`, `image`) VALUES
(1, 'samir', 'HAKIM123', 'img/admin.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id` int(20) NOT NULL,
  `message` text NOT NULL,
  `date_avis` date NOT NULL,
  `id_cl` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`id`, `message`, `date_avis`, `id_cl`) VALUES
(2, 'je note 10/10 ', '2025-05-01', NULL),
(3, '5/10', '0000-00-00', NULL),
(6, 'amazing oh my god!', '2025-05-08', 5);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_cl` int(11) NOT NULL,
  `nom_cl` text NOT NULL,
  `prenom_cl` text NOT NULL,
  `email_cl` varchar(200) NOT NULL,
  `mdp_cl` varchar(20) NOT NULL,
  `tel_cl` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_cl`, `nom_cl`, `prenom_cl`, `email_cl`, `mdp_cl`, `tel_cl`) VALUES
(1, '', '', 'hibahenchiri50@gmail.com', '12345678Hh', 28981339),
(2, 'hiba', 'henchiri', 'hibahenchiri50@gmail.com', '12345678Hh', 28981339),
(3, 'asma', 'asouma', 'sarrahenchiri4@gmail.com', 'sarra', 29079456),
(4, 'hiba', 'henchiri', 'hhenchiri1920@gmail.com', '12345678hH', 28981339),
(5, 'olfa', 'jabri', 'olfa@gmail.com', 'olfaOLFA', 20202020),
(6, 'nesrine', 'fdhil', 'ness@gmail.com', 'nessrineNESRINE', 54710257),
(7, 'manar', 'manar', 'manar@gmail.com', 'manarMANAR', 21457877),
(8, 'hiba', 'soujoud', 'abcd@gmail.com', 'HIBAhiba', 21457858);

-- --------------------------------------------------------

--
-- Structure de la table `parking`
--

CREATE TABLE `parking` (
  `id_park` int(11) NOT NULL,
  `nom_park` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `adresse` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `prix` decimal(6,3) NOT NULL DEFAULT 0.000,
  `active` tinyint(1) DEFAULT 1,
  `id_respo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `parking`
--

INSERT INTO `parking` (`id_park`, `nom_park`, `ville`, `adresse`, `description`, `prix`, `active`, `id_respo`) VALUES
(3, 'Parking Djerbahood', 'Riadh', 'Hara Sghira Riadh', 'Parking disponible 24/24, prés de la Synagogue de la Ghriba', 3.000, 1, 38),
(7, 'Parking Jaraa', 'Gabes', 'Gabes Jara', '24/24', 4.000, 0, 36),
(9, 'parking abcd', 'Tunis', 'gabes jara', NULL, 1.000, 1, 40);

-- --------------------------------------------------------

--
-- Structure de la table `place`
--

CREATE TABLE `place` (
  `id_place` int(10) NOT NULL,
  `numero_place` varchar(20) NOT NULL,
  `type_place` varchar(20) NOT NULL,
  `etat` varchar(20) NOT NULL,
  `id_park` int(11) DEFAULT 1,
  `active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `place`
--

INSERT INTO `place` (`id_place`, `numero_place`, `type_place`, `etat`, `id_park`, `active`) VALUES
(63, 'A2', '', 'handicapé', 3, 0),
(75, 'A2', '', 'handicapé', 7, 1),
(76, 'A3', '', 'moto', 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `rapport`
--

CREATE TABLE `rapport` (
  `id` int(11) NOT NULL,
  `report_text` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `responsable`
--

CREATE TABLE `responsable` (
  `id_respo` int(11) NOT NULL,
  `nom_respo` varchar(100) NOT NULL,
  `prenom_respo` varchar(100) NOT NULL,
  `email_respo` varchar(100) NOT NULL,
  `telephone_respo` int(8) NOT NULL,
  `mdp_respo` varchar(200) NOT NULL,
  `statut` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `responsable`
--

INSERT INTO `responsable` (`id_respo`, `nom_respo`, `prenom_respo`, `email_respo`, `telephone_respo`, `mdp_respo`, `statut`) VALUES
(36, 'soujoud', 'chrigui', 'soujoud@gmail.com', 20202020, '20202020', 0),
(38, 'hiba', 'henchiri', 'hiba@gmail.com', 28981339, '28981339', 0),
(39, 'olfa', 'jabri', 'jabri@gmail.com', 28981339, '28981339', 1),
(40, 'islem', 'BATTIKH', 'islem@gmail.com', 23232323, '23232323', 1);

-- --------------------------------------------------------

--
-- Structure de la table `réservation`
--

CREATE TABLE `réservation` (
  `id_reserv` int(10) NOT NULL,
  `date_reserv` date NOT NULL,
  `heure_entree` time NOT NULL,
  `heure_sortie` time NOT NULL,
  `id_park` int(11) NOT NULL,
  `id_cl` int(11) NOT NULL,
  `id_place` int(11) NOT NULL,
  `code_entree` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `réservation`
--

INSERT INTO `réservation` (`id_reserv`, `date_reserv`, `heure_entree`, `heure_sortie`, `id_park`, `id_cl`, `id_place`, `code_entree`) VALUES
(14, '2025-05-09', '17:00:00', '18:00:00', 3, 2, 63, '1A912S7'),
(23, '2025-05-18', '14:00:00', '17:05:00', 3, 4, 63, '62HEHPP'),
(24, '2025-05-22', '18:00:00', '20:00:00', 3, 4, 76, 'SCMV61A'),
(25, '2025-05-22', '18:00:00', '20:00:00', 3, 5, 63, 'C4SW454'),
(26, '2025-05-24', '17:00:00', '19:00:00', 3, 6, 76, 'JZDKRDH'),
(27, '2025-05-25', '10:00:00', '11:00:00', 3, 6, 63, 'T8MBPHD');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_ad`);

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_avis_client` (`id_cl`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_cl`);

--
-- Index pour la table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`id_park`),
  ADD KEY `fk_parking_responsable` (`id_respo`);

--
-- Index pour la table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id_place`),
  ADD KEY `fk_place_park` (`id_park`);

--
-- Index pour la table `rapport`
--
ALTER TABLE `rapport`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `responsable`
--
ALTER TABLE `responsable`
  ADD PRIMARY KEY (`id_respo`);

--
-- Index pour la table `réservation`
--
ALTER TABLE `réservation`
  ADD PRIMARY KEY (`id_reserv`),
  ADD KEY `fk_réservation_parking` (`id_park`),
  ADD KEY `fk_réservation_cl` (`id_cl`),
  ADD KEY `fk_réservation_place` (`id_place`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_ad` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_cl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `parking`
--
ALTER TABLE `parking`
  MODIFY `id_park` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `place`
--
ALTER TABLE `place`
  MODIFY `id_place` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `rapport`
--
ALTER TABLE `rapport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `responsable`
--
ALTER TABLE `responsable`
  MODIFY `id_respo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `réservation`
--
ALTER TABLE `réservation`
  MODIFY `id_reserv` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avis`
--
ALTER TABLE `avis`
  ADD CONSTRAINT `fk_avis_client` FOREIGN KEY (`id_cl`) REFERENCES `client` (`id_cl`) ON DELETE CASCADE;

--
-- Contraintes pour la table `parking`
--
ALTER TABLE `parking`
  ADD CONSTRAINT `fk_parking_responsable` FOREIGN KEY (`id_respo`) REFERENCES `responsable` (`id_respo`) ON DELETE SET NULL;

--
-- Contraintes pour la table `place`
--
ALTER TABLE `place`
  ADD CONSTRAINT `fk_place_park` FOREIGN KEY (`id_park`) REFERENCES `parking` (`id_park`);

--
-- Contraintes pour la table `réservation`
--
ALTER TABLE `réservation`
  ADD CONSTRAINT `fk_réservation_cl` FOREIGN KEY (`id_cl`) REFERENCES `client` (`id_cl`),
  ADD CONSTRAINT `fk_réservation_parking` FOREIGN KEY (`id_park`) REFERENCES `parking` (`id_park`),
  ADD CONSTRAINT `fk_réservation_place` FOREIGN KEY (`id_place`) REFERENCES `place` (`id_place`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
