-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 23 nov. 2021 à 16:38
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hb_toys`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `ean` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teaser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `picturemain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picturefront` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pictureback` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manuel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E6612469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `category_id`, `ean`, `name`, `teaser`, `description`, `price`, `stock`, `picturemain`, `picturefront`, `pictureback`, `manuel`) VALUES
(2, 1, 7894561237894, 'Trotinette pliable', 'Pars à l\'aventure avec ta trottinette Spider-Man !', 'Pars à l\'aventure avec ta trottinette Spider-Man !\r\n\r\nLa trottinette est facilement pliable et sécurisée, tu pourras freiner avec la roue arrière et le guidon est ajustable', 3500, 20, NULL, NULL, NULL, NULL),
(3, 1, 8974865123485, 'Pistolet X-Shot', 'Prêt pour une partie de jeux de tirs en mousse ! Avec ce pistolet fusil à flèches 35 coups, tu es bien équipé pour des heures d’amusement !', 'Prêt pour une partie de jeux de tirs en mousse ! Avec ce pistolet fusil à flèches 35 coups, tu es bien équipé pour des heures d’amusement !\r\nMécanisme de système de tir à pompe avec levier avant-arrière, système de cartouchière 35 flèches à défilement.\r\nPuissance de tir jusqu’au 27 mètres.\r\nLivré avec 48 flèches en mousse pour un max de fun !', 5000, 80, NULL, NULL, NULL, NULL),
(4, 1, 1548967845158, 'But de Football', 'Découvre ce grand but de football constitué de tubes plastique ! Un but pratique, puisque pliable, faisant 1m20 de haut pour 1m80 de large avec un ...', 'Découvre ce grand but de football constitué de tubes plastique !\r\nUn but pratique, puisque pliable, faisant 1m20 de haut pour 1m80 de large avec une profondeur de 91cm.\r\nUn ensemble qui comprend le but de football ainsi que huit sardines pour correctement le maintenir au sol en fonction du temps (ballon et pompe non inclus).', 3500, 20, NULL, NULL, NULL, NULL),
(5, 1, 7848747885124, 'Porteur - Push Buggy Mini Cooper', 'Votre enfant va adorer s\'asseoir au volant de cette très jolie Mini Cooper ! Installé confortablement sur son siège et bien attaché grâce à la ceintu ...', 'Votre enfant va adorer s\'asseoir au volant de cette très jolie Mini Cooper ! Installé confortablement sur son siège et bien attaché grâce à la ceinture de sécurité, il va pouvoir s\'amuser à déclencher le klaxon et faire vrombir le moteur en actionnant les boutons présents sur le volant. Le plus de cette Mini Cooper ? Grâce à sa canne télescopique et son repose-pieds escamotable, elle permet à votre enfant de prendre la route seul une fois le moment venu ! Caractéristiques produits : - Modèle : Mini Cooper Rouge - Effets sonores au volant - Siège confortable avec ceinture de sécurité - Repose-pieds escamotable - Canne télescopique Fonctionne avec 2 piles LR03 (AAA) non incluses.', 6000, 15, NULL, NULL, NULL, NULL),
(6, 2, 3158932547865, 'Perles - Coffret coloré - 10000 pièces', 'Découvre ce coffret de perles PicWicToys pour réaliser de superbes bijoux !', 'Ce kit de perles contient :\r\n\r\n- 10 000 pièces dont des perles de différentes tailles\r\n\r\n- des pendentifs\r\n\r\n- des perles fantaisies\r\n\r\n- du fil et des clips \r\n\r\n\r\n\r\nTout le nécessaire pour fabriquer tes propres colliers, bracelets et autres bijoux fantaisies.', 1300, 0, NULL, NULL, NULL, NULL),
(7, 2, 4568742458745, '4 Bouteille en verre - Petit modèle', 'Petite bouteille en verre, vendue vide.', 'Petite bouteille en verre, vendue vide. Pourra convenir à toutes vos idées créations.', 400, NULL, NULL, NULL, NULL, NULL),
(8, 2, 6358954756812, 'Plumes - Faisan - 10g', 'Sachet de plumes de faisan', NULL, 200, 200, NULL, NULL, NULL, NULL),
(9, 3, 3485148623541, 'Arche d\'activités et d\'éveil', 'Accompagne et favorise l\'éveil de l\'enfant', 'Que de nouvelles découvertes en perspectives.', 3000, 0, NULL, NULL, NULL, NULL),
(10, 3, 8457965485789, 'Coffret x4 Jeux Sensoriels', 'Ce Coffret x4 Jeux Sensoriels contient 9 cubes sensoriels, 4 balles aux textures variées, 3 personnages en forme d\'animaux et 6 bols à empiler. ...', 'Ce Coffret x4 Jeux Sensoriels contient 9 cubes sensoriels, 4 balles aux textures variées, 3 personnages en forme d\'animaux et 6 bols à empiler. En plastique souple et léger pour faciliter la préhension, ces jeux permettent à Bébé de développer ses sens et sa motricité.', 2300, 5, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `article_tag`
--

DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE IF NOT EXISTS `article_tag` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`tag_id`),
  KEY `IDX_919694F97294869C` (`article_id`),
  KEY `IDX_919694F9BAD26311` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article_tag`
--

INSERT INTO `article_tag` (`article_id`, `tag_id`) VALUES
(2, 1),
(2, 11),
(3, 1),
(3, 4),
(3, 11),
(4, 1),
(4, 4),
(5, 1),
(5, 4),
(6, 5),
(6, 10),
(7, 5),
(7, 9),
(7, 10),
(7, 14),
(8, 4),
(8, 5),
(8, 10),
(9, 2),
(9, 3),
(9, 13),
(10, 7),
(10, 13);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teaser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `teaser`, `picture`) VALUES
(1, 'JOUET', 'Tout ce dont il vous est possible de rêver pour vous amuser', 'https://img.ecommercemag.fr/Img/BREVE/2020/11/353785/Reconfinement-manque-gagner-770-millions-euros-dans-secteur-jouet-T.jpg'),
(2, 'Loisirs Créatif', 'Créez, imaginez sans limite avec notre section arts créatifs', 'https://cdn.bioalaune.com/img/article/thumb/900x500/36256-loisir-creatif-retour-scrapbooking.png'),
(3, 'Puériculture', 'Tout pour Bébé, pour s\'occuper et faire jouer les tout-petits', 'https://edito.regionsjob.com/xjob/wp-content/uploads/sites/3/2016/06/auxiliaire-puericulture.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20211123141834', '2021-11-23 15:18:45', 285),
('DoctrineMigrations\\Version20211123142920', '2021-11-23 15:29:26', 129);

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`id`, `name`) VALUES
(1, 'Jeux de plein air'),
(2, 'Livres et éducation'),
(3, 'Premier âge'),
(4, 'Imitation'),
(5, 'Construction'),
(6, 'Multimédia'),
(7, 'Poupées et Peluches'),
(8, 'Jeu de société'),
(9, 'Mercerie'),
(10, 'Perles et Bijoux'),
(11, 'Sécurité'),
(12, 'Sommeil'),
(13, 'Éveil'),
(14, 'Hygiènes et soins');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `FK_919694F97294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_919694F9BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
