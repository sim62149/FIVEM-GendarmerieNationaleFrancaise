-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 08 mars 2024 à 11:12
-- Version du serveur : 11.3.2-MariaDB-1:11.3.2+maria~deb12
-- Version de PHP : 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `s5_SEShop`
--

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('society_gendarmerie', 'Gendarmerie', 1);


-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1712121, 'society_gendarmerie', 50000, NULL);


-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('society_gendarmerie', 'Gendarmerie', 1);


-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('society_gendarmerie', 'Gendarmerie', 1);
-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(4321212, 'society_gendarmerie', NULL, '\'{}\'');


-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('gendarmerie', '🚔 Gendarmerie 👮‍♂️', 0);


-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(39121, 'gendarmerie', 0, 'recruit', 'Recrue', 500, '{}', '{}'),
(402121, 'gendarmerie', 1, 'officer', 'Officier', 750, '{}', '{}'),
(41212, 'gendarmerie', 2, 'sergeant', 'Sergent', 1000, '{}', '{}'),
(42121, 'gendarmerie', 3, 'lieutenant', 'Lieutenant', 1250, '{}', '{}'),
(431221, 'gendarmerie', 4, 'boss', 'Commandant', 1500, '{}', '{}');


-- --------------------------------------------------------

--
-- Structure de la table `ox_doorlock`
--

CREATE TABLE IF NOT EXISTS `ox_doorlock` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `ox_doorlock`
--
INSERT INTO `ox_doorlock` (`id`, `name`, `data`) VALUES
(200000, 'GN1', '{\"doors\":[{\"coords\":{\"x\":1067.497802734375,\"y\":3820.202880859375,\"z\":34.56594085693359},\"model\":827574885,\"heading\":0},{\"coords\":{\"x\":1065.0361328125,\"y\":3820.203857421875,\"z\":34.56594085693359},\"model\":827574885,\"heading\":180}],\"maxDistance\":2,\"coords\":{\"x\":1066.2669677734376,\"y\":3820.203369140625,\"z\":34.56594085693359},\"state\":1,\"groups\":{\"gendarmerie\":0}}'),
(300000, 'GN2', '{\"doors\":[{\"coords\":{\"x\":1063.689453125,\"y\":3818.9755859375,\"z\":34.56594085693359},\"model\":827574885,\"heading\":90},{\"coords\":{\"x\":1063.689453125,\"y\":3816.5146484375,\"z\":34.56594085693359},\"model\":827574885,\"heading\":270}],\"maxDistance\":2,\"coords\":{\"x\":1063.689453125,\"y\":3817.7451171875,\"z\":34.56594085693359},\"state\":1,\"groups\":{\"gendarmerie\":0}}'),
(400000, 'GN3', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1024.185302734375,\"y\":3837.98388671875,\"z\":34.47609710693359},\"state\":1,\"model\":-2062889184,\"groups\":{\"gendarmerie\":0},\"heading\":270}'),
(500000, 'GN4', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1055.9459228515626,\"y\":3816.7646484375,\"z\":34.47609710693359},\"state\":1,\"model\":-2062889184,\"groups\":{\"gendarmerie\":0},\"heading\":90}'),
(600000, 'GN5', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1055.9459228515626,\"y\":3822.7744140625,\"z\":34.47609710693359},\"state\":1,\"model\":-2062889184,\"groups\":{\"gendarmerie\":0},\"heading\":90}'),
(700000, 'GN6', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1065.698974609375,\"y\":3827.226806640625,\"z\":34.47609710693359},\"state\":1,\"model\":-2062889184,\"groups\":{\"gendarmerie\":0},\"heading\":0}'),
(800000, 'GN7', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1058.72509765625,\"y\":3834.225830078125,\"z\":34.47609710693359},\"state\":1,\"model\":-2062889184,\"groups\":{\"gendarmerie\":0},\"heading\":90}'),
(900000, 'GN8', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1058.72509765625,\"y\":3839.84423828125,\"z\":34.47609710693359},\"state\":1,\"model\":-2062889184,\"groups\":{\"gendarmerie\":0},\"heading\":90}'),
(1000000, 'GN9', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1050.6678466796876,\"y\":3819.80712890625,\"z\":34.47609710693359},\"state\":1,\"model\":-2062889184,\"groups\":{\"gendarmerie\":0},\"heading\":90}'),
(1100000, 'GN10', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1044.648193359375,\"y\":3827.249267578125,\"z\":34.47609710693359},\"state\":1,\"model\":-2062889184,\"groups\":{\"gendarmerie\":0},\"heading\":180}'),
(1200000, 'GN11', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1029.3531494140626,\"y\":3836.627197265625,\"z\":34.48769378662109},\"state\":1,\"model\":-642608865,\"groups\":{\"gendarmerie\":0},\"heading\":270}'),
(1300000, 'gn12', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1031.804443359375,\"y\":3835.797607421875,\"z\":34.48769378662109},\"state\":1,\"model\":-642608865,\"groups\":{\"gendarmerie\":0},\"heading\":0}'),
(1400000, 'GN13', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1030.3016357421876,\"y\":3839.0517578125,\"z\":34.48769378662109},\"state\":1,\"model\":-642608865,\"groups\":{\"gendarmerie\":0},\"heading\":180}'),
(1500000, 'GN15', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1033.8702392578126,\"y\":3839.0517578125,\"z\":34.48769378662109},\"state\":1,\"model\":-642608865,\"groups\":{\"gendarmerie\":0},\"heading\":180}'),
(1600000, 'GN16', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1035.37255859375,\"y\":3835.797607421875,\"z\":34.48769378662109},\"state\":1,\"model\":-642608865,\"groups\":{\"gendarmerie\":0},\"heading\":0}'),
(1700000, 'GN17', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1037.387451171875,\"y\":3839.051513671875,\"z\":34.48769378662109},\"state\":1,\"model\":-642608865,\"groups\":{\"gendarmerie\":0},\"heading\":180}'),
(1800000, 'GN18', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1040.0518798828126,\"y\":3838.144287109375,\"z\":34.48769378662109},\"state\":1,\"model\":-642608865,\"groups\":{\"gendarmerie\":0},\"heading\":90}'),
(1900000, 'GN19', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1046.526611328125,\"y\":3831.72412109375,\"z\":34.47609710693359},\"state\":1,\"model\":-2062889184,\"groups\":{\"gendarmerie\":0},\"heading\":0}'),
(2000000, 'GN20', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1046.58837890625,\"y\":3839.018310546875,\"z\":34.47609710693359},\"state\":1,\"model\":749848321,\"groups\":{\"gendarmerie\":0},\"heading\":0}'),
(2100000, 'GN21', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1050.6268310546876,\"y\":3835.42919921875,\"z\":34.47609710693359},\"state\":1,\"model\":-2062889184,\"groups\":{\"gendarmerie\":0},\"heading\":270}'),
(2200000, 'GN22', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1003.1465454101563,\"y\":3832.067626953125,\"z\":34.74356842041015},\"state\":1,\"model\":830860945,\"groups\":{\"gendarmerie\":0},\"heading\":90}'),
(2300000, 'GN23', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1003.1465454101563,\"y\":3842.694580078125,\"z\":34.74356842041015},\"state\":1,\"model\":830860945,\"groups\":{\"gendarmerie\":0},\"heading\":90}'),
(2400000, 'GN24', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1027.7017822265626,\"y\":3911.083740234375,\"z\":33.67094421386719},\"state\":1,\"model\":-2062889184,\"groups\":{\"gendarmerie\":0},\"heading\":0}'),
(2500000, 'GN25', '{\"doors\":[{\"coords\":{\"x\":1028.9046630859376,\"y\":3921.047607421875,\"z\":33.74282073974609},\"model\":827574885,\"heading\":0},{\"coords\":{\"x\":1026.4432373046876,\"y\":3921.048583984375,\"z\":33.74282073974609},\"model\":827574885,\"heading\":180}],\"maxDistance\":2,\"coords\":{\"x\":1027.6739501953126,\"y\":3921.048095703125,\"z\":33.74282073974609},\"state\":1,\"groups\":{\"gendarmerie\":0}}'),
(2600000, 'GN26', '{\"doors\":[{\"coords\":{\"x\":1021.1864624023438,\"y\":3921.047607421875,\"z\":33.74282073974609},\"model\":827574885,\"heading\":0},{\"coords\":{\"x\":1018.7247924804688,\"y\":3921.048583984375,\"z\":33.74282073974609},\"model\":827574885,\"heading\":180}],\"maxDistance\":2,\"coords\":{\"x\":1019.9556274414063,\"y\":3921.048095703125,\"z\":33.74282073974609},\"state\":1,\"groups\":{\"gendarmerie\":0}}'),
(2700000, 'GN27', '{\"doors\":[{\"coords\":{\"x\":1009.0687255859375,\"y\":3917.248779296875,\"z\":33.74282073974609},\"model\":827574885,\"heading\":180},{\"coords\":{\"x\":1011.5303955078125,\"y\":3917.247802734375,\"z\":33.74282073974609},\"model\":827574885,\"heading\":0}],\"maxDistance\":2,\"coords\":{\"x\":1010.299560546875,\"y\":3917.248291015625,\"z\":33.74282073974609},\"state\":1,\"groups\":{\"gendarmerie\":0}}'),
(2800000, 'GN28', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1001.8665161132813,\"y\":3921.029052734375,\"z\":33.67094421386719},\"state\":1,\"model\":-2062889184,\"groups\":{\"gendarmerie\":0},\"heading\":0}'),
(2900000, 'GN29', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":1005.97509765625,\"y\":3926.300048828125,\"z\":33.67094421386719},\"state\":1,\"model\":-2062889184,\"groups\":{\"gendarmerie\":0},\"heading\":90}'),
(3000000, 'gn30', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":997.7156372070313,\"y\":3921.029052734375,\"z\":33.67094421386719},\"state\":1,\"model\":-2062889184,\"groups\":{\"gendarmerie\":0},\"heading\":0}'),
(3100000, 'GN31', '{\"doors\":[{\"coords\":{\"x\":995.27734375,\"y\":3920.372802734375,\"z\":33.74282073974609},\"model\":827574885,\"heading\":90},{\"coords\":{\"x\":995.2757568359375,\"y\":3917.911376953125,\"z\":33.74282073974609},\"model\":827574885,\"heading\":270}],\"maxDistance\":2,\"coords\":{\"x\":995.2765502929688,\"y\":3919.14208984375,\"z\":33.74282073974609},\"state\":1,\"groups\":{\"gendarmerie\":0}}'),
(3200000, 'GN32', '{\"doors\":false,\"maxDistance\":2,\"coords\":{\"x\":991.7243041992188,\"y\":3911.083740234375,\"z\":33.67094421386719},\"state\":1,\"model\":-2062889184,\"groups\":{\"gendarmerie\":0},\"heading\":0}');


-- --------------------------------------------------------

--
-- Structure de la table `ox_inventory`
--

CREATE TABLE IF NOT EXISTS `ox_inventory` (
  `owner` varchar(60) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `ox_inventory`
--

INSERT INTO `ox_inventory` (`owner`, `name`, `data`, `lastupdated`) VALUES
('gendarmerie', 'gendarmerie', '[{\"slot\":3,\"count\":1,\"name\":\"ammo-9\"}]', '2024-03-07 18:10:00');

--
-- Index pour les tables déchargées
--

--
--
-- Index pour la table `addon_account`
--
CREATE INDEX IF NOT EXISTS `addon_account_primary` ON `addon_account` (`name`);

--
-- Index pour la table `addon_account_data`
--
CREATE INDEX IF NOT EXISTS `addon_account_data_primary` ON `addon_account_data` (`id`);

--
-- Index pour la table `addon_inventory`
--
CREATE INDEX IF NOT EXISTS `addon_inventory_primary` ON `addon_inventory` (`name`);

--
-- Index pour la table `addon_inventory_items`
--
CREATE INDEX IF NOT EXISTS `addon_inventory_items_primary` ON `addon_inventory_items` (`id`);
CREATE INDEX IF NOT EXISTS `index_addon_inventory_items_inventory_name_name` ON `addon_inventory_items` (`inventory_name`,`name`);
CREATE INDEX IF NOT EXISTS `index_addon_inventory_items_inventory_name_name_owner` ON `addon_inventory_items` (`inventory_name`,`name`,`owner`);
CREATE INDEX IF NOT EXISTS `index_addon_inventory_inventory_name` ON `addon_inventory_items` (`inventory_name`);

--
-- Index pour la table `datastore`
--
CREATE INDEX IF NOT EXISTS `datastore_primary` ON `datastore` (`name`);

--
-- Index pour la table `datastore_data`
--
CREATE INDEX IF NOT EXISTS `datastore_data_primary` ON `datastore_data` (`id`);
CREATE UNIQUE INDEX IF NOT EXISTS `index_datastore_data_name_owner` ON `datastore_data` (`name`,`owner`);
CREATE INDEX IF NOT EXISTS `index_datastore_data_name` ON `datastore_data` (`name`);

--
-- Index pour la table `jobs`
--
CREATE INDEX IF NOT EXISTS `jobs_primary` ON `jobs` (`name`);

--
-- Index pour la table `job_grades`
--
CREATE INDEX IF NOT EXISTS `job_grades_primary` ON `job_grades` (`id`);

--
-- Index pour la table `ox_doorlock`
--
CREATE INDEX IF NOT EXISTS `ox_doorlock_primary` ON `ox_doorlock` (`id`);

--
-- Index pour la table `ox_inventory`
--
CREATE UNIQUE INDEX IF NOT EXISTS `ox_inventory_owner` ON `ox_inventory` (`owner`,`name`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pour la table `ox_doorlock`
--
ALTER TABLE `ox_doorlock`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;
COMMIT;