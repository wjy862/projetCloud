-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 15 fév. 2022 à 05:00
-- Version du serveur :  10.4.11-MariaDB
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
-- Base de données : `cloudprojet`
--

-- --------------------------------------------------------

--
-- Structure de la table `manipulerprojet`
--

CREATE TABLE `manipulerprojet` (
  `idUser` int(11) NOT NULL,
  `dateArt` date NOT NULL,
  `idTypeManipulation` int(11) NOT NULL,
  `idArticle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

CREATE TABLE `projets` (
  `idArticle` int(11) NOT NULL,
  `titreArticle` varchar(50) DEFAULT NULL,
  `contenuArticle` varchar(500) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idCategorie` int(11) DEFAULT NULL,
  `besoin` varchar(300) DEFAULT NULL,
  `plan` varchar(300) DEFAULT NULL,
  `etat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `projets`
--

INSERT INTO `projets` (`idArticle`, `titreArticle`, `contenuArticle`, `idUser`, `idCategorie`, `besoin`, `plan`, `etat`) VALUES
(1, 'ecologie avec ut1', 'C\'est dans le cadre de ses \"conférences sur l\'environnement\" que l\'EJUC a le plaisir de recevoir M. Gonzalo Sozzo, Professeur à l’Université nationale du littoral (Santa Fe, Argentine) et Directeur scientifique de l’Institut d’études avancées de Santa Fe.\r\n\r\nIl viendra présenter son nouveau livre intitulé \"El giro ecologico del derecho privado\" portant sur \"Le virage écologique du droit privé : le cas du code civil et commercial argentin\".', 1, 1, NULL, NULL, NULL),
(2, 'Le développement durable', 'Le développement durable est « un développement qui répond aux besoins du présent sans compromettre la capacité des générations futures à répondre aux leurs », citation de Mme Gro Harlem Brundtland, Premier Ministre norvégien (1987)', 1, 1, NULL, NULL, NULL),
(3, 'L\'énergie ', 'Les énergies renouvelables (EnR) sont des sources d\'énergie dont le renouvellement naturel est assez rapide pour qu\'elles puissent être considérées comme inépuisables à l\'échelle du temps humain.', 1, 1, NULL, NULL, NULL),
(4, 'Ecologie', 'L\'écologie ou écologie scientifique, parfois assimilée à la bioécologie ou à la bionomie, est une science qui étudie les êtres vivants dans leur milieu en tenant compte de leurs interactions. Cet ensemble, qui contient les êtres vivants, leur milieu de vie et les relations qu\'ils entretiennent, forme un écosystème', 1, 1, NULL, NULL, NULL),
(5, 'projet3', 'maison intelligent', 3, 1, 'ontology', '13/2&#13;&#10;16/3', 'plan'),
(6, 'nouvelle regle', 'Depuis le 1er avril 2017, une nouvelle réglementation relative à l’inspection des systèmes de réfrigération, de climatisation et des pompes à chaleur réversibles de plus de 12 kW est entrée en vigueur.\r\n\r\nQuels sont les systèmes concernés par cette réglementation ?\r\n\r\n- « Systèmes simples » : Systèmes de climatisation et pompes à chaleur réversibles dont la puissance frigorifique nominale utile est supérieure à 12 kW et qui sont utilisés pour satisfaire les exigences de confort des occupants.\r\n\r', 1, 1, NULL, NULL, NULL),
(7, 'Journée Mondiale de la Terre', 'Journée Mondiale de la Terre. Cet évènement a été célébré pour la première fois le 22 avril 1970. le Jour de la Terre est aujourd\'hui reconnu comme l\'événement environnemental populaire le plus important au monde. Le fondateur de cet événement est le sénateur américain Gaylord Nelson', 1, 1, NULL, NULL, NULL),
(9, 'La citoyenneté ', 'La citoyenneté est le fait pour un individu, pour une famille ou pour un groupe, d\'être reconnu officiellement comme citoyen, c\'est-à-dire membre d\'une ville ayant le statut de cité, ou plus généralement d\'un État.', 3, 1, NULL, NULL, NULL),
(21, 'conférence', '<p>conf&eacute;renceconf&eacute;renceconf&eacute;rence</p>\r\n', 3, 8, NULL, NULL, NULL),
(24, 'projet2', 'traitement des données', 3, 2, NULL, NULL, NULL),
(25, 'projet1', 'Developper une app', 3, 1, NULL, NULL, NULL),
(27, 'chat bot', 'make a bot pour communiquer avec les clients', 3, 32, 'analyse sémentique&#13;&#10;maquette&#13;&#10;evaluation&#13;&#10;implémentation', '1ère étape&#13;&#10;2ère étape&#13;&#10;3ère étape&#13;&#10;4ère étape', 'en cours'),
(28, 'hello this is my project', 'i have no idea', 3, 32, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `thematique`
--

CREATE TABLE `thematique` (
  `idCategorie` int(11) NOT NULL,
  `nomCategorie` varchar(70) NOT NULL COMMENT 'Gendre',
  `parentId` int(11) NOT NULL COMMENT 'PARENT ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `thematique`
--

INSERT INTO `thematique` (`idCategorie`, `nomCategorie`, `parentId`) VALUES
(1, 'développement d’applications Front-End et Back-end', 0),
(2, 'Ingénierie de données', 0),
(3, 'Intelligence métiers', 0),
(4, 'Sciences de données', 0),
(5, 'Analyse de réseaux sociaux', 0),
(6, 'Vision par  ordinateur ', 4),
(7, 'Chat-bot', 4),
(8, 'Formation et transfert de connaissances', 0),
(32, 'non classifier', 0);

-- --------------------------------------------------------

--
-- Structure de la table `typesmanipulation`
--

CREATE TABLE `typesmanipulation` (
  `idTypeManipulation` int(11) NOT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `typesmanipulation`
--

INSERT INTO `typesmanipulation` (`idTypeManipulation`, `description`) VALUES
(1, 'ajouter'),
(2, 'modifier '),
(3, 'supprimer'),
(4, 'consulter');

-- --------------------------------------------------------

--
-- Structure de la table `typeuser`
--

CREATE TABLE `typeuser` (
  `idTypeUser` int(11) NOT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `typeuser`
--

INSERT INTO `typeuser` (`idTypeUser`, `description`) VALUES
(1, 'étudiant'),
(2, 'professeur'),
(3, 'administrateur');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `nomUser` varchar(50) NOT NULL,
  `prenomUser` varchar(50) NOT NULL,
  `mailUser` varchar(50) NOT NULL,
  `idTypeUser` int(11) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `etat` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`idUser`, `nomUser`, `prenomUser`, `mailUser`, `idTypeUser`, `password`, `etat`) VALUES
(1, 'Bernard ', 'Petit', 'Bernard.Petit@gmail.com', 1, 'e10adc3949ba59abbe56e057f20f883e', 1),
(2, 'Dubois ', 'David', 'Dubois.David@gmail.com', 2, 'e10adc3949ba59abbe56e057f20f883e', 1),
(3, 'Bonnet ', 'Lambert', 'Bonnet.Lambert@gmail.com', 3, 'e10adc3949ba59abbe56e057f20f883e', 1),
(9, 'tim', 'tom', 'mail1@gmail.com', 2, 'e10adc3949ba59abbe56e057f20f883e', 0),
(11, 'Bonnet1', 'Bonnet1', 'mbert@gmail.com', 1, 'e10adc3949ba59abbe56e057f20f883e', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `manipulerprojet`
--
ALTER TABLE `manipulerprojet`
  ADD PRIMARY KEY (`dateArt`,`idUser`,`idTypeManipulation`,`idArticle`),
  ADD KEY `fk_idUser_idx` (`idUser`),
  ADD KEY `fk_dateArt_idx` (`dateArt`),
  ADD KEY `fk_idTypeManipulation_idx` (`idTypeManipulation`),
  ADD KEY `fk_idArticle_idx` (`idArticle`);

--
-- Index pour la table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`idArticle`),
  ADD KEY `fk_Users_Articles` (`idUser`),
  ADD KEY `FK_articles_category` (`idCategorie`);

--
-- Index pour la table `thematique`
--
ALTER TABLE `thematique`
  ADD PRIMARY KEY (`idCategorie`);

--
-- Index pour la table `typesmanipulation`
--
ALTER TABLE `typesmanipulation`
  ADD PRIMARY KEY (`idTypeManipulation`);

--
-- Index pour la table `typeuser`
--
ALTER TABLE `typeuser`
  ADD PRIMARY KEY (`idTypeUser`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`),
  ADD KEY `fk_IdTypeUser_idx` (`idTypeUser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `projets`
--
ALTER TABLE `projets`
  MODIFY `idArticle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `thematique`
--
ALTER TABLE `thematique`
  MODIFY `idCategorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `typesmanipulation`
--
ALTER TABLE `typesmanipulation`
  MODIFY `idTypeManipulation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `typeuser`
--
ALTER TABLE `typeuser`
  MODIFY `idTypeUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `manipulerprojet`
--
ALTER TABLE `manipulerprojet`
  ADD CONSTRAINT `fk_ManipulerArticle_idArticle` FOREIGN KEY (`idArticle`) REFERENCES `projets` (`idArticle`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ManipulerArticle_idTypeManipulation` FOREIGN KEY (`idTypeManipulation`) REFERENCES `typesmanipulation` (`idTypeManipulation`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ManipulerArticle_idUser` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `projets`
--
ALTER TABLE `projets`
  ADD CONSTRAINT `FK_articles_category` FOREIGN KEY (`idCategorie`) REFERENCES `thematique` (`idCategorie`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Users_Articles` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_Users_IdTypeUser` FOREIGN KEY (`idTypeUser`) REFERENCES `typeuser` (`idTypeUser`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
