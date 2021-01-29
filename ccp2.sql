-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 29 jan. 2021 à 08:12
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
-- Base de données : `ccp2`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `ord_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E66708A0E0` (`gender_id`),
  KEY `IDX_23A0E6612469DE2` (`category_id`),
  KEY `IDX_23A0E661AD5CDBF` (`cart_id`),
  KEY `IDX_23A0E66E636D3F5` (`ord_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `name`, `price`, `description`, `gender_id`, `category_id`, `cart_id`, `ord_id`, `created_at`) VALUES
(13, 'Blue Issimo Sunglasses', '49.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, 11, NULL, '2021-01-20 09:06:22'),
(14, 'Gold & Green Hexagonal Sunglasses', '79.99', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, NULL, 1, '2021-01-20 09:07:08'),
(15, 'Greta Tortoiseshell Sunglasses', '54.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, NULL, NULL, '2021-01-20 09:07:45'),
(16, 'Havana Gold Sunglasses', '89.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, NULL, NULL, '2021-01-20 09:08:36'),
(17, 'Midway Acetate Sunglasses', '59.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, NULL, 2, '2021-01-20 09:09:11'),
(18, 'Orange Boyd Sunglasses', '39.49', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, NULL, NULL, '2021-01-20 09:12:05'),
(19, 'Rectangular Sunglasses', '85.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, NULL, NULL, '2021-01-20 09:12:42'),
(20, 'Round Tortoise Sunglasses', '61.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, NULL, NULL, '2021-01-20 09:13:22'),
(21, 'Silverlake Sun Sunglasses', '78.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, NULL, NULL, '2021-01-20 09:14:26'),
(22, 'Silver Tone Sunglasses', '129.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, NULL, NULL, '2021-01-20 09:15:05'),
(23, 'Split Shot Rectangular Sunglasses', '94.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, NULL, 6, '2021-01-20 09:16:00'),
(24, 'Square Sunglasses', '40.99', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, NULL, NULL, '2021-01-20 09:16:47'),
(25, 'Square Frame Sunglasses', '29.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, NULL, NULL, '2021-01-20 09:17:37'),
(26, 'Sutton Sunglasses', '80.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, NULL, NULL, '2021-01-20 09:18:15'),
(27, 'Wayfarer Polarized Sunglasses', '89.99', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 1, NULL, NULL, '2021-01-20 09:18:56'),
(28, 'Rhinestone After Hours Sunglasses', '79.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 2, 1, NULL, NULL, '2021-01-20 09:28:39'),
(29, 'Amazonian-101 Sunglasses', '95.99', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 2, 1, NULL, NULL, '2021-01-20 09:30:11'),
(30, 'Garland Sunglasses', '48.49', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 2, 1, NULL, NULL, '2021-01-20 09:36:02'),
(31, '57mm Oversize Cat Eye Sunglasses', '28.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 2, 1, NULL, NULL, '2021-01-20 09:36:43'),
(32, 'Escadrille Sunglasses', '59.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 2, 1, NULL, NULL, '2021-01-20 09:37:21'),
(33, 'Bella Sunglasses', '40.99', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 2, 1, NULL, NULL, '2021-01-20 09:37:54'),
(34, 'Becky II Sunglasses', '109.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 2, 1, NULL, NULL, '2021-01-20 09:38:20'),
(35, 'Pioneer Belt', '19.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 2, NULL, NULL, '2021-01-20 09:46:33'),
(36, 'Ply Tactical Cobra Belt', '39.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 2, NULL, NULL, '2021-01-20 09:47:16'),
(37, 'Yosar Guide Belt', '19.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 2, NULL, NULL, '2021-01-20 09:47:43'),
(38, 'Allen Edmonds  Belt', '32.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 2, NULL, NULL, '2021-01-20 09:48:16'),
(39, 'Double D Ring Belt', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 2, NULL, NULL, '2021-01-20 09:48:46'),
(40, 'Crocodile Effect Belt', '34.49', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 2, 2, NULL, 3, '2021-01-20 09:49:20'),
(41, 'Faux Perle Embellished Belt', '59.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 2, 2, NULL, NULL, '2021-01-20 09:49:57'),
(42, 'Lecce Leather Belt', '49.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 2, 2, NULL, NULL, '2021-01-20 09:50:31'),
(43, 'Tanner Goods Single Wrap Wristband', '25.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 3, NULL, 5, '2021-01-20 09:55:06'),
(44, 'Timex Navi Harbor Watch', '91.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 3, NULL, NULL, '2021-01-20 09:55:40'),
(45, 'Pioneer Bifold Wallet', '18.90', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 3, NULL, NULL, '2021-01-20 09:56:12');

-- --------------------------------------------------------

--
-- Structure de la table `article_images`
--

DROP TABLE IF EXISTS `article_images`;
CREATE TABLE IF NOT EXISTS `article_images` (
  `article_id` int(11) NOT NULL,
  `images_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`images_id`),
  KEY `IDX_8AD829EA7294869C` (`article_id`),
  KEY `IDX_8AD829EAD44F05E5` (`images_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article_images`
--

INSERT INTO `article_images` (`article_id`, `images_id`) VALUES
(13, 7),
(14, 8),
(15, 9),
(16, 10),
(17, 11),
(18, 12),
(19, 13),
(20, 14),
(21, 15),
(22, 16),
(23, 17),
(24, 18),
(25, 19),
(26, 20),
(27, 21),
(28, 22),
(29, 23),
(30, 24),
(31, 25),
(32, 26),
(33, 27),
(34, 28),
(35, 29),
(36, 30),
(37, 31),
(38, 32),
(39, 33),
(40, 34),
(41, 35),
(42, 36),
(43, 39),
(44, 40),
(45, 41);

-- --------------------------------------------------------

--
-- Structure de la table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `brand_logo`
--

DROP TABLE IF EXISTS `brand_logo`;
CREATE TABLE IF NOT EXISTS `brand_logo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `brand_logo`
--

INSERT INTO `brand_logo` (`id`, `name`) VALUES
(1, 'Comfort Zone'),
(2, 'The Gearhead'),
(3, 'Style'),
(4, 'Organic'),
(5, 'Cupcake');

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BA388B7A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`id`, `quantity`, `date`, `user_id`) VALUES
(11, 1, '2021-01-26 18:15:13', 1);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Sunglasses'),
(2, 'Belts'),
(3, 'Accessories');

-- --------------------------------------------------------

--
-- Structure de la table `cgucgv`
--

DROP TABLE IF EXISTS `cgucgv`;
CREATE TABLE IF NOT EXISTS `cgucgv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cgucgv`
--

INSERT INTO `cgucgv` (`id`, `title`, `description`) VALUES
(1, 'CONDITIONS D\'UTILISATION ET GENERALES DE VENTE', '<h2><span style=\"font-size:24px\"><strong>CONDITIONS D&#39;UTILISATION</strong></span></h2>\r\n\r\n<p><strong>Merci de lire ces conditions attentivement avant d&#39;utiliser les Services Amazon. En utilisant les Services Amazon, vous acceptez d&#39;&ecirc;tre soumis aux pr&eacute;sentes conditions.</strong>&nbsp;Nous offrons un large panel de Services Amazon et il se peut que des conditions additionnelles s&#39;appliquent. Quand vous utilisez un Service Amazon (par exemple, Votre Profil, les Ch&egrave;ques-Cadeaux ou les Applications Amazon pour mobile), vous &ecirc;tes aussi soumis aux termes, lignes directrices et conditions applicables &agrave; ce Service Amazon (&laquo; Conditions du Service &raquo;). Si ces Conditions d&#39;Utilisation entrent en contradiction avec ces Conditions du Service, les Conditions du Service pr&eacute;vaudront.</p>\r\n\r\n<p><a href=\"https://www.amazon.fr/gp/help/reports/infringement\" target=\"_blank\">Proc&eacute;dure et formulaire de notification de violation de droits.</a></p>\r\n\r\n<p><a href=\"https://www.amazon.fr/gp/help/reports/infringement\" target=\"_blank\">Proc&eacute;dure et Formulaire de notification en vue de notifier un contenu injurieux ou diffamatoire.</a></p>\r\n\r\n<p><strong>1. COMMUNICATIONS ELECTRONIQUES</strong></p>\r\n\r\n<p>Quand vous utilisez un quelconque Service Amazon ou que vous nous envoyez des courriers &eacute;lectroniques, SMS ou autres communications depuis vos &eacute;quipements fixes ou mobiles, vous communiquez avec nous &eacute;lectroniquement. Nous communiquerons avec vous &eacute;lectroniquement par divers moyens, tels que par courrier &eacute;lectronique, SMS, messages de notification dans l&#39;application ou en postant des courriers &eacute;lectroniques ou des communications sur le site internet ou &agrave; travers les autres Services Amazon, tels que notre Gestionnaire de communication. A des fins contractuelles, vous acceptez que tous les accords, informations, divulgations et autres communications que nous vous enverrons &eacute;lectroniquement remplissent toutes les obligations l&eacute;gales des communiquer par &eacute;crit, &agrave; moins qu&#39;une loi imp&eacute;rative sp&eacute;cifique impose un autre mode de communication.</p>\r\n\r\n<p><strong>2. RECOMMANDATIONS ET PERSONNALISATION</strong></p>\r\n\r\n<p>Dans le cadre des Services Amazon, nous vous recommanderons des fonctionnalit&eacute;s, des produits et des services, comprenant des publicit&eacute;s de tiers, qui sont susceptibles de vous int&eacute;resser, nous identifierons vos pr&eacute;f&eacute;rences et nous personnaliserons votre exp&eacute;rience.</p>\r\n\r\n<p><strong>3. PROPRIETE INTELLECTUELLE, DROIT D&#39;AUTEUR, ET PROTECTION DES BASES DE DONNEES</strong></p>\r\n\r\n<p>Tout le contenu pr&eacute;sent ou rendu disponible &agrave; travers les Services Amazon, tels que les textes, les graphiques, les logos, les boutons, les images, les morceaux de musique, les t&eacute;l&eacute;chargements num&eacute;riques, et les compilations de donn&eacute;es, est la propri&eacute;t&eacute; d&#39;Amazon, de ses soci&eacute;t&eacute;s affili&eacute;es ou de ses fournisseurs de contenu et est prot&eacute;g&eacute; par le droit luxembourgeois et international de la propri&eacute;t&eacute; intellectuelle, d&#39;auteur et de protection des bases de donn&eacute;es. La compilation de tout le contenu pr&eacute;sent ou rendu disponible &agrave; travers les Services Amazon est la propri&eacute;t&eacute; exclusive d&#39;Amazon et est prot&eacute;g&eacute; par le droit luxembourgeois et international de la propri&eacute;t&eacute; intellectuelle et de protection des bases de donn&eacute;es.</p>\r\n\r\n<p>Vous ne devez pas extraire et/ou r&eacute;utiliser de fa&ccedil;on syst&eacute;matique des parties du contenu de tout Service Amazon sans notre autorisation expresse et &eacute;crite. En particulier, vous ne devez pas utiliser de robot d&#39;aspiration de donn&eacute;es, ou tout autre outil similaire de collecte ou d&#39;extraction de donn&eacute;es pour extraire (en une ou plusieurs fois), pour r&eacute;utiliser une partie substantielle d&#39;un quelconque Service Amazon, sans notre accord express et &eacute;crit. Vous ne devez pas non plus cr&eacute;er et/ou publier vos propres bases de donn&eacute;es qui comporteraient des parties substantielles (ex : nos prix et nos listes de produits) d&#39;un Service Amazon sans notre accord express et &eacute;crit.</p>\r\n\r\n<p><strong>4. MARQUES DEPOSEES</strong></p>\r\n\r\n<p>Consultez&nbsp;<a href=\"https://www.amazon.fr/gp/help/customer/display.html?ie=UTF8&amp;nodeId=201909000&amp;ref_=footer_cou#GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__SECTION_64DE0ED1D744420E933ED292E5A7B3D3\">une liste non exhaustive des marques d&eacute;pos&eacute;es par Amazon</a>. Par ailleurs, les graphiques, logos, en-t&ecirc;tes de page, boutons, scripts et noms de services inclus ou rendus disponibles &agrave; travers un Service Amazon sont des marques ou visuels d&#39;Amazon. Les marques et visuels d&#39;Amazon ne peuvent pas &ecirc;tre utilis&eacute;s pour des produits ou services qui n&#39;appartiennent pas &agrave; Amazon, ou d&#39;une quelconque mani&egrave;re qui pourrait provoquer une confusion parmi les clients, ou d&#39;une quelconque mani&egrave;re qui d&eacute;nigre ou discr&eacute;dite Amazon. Toutes les autres marques qui n&#39;appartiennent pas &agrave; Amazon et qui apparaissent sur un quelconque Service Amazon sont la propri&eacute;t&eacute; de leurs propri&eacute;taires respectifs, qui peuvent, ou non, &ecirc;tre affili&eacute;s, li&eacute;s ou parrain&eacute;s par Amazon.</p>\r\n\r\n<p><strong>5. BREVETS</strong></p>\r\n\r\n<p>Un ou plusieurs brevets d&eacute;tenus par Amazon s&#39;appliquent aux Services Amazon, &agrave; ce site internet et aux fonctionnalit&eacute;s et services accessibles via le site internet et les Services Amazon. Des parties de ce site internet fonctionnent sous licences d&#39;un ou plusieurs brevets. Consultez une&nbsp;<a href=\"https://www.amazon.fr/gp/help/customer/display.html?ie=UTF8&amp;nodeId=201909000&amp;ref_=footer_cou#GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__SECTION_64DE0ED1D744420E933ED292E5A7B3D3\">liste non exhaustive des brevets d&eacute;tenus par Amazon et des licences de brevets applicables</a>.</p>\r\n\r\n<p><strong>6. LICENCE ET ACCES</strong></p>\r\n\r\n<p>Sous r&eacute;serve du respect des pr&eacute;sentes Conditions d&#39;Utilisation et des Conditions des Services et du paiement de tous les sommes applicables, Amazon ou ses fournisseurs de contenu vous accorde une licence limit&eacute;e, non exclusive, non transf&eacute;rable, non sous licenciable pour l&#39;acc&egrave;s et &agrave; l&#39;utilisation personnelle et non commerciale des Services Amazon. Cette licence n&#39;inclut aucun droit d&#39;utilisation d&#39;un Service Amazon ou de son contenu pour la vente ou tout autre utilisation commerciale ; de collecte et d&#39;utilisation d&#39;un listing produit, descriptions, ou prix de produits ; de toute utilisation d&eacute;riv&eacute;e d&#39;un Service Amazon ou de son contenu ; de tout t&eacute;l&eacute;chargement ou copie des informations d&#39;un compte pour un autre commer&ccedil;ant ; ou de toute utilisation de robot d&#39;aspiration de donn&eacute;es, ou autre outil similaire de collecte ou d&#39;extraction de donn&eacute;es.</p>\r\n\r\n<p>Tous les droits qui ne vous ont pas &eacute;t&eacute; express&eacute;ment accord&eacute;s dans ces Conditions d&#39;Utilisation ou dans les Conditions d&#39;un Service sont r&eacute;serv&eacute;s et restent &agrave; Amazon ou &agrave; ses licenci&eacute;s, fournisseurs, &eacute;diteurs, titulaires de droits, ou tout autre fournisseur de contenu. Aucun Service Amazon ou tout ou partie de celui-ci ne doit &ecirc;tre reproduit, copi&eacute;, vendu, revendu, visit&eacute; ou exploit&eacute; pour des raisons commerciales sans notre autorisation expresse et &eacute;crite.</p>\r\n\r\n<p>Vous ne devez pas cadrer ou utiliser des techniques de cadrage (framing) pour ins&eacute;rer toute marque, logo ou autre information commerciale (y compris des images, textes, mises en pages ou formes) d&#39;Amazon sans notre autorisation expresse et &eacute;crite. Vous ne devez pas utiliser de m&eacute;ta tags ou tout autre &laquo; texte cach&eacute; &raquo; utilisant le nom ou les marques d&eacute;pos&eacute;es d&#39;Amazon sans notre autorisation expresse et &eacute;crite.</p>\r\n\r\n<p>Vous ne devez pas faire un mauvais usage d&#39;un Service Amazon. Vous devez utiliser les Services Amazon comme autoris&eacute; par la loi. Les licences accord&eacute;es par Amazon prendront fin si vous ne respectez pas ces Conditions d&#39;Utilisation ou les Conditions des Services.</p>\r\n\r\n<p><strong>7. VOTRE COMPTE</strong></p>\r\n\r\n<p>Vous pouvez avoir besoin d&#39;un compte personnel Amazon pour utiliser certain Services Amazon, et il peut vous &ecirc;tre demand&eacute; de vous connecter au compte et d&#39;avoir une m&eacute;thode de paiement valide associ&eacute;e &agrave; celui-ci. En cas de probl&egrave;me pour utiliser la m&eacute;thode de paiement que vous avez s&eacute;lectionn&eacute;e, nous pourrons utiliser toute autre m&eacute;thode de paiement valide associ&eacute;e &agrave; votre compte. Acc&eacute;dez &agrave; Votre compte pour&nbsp;<a href=\"https://www.amazon.fr/cpe/managepaymentmethods\" target=\"_blank\">g&eacute;rer vos options de paiement</a>.</p>\r\n\r\n<p>Si vous utilisez un quelconque Service Amazon, vous &ecirc;tes responsable du maintien de la confidentialit&eacute; de votre compte et mot de passe, des restrictions d&#39;acc&egrave;s &agrave; votre ordinateur et autres &eacute;quipements, et dans la limite de ce qui est autoris&eacute; par la loi applicable, vous acceptez d&#39;&ecirc;tre responsable de toutes les activit&eacute;s qui ont &eacute;t&eacute; men&eacute;es depuis de votre compte ou avec votre mot de passe. Vous devez prendre toutes les mesures n&eacute;cessaires pour vous assurer que votre mot de passe reste confidentiel et s&eacute;curis&eacute;, et devez nous informer imm&eacute;diatement si vous avez des raisons de croire que votre mot de passe est connu de quelqu&#39;un d&#39;autre, ou si le mot de passe est utilis&eacute; ou susceptible d&#39;&ecirc;tre utilis&eacute; de mani&egrave;re non autoris&eacute;e. Vous &ecirc;tes responsable de la validit&eacute; et du caract&egrave;re complets des informations que vous nous avez fournies, et devez nous informer de tout changement concernant ces informations. Vous pouvez acc&eacute;der &agrave; vos informations dans la section&nbsp;<a href=\"https://www.amazon.fr/votre-compte\" target=\"_blank\">Votre compte</a>&nbsp;du site internet. Veuillez consulter nos pages d&#39;aide relatives &agrave; la Protection de vos informations personnelles pour acc&eacute;der &agrave; vos informations personnelles.</p>\r\n\r\n<p>Vous ne devez pas utiliser un quelconque Service Amazon : (i) d&#39;une fa&ccedil;on qui causerait, ou serait susceptible de causer une interruption, un dommage, ou une alt&eacute;ration d&#39;un Service Amazon, or (ii) dans un but frauduleux, ou en relation avec un crime ou une activit&eacute; ill&eacute;gale, ou (iii) dans le but provoquer des troubles, nuisances ou causes d&#39;anxi&eacute;t&eacute;s.</p>\r\n\r\n<p>Nous nous r&eacute;servons le droit de refuser de fournir un quelconque Service Amazon ou de cl&ocirc;turer les comptes si votre comportement nous donne une raison justifi&eacute;e de le faire. Ce sera notamment le cas si vous enfreignez les lois applicables, les dispositions contractuelles applicables, nos lignes directrices ou nos politiques, toutes accessibles depuis le site internet. Nonobstant une telle limitation ou r&eacute;siliation, vous continuerez &agrave; avoir acc&egrave;s au contenu et aux services que vous avez achet&eacute;s jusqu&#39;&agrave; ce moment-l&agrave;.</p>\r\n\r\n<p><strong>8. COMMENTAIRES, CRITIQUES, COMMUNICATIONS ET AUTRE CONTENU</strong></p>\r\n\r\n<p>Les visiteurs peuvent mettre en ligne des revues, des commentaires ou tout autre contenu ; envoyer des cartes &eacute;lectroniques ou autres communications, et soumettre des suggestions, des id&eacute;es, des questions ou toute autre information tant que ce contenu n&#39;est pas ill&eacute;gal, obsc&egrave;ne, abusif, mena&ccedil;ant, diffamatoire, calomnieux, contrevenant aux droits de propri&eacute;t&eacute; intellectuelle, ou pr&eacute;judiciable &agrave; des tiers ou r&eacute;pr&eacute;hensible et ne consiste pas ou ne contient pas de virus informatiques, de militantisme politique, de sollicitations commerciales, de cha&icirc;nes de courriers &eacute;lectroniques, de mailing de masse ou toute autre forme de &laquo; spam &raquo;. Vous ne devez pas utiliser une fausse adresse e-mail, usurper l&#39;identit&eacute; d&#39;une personne ou d&#39;une entit&eacute;, ni mentir sur l&#39;origine d&#39;une carte de cr&eacute;dit ou d&#39;un contenu. Nous nous r&eacute;servons le droit (sans aucune obligation en l&#39;absence d&#39;un Formulaire de Notification valide), de retirer ou de modifier tout contenu. Si vous pensez qu&#39;un contenu ou une annonce de vente sur un quelconque Service Amazon contient un message diffamatoire, ou que vos droits de propri&eacute;t&eacute; intellectuelle ont &eacute;t&eacute; enfreints par un article ou une information sur le site internet, merci de nous le notifier en compl&eacute;tant le Formulaire de Notification ad&eacute;quat, et nous y r&eacute;pondrons.</p>\r\n\r\n<p>Si vous publiez des commentaires clients, , des questions / r&eacute;ponses ou tout autre contenu g&eacute;n&eacute;r&eacute; par vous pour &ecirc;tre publi&eacute; sur le site internet (incluant toute image, vid&eacute;o ou enregistrement audio, ensemble le &laquo; contenu &raquo;) , vous accordez &agrave; Amazon, (i) une licence non-exclusive et gratuite pour utiliser, reproduire, , publier, rendre disponible, traduire et modifier ce contenu dans le monde entier(incluant le droit de sous-licencier ces droits &agrave; des tiers); et (b) le droit d&#39;utiliser le nom que vous avez utilis&eacute; en lien avec ce contenu. Aucuns droits moraux ne sont transf&eacute;r&eacute;s par l&#39;effet de cette clause.</p>\r\n\r\n<p>Vous pouvez supprimer votre contenu de la vue du public ou, lorsque cette fonctionnalit&eacute; est offerte, modifier les param&egrave;tres pour qu&#39;il ne soit visible que par les personnes auxquelles vous en avez donn&eacute; l&#39;acc&egrave;s. Vous d&eacute;clarez et garantissez &ecirc;tre propri&eacute;taire ou avoir les droits n&eacute;cessaires sur le contenu que vous publiez ; que, &agrave; la date de publication du contenu ou du mat&eacute;riel : (i) le contenu et le mat&eacute;riel est exact, (ii) l&#39;utilisation du contenu et du mat&eacute;riel que vous avez fourni ne contrevient pas &agrave; l&#39;une des proc&eacute;dures ou lignes directrices d&#39;Amazon et ne portera pas atteinte &agrave; toute personne physique ou morale (notamment que le contenu ou le mat&eacute;riel ne sont pas diffamatoires). Vous acceptez d&#39;indemniser Amazon en cas d&#39;action d&#39;un tiers contre Amazon en lien avec le contenu ou le mat&eacute;riel que vous avez fourni, sauf dans le cas o&ugrave; l&#39;&eacute;ventuelle responsabilit&eacute; d&#39;Amazon pourrait &ecirc;tre recherch&eacute;e pour ne pas avoir retir&eacute; un contenu dont le caract&egrave;re illicite lui aurait &eacute;t&eacute; notifi&eacute; (Formulaire de Notification), d&egrave;s lors que cette action aurait pour cause, fondement ou origine le contenu que vous nous avez communiqu&eacute;.</p>\r\n\r\n<p><strong>9. REVENDICATIONS DE PROPRIETE INTELLECTUELLE</strong></p>\r\n\r\n<p>Amazon respecte la propri&eacute;t&eacute; intellectuelle d&#39;autrui. Si vous pensez qu&#39;un de vos droits de propri&eacute;t&eacute; intellectuelle a &eacute;t&eacute; utilis&eacute; d&#39;une mani&egrave;re qui puisse faire na&icirc;tre une crainte de violation desdits droits, merci de suivre notre&nbsp;<a href=\"https://www.amazon.fr/gp/help/reports/infringement\" target=\"_blank\">Proc&eacute;dure et formulaire de notification de violation de droits.</a></p>\r\n\r\n<p><strong>10. CONDITIONS LOGICIEL AMAZON</strong></p>\r\n\r\n<p>S&#39;ajoutent &agrave; ces Conditions d&#39;Utilisation,&nbsp;<a href=\"https://www.amazon.fr/gp/help/customer/display.html?ie=UTF8&amp;nodeId=201909000&amp;ref_=footer_cou#GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__SECTION_D2D21EE9603C485F95E32464E2116341\">les conditions suivantes</a>&nbsp;qui s&#39;appliquent &agrave; tous les logiciels (en ce compris les mises &agrave; jour ou les &eacute;volutions du logiciel et de toute la documentation li&eacute;e) que nous vous rendons disponibles pour votre utilisation des Services Amazon (ci-apr&egrave;s &laquo; Logiciels Amazon &raquo;).</p>\r\n\r\n<p><strong>11. AUTRES ENTREPRISES</strong></p>\r\n\r\n<p>Des tiers autres qu&#39;Amazon g&egrave;rent des boutiques, proposent des services et vendent des lignes de produits sur ce site internet. De surcro&icirc;t, nous fournissons des liens vers des sites internet de soci&eacute;t&eacute; affili&eacute;es et d&#39;un certain nombre d&#39;entreprises. Nous ne sommes pas responsables de l&#39;examen ou de l&#39;&eacute;valuation, et nous ne garantissons pas les offres de ces entreprises ou de ces particuliers, ou le contenu de leurs sites internet. Amazon n&#39;assume aucune responsabilit&eacute; ou obligation pour les actes, produits ou contenus de ces entreprises ou de ces particuliers ou d&#39;autres tiers. Vous &ecirc;tes inform&eacute; quand un tiers est impliqu&eacute; dans votre transaction, et nous pouvons partager vos informations en lien avec cette transaction avec ce tiers. Vous devez examiner leurs politiques de confidentialit&eacute; et autres conditions d&#39;utilisation avec attention.</p>\r\n\r\n<p><strong>12. ROLE D&#39;AMAZON</strong></p>\r\n\r\n<p>Amazon permet &agrave; des vendeurs tiers de lister et de vendre leurs produits sur Amazon.fr. Dans chacun de ces cas, ceci est indiqu&eacute; sur la page respective de d&eacute;tail du produit. Bien qu&#39;Amazon, en tant qu&#39;h&eacute;bergeur, facilite les transactions r&eacute;alis&eacute;es sur la place de march&eacute; (ou Marketplace) d&#39;Amazon, Amazon n&#39;est ni l&#39;acheteur ni le vendeur des produits des vendeurs tiers. Amazon fournit un lieu de rencontre dans lequel les acheteurs et vendeurs compl&egrave;tent et finalisent leurs transactions. En cons&eacute;quence, pour la vente de ces produits de vendeurs tiers, un contrat de vente est form&eacute; uniquement entre l&#39;acheteur et le vendeur tiers. Amazon n&#39;est pas partie &agrave; un tel contrat et n&#39;assume aucune responsabilit&eacute; ayant pour origine un tel contrat ou d&eacute;coulant de ce contrat de vente. Amazon n&#39;est ni l&#39;agent ni le mandataire des vendeurs tiers. Le vendeur tiers est responsable des ventes de produits et des r&eacute;clamations ou tout autre probl&egrave;me survenant ou li&eacute; au contrat de vente entre lui et l&#39;acheteur. Parce qu&#39;Amazon souhaite que l&#39;acheteur b&eacute;n&eacute;ficie d&#39;une exp&eacute;rience d&#39;achat la plus s&ucirc;re, Amazon offre la&nbsp;<a href=\"https://www.amazon.fr/gp/help/customer/display.html?nodeId=201889250\" target=\"_blank\">Garantie A &agrave; Z</a>&nbsp;en plus de tout droit contractuel ou autre.</p>\r\n\r\n<p><strong>13. NOTRE RESPONSABILITE</strong></p>\r\n\r\n<p>Nous ferons de notre mieux pour assurer la disponibilit&eacute; des Services Amazon et que les transmissions se feront sans erreurs. Toutefois, du fait de la nature d&#39;internet, ceci ne peut &ecirc;tre garanti. De plus, votre acc&egrave;s aux Services Amazon peut occasionnellement &ecirc;tre suspendu ou limit&eacute; pour permettre des r&eacute;parations, la maintenance, ou ajouter une nouvelle fonctionnalit&eacute; ou un nouveau service. Nous nous efforcerons de limiter la fr&eacute;quence et la dur&eacute;e de ces suspensions ou limitations.</p>\r\n\r\n<p>Dans le cadre de ses relations avec des professionnels, Amazon n&#39;est pas responsable (i) des pertes qui n&#39;ont pas &eacute;t&eacute; caus&eacute;es par une faute de notre part, ou (ii) des pertes commerciales (y compris les pertes de profit, b&eacute;n&eacute;fice, contrats, &eacute;conomies esp&eacute;r&eacute;es, donn&eacute;es, client&egrave;le ou d&eacute;penses superflues), ou (iii) toute perte indirecte ou cons&eacute;cutive qui n&#39;&eacute;taient pas pr&eacute;visibles par vous et nous quand vous avez commenc&eacute; &agrave; utiliser le Service Amazon.</p>\r\n\r\n<p>Nous ne serons pas tenus pour responsables des d&eacute;lais ou de votre impossibilit&eacute; &agrave; respecter vos obligations en application de ces conditions si le d&eacute;lai ou l&#39;impossibilit&eacute; r&eacute;sulte d&#39;une cause en dehors de notre contr&ocirc;le raisonnable. Cette condition n&#39;affecte pas votre droit l&eacute;gal de recevoir les produits envoy&eacute;s et les services fournis dans un temps raisonnable ou de recevoir un remboursement si les produits ou les services command&eacute;s ne peuvent &ecirc;tre d&eacute;livr&eacute;s dans un d&eacute;lai raisonnable en raison d&#39;une cause hors de notre contr&ocirc;le raisonnable.</p>\r\n\r\n<p>Les lois de certains pays ne permettent pas certaines des limitations &eacute;num&eacute;r&eacute;es ci-dessus. Si ces lois vous sont applicables, tout ou partie de ces limitations ne vous sont pas applicables, et vous pouvez disposer de droits suppl&eacute;mentaires.</p>\r\n\r\n<p>Rien dans ces conditions ne vise &agrave; limiter ou n&#39;exclure notre responsabilit&eacute; en cas de dol, ou en cas de d&eacute;c&egrave;s ou de pr&eacute;judice corporel caus&eacute;(e) par notre n&eacute;gligence ou une faute lourde.</p>\r\n\r\n<p><strong>14. DROIT APPLICABLE</strong></p>\r\n\r\n<p>Les pr&eacute;sentes Conditions d&#39;utilisation sont soumises au droit luxembourgeois (&agrave; l&#39;exception de ses dispositions concernant les conflits de loi), et l&#39;application de la Convention de Vienne sur les contrats de vente internationale de marchandises est express&eacute;ment exclue. Si vous &ecirc;tes un consommateur et que votre r&eacute;sidence habituelle est situ&eacute;e dans un pays de l&#39;Union europ&eacute;enne, vous b&eacute;n&eacute;ficiez &eacute;galement de droits vous prot&eacute;geant en vertu des dispositions obligatoires de la loi applicable dans votre pays de r&eacute;sidence. Vous, comme nous, acceptons de soumettre tous les litiges occasionn&eacute;s par la relation commerciale existant entre vous et nous &agrave; la comp&eacute;tence non exclusive des juridictions de la ville de Luxembourg, ce qui signifie que pour l&#39;application des pr&eacute;sentes Conditions d&#39;utilisation, vous pouvez intenter une action pour faire valoir vos droits de consommateur, au Luxembourg ou dans le pays de l&#39;Union europ&eacute;enne dans lequel vous r&eacute;sidez. La Commission europ&eacute;enne met &agrave; disposition une plateforme en ligne de r&eacute;solution des diff&eacute;rends &agrave; laquelle vous pouvez acc&eacute;der ici:&nbsp;<a href=\"https://ec.europa.eu/consumers/odr/\" target=\"_blank\">https://ec.europa.eu/consumers/odr/</a>. Si vous souhaitez attirer notre attention sur un sujet, merci de&nbsp;<a href=\"https://www.amazon.fr/contactez-nous\" target=\"_blank\">nous contacter</a>.</p>\r\n\r\n<p><strong>15. CONTROLES A L&#39;EXPORTATION</strong></p>\r\n\r\n<p>Vous acceptez de ne pas exporter, r&eacute;exporter ou transf&eacute;rer tous produits (y compris les logiciels ou autres produits num&eacute;riques) que vous avez achet&eacute;s sur le site internet vers un pays, &agrave; un individu, une soci&eacute;t&eacute;, une organisation ou une entit&eacute; pour lesquels une telle exportation est limit&eacute;e ou interdite par la loi. Par exemple, les sanctions &eacute;conomiques et les embargos impos&eacute;s par l&#39;Union europ&eacute;enne, les Nations Unies, les d&eacute;partements d&#39;&Eacute;tat, du Tr&eacute;sor ou du Commerce des &Eacute;tats-Unis et par d&#39;autres autorit&eacute;s gouvernementales (tels que les embargos impos&eacute;s &agrave; des pays sp&eacute;cifiques ou les sanctions &eacute;conomiques impos&eacute;es &agrave; des individus ou des soci&eacute;t&eacute;s pour des infractions de terrorisme ou de blanchiment d&#39;argent) peuvent vous interdire d&#39;emporter des produits dans d&#39;autres pays, m&ecirc;me pour votre usage personnel, et/ou d&#39;envoyer des produits (que ce soit physiquement par courrier ou num&eacute;riquement par courrier &eacute;lectronique ou par partage de fichiers) &agrave; des individus, soci&eacute;t&eacute;s, organisations ou entit&eacute;s particuliers. En outre, vous acceptez de ne pas acheter de produits ou de services sur le site internet si vous &ecirc;tes soumis &agrave; des mesures restrictives (sanctions).</p>\r\n\r\n<p><strong>16. MODIFICATION DU SERVICE OU DES CONDITIONS D&#39;UTILISATION</strong></p>\r\n\r\n<p>Nous nous r&eacute;servons le droit de faire des modifications sur tout Service Amazon, &agrave; nos proc&eacute;dures, &agrave; nos termes et conditions, y compris les pr&eacute;sentes Conditions d&#39;utilisation &agrave; tout moment. Vous &ecirc;tes soumis aux termes et conditions, proc&eacute;dures et Conditions d&#39;utilisation en vigueur au moment o&ugrave; vous utilisez le Service Amazon. Si une stipulation de ces Conditions d&#39;utilisation est r&eacute;put&eacute;e non valide, nulle, ou inapplicable, quelle qu&#39;en soit la raison, cette stipulation sera r&eacute;put&eacute;e divisible et n&#39;affectera pas la validit&eacute; et l&#39;opposabilit&eacute; des stipulations restantes.</p>\r\n\r\n<p><strong>17. RENONCIATION</strong></p>\r\n\r\n<p>Si vous enfreignez ces Conditions d&#39;utilisation et que nous ne prenons aucune action, nous serions toujours en droit d&#39;utiliser nos droits et voies de recours dans toutes les autres situations o&ugrave; vous violeriez ces Conditions d&#39;utilisation.</p>\r\n\r\n<p><strong>18. MINEURS</strong></p>\r\n\r\n<p>Nous ne vendons pas de produits aux mineurs. Nous vendons des produits pour enfants pour des achats par des adultes. Si vous avez moins de 18 ans, vous ne pouvez utiliser un Service Amazon que sous la surveillance d&#39;un parent ou d&#39;un tuteur. Les offres de produits contenant de l&#39;alcool sont destin&eacute;es &agrave; des personnes majeures. Vous devez avoir au moins 18 ans pour acheter de l&#39;alcool ou utiliser toute fonctionnalit&eacute; du site concernant de l&#39;alcool.</p>\r\n\r\n<p><strong>19. NOS COORDONNEES</strong></p>\r\n\r\n<p>Le site internet Amazon.fr appartient &agrave;, et sa maintenance est effectu&eacute;e par, Amazon Europe Core SARL. Des conditions sp&eacute;cifiques d&#39;utilisation et de vente pour d&#39;autres Services Amazon, par exemple le service Musique MP3 g&eacute;r&eacute; par Amazon Media EU SARL, peuvent &ecirc;tre trouv&eacute;es sur le site internet.</p>\r\n\r\n<p><strong>Pour Amazon Europe Core SARL :</strong></p>\r\n\r\n<p>Amazon Europe Core SARL,&nbsp;<em><a name=\"GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__GUID-3715B268-B6E8-40C6-9D00-B472E30E2B38\"></a>Soci&eacute;t&eacute; &agrave; responsabilit&eacute; limit&eacute;e</em>, 38 avenue John F. Kennedy, L-1855 Luxembourg<br />\r\nCapital social : 37 500 &euro;<br />\r\nEnregistr&eacute;e au Luxembourg<br />\r\nRCS Luxembourg N&deg; : B-101818<br />\r\nNum&eacute;ro de licence : 10040783<br />\r\nNum&eacute;ro de TVA intracommunautaire : LU 26375245</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Autres coordonn&eacute;es :</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Pour Amazon EU SARL :</strong><br />\r\nAmazon EU SARL,&nbsp;<em><a name=\"GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__GUID-A21D3467-9960-479A-94C2-E8EB970EFF04\"></a>Soci&eacute;t&eacute; &agrave; responsabilit&eacute; limit&eacute;e</em>, 38 avenue John F. Kennedy, L-1855 Luxembourg<br />\r\nCapital social : 125 000 &euro;<br />\r\nEnregistr&eacute;e au Luxembourg<br />\r\nRCS Luxembourg N&deg; : B-101818<br />\r\nNum&eacute;ro de licence : 134248<br />\r\nNum&eacute;ro de TVA intracommunautaire : LU 20260743</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Succursale en France :</strong><br />\r\nAmazon EU SARL, succursale fran&ccedil;aise, 67 Boulevard du General Leclerc, Clichy 92110, France<br />\r\nEnregistr&eacute;e en France<br />\r\nImmatriculation au RCS, num&eacute;ro : 487773327 R.C.S. Nanterre<br />\r\nNum&eacute;ro de TVA intracommunautaire : FR 12487773327</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Pour Amazon Services Europe SARL :</strong><br />\r\nAmazon Services Europe SARL,&nbsp;<em><a name=\"GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__GUID-58B4AB7B-FB39-4557-9326-2AFF0B15CEBB\"></a>Soci&eacute;t&eacute; &agrave; responsabilit&eacute; limit&eacute;e</em>, 38 avenue John F. Kennedy, L-1855 Luxembourg<br />\r\nCapital social : 37 500 &euro;<br />\r\nEnregistr&eacute;e au Luxembourg<br />\r\nRCS Luxembourg N&deg;: B-93815<br />\r\nNum&eacute;ro de licence : 132595<br />\r\nNum&eacute;ro de TVA intracommunautaire : LU 19647148</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Pour Amazon Media EU SARL :</strong><br />\r\nAmazon Media EU SARL,&nbsp;<em><a name=\"GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__GUID-1E0468CF-AD26-41BE-BF09-71055C04EA9D\"></a>Soci&eacute;t&eacute; &agrave; responsabilit&eacute; limit&eacute;e</em>, 38 avenue John F. Kennedy, L-1855 Luxembourg<br />\r\nCapital social : 37 500 &euro;<br />\r\nEnregistr&eacute;e au Luxembourg<br />\r\nRCS Luxembourg N&deg;: B-112767<br />\r\nNum&eacute;ro de licence : 136312<br />\r\nNum&eacute;ro de TVA intracommunautaire : LU 20944528</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a name=\"GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__SECTION_382998C5E32C4D89A1015C6188A197E3\"></a></p>\r\n\r\n<p><strong>20. PROCEDURE ET FORMULAIRE DE NOTIFICATION DE VIOLATION DE DROITS</strong></p>\r\n\r\n<p>Si vous pensez que vos droits ont &eacute;t&eacute; viol&eacute;s et que vous &ecirc;tes &eacute;ligible aux Registre des Marques, veuillez vous inscrire au service et soumettre votre plainte via le Registre des Marques. Sinon, merci d&#39;utiliser notre&nbsp;<a href=\"https://www.amazon.fr/report/infringement\" target=\"_blank\">Formulaire de Notification</a>. Ce formulaire peut &ecirc;tre utilis&eacute; pour nous soumettre toute sorte de plainte de propri&eacute;t&eacute; intellectuelle y compris, sans toutefois s&#39;y limiter, les plaintes li&eacute;es aux droits d&#39;auteur, de marques, de dessins et mod&egrave;les et de brevets. D&egrave;s r&eacute;ception d&#39;un Formulaire de Notification, nous pouvons prendre certaines mesures, notamment la suppression d&#39;informations ou d&#39;un article et mettre fin aux infractions r&eacute;p&eacute;t&eacute;es dans des circonstances appropri&eacute;es. Ces mesures seront toutefois prises sous toutes r&eacute;serves, sans reconnaissance de notre part d&#39;une responsabilit&eacute; quelconque et sans pr&eacute;judice de l&#39;exercice de nos droits, actions et moyens de d&eacute;fense. Ceci comprend &eacute;galement le transfert de ce formulaire aux parties concern&eacute;es par l&#39;infraction all&eacute;gu&eacute;e. Vous acceptez d&#39;indemniser Amazon contre toute r&eacute;clamation de tiers contre Amazon, d&eacute;coulant de, ou dans le cadre de cette notification.</p>\r\n\r\n<p><strong>Note concernant les offres des vendeurs tiers</strong>&nbsp;: merci de garder &agrave; l&#39;esprit que les offres des vendeurs tiers sont seulement h&eacute;berg&eacute;es sur Amazon.fr et sont publi&eacute;es uniquement sous la direction des vendeurs tiers qui peuvent &ecirc;tre contact&eacute;s par leur page &laquo; Informations sur le vendeur &raquo;, accessible depuis toutes leurs offres.</p>\r\n\r\n<p><strong>D&eacute;finition d&#39;ASIN et de ISBN-10 :</strong>&nbsp;&laquo; ASIN &raquo; signifie Amazon Standard Item (or Identification) Number (Num&eacute;ro d&#39;identification ou d&#39;article standard d&#39;Amazon) et est un identifiant compos&eacute; de dix (10) caract&egrave;res. Ce num&eacute;ro figure dans toute fiche descriptive d&#39;un produit sous le titre &laquo; D&eacute;tails sur le produit &raquo;. &laquo; ISBN-10 &raquo; signifie International Standard Book Number (Num&eacute;ro de livre standard international) et est un identifiant compos&eacute; de dix (10) chiffres figurant sur certaines fiches descriptives de livres dans la cat&eacute;gorie &laquo; D&eacute;tails sur le produit &raquo;.</p>\r\n\r\n<p><strong>Avertissement important :</strong>&nbsp;fournir des informations inexactes, trompeuses ou fausses dans un Formulaire de Notification adress&eacute; &agrave; Amazon engage sa responsabilit&eacute; civile et/ou p&eacute;nale. En cas de doute, veuillez contacter un conseiller juridique.</p>\r\n\r\n<p><strong>Formulaire de notification :</strong>&nbsp;Si vous souhaitez nous notifier la violation de vos droits en relation avec une offre de produit disponible sur le site www.amazon.fr, nous vous invitons &agrave; remplir le Formulaire de notification disponible en cliquant sur le lien ci-dessous :</p>\r\n\r\n<p><a href=\"https://www.amazon.fr/report/infringement\" target=\"_blank\">Formulaire de Notification</a></p>\r\n\r\n<p><a name=\"GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__SECTION_31154AB6CD584E93AEE78B0FC08428FF\"></a></p>\r\n\r\n<p><strong>21. PROCEDURE ET FORMULAIRE DE NOTIFICATION EN VUE DE NOTIFIER UN CONTENU INJURIEUX OU DIFFAMATOIRE</strong></p>\r\n\r\n<p>Parce que des millions de produits sont list&eacute;s et que des milliers de commentaires sont h&eacute;berg&eacute;s sur Amazon.fr, il ne nous est pas possible de conna&icirc;tre le contenu de tous les produits offerts &agrave; la vente, ou de tous les commentaires ou critiques qui sont affich&eacute;s. En cons&eacute;quence, nous op&eacute;rons sous un syst&egrave;me de &laquo; notice and action &raquo; soit &laquo; notifier et action &raquo;. Si vous pensez qu&#39;un contenu ou une annonce de vente sur le site internet contient un message diffamatoire, merci de nous le notifier imm&eacute;diatement en compl&eacute;tant la Proc&eacute;dure et le Formulaire de notification en vue de notifier un contenu injurieux ou diffamatoire. Suivez les instructions dans le formulaire de la Notification.</p>\r\n\r\n<p><strong>Avertissement important :</strong>&nbsp;fournir des informations inexactes, trompeuses ou fausses dans la Notification adress&eacute;e &agrave; Amazon peut engager votre responsabilit&eacute; civile et/ou p&eacute;nale.</p>\r\n\r\n<p><strong><u><a name=\"GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__GUID-9260D86E-F9F9-4D48-B3BD-0838E3EFCC14\"></a>La proc&eacute;dure de notification</u></strong>&nbsp;: Merci de nous envoyer le formulaire ci-dessous, d&ucirc;ment rempli et sign&eacute;, &agrave; l&#39;adresse suivante : D&eacute;partement juridique, NTD, Amazon EU S.&agrave; r.l., 38 avenue John F. Kennedy, L-1855 Luxembourg, Grand-Duch&eacute; du Luxembourg.</p>\r\n\r\n<p><u><a name=\"GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__GUID-BD14FCBB-8253-4F4B-B180-3381DE85EE0F\"></a><strong>Formulaire de notification :</strong></u></p>\r\n\r\n<table cellpadding=\"4\" cellspacing=\"0\" id=\"GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__TABLE_E468892CDB0748FB8E888FDB987D0996\" summary=\"\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>D E C L A R A T I O N</strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong><u><a name=\"GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__GUID-FB7FAB06-96D9-4C57-9624-3D907A91E707\"></a>Je soussign&eacute;,</u></strong><br />\r\n			Nom et pr&eacute;nom : ____________________________________________________________________________<br />\r\n			Nom Soci&eacute;t&eacute; : ______________________________________________________________________________<br />\r\n			Adresse et Adresse e-mail : ___________________________________________________________________<br />\r\n			Num&eacute;ro de t&eacute;l&eacute;phone (SUR LEQUEL VOUS POUVEZ ETRE JOINT DURANT LA JOURNEE) : ___________________________</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong><u><a name=\"GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__GUID-D18CAECA-6FA1-4DE3-B2D1-D56023615947\"></a>D&eacute;clare sur l&#39;honneur ce qui suit :</u></strong><br />\r\n			1. Je fais r&eacute;f&eacute;rence au site www.amazon.fr. Ce dernier affiche ou contribue &agrave; l&#39;affichage de commentaires injurieux ou diffamatoires &agrave; mon sujet.<br />\r\n			<br />\r\n			2. Les propos injurieux ou diffamatoires (RAYEZ LE PARAGRAPHE INUTILE) :<br />\r\n			(a) apparaissent dans un livre vendu sur le site www.amazon.fr :</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<ul>\r\n				<li><strong>Titre du livre et auteur :</strong>______________________________________________________________</li>\r\n				<li><strong>Num&eacute;ro ASIN (1) ou ISBN-13 (2) du livre :</strong>&nbsp;____________________________________________________</li>\r\n				<li><strong>Num&eacute;ro(s) de la (des) page(s) qui comporterai(en)t des propos diffamatoires :</strong>&nbsp;__________________________________________________________________________________</li>\r\n			</ul>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>(b) apparaissent sur le site www.amazon.fr &agrave; l&#39;adresse suivante: _______________________ (ADRESSE EXACTE DE LA PAGE WEB)<br />\r\n			(b.1.) Les propos que je consid&egrave;re comme&nbsp;<strong><u><a name=\"GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__GUID-F2894A6C-A105-4119-99E8-7272CD871936\"></a>INJURIEUX</u></strong>&nbsp;sont les suivants (VEUILLEZ REPRODUIRE LES PROPOS EXACTS DONT VOUS VOUS PLAIGNEZ) :<br />\r\n			_________________________________________________________________________________________<br />\r\n			(b.2.) Ces propos sont injurieux car (VEUILLEZ EXPLIQUER LA RAISON POUR LAQUELLE VOUS CONSIDEREZ CES PROPOS COMME INJURIEUX) :<br />\r\n			_________________________________________________________________________________________<br />\r\n			(b.3.) Les propos que je consid&egrave;re comme&nbsp;<strong><u><a name=\"GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__GUID-F98B6C57-A03E-41C2-8166-C74F39AEBBCF\"></a>DIFFAMATOIRES</u></strong>&nbsp;sont les suivants (VEUILLEZ REPRODUIRE LES PROPOS EXACTS DONT VOUS VOUS PLAIGNEZ) :<br />\r\n			_____________________________________________________________________________________<br />\r\n			(b.4.) Ces propos sont diffamatoires car (VEUILLEZ EXPLIQUER LA RAISON POUR LAQUELLE VOUS CONSIDEREZ CES PROPOS COMME DIFFAMATOIRES) :<br />\r\n			_____________________________________________________________________________________<br />\r\n			<br />\r\n			3. Je reconnais que la pr&eacute;sente d&eacute;claration peut &ecirc;tre produite au cours de toute proc&eacute;dure judiciaire d&eacute;coulant des, ou dans le cadre des, propos injurieux et diffamatoires contre lesquels je porte plainte.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>D&eacute;claration de v&eacute;rit&eacute;</strong><br />\r\n			Je d&eacute;clare que les faits d&eacute;clar&eacute;s ci-dessus sont exacts.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>Signature, Lieu, Date:</strong>&nbsp;_____________________________ __________________________________</p>\r\n\r\n			<p>(1) &laquo;&nbsp;<strong>ASIN</strong>&nbsp;&raquo; signifie &laquo;&nbsp;<strong>A</strong>mazon&nbsp;<strong>S</strong>tandard&nbsp;<strong>I</strong>tem (or&nbsp;<strong>I</strong>dentification)&nbsp;<strong>N</strong>umber &raquo; (Num&eacute;ro d&#39;identification ou d&#39;article standard d&#39;Amazon) et repr&eacute;sente un identifiant propre &agrave; Amazon.fr compos&eacute; de dix (10) caract&egrave;res. Ce num&eacute;ro figure dans toute fiche descriptive d&#39;un produit sous le titre &laquo; D&eacute;tails sur le produit &raquo;.</p>\r\n\r\n			<p>(2) &laquo;&nbsp;<strong>ISBN-10</strong>&nbsp;&raquo; signifie &laquo;&nbsp;<strong>I</strong>nternational&nbsp;<strong>S</strong>tandard&nbsp;<strong>B</strong>ook&nbsp;<strong>N</strong>umber &raquo; (Num&eacute;ro de livre standard international) et est un identifiant compos&eacute; de dix (10) chiffres figurant sur certaines fiches descriptives de livres dans la cat&eacute;gorie &laquo; D&eacute;tails sur le produit &raquo;.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><a name=\"GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__SECTION_D2D21EE9603C485F95E32464E2116341\"></a></p>\r\n\r\n<p><strong>CONDITIONS ADDITIONNELLES DES LOGICIELS AMAZON</strong></p>\r\n\r\n<p><strong>1. Utilisation des Logiciels Amazon.</strong></p>\r\n\r\n<p>Vous pouvez utiliser les Logiciels Amazon aux seules fins de vous permettre d&#39;utiliser et de profiter des Services Amazon tels que fournis par Amazon, et tels qu&#39;autoris&eacute; par les Conditions d&#39;utilisation, des pr&eacute;sentes Conditions Logiciel Amazon, et des Conditions des Services. Il est interdit d&#39;int&eacute;grer tout ou partie d&#39;un Logiciel Amazon dans vos propres programmes, de compiler tout ou partie d&#39;un Logiciel Amazon avec vos propres programmes, de transf&eacute;rer tout ou partie d&#39;un Logiciel Amazon pour l&#39;utiliser avec un autre service ou de vendre, louer, pr&ecirc;ter, distribuer ou sous-licencier tout ou partie d&#39;un Logiciel Amazon ou transf&eacute;rer un quelconque droit sur tout ou partie de ce Logiciel Amazon. Vous ne pouvez utiliser les Logiciels Amazon &agrave; des fins ill&eacute;gales. Nous nous r&eacute;servons le droit de mettre fin &agrave; toute utilisation d&#39;un Logiciel Amazon et de vous retirer les droits d&#39;utilisation d&#39;un Logiciel Amazon &agrave; tout moment. Si vous ne respectez pas les pr&eacute;sentes Conditions Logiciel Amazon, les Conditions d&#39;utilisation et toutes Conditions des Services Amazon, les droits d&#39;utilisation d&#39;un Logiciel Amazon qui vous sont accord&eacute;s vous seront automatiquement retir&eacute;s sans notification pr&eacute;alable. Des conditions suppl&eacute;mentaires d&eacute;finies par des tiers et contenues ou distribu&eacute;es avec certains Logiciels Amazon et sp&eacute;cifiquement identifi&eacute;es dans la documentation connexe peuvent &ecirc;tre applicables &agrave; ces Logiciels Amazon (ou logiciels int&eacute;gr&eacute;s dans un Logiciel Amazon) et pr&eacute;vaudront en cas de conflit avec les pr&eacute;sentes Conditions d&#39;utilisation. Tout logiciel utilis&eacute; dans un quelconque Service Amazon est la propri&eacute;t&eacute; d&#39;Amazon ou de ses fournisseurs de logiciels et est prot&eacute;g&eacute; par les lois luxembourgeoises et internationales sur la protection des programmes d&#39;ordinateur et du copyright.</p>\r\n\r\n<p><strong>2. Utilisation de services tiers.</strong></p>\r\n\r\n<p>Lorsque vous utilisez un Logiciel Amazon, vous pouvez &eacute;galement &ecirc;tre amen&eacute; &agrave; utiliser les services d&#39;un ou plusieurs tiers, tels que ceux d&#39;un op&eacute;rateur mobile ou d&#39;un fournisseur de plateforme mobile. L&#39;utilisation de ces services tiers peut &ecirc;tre soumise aux politiques, conditions d&#39;utilisation et &agrave; des frais de ces tiers.</p>\r\n\r\n<p><strong>3. Interdiction d&#39;ing&eacute;nierie inverse.</strong></p>\r\n\r\n<p>Vous ne pouvez et vous n&#39;encouragerez pas, ni n&#39;assisterez ou n&#39;autoriserez qui que ce soit &agrave; (i) copier, modifier, alt&eacute;rer d&#39;une autre fa&ccedil;on un Logiciel Amazon en tout ou partie, cr&eacute;er des &oelig;uvres d&eacute;riv&eacute;es &agrave; partir ou du Logiciel Amazon ou (ii) effectuer de l&#39;ing&eacute;nierie inverse, d&eacute;compiler ou d&eacute;sassembler un Logiciel Amazon en tout ou partie, sauf dans les limites autoris&eacute;es par la loi.</p>\r\n\r\n<p><strong>4. Mises &agrave; jour.</strong></p>\r\n\r\n<p>Afin de garder les Logiciels Amazon &agrave; jour, nous pouvons offrir des mises &agrave; jour automatiques ou manuelles &agrave; tout moment et sans notification pr&eacute;alable.</p>\r\n\r\n<p><a name=\"GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__SECTION_2255DD8797EA46CBA489884A58EDA67F\"></a></p>\r\n\r\n<h2><span style=\"font-size:24px\"><strong>CONDITIONS GENERALES DE VENTE</strong></span></h2>\r\n\r\n<p>Bienvenue sur le site Amazon.fr.</p>\r\n\r\n<p>Amazon EU SARL et/ou ses soci&eacute;t&eacute;s affili&eacute;es&nbsp;<strong>(&laquo; Amazon &raquo;)</strong>&nbsp;vous fournissent des fonctionnalit&eacute;s de site internet et d&#39;autres produits et services quand vous visitez ou achetez sur le site internet Amazon.fr&nbsp;<strong>(le &laquo; Site Internet &raquo;)</strong>, utilisez des produits et services d&#39;Amazon, utilisez des applications Amazon pour mobile, ou utilisez des logiciels fournis par Amazon dans le cadre de tout ce qui pr&eacute;c&egrave;de (ensemble ci-apr&egrave;s, les &laquo; Services Amazon &raquo;). Amazon fournit les Services Amazon selon les conditions d&eacute;finies dans cette page.</p>\r\n\r\n<p>Ces Conditions G&eacute;n&eacute;rales de Vente r&eacute;gissent la vente de produits entre Amazon EU SARL et vous. Pour les conditions relatives &agrave; la vente entre vous et des vendeurs tiers sur le Site Internet Amazon.fr, veuillez prendre connaissance du&nbsp;<a href=\"https://www.amazon.fr/gp/help/customer/display.html?nodeId=10398651\" target=\"_blank\">Contrat Amazon Services Europe Business Solutions</a>. Nous offrons un large panel de Services Amazon et il se peut que des conditions additionnelles s&#39;appliquent. Par ailleurs, lorsque vous utilisez un Service Amazon (par exemple votre Profil, les Ch&egrave;ques-Cadeaux, les applications pour mobile ou le Gestionnaire de communication), vous &ecirc;tes &eacute;galement soumis aux termes, lignes directrices et conditions applicables &agrave; ce Service Amazon (les &laquo; Conditions du Service &raquo;). Si ces Conditions G&eacute;n&eacute;rales de Ventes entrent en contradiction avec les Conditions du Service, les Conditions du Service pr&eacute;vaudront.</p>\r\n\r\n<p>Merci de lire ces conditions attentivement avant d&#39;effectuer une commande avec Amazon EU SARL. En commandant avec Amazon EU SARL, vous nous notifiez votre accord d&#39;&ecirc;tre soumis aux pr&eacute;sentes conditions.</p>\r\n\r\n<p><strong>1. COMMENT COMMANDER</strong></p>\r\n\r\n<p>Si vous souhaitez acheter un ou plusieurs produit(s) figurant sur le Site Internet, vous devez s&eacute;lectionner chaque produit que vous souhaitez acheter et l&#39;ajouter &agrave; votre panier. Lorsque vous avez s&eacute;lectionn&eacute; tous les produits que vous voulez acheter, vous pouvez confirmer le contenu de votre panier et passer la commande.</p>\r\n\r\n<p>A ce stade, vous serez redirig&eacute; vers une page r&eacute;capitulant les d&eacute;tails des produits que vous avez s&eacute;lectionn&eacute;s, leur prix et les options de livraisons (avec les frais de livraison concern&eacute;s). Vous devrez alors choisir les options de livraison ainsi que les m&eacute;thodes d&#39;envoi et de paiement qui vous conviennent le mieux.</p>\r\n\r\n<p>En haut de cette page, se situe le bouton d&#39;achat. Vous devez cliquer sur ce bouton pour confirmer et passer votre commande.</p>\r\n\r\n<p>Apr&egrave;s avoir pass&eacute; votre commande, nous vous adressons un message de confirmation. Si vous utilisez certains Services Amazon (tels que les Applications Amazon pour mobile), le message de confirmation pourra &ecirc;tre envoy&eacute; via le Gestionnaire de communication sur le site. Nous vous informons de l&#39;envoi de vos articles. Vous avez n&eacute;anmoins la possibilit&eacute; de modifier votre commande jusqu&#39;&agrave; la date d&#39;envoi de vos articles.</p>\r\n\r\n<p>Veuillez noter que nous vendons des produits seulement en quantit&eacute;s correspondant aux besoins moyens habituels d&#39;un foyer. Ceci s&#39;applique aussi bien au nombre de produits command&eacute;s dans une seule commande qu&#39;au nombre de commandes individuelles respectant la quantit&eacute; habituelle d&#39;un foyer normal pass&eacute;es pour le m&ecirc;me produit. Amazon ne vend pas aux biblioth&egrave;ques de pr&ecirc;t.</p>\r\n\r\n<p>Vous acceptez d&#39;obtenir les factures de vos achats par voie &eacute;lectronique. Les factures &eacute;lectroniques seront mises &agrave; votre disposition au format .pdf dans l&#39;espace&nbsp;<a href=\"https://www.amazon.fr/gp/css/homepage.html\" target=\"_blank\">Votre compte</a>&nbsp;sur notre Site Internet. Pour chaque livraison, nous vous indiquerons dans le message de confirmation d&#39;envoi si une facture &eacute;lectronique est disponible. Pour plus d&#39;informations sur les factures &eacute;lectroniques et pour savoir comment recevoir une copie papier, merci de consulter nos&nbsp;<a href=\"https://www.amazon.fr/gp/help/customer/display.html/ref=hp_gw_iufourdc/?nodeId=201268160\" target=\"_blank\">pages d&#39;Aide</a>.</p>\r\n\r\n<p><strong>2. DROIT DE RETENTION</strong></p>\r\n\r\n<p>Les produits livr&eacute;s restent la propri&eacute;t&eacute; d&#39;Amazon jusqu&#39;&agrave; leur remise au transporteur.</p>\r\n\r\n<p><strong>3. DROIT DE RETRACTATION DE 14 JOURS, EXCEPTIONS AU DROIT DE RETRACTATION, NOTRE POLITIQUE DE RETOURS SOUS 30 JOURS</strong></p>\r\n\r\n<p><strong>DROIT LEGAL DE RETRACTATION</strong></p>\r\n\r\n<p>A moins que l&#39;une des exceptions list&eacute;es ci-dessous ne soit applicable, vous pouvez vous r&eacute;tracter de votre commande sans donner de motif dans un d&eacute;lai de 14 jours courant &agrave; compter de la date &agrave; laquelle vous-m&ecirc;me, ou un tiers d&eacute;sign&eacute; par vous (autre que le transporteur), a pris physiquement possession des biens achet&eacute;s (ou du dernier bien, lot ou pi&egrave;ce si le contrat porte sur la livraison de plusieurs biens ou plusieurs lots ou pi&egrave;ces livr&eacute;s s&eacute;par&eacute;ment) ou de la date &agrave; laquelle vous avez conclu le contrat pour les prestations de services.</p>\r\n\r\n<p>Vous devez nous notifier (Amazon EU Sarl, 38 avenue John F. Kennedy, L-1855 Luxembourg) votre d&eacute;cision de vous r&eacute;tracter de votre commande. Vous pouvez soumettre votre demande en ligne conform&eacute;ment aux instructions et formulaires disponibles aupr&egrave;s de notre centre de retours en ligne, en utilisant ce&nbsp;<a href=\"https://www.amazon.fr/formulaire-retractation\" target=\"_self\">formulaire</a>, ou par courrier. Dans le cas o&ugrave; vous utiliseriez le&nbsp;<a href=\"https://www.amazon.fr/gp/css/returns/homepage.html/\" target=\"_self\">Centre de retours en ligne</a>, nous vous enverrons un accus&eacute; de r&eacute;ception.</p>\r\n\r\n<p>Pour respecter la date limite de r&eacute;tractation, il vous suffit d&#39;envoyer votre demande de r&eacute;tractation avant que le d&eacute;lai de 14 jours n&#39;expire et de renvoyer votre produit par le biais de notre centre de retours en ligne.</p>\r\n\r\n<p>Pour toute information compl&eacute;mentaire sur l&#39;&eacute;tendue, le contenu et les instructions quant &agrave; l&#39;exercice de votre droit de r&eacute;tractation, merci de contacter notre&nbsp;<a href=\"https://www.amazon.fr/contact-us\" target=\"_blank\">Service Client</a>.</p>\r\n\r\n<p>EFFETS DE LA RETRACTATION</p>\r\n\r\n<p>Nous vous rembourserons tous les paiements que nous avons re&ccedil;us de votre part, y compris les frais de livraison standards (c&#39;est-&agrave;-dire correspondant &agrave; la livraison la moins on&eacute;reuse que nous proposons) au plus tard 14 jours &agrave; compter de la r&eacute;ception de votre demande de r&eacute;tractation. Nous utiliserons le m&ecirc;me moyen de paiement que celui que vous avez utilis&eacute; lors de votre commande initiale, sauf si vous convenez express&eacute;ment d&#39;un moyen diff&eacute;rent. En tout &eacute;tat de cause, ce remboursement n&#39;occasionnera pas de frais suppl&eacute;mentaires pour vous. Nous pouvons diff&eacute;rer le remboursement jusqu&#39;&agrave; ce que nous ayons re&ccedil;u le(s) produit(s) ou jusqu&#39;&agrave; ce que vous ayez fourni une preuve d&#39;exp&eacute;dition du (des) produit(s), la date retenue &eacute;tant celle du premier de ces faits. Si le remboursement intervient apr&egrave;s la date limite mentionn&eacute;e ci-dessus, le montant qui vous est d&ucirc; sera augment&eacute; de plein droit.</p>\r\n\r\n<p>Veuillez noter que vous devez renvoyer le(s) produit(s) en suivant les instructions disponibles sur notre centre de retours en ligne au plus tard 14 jours &agrave; compter de la date &agrave; laquelle vous nous avez notifi&eacute; votre d&eacute;cision de r&eacute;tractation.</p>\r\n\r\n<p>Vous devez prendre &agrave; votre charge les frais directs de renvoi du (des) produit(s). Vous serez responsable de la d&eacute;pr&eacute;ciation de la valeur du(s) produit(s) r&eacute;sultant de manipulations (autres que celles n&eacute;cessaires pour &eacute;tablir la nature, les caract&eacute;ristiques et le bon fonctionnement de ce(s) produit(s))</p>\r\n\r\n<p>EXCEPTIONS AU DROIT DE RETRACTATION</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Le droit de r&eacute;tractation ne s&#39;applique pas &agrave; :</li>\r\n	<li>la livraison de produits qui ne peuvent pas &ecirc;tre retourn&eacute;s pour des raisons d&#39;hygi&egrave;ne ou de protection de la sant&eacute;, si vous les avez descell&eacute;s ou bien, qui ont, apr&egrave;s avoir &eacute;t&eacute; livr&eacute;s, &eacute;t&eacute; m&eacute;lang&eacute;s de mani&egrave;re indissociables avec d&#39;autres articles ;</li>\r\n	<li>la livraison d&#39;enregistrements audio ou vid&eacute;os ou de logiciels informatiques lorsque vous les avez descell&eacute;s apr&egrave;s la livraison ;</li>\r\n	<li>la livraison de produits qui ont &eacute;t&eacute; confectionn&eacute;s selon vos sp&eacute;cifications ou nettement personnalis&eacute;s ;</li>\r\n	<li>la fourniture de produits susceptibles de se d&eacute;t&eacute;riorer ou de se p&eacute;rimer rapidement ;</li>\r\n	<li>la fourniture de services pleinement ex&eacute;cut&eacute;s par Amazon pour lesquels vous avez accept&eacute; au moment de la passation de votre commande que nous commencions leur ex&eacute;cution, et renonc&eacute; &agrave; votre droit de r&eacute;tractation ;</li>\r\n	<li>la fourniture de journaux, p&eacute;riodiques ou magazines &agrave; l&#39;exception des contrats d&#39;abonnement &agrave; ces publications ; et</li>\r\n	<li>la fourniture de boissons alcoolis&eacute;es dont la valeur convenue &agrave; la conclusion du contrat d&eacute;pend de fluctuation sur le march&eacute; &eacute;chappant &agrave; notre contr&ocirc;le.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NOTRE POLITIQUE DE RETOURS SOUS 30 JOURS</p>\r\n\r\n<p>Sans pr&eacute;judice des droits qui vous sont reconnus par la loi, Amazon vous propose la politique de retours suivante :</p>\r\n\r\n<p>Tous les produits en provenance des sites d&#39;Amazon peuvent &ecirc;tre retourn&eacute;s dans les 30 jours suivant la r&eacute;ception des produits par Amazon si les produits sont complets et dans un &eacute;tat neuf et intact. S&#39;agissant des supports de donn&eacute;es emball&eacute;s sous plastique ou scell&eacute;s (par exemple, les CDs, cassettes audio, vid&eacute;os VHS, DVD, jeux PC, jeux vid&eacute;o et logiciels, articles de la boutique Hygi&egrave;ne, Beaut&eacute; et Sant&eacute; Animale), nous ne les reprendrons que s&#39;ils sont toujours dans leur emballage plastique ou qu&#39;ils n&#39;ont pas &eacute;t&eacute; descell&eacute;s. Les produits doivent &ecirc;tre retourn&eacute;s par le biais de notre&nbsp;<a href=\"https://www.amazon.fr/gp/css/returns/homepage.html/\" target=\"_self\">Centre de retours en ligne</a>. Cette politique de retours n&#39;est pas applicable aux contenus num&eacute;riques ou logiciels informatiques qui ne sont pas fournis sur un support mat&eacute;riel (ex : sur un CD ou un DVD).</p>\r\n\r\n<p>Si vous renvoyez un (des) produit(s) conform&eacute;ment &agrave; notre politique de retour, nous vous rembourserons le prix que vous avez pay&eacute; mais pas les frais de livraison de votre achat initial. De m&ecirc;me, les risques li&eacute;s au transport et les frais de livraison de retour seront &agrave; votre charge. Les frais de livraison et de retour ne sont rembours&eacute;s que pour les v&ecirc;tements et les chaussures achet&eacute;s sur l&#39;un de nos sites. Cette politique de retours n&#39;affecte pas vos droits reconnus par la loi, y compris votre droit l&eacute;gal de r&eacute;tractation d&eacute;crit ci-dessus.</p>\r\n\r\n<p>Consultez notre&nbsp;<a href=\"https://www.amazon.fr/gp/help/customer/display.html/ref=hp_left_ac?nodeId=11087641\" target=\"_blank\">politique de retours</a>&nbsp;pour plus d&#39;informations.</p>\r\n\r\n<p>Vous b&eacute;n&eacute;ficiez par ailleurs des garanties l&eacute;gales de conformit&eacute; et des vices cach&eacute;s mentionn&eacute;es &agrave; l&#39;article 7 des pr&eacute;sentes Conditions G&eacute;n&eacute;rales de Vente (&laquo; Notre responsabilit&eacute; Garanties &raquo;).</p>\r\n\r\n<p><strong>4. PRIX ET DISPONIBILITE</strong></p>\r\n\r\n<p>Tous les prix sont toutes taxes fran&ccedil;aises comprises (TVA fran&ccedil;aise et autres taxes applicables) sauf indication contraire.</p>\r\n\r\n<p>Nous affichons la disponibilit&eacute; des produits que nous vendons sur le Site Internet sur chaque fiche produit. Nous ne pouvons apporter plus de pr&eacute;cision concernant la disponibilit&eacute; des produits que ce qui est indiqu&eacute; sur ladite page ou ailleurs sur le Site Internet. Lors du traitement de votre commande, nous vous informerons d&egrave;s que possible par courrier &eacute;lectronique en utilisant l&#39;adresse associ&eacute;e &agrave; votre abonnement ou via le Gestionnaire de communication dans Votre compte, si des produits que vous avez command&eacute;s s&#39;av&egrave;rent &ecirc;tre indisponibles, et nous ne vous facturerons pas ces produits.</p>\r\n\r\n<p>En d&eacute;pit de tous nos efforts, un petit nombre des produits pr&eacute;sents dans notre catalogue peuvent afficher une erreur sur le prix. Nous v&eacute;rifierons le prix au moment du traitement de votre commande et avant tout paiement. S&#39;il s&#39;av&eacute;rait que nous avons fait une erreur sur l&#39;affichage du prix, et que le prix r&eacute;el est sup&eacute;rieur au prix affich&eacute; sur le Site Internet, nous pouvons vous contacter pour vous demander si vous souhaitez acheter le produit &agrave; son prix r&eacute;el ou si vous pr&eacute;f&eacute;rez annuler votre commande. Si le prix r&eacute;el est inf&eacute;rieur au prix affich&eacute;, nous vous facturerons le montant le plus bas et nous vous enverrons le produit.</p>\r\n\r\n<p><strong>5. DOUANES</strong></p>\r\n\r\n<p>Lorsque vous commandez des produits sur Amazon pour &ecirc;tre livr&eacute;s en dehors de l&#39;Union Europ&eacute;enne, vous pouvez &ecirc;tre soumis &agrave; des obligations et des taxes sur l&#39;importation, qui sont per&ccedil;ues lorsque le colis arrive &agrave; destination. Tout frais suppl&eacute;mentaire de d&eacute;douanement sera &agrave; votre charge ; nous n&#39;avons aucun contr&ocirc;le sur ces frais. Les politiques douani&egrave;res varient fortement d&#39;un pays &agrave; l&#39;autre, vous devez donc contacter le service local des douanes pour plus d&#39;informations. Par ailleurs, veuillez noter que lorsque vous passez commande sur Amazon, vous &ecirc;tes consid&eacute;r&eacute; comme l&#39;importateur officiel et devez respecter toutes les lois et r&egrave;glements du pays dans lequel vous recevez les produits. La protection de votre vie priv&eacute;e est importante pour nous et nous attirons l&#39;attention de nos clients internationaux sur le fait que les livraisons transfrontali&egrave;res sont susceptibles d&#39;&ecirc;tre ouvertes et inspect&eacute;es par les autorit&eacute;s douani&egrave;res. Pour plus d&#39;informations, consultez la page&nbsp;<a href=\"https://www.amazon.fr/gp/help/customer/display.html?nodeId=548586\" target=\"_self\">Informations douani&egrave;res</a>.</p>\r\n\r\n<p><strong>6. COMMANDE 1-CLICK</strong></p>\r\n\r\n<p>La commande en 1-Click est la fa&ccedil;on la plus rapide et la plus simple pour commander des produits en toute s&eacute;curit&eacute; sur le site. Si vous utilisez un ordinateur public ou partag&eacute;, nous vous recommandons fortement de&nbsp;<a href=\"https://www.amazon.fr/gp/help/customer/display.html?nodeId=201889370\" target=\"_blank\">d&eacute;sactiver la commande 1-Click</a>&nbsp;quand vous n&#39;&ecirc;tes pas devant l&#39;ordinateur.</p>\r\n\r\n<p><strong>7. NOTRE RESPONSABILITE - GARANTIES</strong></p>\r\n\r\n<p>Vous b&eacute;n&eacute;ficiez de la garantie l&eacute;gale de conformit&eacute; dans les conditions des articles L.217-4 et suivants du code de la consommation et de la garantie des vices cach&eacute;s dans les conditions pr&eacute;vues aux articles 1641 et suivants du code civil. Consultez notre&nbsp;<a href=\"https://www.amazon.fr/gp/help/customer/display.html?nodeId=201310960\" target=\"_self\">page d&#39;aide sur ces garanties</a>&nbsp;pour plus d&#39;informations.</p>\r\n\r\n<table cellpadding=\"4\" cellspacing=\"0\" id=\"GUID-602FA6E8-D724-4317-89F6-E78834F9BA58__TABLE_86A165E5B5A3464D8FE4792BD7761CBB\" summary=\"\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Lorsque vous agissez en garantie l&eacute;gale de conformit&eacute;,</p>\r\n\r\n			<ul>\r\n				<li>vous b&eacute;n&eacute;ficiez d&#39;un d&eacute;lai de deux ans &agrave; compter de la d&eacute;livrance du bien pour agir ;</li>\r\n				<li>vous pouvez choisir entre la r&eacute;paration ou le remplacement du bien, sous r&eacute;serve des conditions de co&ucirc;t pr&eacute;vues par l&#39;article L.217-9 du code de la consommation ;</li>\r\n				<li>pour tout produit achet&eacute; jusqu&#39;au 17 mars 2016 &agrave; 23:59:59, vous &ecirc;tes dispens&eacute;s de rapporter la preuve de l&#39;existence du d&eacute;faut de conformit&eacute; du bien durant les six (6) mois suivant la d&eacute;livrance du bien ;</li>\r\n				<li>pour tout produit achet&eacute; &agrave; partir du 18 mars 2016 &agrave; minuit, vous &ecirc;tes dispens&eacute;s de rapporter la preuve de l&#39;existence du d&eacute;faut de conformit&eacute; du bien durant les vingt-quatre (24) mois suivant la d&eacute;livrance du bien, sauf pour les biens d&#39;occasion pour lesquels vous &ecirc;tes dispens&eacute;s de rapporter la preuve de l&#39;existence du d&eacute;faut de conformit&eacute; du bien seulement durant les six (6) mois suivant la d&eacute;livrance du bien.</li>\r\n			</ul>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>La garantie l&eacute;gale de conformit&eacute; s&#39;applique ind&eacute;pendamment de la garantie commerciale &eacute;ventuellement consentie.</p>\r\n\r\n			<p>Vous pouvez d&eacute;cider de mettre en &oelig;uvre la garantie des vices cach&eacute;s au sens de l&#39;article 1641 du code civil. Dans cette hypoth&egrave;se, vous pouvez choisir entre la r&eacute;solution de la vente ou une r&eacute;duction du prix de vente (article 1644 du code civil).</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Les produits audio, vid&eacute;o et multim&eacute;dia peuvent donner droit &agrave; la garantie du fabricant indiqu&eacute;e sur la fiche d&eacute;taill&eacute;e du produit. Si le produit devient d&eacute;fectueux pendant la p&eacute;riode de la garantie du fabricant, vous pouvez consulter le service apr&egrave;s-vente du fabricant.</p>\r\n\r\n<p>A l&#39;exception des livraisons en France et au Luxembourg, nous d&eacute;clinons toute responsabilit&eacute; dans l&#39;hypoth&egrave;se o&ugrave; l&#39;article livr&eacute; ne respecterait pas la l&eacute;gislation du pays de livraison.</p>\r\n\r\n<p>Nous nous engageons &agrave; apporter tous les soins en usage dans la profession pour la mise en &oelig;uvre du service offert au client. N&eacute;anmoins, notre responsabilit&eacute; ne pourra pas &ecirc;tre retenue en cas de retard ou de manquement &agrave; nos obligations contractuelles si le retard ou manquement est d&ucirc; &agrave; une cause en dehors de notre contr&ocirc;le : cas fortuit ou cas de force majeure tel que d&eacute;fini par la loi applicable.</p>\r\n\r\n<p>Notre responsabilit&eacute; ne sera pas engag&eacute;e en cas de retard d&ucirc; &agrave; une rupture de stock chez l&#39;&eacute;diteur ou chez le fournisseur. En outre, notre responsabilit&eacute; ne sera pas engag&eacute;e en cas de diff&eacute;rences mineures entre les photos de pr&eacute;sentation des articles et les textes affich&eacute;s sur le Site Internet Amazon.fr, et les produits livr&eacute;s.</p>\r\n\r\n<p>Nous mettons en &oelig;uvre tous les moyens dont nous disposons pour assurer les prestations objets des pr&eacute;sentes Conditions G&eacute;n&eacute;rales de Vente. Nous sommes responsables de tout dommage direct et pr&eacute;visible au moment de l&#39;utilisation du Site Internet ou de la conclusion du contrat de vente entre nous et vous. Dans le cadre de nos relations avec des professionnels, nous n&#39;encourrons aucune responsabilit&eacute; pour les pertes de b&eacute;n&eacute;fices, pertes commerciales, pertes de donn&eacute;es ou manque &agrave; gagner ou tout autre dommage indirect ou qui n&#39;&eacute;tait pas pr&eacute;visible au moment de l&#39;utilisation du Site Internet ou de la conclusion du contrat de vente entre nous et vous.</p>\r\n\r\n<p>La limitation de responsabilit&eacute; vis&eacute;e ci-dessus est inapplicable en cas de dol ou de faute lourde de notre part, en cas de dommages corporels ou de responsabilit&eacute; du fait des produits d&eacute;fectueux, en cas d&#39;&eacute;viction et en cas de non-conformit&eacute; (y compris en raison de vices cach&eacute;s).</p>\r\n\r\n<p><strong>8. DROIT APPLICABLE</strong></p>\r\n\r\n<p>Les pr&eacute;sentes Conditions d&#39;utilisation sont soumises au droit luxembourgeois (&agrave; l&#39;exception de ses dispositions concernant les conflits de loi), et l&#39;application de la Convention de Vienne sur les contrats de vente internationale de marchandises est express&eacute;ment exclue. Vous, comme nous, acceptons de soumettre tous les litiges occasionn&eacute;s par la relation commerciale existant entre vous et nous &agrave; la comp&eacute;tence non exclusive des juridictions de la ville de Luxembourg, ce qui signifie que pour l&#39;application des pr&eacute;sentes Conditions G&eacute;n&eacute;rales de Vente, vous pouvez intenter une action pour faire valoir vos droits de consommateur, au Luxembourg ou dans le pays de l&#39;Union europ&eacute;enne dans lequel vous r&eacute;sidez. Si vous &ecirc;tes un consommateur et que votre r&eacute;sidence habituelle est situ&eacute;e dans un pays de l&#39;Union europ&eacute;enne, vous b&eacute;n&eacute;ficier &eacute;galement de droits vous prot&eacute;geant en vertu des dispositions obligatoires de la loi applicable dans votre pays de r&eacute;sidence.</p>\r\n\r\n<p>Notre entreprise adh&egrave;re &agrave; la F&eacute;d&eacute;ration du e-commerce et de la vente &agrave; distance (FEVAD) et&nbsp;<a href=\"https://www.fevad.com/espace-consommateurs/les-reclamations-et-les-recours#topContent\" target=\"_blank\">au service de m&eacute;diation du e-commerce</a>&nbsp;(60 rue la Bo&eacute;tie, 75008 Paris) &ndash; relationconso@fevad.com.</p>\r\n\r\n<p>La Commission europ&eacute;enne met &agrave; disposition une plateforme en ligne de r&eacute;solution des diff&eacute;rends &agrave; laquelle vous pouvez acc&eacute;der ici:&nbsp;<a href=\"https://ec.europa.eu/consumers/odr/\" target=\"_blank\">https://ec.europa.eu/consumers/odr/</a>. Si vous souhaitez attirer notre attention sur un sujet, merci de&nbsp;<a href=\"https://www.amazon.fr/contactez-nous\" target=\"_self\">nous contacter</a>.</p>\r\n\r\n<p><strong>9. MODIFICATION DU SERVICE OU DES CONDITIONS GENERALES DE VENTE</strong></p>\r\n\r\n<p>Nous nous r&eacute;servons le droit de faire des changements &agrave; notre Site Internet, nos proc&eacute;dures, et &agrave; nos termes et conditions, y compris les pr&eacute;sentes Conditions G&eacute;n&eacute;rales de Vente &agrave; tout moment. Vous &ecirc;tes soumis aux termes et conditions, proc&eacute;dures et Conditions G&eacute;n&eacute;rales de Vente en vigueur au moment o&ugrave; vous nous commandez un produit, sauf si un changement &agrave; ces termes et conditions, ou les pr&eacute;sentes Conditions G&eacute;n&eacute;rales de Vente est exig&eacute; par une autorit&eacute; administrative ou gouvernementale (dans ce cas, cette modification peut s&#39;appliquer aux commandes ant&eacute;rieures que vous avez effectu&eacute;es). Si l&#39;une des stipulations de ces Conditions G&eacute;n&eacute;rales de Vente est r&eacute;put&eacute;e non valide, nulle ou inapplicable, quelle qu&#39;en soit la raison, cette stipulation sera r&eacute;put&eacute;e divisible et n&#39;affectera pas la validit&eacute; et l&#39;effectivit&eacute; des stipulations restantes.</p>\r\n\r\n<p><strong>10. RENONCIATION</strong></p>\r\n\r\n<p>Si vous enfreignez ces Conditions G&eacute;n&eacute;rales de Vente et que nous ne prenons aucune action, nous serions toujours en droit d&#39;utiliser nos droits et voies de recours dans toutes les autres situations o&ugrave; vous violeriez ces Conditions G&eacute;n&eacute;rale de Vente.</p>\r\n\r\n<p><strong>11. MINEURS</strong></p>\r\n\r\n<p>Nous ne vendons pas de produits aux mineurs. Nous vendons des produits pour enfants pour des achats par des adultes. Si vous avez moins de 18 ans, vous ne pouvez utiliser le Site Internet Amazon.fr que sous la surveillance d&#39;un parent ou d&#39;un tuteur.</p>\r\n\r\n<p><strong>12. IDENTIFICATION</strong></p>\r\n\r\n<p>Amazon.fr est une marque commerciale utilis&eacute;e par Amazon EU SARL. Nos informations de contact sont les suivantes :</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Amazon EU SARL, Soci&eacute;t&eacute; &agrave; responsabilit&eacute; limit&eacute;e, 38 avenue John F. Kennedy, L-1855 Luxembourg<br />\r\nCapital social : 125.000 &euro;<br />\r\nEnregistr&eacute;e au Luxembourg<br />\r\nRCS Luxembourg N&deg; : B-101818<br />\r\nNum&eacute;ro de licence : 134248<br />\r\nNum&eacute;ro de TVA intracommunautaire : LU 20260743</p>');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_at` datetime NOT NULL,
  `replied_at` datetime DEFAULT NULL,
  `reply` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `full_name`, `email`, `subject`, `comment`, `send_at`, `replied_at`, `reply`) VALUES
(1, 'Bill Clinton', 'Bill@bob.com', 'ta mere', 'la pute', '2021-01-14 12:46:26', '2021-01-14 14:40:29', '<p>ta tantine la gourgandine!</p>'),
(2, 'rtrrtrtr', 'rtretrt@hh.com', 'ggggfgg', 'gfgfgffdgdfgdfgfg', '2021-01-14 14:51:27', NULL, NULL),
(3, 'Fdp', 'fdp@ozkpoekr.com', 'aaeza', 'azazzaz', '2021-01-21 15:28:09', NULL, NULL);

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
('DoctrineMigrations\\Version20210111095905', '2021-01-12 07:56:38', 63),
('DoctrineMigrations\\Version20210111101113', '2021-01-12 07:56:38', 13),
('DoctrineMigrations\\Version20210111103101', '2021-01-12 07:56:38', 93),
('DoctrineMigrations\\Version20210111105423', '2021-01-12 07:56:38', 107),
('DoctrineMigrations\\Version20210111123525', '2021-01-12 07:56:38', 138),
('DoctrineMigrations\\Version20210111130710', '2021-01-12 07:56:38', 146),
('DoctrineMigrations\\Version20210113180727', '2021-01-13 18:07:40', 151),
('DoctrineMigrations\\Version20210114114736', '2021-01-14 11:47:59', 121),
('DoctrineMigrations\\Version20210114124448', '2021-01-14 12:44:57', 96),
('DoctrineMigrations\\Version20210119170413', '2021-01-19 17:04:33', 214),
('DoctrineMigrations\\Version20210120082058', '2021-01-20 08:22:40', 94),
('DoctrineMigrations\\Version20210124131935', '2021-01-24 13:19:57', 139),
('DoctrineMigrations\\Version20210124134902', '2021-01-24 13:49:12', 292),
('DoctrineMigrations\\Version20210124144624', '2021-01-24 14:46:42', 111),
('DoctrineMigrations\\Version20210124151356', '2021-01-24 15:14:06', 159),
('DoctrineMigrations\\Version20210124183921', '2021-01-24 18:39:31', 153),
('DoctrineMigrations\\Version20210124184202', '2021-01-24 18:42:10', 245),
('DoctrineMigrations\\Version20210124210706', '2021-01-24 21:07:23', 79),
('DoctrineMigrations\\Version20210125063157', '2021-01-25 06:32:08', 75),
('DoctrineMigrations\\Version20210125080535', '2021-01-25 08:05:41', 97),
('DoctrineMigrations\\Version20210125080715', '2021-01-25 08:07:22', 194),
('DoctrineMigrations\\Version20210125134028', '2021-01-25 13:40:40', 289),
('DoctrineMigrations\\Version20210125170449', '2021-01-25 17:04:57', 76),
('DoctrineMigrations\\Version20210125173415', '2021-01-25 17:34:21', 53),
('DoctrineMigrations\\Version20210125175620', '2021-01-25 17:56:29', 98),
('DoctrineMigrations\\Version20210125180655', '2021-01-25 18:07:02', 418),
('DoctrineMigrations\\Version20210128095740', '2021-01-28 09:57:51', 174);

-- --------------------------------------------------------

--
-- Structure de la table `features`
--

DROP TABLE IF EXISTS `features`;
CREATE TABLE IF NOT EXISTS `features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `features`
--

INSERT INTO `features` (`id`, `title`, `text`) VALUES
(1, 'Set Priorities Correctly', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed mauris volutpat, porttitor tellus et, sagittis leo. Mauris mollis tempus risus, vitae pellentesque nibh aliquam in. Fusce euismod vestibulum enim, a gravida odio congue nec.'),
(2, 'Сonsider All The Factors', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed mauris volutpat, porttitor tellus et, sagittis leo. Mauris mollis tempus risus, vitae pellentesque nibh aliquam in. Fusce euismod vestibulum enim, a gravida odio congue nec.'),
(3, 'Use The Best Tools', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed mauris volutpat, porttitor tellus et, sagittis leo. Mauris mollis tempus risus, vitae pellentesque nibh aliquam in. Fusce euismod vestibulum enim, a gravida odio congue nec.'),
(4, 'Analyze Competitors', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sed mauris volutpat, porttitor tellus et, sagittis leo. Mauris mollis tempus risus, vitae pellentesque nibh aliquam in. Fusce euismod vestibulum enim, a gravida odio congue nec.');

-- --------------------------------------------------------

--
-- Structure de la table `foot_shop`
--

DROP TABLE IF EXISTS `foot_shop`;
CREATE TABLE IF NOT EXISTS `foot_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `foot_shop`
--

INSERT INTO `foot_shop` (`id`, `title`, `subtitle`) VALUES
(1, 'Your Everyday Sunglasses', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc commodo ligula eget ex accumsan, in ultricies tellus vehicula');

-- --------------------------------------------------------

--
-- Structure de la table `gender`
--

DROP TABLE IF EXISTS `gender`;
CREATE TABLE IF NOT EXISTS `gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gender`
--

INSERT INTO `gender` (`id`, `name`) VALUES
(1, 'Men'),
(2, 'Women');

-- --------------------------------------------------------

--
-- Structure de la table `head_shop`
--

DROP TABLE IF EXISTS `head_shop`;
CREATE TABLE IF NOT EXISTS `head_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `head_shop`
--

INSERT INTO `head_shop` (`id`, `title`, `subtitle`) VALUES
(1, 'Sunglasses Shop', 'Unique glasses for a new era of fashion.');

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `brandlogo_id` int(11) DEFAULT NULL,
  `productcare_id` int(11) DEFAULT NULL,
  `headshop_id` int(11) DEFAULT NULL,
  `footshop_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E01FBE6A83348FC7` (`brandlogo_id`),
  UNIQUE KEY `UNIQ_E01FBE6A693F5B62` (`productcare_id`),
  UNIQUE KEY `UNIQ_E01FBE6A799D29A0` (`headshop_id`),
  UNIQUE KEY `UNIQ_E01FBE6A88B078D6` (`footshop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `image`, `updated_at`, `brandlogo_id`, `productcare_id`, `headshop_id`, `footshop_id`) VALUES
(6, '02-6007ed4381166883605101.jpg', '2021-01-20 08:43:47', NULL, NULL, NULL, 1),
(7, 'blue-issimo-6007f1c903ecd844762961.jpg', '2021-01-20 09:03:04', NULL, NULL, NULL, NULL),
(8, 'gold-and-green-hexagonal-6007f1d33d25e042726208.jpg', '2021-01-20 09:03:15', NULL, NULL, NULL, NULL),
(9, 'greta-tortoiseshell-6007f1dda860b999913729.jpg', '2021-01-20 09:03:25', NULL, NULL, NULL, NULL),
(10, 'havana-gold-6007f1ebc48c8583210755.jpg', '2021-01-20 09:03:39', NULL, NULL, NULL, NULL),
(11, 'midway-acetate-6007f1f6da089327186868.jpg', '2021-01-20 09:03:50', NULL, NULL, NULL, NULL),
(12, 'orange-boyd-6007f2025b1a0169925079.jpg', '2021-01-20 09:04:02', NULL, NULL, NULL, NULL),
(13, 'rectangular-6007f21360b71342988846.jpg', '2021-01-20 09:04:19', NULL, NULL, NULL, NULL),
(14, 'round-tortoise-6007f21d3af5f190381416.jpg', '2021-01-20 09:04:29', NULL, NULL, NULL, NULL),
(15, 'silverlake-sun-6007f2291593c109618299.jpg', '2021-01-20 09:04:40', NULL, NULL, NULL, NULL),
(16, 'silver-tone-6007f233810fb225903868.jpg', '2021-01-20 09:04:51', NULL, NULL, NULL, NULL),
(17, 'split-shot-rectangular-6007f23d25bce053271102.jpg', '2021-01-20 09:05:01', NULL, NULL, NULL, NULL),
(18, 'square-6007f2462b5ed226992375.jpg', '2021-01-20 09:05:10', NULL, NULL, NULL, NULL),
(19, 'square-frame-6007f252daa94028147217.jpg', '2021-01-20 09:05:22', NULL, NULL, NULL, NULL),
(20, 'sutton-6007f25f531ef948970000.jpg', '2021-01-20 09:05:35', NULL, NULL, NULL, NULL),
(21, 'wayfarer-polarized-6007f26a4595c477490057.jpg', '2021-01-20 09:05:46', NULL, NULL, NULL, NULL),
(22, 'rhinestone-after-hours-6007f6706c1d5577729084.jpg', '2021-01-20 09:22:56', NULL, NULL, NULL, NULL),
(23, 'amazonian-101-6007f67cc91d9664742031.jpg', '2021-01-20 09:23:08', NULL, NULL, NULL, NULL),
(24, 'garland-6007f90d778b1894266023.jpg', '2021-01-20 09:34:05', NULL, NULL, NULL, NULL),
(25, '57mm-oversize-cat-eye-6007f9294fd57935683628.jpg', '2021-01-20 09:34:33', NULL, NULL, NULL, NULL),
(26, 'escadrille-6007f93be9931946769552.jpg', '2021-01-20 09:34:51', NULL, NULL, NULL, NULL),
(27, 'bella-6007f94c2e606222504032.jpg', '2021-01-20 09:35:08', NULL, NULL, NULL, NULL),
(28, 'becky-ii-6007f95817348272056555.jpg', '2021-01-20 09:35:19', NULL, NULL, NULL, NULL),
(29, 'pioneer-6007fb44e4d88795633635.jpg', '2021-01-20 09:43:32', NULL, NULL, NULL, NULL),
(30, 'ply-tactical-cobra-6007fb4ede247189759004.jpg', '2021-01-20 09:43:42', NULL, NULL, NULL, NULL),
(31, 'yosar-guide-6007fb61791c9143886387.jpg', '2021-01-20 09:44:01', NULL, NULL, NULL, NULL),
(32, 'allen-edmonds-6007fb70e014c725457321.jpg', '2021-01-20 09:44:16', NULL, NULL, NULL, NULL),
(33, 'double-d-ring-6007fb80629cc435910840.jpg', '2021-01-20 09:44:32', NULL, NULL, NULL, NULL),
(34, 'crocodile-effect-6007fb90b6790839142582.png', '2021-01-20 09:44:48', NULL, NULL, NULL, NULL),
(35, 'faux-perl-embellished-6007fb9bbd2b4229266678.png', '2021-01-20 09:44:59', NULL, NULL, NULL, NULL),
(36, 'lecce-leather-6007fbaca0fed172025226.png', '2021-01-20 09:45:16', NULL, NULL, NULL, NULL),
(37, 'logo-engraved-6007fbb83b9ba720103410.png', '2021-01-20 09:45:28', NULL, NULL, NULL, NULL),
(38, 'tb-buckle-6007fbc5ae12e824744254.png', '2021-01-20 09:45:41', NULL, NULL, NULL, NULL),
(39, 'tanner-goods-single-wrap-wristband-6007fdb54094c612917566.jpg', '2021-01-20 09:53:57', NULL, NULL, NULL, NULL),
(40, 'timex-navi-harbor-watch-6007fdc271ade710825339.jpg', '2021-01-20 09:54:10', NULL, NULL, NULL, NULL),
(41, 'pioneer-carry-the-matter-10xd-ripstop-bifold-6007fdd4cd207891709292.jpg', '2021-01-20 09:54:28', NULL, NULL, NULL, NULL),
(44, '1-600dc4e6b8d15712112167.png', '2021-01-24 19:05:10', 1, NULL, NULL, NULL),
(45, '2-600dc4f0e50e8079148031.png', '2021-01-24 19:05:20', 2, NULL, NULL, NULL),
(46, '3-600dc4fc5576f782915301.png', '2021-01-24 19:05:32', 3, NULL, NULL, NULL),
(47, '4-600dc50719e04000785315.png', '2021-01-24 19:05:43', 4, NULL, NULL, NULL),
(48, '5-600dc51134770726839472.png', '2021-01-24 19:05:53', 5, NULL, NULL, NULL),
(50, '97ed6b370803649addbf66144c18c194-600e8333e23e9013929032.png', '2021-01-25 08:37:07', NULL, 2, NULL, NULL),
(51, '01-600f0da4e2848088718875.jpg', '2021-01-25 18:27:48', NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `learn_more`
--

DROP TABLE IF EXISTS `learn_more`;
CREATE TABLE IF NOT EXISTS `learn_more` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `learn_more`
--

INSERT INTO `learn_more` (`id`, `title`, `text`) VALUES
(1, 'Learn more about our brand', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus commodo suscipit vulputate. Maecenas rutrum mollis arcu, at condimentum lorem @mobirise.');

-- --------------------------------------------------------

--
-- Structure de la table `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headshop_id` int(11) DEFAULT NULL,
  `footshop_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D182A118799D29A0` (`headshop_id`),
  UNIQUE KEY `UNIQ_D182A11888B078D6` (`footshop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `links`
--

INSERT INTO `links` (`id`, `name`, `path`, `headshop_id`, `footshop_id`) VALUES
(1, 'Sunglasses', 'category/sunglasses', 1, 1),
(2, 'Belts', 'category/belts', NULL, NULL),
(3, 'Accessories', 'category/accessories', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F5299398A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order`
--

INSERT INTO `order` (`id`, `date`, `user_id`, `status`, `updated_at`, `payment`) VALUES
(1, '2021-01-28 10:31:19', 1, 'Sent', '2021-01-28 14:28:53', 'paypal'),
(2, '2021-01-28 11:07:38', 1, 'Cancelled', '2021-01-28 11:07:38', 'CB'),
(3, '2021-01-28 11:11:35', 1, 'Cancelled', '2021-01-28 11:11:35', 'CB'),
(4, '2021-01-28 13:53:02', 2, 'Pending', '2021-01-28 13:53:02', 'paypal'),
(5, '2021-01-28 15:45:10', 1, 'Pending', '2021-01-28 15:45:10', 'CB'),
(6, '2021-01-28 16:34:00', 1, 'Pending', '2021-01-28 16:34:00', 'CB');

-- --------------------------------------------------------

--
-- Structure de la table `product_care`
--

DROP TABLE IF EXISTS `product_care`;
CREATE TABLE IF NOT EXISTS `product_care` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_care`
--

INSERT INTO `product_care` (`id`, `title`, `subtitle`, `text`) VALUES
(2, 'Product Care and Tips', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sollicitudin orci vel risus ultricies semper.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur faucibus lorem sit amet fringilla lobortis. Cras nisl tellus, convallis a tristique sed, efficitur in ipsum. Aliquam elementum, arcu eu tincidunt molestie, urna lorem convallis elit, et vulputate nunc ligula nec leo. Proin placerat id lorem eu lobortis. Mauris molestie nibh eget neque varius posuere. Mauris porttitor aliquet nibh. Morbi at vulputate lacus, vel laoreet erat. Vestibulum viverra lacus ut ante consequat dictum. Cras lacinia est in libero tristique, nec fermentum est dapibus. Pellentesque id mauris lacinia, pellentesque augue ac, fringilla dui. Maecenas eu felis enim. Vestibulum eu pretium mauris, quis commodo nunc. Etiam risus turpis, dignissim quis eros malesuada, ullamcorper sollicitudin purus. Fusce eu blandit ligula. Nam erat nunc, pharetra nec feugiat vel, efficitur ut dui.');

-- --------------------------------------------------------

--
-- Structure de la table `site_name`
--

DROP TABLE IF EXISTS `site_name`;
CREATE TABLE IF NOT EXISTS `site_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_name`
--

INSERT INTO `site_name` (`id`, `name`) VALUES
(1, 'WishAmazon');

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
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `last_name`, `first_name`, `address`, `city`, `zip_code`) VALUES
(1, 'jon.verheyde@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$1vCjteolBIHZJlJLPzD9Kegm/DgRvAul9S4cK/B5L.iID2PjkxgXW', 'Verheyde', 'Jonathan', '8 rue de Valmy', 'Laventie', 62840),
(2, 'billy@tamere.com', '[]', '$2y$13$SjBacF0vd4xsMSDGmFYhq.ljFtcuBNEoZ1WmFzYZz1NoCOGOC1Zwm', 'Billy', 'Bob', 'azdfazzad', 'zdadada', 62000),
(3, 'jeanclaude@bog.com', '[]', '$2y$13$IRCxzhbm2CKMhFx/ae4MSupf5fF2cYwmx/4zPmOE.lS9LHUdeQowm', 'Jean', 'Claude', 'zeeeazezae', 'zezaeee', 58406);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_23A0E661AD5CDBF` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `FK_23A0E66708A0E0` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  ADD CONSTRAINT `FK_23A0E66E636D3F5` FOREIGN KEY (`ord_id`) REFERENCES `order` (`id`);

--
-- Contraintes pour la table `article_images`
--
ALTER TABLE `article_images`
  ADD CONSTRAINT `FK_8AD829EA7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8AD829EAD44F05E5` FOREIGN KEY (`images_id`) REFERENCES `images` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK_BA388B7A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_E01FBE6A693F5B62` FOREIGN KEY (`productcare_id`) REFERENCES `product_care` (`id`),
  ADD CONSTRAINT `FK_E01FBE6A799D29A0` FOREIGN KEY (`headshop_id`) REFERENCES `head_shop` (`id`),
  ADD CONSTRAINT `FK_E01FBE6A83348FC7` FOREIGN KEY (`brandlogo_id`) REFERENCES `brand_logo` (`id`),
  ADD CONSTRAINT `FK_E01FBE6A88B078D6` FOREIGN KEY (`footshop_id`) REFERENCES `foot_shop` (`id`);

--
-- Contraintes pour la table `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `FK_D182A118799D29A0` FOREIGN KEY (`headshop_id`) REFERENCES `head_shop` (`id`),
  ADD CONSTRAINT `FK_D182A11888B078D6` FOREIGN KEY (`footshop_id`) REFERENCES `foot_shop` (`id`);

--
-- Contraintes pour la table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_F5299398A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
