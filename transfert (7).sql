-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 21 mai 2024 à 20:56
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `transfert`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_client` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `id_conteneur` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `montant` int(200) NOT NULL,
  `montantpayer` int(200) NOT NULL,
  `etat` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `nom_client`, `telephone`, `id_conteneur`, `created_at`, `updated_at`, `montant`, `montantpayer`, `etat`) VALUES
(1, 'rabby', '33', '1', '2024-04-13 16:00:50', '2024-04-13 16:00:50', 100, 34, 0),
(2, 'rabby@gmail.com', '12345', '2', '2024-04-13 19:52:31', '2024-04-13 19:52:31', 500, 56, 0),
(12, 'dd', '00', '5', '2024-05-07 14:19:50', '2024-05-07 14:19:50', 12345, 12345, 0),
(13, 'dd', '00', '5', '2024-05-11 15:12:18', '2024-05-11 15:12:18', 12345, 123, 0),
(14, 'ss', '12', '3', '2024-05-11 15:32:34', '2024-05-11 15:32:34', 2333, 2, 0),
(15, 'ss', '334', '3', '2024-05-11 15:39:07', '2024-05-11 15:39:07', 234567, 23, 0),
(21, 'ra', '00', '7', '2024-05-11 16:20:17', '2024-05-11 16:20:17', 1555, 3, 0),
(22, 'ra', '00', '7', '2024-05-11 16:20:17', '2024-05-11 16:20:17', 1555, 3, 0),
(35, 'dd', '00', '5', '2024-05-14 18:38:32', '2024-05-14 18:38:32', 12345, 333, 0),
(36, 'aa', '0822662472', '5', '2024-05-19 19:26:15', '2024-05-19 19:26:15', 2000, 333, 0),
(37, 'rabby', '0822662472', '8', '2024-05-19 19:50:33', '2024-05-21 16:27:17', 1000, 50, 0);

-- --------------------------------------------------------

--
-- Structure de la table `clotures`
--

CREATE TABLE `clotures` (
  `id` int(11) NOT NULL,
  `entredubai` int(200) NOT NULL,
  `sortidubai` int(200) NOT NULL,
  `entreKinhsasa` int(200) NOT NULL,
  `sortiKinhsasa` int(200) NOT NULL,
  `depenseDubai` int(200) NOT NULL,
  `depenseKinshasa` int(200) NOT NULL,
  `dettepartenaire` int(200) NOT NULL,
  `detteclient` int(200) NOT NULL,
  `balanceDubai` int(200) NOT NULL,
  `balanceKinshasa` int(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `clotures`
--

INSERT INTO `clotures` (`id`, `entredubai`, `sortidubai`, `entreKinhsasa`, `sortiKinhsasa`, `depenseDubai`, `depenseKinshasa`, `dettepartenaire`, `detteclient`, `balanceDubai`, `balanceKinshasa`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 212, 233, '2024-04-29 11:42:03', '2024-04-29 11:42:03'),
(4, 4000, 300, 0, 0, 400, 0, 0, 0, 3363, 233, '2024-05-08 01:04:10', '2024-05-08 01:04:10');

-- --------------------------------------------------------

--
-- Structure de la table `comptes`
--

CREATE TABLE `comptes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `intitule` varchar(255) NOT NULL,
  `montant` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comptes`
--

INSERT INTO `comptes` (`id`, `intitule`, `montant`, `created_at`, `updated_at`) VALUES
(1, 'Dubai', '41715', '2024-04-25 08:41:01', '2024-05-20 14:19:46'),
(2, 'Kinshasa', '2210', '2024-04-25 10:52:30', '2024-05-20 14:21:02');

-- --------------------------------------------------------

--
-- Structure de la table `conteneurs`
--

CREATE TABLE `conteneurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_conteneur` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_creation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `conteneurs`
--

INSERT INTO `conteneurs` (`id`, `nom_conteneur`, `numero`, `created_at`, `updated_at`, `date_creation`) VALUES
(1, 's', 's', '2024-04-13 16:00:19', '2024-04-13 16:00:19', ''),
(2, 'ss', '17130306916199699', '2024-04-13 16:51:37', '2024-04-13 16:51:37', ''),
(3, 'DER', '17130308514403389', '2024-04-13 16:54:17', '2024-04-13 16:54:17', ''),
(5, 'alphrina groupage 1', '17133073739802490', '2024-04-16 21:43:16', '2024-04-16 21:43:16', ''),
(8, 'Conteur exemple', '17154612252947625', '2024-05-11 20:04:48', '2024-05-11 20:04:48', '20');

-- --------------------------------------------------------

--
-- Structure de la table `depenses`
--

CREATE TABLE `depenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `motif` varchar(255) NOT NULL,
  `montant` varchar(255) NOT NULL,
  `ville_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nom` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `depenses`
--

INSERT INTO `depenses` (`id`, `motif`, `montant`, `ville_id`, `created_at`, `updated_at`, `nom`) VALUES
(1, 'Carburant', '30', 1, '2024-04-01 17:57:59', '2024-04-01 17:57:59', ''),
(2, 'll', '30', 1, '2024-04-09 21:58:26', '2024-04-09 21:58:26', 'mm');

-- --------------------------------------------------------

--
-- Structure de la table `depense_clients`
--

CREATE TABLE `depense_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `motif` varchar(255) NOT NULL,
  `montant` varchar(255) NOT NULL,
  `id_client` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nom` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `depense_clients`
--

INSERT INTO `depense_clients` (`id`, `motif`, `montant`, `id_client`, `created_at`, `updated_at`, `nom`) VALUES
(1, 'rabby@gmail.com', '12345', '1', '2024-04-11 08:27:06', '2024-04-11 08:27:06', '12345'),
(2, 'sss', '12', '1', '2024-04-11 08:54:20', '2024-04-11 08:54:20', 'ssss'),
(4, 'cde', '123', '1', '2024-04-11 08:56:38', '2024-04-11 08:56:38', 'ss'),
(5, 'ki', '20', '2', '2024-04-13 13:21:33', '2024-04-13 13:21:33', 'lk'),
(6, 'ss', '22', '1', '2024-04-13 13:33:48', '2024-04-13 13:33:48', 'dd'),
(7, 'jj', '200', '2', '2024-04-13 13:34:32', '2024-04-13 13:34:32', 'dde'),
(8, 'dd', '300', '1', '2024-04-14 20:33:16', '2024-04-14 20:33:16', 'kbg'),
(9, 'ff', '120', '2', '2024-04-14 20:35:10', '2024-04-14 20:35:10', 'kbg'),
(10, 'dd', '120', '2', '2024-04-14 20:47:56', '2024-04-14 20:47:56', 'ff'),
(11, 'ss', '300', '1', '2024-04-14 20:55:47', '2024-04-14 20:55:47', 'dd'),
(12, 'ddd', '10', '1', '2024-04-23 12:19:36', '2024-04-23 12:19:36', 'rb'),
(18, 'ss', '100', '1', '2024-04-29 19:38:03', '2024-04-29 19:38:03', 'alphrina'),
(19, 'de', '400', '1', '2024-05-08 00:01:20', '2024-05-08 00:01:20', 'ss'),
(20, 'ss', '2', '1', '2024-05-20 08:29:55', '2024-05-20 08:29:55', 'mb'),
(21, 'dd', '3', '2', '2024-05-20 14:04:57', '2024-05-20 14:04:57', 'mm'),
(22, 'ss', '3', '2', '2024-05-20 14:05:44', '2024-05-20 14:05:44', 'ss'),
(23, 'dd', '3', '2', '2024-05-20 14:14:54', '2024-05-20 14:14:54', 'aa');

-- --------------------------------------------------------

--
-- Structure de la table `depense_conteneurs`
--

CREATE TABLE `depense_conteneurs` (
  `id` int(11) NOT NULL,
  `id_conteneur` int(200) NOT NULL,
  `montant` int(200) NOT NULL,
  `id_typedepense` int(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `updated_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `depense_conteneurs`
--

INSERT INTO `depense_conteneurs` (`id`, `id_conteneur`, `montant`, `id_typedepense`, `created_at`, `updated_at`) VALUES
(2, 5, 200, 7, '2024-05-07 13:58:24', '2024-05-07 13:58:24'),
(4, 5, 10, 8, '2024-05-11 20:44:11', '2024-05-11 20:44:11'),
(5, 3, 20, 5, '2024-05-11 21:15:07', '2024-05-11 21:15:07'),
(6, 8, 30, 7, '2024-05-19 21:49:45', '2024-05-19 21:49:45');

-- --------------------------------------------------------

--
-- Structure de la table `dettes`
--

CREATE TABLE `dettes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `motif_dette` varchar(255) NOT NULL,
  `montant_dette` varchar(255) NOT NULL,
  `id_transaction` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `montantpayer` int(200) NOT NULL,
  `etat_dette` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dettes`
--

INSERT INTO `dettes` (`id`, `motif_dette`, `montant_dette`, `id_transaction`, `created_at`, `updated_at`, `montantpayer`, `etat_dette`) VALUES
(4, 'pp', '30', '46', '2024-05-20 08:29:01', '2024-05-20 08:29:01', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `dette_partenaires`
--

CREATE TABLE `dette_partenaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `intitule` varchar(255) NOT NULL,
  `montant` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `montantpayer` int(200) NOT NULL,
  `etat` int(200) NOT NULL,
  `transaction_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dette_partenaires`
--

INSERT INTO `dette_partenaires` (`id`, `intitule`, `montant`, `created_at`, `updated_at`, `montantpayer`, `etat`, `transaction_id`) VALUES
(1, 'dd', '200', NULL, NULL, 20, 1, 0),
(12, 'EE', '33', '2024-05-16 14:34:33', '2024-05-16 14:34:33', 2000, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `marchandises`
--

CREATE TABLE `marchandises` (
  `id` int(11) NOT NULL,
  `id_client` int(100) NOT NULL,
  `produit` varchar(300) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `updated_at` varchar(200) NOT NULL,
  `qte` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `marchandises`
--

INSERT INTO `marchandises` (`id`, `id_client`, `produit`, `created_at`, `updated_at`, `qte`) VALUES
(1, 1, 'sss', '', '', 0),
(2, 12, 'dd', '', '', 0),
(4, 12, 'ee', '2024-05-07 15:05:01', '2024-05-07 15:05:01', 20),
(5, 12, 'ee', '2024-05-07 15:19:50', '2024-05-07 15:19:50', 20),
(6, 13, 'ee', '2024-05-11 16:12:18', '2024-05-11 16:12:18', 20),
(7, 16, 'dd', '2024-05-11 16:48:05', '2024-05-11 16:48:05', 34),
(8, 17, 'ddss', '2024-05-11 16:48:56', '2024-05-11 16:48:56', 344),
(9, 18, 'ddddcc', '2024-05-11 16:52:26', '2024-05-11 16:52:26', 223333),
(10, 19, 'Dd', '2024-05-11 17:15:49', '2024-05-11 17:15:49', 34),
(11, 20, 'dd', '2024-05-11 17:15:49', '2024-05-11 17:15:49', 45),
(12, 21, 'lll', '2024-05-11 17:20:17', '2024-05-11 17:20:17', 2),
(13, 22, 'OL', '2024-05-11 17:20:17', '2024-05-11 17:20:17', 22),
(14, 23, 'lll', '2024-05-11 17:25:50', '2024-05-11 17:25:50', 2),
(26, 35, 'ee', '2024-05-14 19:38:32', '2024-05-14 19:38:32', 20),
(27, 36, 'mm', '2024-05-19 20:26:15', '2024-05-19 20:26:15', 2),
(28, 36, 'dd', '2024-05-19 20:26:15', '2024-05-19 20:26:15', 23),
(29, 37, 'chemise', '2024-05-19 20:50:33', '2024-05-19 20:50:33', 3);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_28_221115_create_transactions', 1),
(6, '2024_03_28_221142_create_depense_conteneurs', 1),
(7, '2024_03_28_221244_create_dettes', 1),
(8, '2024_03_28_221252_create_conteneurs', 1),
(9, '2024_03_28_221301_create_clients', 1),
(10, '2024_03_28_221309_create_paiements', 1),
(11, '2024_03_28_221359_create_depenseclients', 1),
(12, '2024_03_28_221433_create_pays', 1),
(13, '2024_03_28_221442_create_roles', 1),
(14, '2024_03_28_221448_create_villes', 1),
(15, '2024_03_28_221454_create_comptes', 1),
(16, '2024_03_28_221504_create_dette_partenaire', 1),
(17, '2024_03_30_180011_create_depenses_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `paiements`
--

CREATE TABLE `paiements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `montant` varchar(255) NOT NULL,
  `id_client` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `paiements`
--

INSERT INTO `paiements` (`id`, `montant`, `id_client`, `created_at`, `updated_at`) VALUES
(3, '10', 12, '2024-05-08 17:30:17', '2024-05-08 17:30:17'),
(4, '20', 12, '2024-05-11 20:37:45', '2024-05-11 20:37:45'),
(6, '10', 37, '2024-05-19 19:51:57', '2024-05-19 19:51:57'),
(8, '20', 37, '2024-05-19 19:56:55', '2024-05-19 19:56:55'),
(12, '30', 37, '2024-05-20 07:41:17', '2024-05-20 07:41:17');

-- --------------------------------------------------------

--
-- Structure de la table `paiements_dettes`
--

CREATE TABLE `paiements_dettes` (
  `id` int(11) NOT NULL,
  `montant_paye` int(200) NOT NULL,
  `transaction_id` int(200) NOT NULL,
  `created_at` varchar(250) NOT NULL,
  `updated_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `paiements_dettes`
--

INSERT INTO `paiements_dettes` (`id`, `montant_paye`, `transaction_id`, `created_at`, `updated_at`) VALUES
(7, 10, 1, '2024-05-16 13:35:20', '2024-05-16 13:35:20'),
(8, 10, 1, '2024-05-16 13:36:12', '2024-05-16 13:36:12'),
(19, 10, 1, '2024-05-16 13:44:36', '2024-05-16 13:44:36'),
(26, 10, 1, '2024-05-16 13:56:11', '2024-05-16 13:56:11');

-- --------------------------------------------------------

--
-- Structure de la table `paiement_paternaires`
--

CREATE TABLE `paiement_paternaires` (
  `id` int(100) NOT NULL,
  `montant` int(200) NOT NULL,
  `id_partenaire` int(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `updated_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `intitule` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `intitule`, `created_at`, `updated_at`) VALUES
(1, 'rdc', '2024-04-01 18:00:34', '2024-04-01 18:00:34'),
(2, 'uae', '2024-04-01 18:00:34', '2024-04-01 18:00:34');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '352831332eb47a6933219b1eb611368f36ee869bba34d8a8938c33c66f6e1d3d', '[\"*\"]', NULL, NULL, '2024-03-29 07:13:49', '2024-03-29 07:13:49'),
(2, 'App\\Models\\User', 1, 'auth_token', '10ed13ce9a94e6260d9ad3af9e9fa92c2b9b6f6666557b5f977b0937d423d89c', '[\"*\"]', NULL, NULL, '2024-03-29 08:29:55', '2024-03-29 08:29:55'),
(3, 'App\\Models\\User', 1, 'auth_token', '21cf2da188bc630ded1b66b9a90cea28acadbde23248c08db1ada60d5520a455', '[\"*\"]', NULL, NULL, '2024-03-29 08:58:42', '2024-03-29 08:58:42'),
(4, 'App\\Models\\User', 1, 'auth_token', 'd0671c9f0141170197d3ba69cd59ed8ac9e7c332ad7d7dab2e2ce997ca76a1f3', '[\"*\"]', NULL, NULL, '2024-03-29 09:03:12', '2024-03-29 09:03:12'),
(5, 'App\\Models\\User', 1, 'auth_token', '84061d11d0081df537665e7e5f972d038ebc29ec6086d91d73e7bbaf12a5f13f', '[\"*\"]', NULL, NULL, '2024-03-29 09:04:12', '2024-03-29 09:04:12'),
(6, 'App\\Models\\User', 1, 'auth_token', '1f1d80b77763cd22391825072df9b5bfaa9013a353697c49f4ad972ebf2e0ed7', '[\"*\"]', NULL, NULL, '2024-03-29 09:17:31', '2024-03-29 09:17:31'),
(7, 'App\\Models\\User', 1, 'auth_token', '8b1bf665cc29dee1805ee85182d4cde7014b644febb22fb642baf5830bc12a0a', '[\"*\"]', '2024-03-30 17:01:49', NULL, '2024-03-29 09:23:56', '2024-03-30 17:01:49'),
(8, 'App\\Models\\User', 1, 'auth_token', '8c612b8924fe5b46137df3d69266ffb6cf3b0102d27d5d0972d75221325c0823', '[\"*\"]', NULL, NULL, '2024-03-30 11:35:32', '2024-03-30 11:35:32'),
(9, 'App\\Models\\User', 1, 'auth_token', '1b0e2e8060f8f59ea051db19a5a422ac6fe28caf0b5291ef33121d20ba92e129', '[\"*\"]', NULL, NULL, '2024-03-30 11:36:44', '2024-03-30 11:36:44'),
(10, 'App\\Models\\User', 1, 'auth_token', '46189443f776722e1ff015ce0642b902a13cd1a92e7748dfe91729530287491c', '[\"*\"]', NULL, NULL, '2024-03-30 11:37:03', '2024-03-30 11:37:03'),
(11, 'App\\Models\\User', 1, 'auth_token', '34df74b3d69870f0b9d8edafe366562e887c078a9668532278c1031cff016bcd', '[\"*\"]', NULL, NULL, '2024-03-30 11:37:13', '2024-03-30 11:37:13'),
(12, 'App\\Models\\User', 1, 'auth_token', 'fdc1be28af0996332f92bb714833549e09874ffe733d6bb6cf9fdc51bb41ae81', '[\"*\"]', NULL, NULL, '2024-03-30 11:37:29', '2024-03-30 11:37:29'),
(13, 'App\\Models\\User', 1, 'auth_token', 'c87aa3800fc96e7daa56f645b7f8be71ad6d22e67ff9f5b20b1285b58e56d1e2', '[\"*\"]', NULL, NULL, '2024-03-30 11:37:38', '2024-03-30 11:37:38'),
(14, 'App\\Models\\User', 1, 'auth_token', 'fd9439018340d38eb91a7ef57a942b1c3149e00e7f19894518378f8850f64a4f', '[\"*\"]', NULL, NULL, '2024-03-30 11:37:43', '2024-03-30 11:37:43'),
(15, 'App\\Models\\User', 1, 'auth_token', 'a17efdb9e2e597c0cdcfb0162b3adba6a7240eb2f28273a76a42795c5391fda7', '[\"*\"]', NULL, NULL, '2024-03-30 11:37:52', '2024-03-30 11:37:52'),
(16, 'App\\Models\\User', 1, 'auth_token', '2ca998057fd25c352d0ca82cc894442c18a8f5ab8893f6c78dbf693cedd65e0e', '[\"*\"]', NULL, NULL, '2024-03-30 11:38:23', '2024-03-30 11:38:23'),
(17, 'App\\Models\\User', 1, 'auth_token', 'e5a10b222b8936a3ad796cd18ba69d1227dca1c36972c5ca3f05865d9f54c9d0', '[\"*\"]', NULL, NULL, '2024-03-30 11:38:24', '2024-03-30 11:38:24'),
(18, 'App\\Models\\User', 1, 'auth_token', '1ac67cb2721a3ff00667bcb5bc9f5b1e9e9023265fd6a9e72db8ff7ae582fed8', '[\"*\"]', NULL, NULL, '2024-03-30 11:39:27', '2024-03-30 11:39:27'),
(19, 'App\\Models\\User', 1, 'auth_token', '7db489cb8e82cbe34508e7c60acd54bb861856e0eee82a4d07583623b8ada71b', '[\"*\"]', NULL, NULL, '2024-03-30 11:40:46', '2024-03-30 11:40:46'),
(20, 'App\\Models\\User', 1, 'auth_token', 'cd1738437723a2d021d37f64773f3cece691e44eb2b44946ce8be67d3d951a6f', '[\"*\"]', NULL, NULL, '2024-03-30 11:46:57', '2024-03-30 11:46:57'),
(21, 'App\\Models\\User', 1, 'auth_token', 'a8200f740558c920fc8d4185ce968108ddd164762b912dd1e3858e79268a62b7', '[\"*\"]', NULL, NULL, '2024-03-30 11:47:46', '2024-03-30 11:47:46'),
(22, 'App\\Models\\User', 1, 'auth_token', '28a3b184d73c744d48d045ab77c99d3907f5bb1af9b2ba0d5238067261f62303', '[\"*\"]', NULL, NULL, '2024-03-30 11:47:53', '2024-03-30 11:47:53'),
(23, 'App\\Models\\User', 1, 'auth_token', '5b58df6a613deec01ba9d181a57b30a48c32afa04b1a0b2962f1f3663759b2f4', '[\"*\"]', NULL, NULL, '2024-03-30 11:48:14', '2024-03-30 11:48:14'),
(24, 'App\\Models\\User', 1, 'auth_token', 'c26e4049e99b52829a512a749638a8ccf443ba7813834ac68d974ea6ff15e843', '[\"*\"]', NULL, NULL, '2024-03-30 11:48:25', '2024-03-30 11:48:25'),
(25, 'App\\Models\\User', 1, 'auth_token', 'f13017b33c7c34512ac5ea806f76dd2cf4c83739cab90f5bc5484fa0de768b77', '[\"*\"]', NULL, NULL, '2024-03-30 11:51:13', '2024-03-30 11:51:13'),
(26, 'App\\Models\\User', 1, 'auth_token', '5bb4601090e3984953740861217bf0c3e0502029accce6c43191b291d673f2be', '[\"*\"]', NULL, NULL, '2024-03-30 11:51:17', '2024-03-30 11:51:17'),
(27, 'App\\Models\\User', 1, 'auth_token', '6ddd3622269c9cd4fd8eb4ed93b36583711957af7b53efd6b7a57d36a8c68bb2', '[\"*\"]', NULL, NULL, '2024-03-30 11:51:40', '2024-03-30 11:51:40'),
(28, 'App\\Models\\User', 1, 'auth_token', '90f82f09cd74f7245f680f882def2bbd2c6f09d0712bac25f191f731274c8be1', '[\"*\"]', NULL, NULL, '2024-03-30 11:53:55', '2024-03-30 11:53:55'),
(29, 'App\\Models\\User', 1, 'auth_token', '55ee654b537ee67079c6173b5fca2152a35ca09b00b0aa81d0156feb103aa413', '[\"*\"]', NULL, NULL, '2024-03-30 11:54:29', '2024-03-30 11:54:29'),
(30, 'App\\Models\\User', 1, 'auth_token', 'b172a20313372c5c66976fdf9f2ad20ae723c403980082d3d6e81cba88fea4b4', '[\"*\"]', NULL, NULL, '2024-03-30 11:57:48', '2024-03-30 11:57:48'),
(31, 'App\\Models\\User', 1, 'auth_token', 'a04cb7b9b800c179edf0b0d939c1b779b44559e3eade6b5cada3dd1b40f6a9f0', '[\"*\"]', NULL, NULL, '2024-03-30 11:59:09', '2024-03-30 11:59:09'),
(32, 'App\\Models\\User', 1, 'auth_token', '1a11abd2d385c6a095372335e52589e4b19a4e95318cfcd711f0cb296e44dba1', '[\"*\"]', NULL, NULL, '2024-03-30 12:16:51', '2024-03-30 12:16:51'),
(33, 'App\\Models\\User', 1, 'auth_token', '95a3316e918687fc6d0311d3210d9fe9f8450d2731ba5baaf798fcad9b144875', '[\"*\"]', NULL, NULL, '2024-03-30 12:17:50', '2024-03-30 12:17:50'),
(34, 'App\\Models\\User', 1, 'auth_token', '819182c0e97abb620e32ae162dc126de653dc5cfc45068071e6b3a181fb3c0ae', '[\"*\"]', NULL, NULL, '2024-03-30 12:18:57', '2024-03-30 12:18:57'),
(35, 'App\\Models\\User', 1, 'auth_token', '19ed8ca7a99f4277e4571e009adedba75ce5262b0a1916992169f069eca20d18', '[\"*\"]', NULL, NULL, '2024-03-30 12:20:07', '2024-03-30 12:20:07'),
(36, 'App\\Models\\User', 1, 'auth_token', '51976720e819a67dfd90fe2f8dae9d5fa49c22304582d1e89ac86f03cdbc68f8', '[\"*\"]', NULL, NULL, '2024-03-30 12:20:36', '2024-03-30 12:20:36'),
(37, 'App\\Models\\User', 1, 'auth_token', '373a6eedb7a87349c467c67171d1729a5ec958491a030b2d0ff4cb2c928a0d38', '[\"*\"]', NULL, NULL, '2024-03-30 12:20:59', '2024-03-30 12:20:59'),
(38, 'App\\Models\\User', 1, 'auth_token', '0fd04e369cbfb89f7a7280f6fa8216de268f083a196f361ac1878f63ba53590e', '[\"*\"]', '2024-03-30 17:01:52', NULL, '2024-03-30 12:49:10', '2024-03-30 17:01:52'),
(39, 'App\\Models\\User', 1, 'auth_token', '2fb71530181bd0a664a7c20efc812af203fe025f1f8bc41095212b1dec31c4fb', '[\"*\"]', NULL, NULL, '2024-03-30 15:44:57', '2024-03-30 15:44:57'),
(40, 'App\\Models\\User', 1, 'auth_token', '4858a2c387e6fbb2c10a1e16379b977ae74afd5e8240dc1774eb715458280f43', '[\"*\"]', '2024-03-30 16:16:36', NULL, '2024-03-30 15:46:07', '2024-03-30 16:16:36'),
(41, 'App\\Models\\User', 1, 'auth_token', 'd14c3b84e7eff345dde02149cff04d44744fb17d2097074dff69690b01558eaa', '[\"*\"]', '2024-04-01 18:34:12', NULL, '2024-03-31 11:59:19', '2024-04-01 18:34:12'),
(42, 'App\\Models\\User', 1, 'auth_token', 'c062944b4ae79a6e7e1323eff37400fb9566106992be3a7e7ecf5a751f11c19c', '[\"*\"]', NULL, NULL, '2024-04-01 16:41:16', '2024-04-01 16:41:16'),
(43, 'App\\Models\\User', 1, 'auth_token', '2ba5f20b95e6619b9186f010cc2f85e64fbeb8dcf20919c939ef1907e30e07f1', '[\"*\"]', NULL, NULL, '2024-04-01 16:54:45', '2024-04-01 16:54:45'),
(44, 'App\\Models\\User', 1, 'auth_token', '18ba442cb55d217613e1c098f19ab33c54d2f55c301b42c47b2592b13fcf2c4f', '[\"*\"]', '2024-04-01 17:00:56', NULL, '2024-04-01 16:56:18', '2024-04-01 17:00:56'),
(45, 'App\\Models\\User', 1, 'auth_token', '2902d5e6e4b0889d57c6e6b18becbcefe1f3708a888da45fd7cb73558e080aeb', '[\"*\"]', '2024-04-01 17:03:37', NULL, '2024-04-01 17:01:34', '2024-04-01 17:03:37'),
(46, 'App\\Models\\User', 1, 'auth_token', 'd06f73d535811fd9aa02e259447916a8f0b4cc72ddec8b52cbd30a63fbefe75f', '[\"*\"]', NULL, NULL, '2024-04-01 17:49:24', '2024-04-01 17:49:24'),
(47, 'App\\Models\\User', 1, 'auth_token', '977a3c3d7afa979e69e5bdbab1142b26318e75325b20d222452ecd42067b99ac', '[\"*\"]', '2024-04-01 18:35:19', NULL, '2024-04-01 17:49:58', '2024-04-01 18:35:19'),
(48, 'App\\Models\\User', 1, 'auth_token', '4616f9651e5a2dd210725dac86e2251526656c78569bc8fab98ea9338940eb12', '[\"*\"]', '2024-05-20 07:40:05', NULL, '2024-04-08 14:39:57', '2024-05-20 07:40:05'),
(49, 'App\\Models\\User', 1, 'auth_token', '7af549c3c723cb66edc91105e01db653acaf2926d51da0d69485e0dd5dabdd61', '[\"*\"]', NULL, NULL, '2024-04-08 16:12:58', '2024-04-08 16:12:58'),
(50, 'App\\Models\\User', 1, 'auth_token', 'a21cd5523c52f84615d9e3b9845ebf64744146301410979afe12ede9de294ea4', '[\"*\"]', NULL, NULL, '2024-04-08 16:16:16', '2024-04-08 16:16:16'),
(51, 'App\\Models\\User', 1, 'auth_token', 'f43a205b084a1606a4a815c9b7ff27a30771b327cca70a2e17f0b365197f33a6', '[\"*\"]', NULL, NULL, '2024-04-08 16:19:21', '2024-04-08 16:19:21'),
(52, 'App\\Models\\User', 1, 'auth_token', 'fde24d283284518fb2c034dd3457fb99aeb141cd7a25c50a822c8ddc7b31b75e', '[\"*\"]', NULL, NULL, '2024-04-08 16:21:10', '2024-04-08 16:21:10'),
(53, 'App\\Models\\User', 1, 'auth_token', '91ccbf8b7fd57d3df9b675e2295e6e730f8520648cf8de3fc7e139661dce0efd', '[\"*\"]', NULL, NULL, '2024-04-08 16:22:46', '2024-04-08 16:22:46'),
(54, 'App\\Models\\User', 1, 'auth_token', 'a731e3a4a3bf414a1c49fa1089734d80bd7adf2a73e72af842e57fe8668e3244', '[\"*\"]', '2024-04-08 16:42:14', NULL, '2024-04-08 16:24:26', '2024-04-08 16:42:14'),
(55, 'App\\Models\\User', 1, 'auth_token', '84198e6d947cc8d1b68d021af36c42a88d962dfd31a216235b06b581b61e15ac', '[\"*\"]', NULL, NULL, '2024-04-08 16:54:42', '2024-04-08 16:54:42'),
(56, 'App\\Models\\User', 1, 'auth_token', '3dab68e42f5de23a73df812444ccbf92a3d9a546fc86b09ebbd36675c3cf89c1', '[\"*\"]', NULL, NULL, '2024-04-08 16:57:39', '2024-04-08 16:57:39'),
(57, 'App\\Models\\User', 1, 'auth_token', '22bfe8cd839ae002665483241d5b4b4bc98968827aeb373857dcd7f4b1def83f', '[\"*\"]', '2024-04-08 20:09:00', NULL, '2024-04-08 16:58:57', '2024-04-08 20:09:00'),
(58, 'App\\Models\\User', 1, 'auth_token', '1e893dd8e946b202c595a8f3251a41e2a6c2baf7263c96f33efaa770aac169ab', '[\"*\"]', '2024-04-08 20:13:04', NULL, '2024-04-08 20:12:27', '2024-04-08 20:13:04'),
(59, 'App\\Models\\User', 1, 'auth_token', '7eddd8af940f664dd0686a9b5df70634ae6e0b6c0729275875a7168ef5df6c94', '[\"*\"]', '2024-04-08 20:33:16', NULL, '2024-04-08 20:13:43', '2024-04-08 20:33:16'),
(60, 'App\\Models\\User', 1, 'auth_token', '2e8c52aa6136cb08f04871088ddfa7636a001b89a181b0b749da950ecdeb29d6', '[\"*\"]', '2024-04-08 22:24:27', NULL, '2024-04-08 22:00:49', '2024-04-08 22:24:27'),
(61, 'App\\Models\\User', 1, 'auth_token', '43215c1625df3208fb16d6127a159c07d869f67da0e04531b7d62205160dc8c7', '[\"*\"]', '2024-04-09 20:44:23', NULL, '2024-04-09 16:49:51', '2024-04-09 20:44:23'),
(62, 'App\\Models\\User', 1, 'auth_token', '0b45aa3bc0c82100ba359d90d5d0035670b76611355c797104a0a09706b2426f', '[\"*\"]', '2024-04-09 21:30:44', NULL, '2024-04-09 20:44:53', '2024-04-09 21:30:44'),
(63, 'App\\Models\\User', 1, 'auth_token', '440f71277caef34890c6202e8b5fb8f62f80d7ba11fd8d4165fcba15e57d99b4', '[\"*\"]', '2024-04-12 06:42:45', NULL, '2024-04-11 08:08:04', '2024-04-12 06:42:45'),
(64, 'App\\Models\\User', 1, 'auth_token', 'ccf81f889297fa15ee7a665c45a233e609b25ea1459c26ae63823e54415a329a', '[\"*\"]', '2024-05-21 14:01:37', NULL, '2024-04-11 08:21:57', '2024-05-21 14:01:37'),
(65, 'App\\Models\\User', 1, 'auth_token', '7763950d3a2517529a56ed21b8568179e27d3c08881149d2e442dd20b9c0d0d3', '[\"*\"]', '2024-04-12 22:09:46', NULL, '2024-04-12 22:09:15', '2024-04-12 22:09:46'),
(66, 'App\\Models\\User', 1, 'auth_token', '8bd02598278ebb47f48d1ce3824c2ab6b043fc2f463470cd56fde263be5b6526', '[\"*\"]', '2024-04-14 20:25:21', NULL, '2024-04-13 11:43:49', '2024-04-14 20:25:21'),
(67, 'App\\Models\\User', 1, 'auth_token', '737c8374a009edeaf16ba715d96fadbc88e853a40b2483af99dedb33c54d9ed1', '[\"*\"]', '2024-04-14 21:02:50', NULL, '2024-04-14 20:32:20', '2024-04-14 21:02:50'),
(68, 'App\\Models\\User', 1, 'auth_token', '73006f58d58796787fdd3e5b13af1d0f4ce0cb4536d3b9af8ccbf3425fbdbba1', '[\"*\"]', '2024-04-17 05:59:45', NULL, '2024-04-16 20:27:49', '2024-04-17 05:59:45'),
(69, 'App\\Models\\User', 1, 'auth_token', 'f2e3a2ec432ade684056171b2b8e3d9c0dd5f8ab229d2276ecf2d6b716cd0071', '[\"*\"]', '2024-04-22 16:58:08', NULL, '2024-04-22 16:13:17', '2024-04-22 16:58:08'),
(70, 'App\\Models\\User', 1, 'auth_token', 'd9dbd600dafcfd7f055986b3a210abde46c0be59f74fa891cadcc6693e2d0dfd', '[\"*\"]', '2024-04-23 15:00:17', NULL, '2024-04-22 17:21:23', '2024-04-23 15:00:17'),
(71, 'App\\Models\\User', 1, 'auth_token', '6f67dd3d7ab1b60194a3d84cf074a04a4ad5c9813f92007d2d6212d5464a478a', '[\"*\"]', '2024-04-23 19:40:07', NULL, '2024-04-23 16:31:57', '2024-04-23 19:40:07'),
(72, 'App\\Models\\User', 1, 'auth_token', '525dba5cb90d1f33445b0267a48f5104ee9ad513a855313e99bf16089ab5eda1', '[\"*\"]', '2024-04-25 07:52:29', NULL, '2024-04-25 07:18:57', '2024-04-25 07:52:29'),
(73, 'App\\Models\\User', 1, 'auth_token', '56cc60737a0636943f98f802c9d16b28ebdff216ea3e594f7d431c8489fbb5b2', '[\"*\"]', '2024-04-25 09:41:49', NULL, '2024-04-25 07:53:06', '2024-04-25 09:41:49'),
(74, 'App\\Models\\User', 1, 'auth_token', 'ad6b412d4db0fad1f6a13eb1ac6c8bb7cc502fef3ffffe8a7b2fba0f0b814238', '[\"*\"]', '2024-04-25 10:04:09', NULL, '2024-04-25 10:02:56', '2024-04-25 10:04:09'),
(75, 'App\\Models\\User', 1, 'auth_token', 'd0a3f0d8b1fd59eef9aae68b5abac7fc4a1555d78659a1928394d2e62f7444d5', '[\"*\"]', NULL, NULL, '2024-04-27 14:16:13', '2024-04-27 14:16:13'),
(76, 'App\\Models\\User', 1, 'auth_token', '4d6808ea823ab880498b5c7c50dba0d72b85c9f4b9553ca982b77fee1895582e', '[\"*\"]', '2024-04-29 19:30:21', NULL, '2024-04-27 14:16:34', '2024-04-29 19:30:21'),
(77, 'App\\Models\\User', 1, 'auth_token', '17a89f022e0b30950a3c6478162a853628ce99ba5c9682793928187bd392c015', '[\"*\"]', '2024-04-29 20:34:38', NULL, '2024-04-29 19:33:19', '2024-04-29 20:34:38'),
(78, 'App\\Models\\User', 1, 'auth_token', 'f06ef01371ecfd4f4271175c01b54ad35c388c3a83d0e036315003461644ac09', '[\"*\"]', '2024-04-30 09:04:07', NULL, '2024-04-30 07:59:35', '2024-04-30 09:04:07'),
(79, 'App\\Models\\User', 1, 'auth_token', '81e46f2b24af43721b2c5e14f4a5b2e9658fc7539e722aabf899c1883e1101c8', '[\"*\"]', '2024-04-30 09:38:07', NULL, '2024-04-30 09:27:26', '2024-04-30 09:38:07'),
(80, 'App\\Models\\User', 1, 'auth_token', '370696217c440b1f6e59051901f4ee664c29676a60d7e9cb04160c4d0a2de46b', '[\"*\"]', '2024-04-30 11:33:40', NULL, '2024-04-30 10:34:52', '2024-04-30 11:33:40'),
(81, 'App\\Models\\User', 1, 'auth_token', '0b79f4f468dd240a59a40434ca9532c2c085b4e449b5969daf1ea9dd3b2ae4ae', '[\"*\"]', '2024-04-30 11:37:18', NULL, '2024-04-30 11:34:07', '2024-04-30 11:37:18'),
(82, 'App\\Models\\User', 1, 'auth_token', '302909e994fb95e62265edbef4b1db21c05474ed101de8c879ed6b2b58a1d75d', '[\"*\"]', '2024-04-30 12:10:17', NULL, '2024-04-30 11:38:05', '2024-04-30 12:10:17'),
(83, 'App\\Models\\User', 1, 'auth_token', '86c7518f05890db272f0f4378ee1075829ffa0922a8bf653d63f12b92ec038a3', '[\"*\"]', NULL, NULL, '2024-04-30 18:51:58', '2024-04-30 18:51:58'),
(84, 'App\\Models\\User', 1, 'auth_token', 'fe1a802a54533820a4b7edf582eccfb2bc3a9972ddc18a881e16fb2266f84096', '[\"*\"]', NULL, NULL, '2024-04-30 19:00:31', '2024-04-30 19:00:31'),
(85, 'App\\Models\\User', 1, 'auth_token', '68b7ba3caef7d3d9cf57e471016456ffa123ac7b0f1bdd9178c46a85fe645ccc', '[\"*\"]', '2024-04-30 21:43:26', NULL, '2024-04-30 19:00:57', '2024-04-30 21:43:26'),
(86, 'App\\Models\\User', 1, 'auth_token', '83072884899c767fdffa7882f484767838f3cc75c66641df36ed13cc7fa605fc', '[\"*\"]', '2024-05-01 18:59:59', NULL, '2024-05-01 11:37:44', '2024-05-01 18:59:59'),
(87, 'App\\Models\\User', 1, 'auth_token', '4ea678c9433d89055af5b94edc5c7b1bad9ecc10cfc35a8b0ad04669121a687d', '[\"*\"]', '2024-05-06 09:08:53', NULL, '2024-05-06 07:07:03', '2024-05-06 09:08:53'),
(88, 'App\\Models\\User', 1, 'auth_token', 'e49441434c9923763bba291fd1dca56ded41d106e412940c7a8d906445e874f1', '[\"*\"]', '2024-05-06 19:36:21', NULL, '2024-05-06 16:18:09', '2024-05-06 19:36:21'),
(89, 'App\\Models\\User', 1, 'auth_token', 'dcefe7a46a1f0f4a9dfaa8b4fb8d38e546e620bc1e792f88ce05c6c061f891f6', '[\"*\"]', '2024-05-07 06:07:36', NULL, '2024-05-06 19:38:54', '2024-05-07 06:07:36'),
(90, 'App\\Models\\User', 1, 'auth_token', '45156f291d1b4c8f2e1c664320b4ab6321397a2bedd615c592c5cc3b2dd1f515', '[\"*\"]', '2024-05-07 20:22:52', NULL, '2024-05-07 11:59:01', '2024-05-07 20:22:52'),
(91, 'App\\Models\\User', 1, 'auth_token', 'e5b99d6590c8a7f60c83f9d63b48168707d7de23a685597a41fd033875488d9e', '[\"*\"]', '2024-05-08 07:01:29', NULL, '2024-05-07 20:23:40', '2024-05-08 07:01:29'),
(92, 'App\\Models\\User', 1, 'auth_token', 'd1625e99b1ac7656a820c612ea5310520f43ee982b76192c9de4711ec85ca5cf', '[\"*\"]', '2024-05-09 09:24:25', NULL, '2024-05-08 16:26:13', '2024-05-09 09:24:25'),
(93, 'App\\Models\\User', 1, 'auth_token', 'b9a5f42da57ea30daea23c371809baec158464e4460cc492282d7777738ee193', '[\"*\"]', '2024-05-09 12:09:26', NULL, '2024-05-09 12:09:10', '2024-05-09 12:09:26'),
(94, 'App\\Models\\User', 1, 'auth_token', 'e979af3ef50759e4cbb9deb9f0fc738288ed4585d82ac9f38235642c2fe3e1d0', '[\"*\"]', '2024-05-11 19:23:04', NULL, '2024-05-11 12:04:31', '2024-05-11 19:23:04'),
(95, 'App\\Models\\User', 1, 'auth_token', 'c42df04e3c05ccae38233807e1400d72ce88e3277d7a5fc45fb3d5bff0cf921b', '[\"*\"]', '2024-05-11 21:46:29', NULL, '2024-05-11 19:24:11', '2024-05-11 21:46:29'),
(96, 'App\\Models\\User', 1, 'auth_token', '9bbc9fad25c6d55bd88851809299dff1cc73ab38f8660aed026069fe88d3b645', '[\"*\"]', '2024-05-14 16:50:49', NULL, '2024-05-14 16:39:34', '2024-05-14 16:50:49'),
(97, 'App\\Models\\User', 1, 'auth_token', '3fd4af1b30fcaedbc981d76b6bda340ad16956ae749e94b2444882ce942fd173', '[\"*\"]', '2024-05-15 07:16:43', NULL, '2024-05-14 16:55:31', '2024-05-15 07:16:43'),
(98, 'App\\Models\\User', 1, 'auth_token', 'e81f39c166a358c5ed12ce290b85be13e83396f765b041e128733f3cf4c5ea60', '[\"*\"]', '2024-05-15 17:36:17', NULL, '2024-05-15 16:51:55', '2024-05-15 17:36:17'),
(99, 'App\\Models\\User', 1, 'auth_token', '60923cae9f12931f7fd7a939f04980857a01235bd46167cc8c240f1ba4a5fcb1', '[\"*\"]', '2024-05-18 09:54:45', NULL, '2024-05-16 08:22:28', '2024-05-18 09:54:45'),
(100, 'App\\Models\\User', 1, 'auth_token', '9711b23ae5afe2388f03664f96afec22befbca32becbb126deca11328913592e', '[\"*\"]', '2024-05-19 20:09:39', NULL, '2024-05-19 14:42:46', '2024-05-19 20:09:39'),
(101, 'App\\Models\\User', 1, 'auth_token', '671616cfe17853ec04cd5873413dfa3ef338d462a6da2ad62a7c1c5349ace68c', '[\"*\"]', '2024-05-19 20:41:15', NULL, '2024-05-19 20:16:37', '2024-05-19 20:41:15'),
(102, 'App\\Models\\User', 1, 'auth_token', 'a251646de12c410ea2db3a6f0fd732a21e967b3fc1153be70333d2b73a0cf4b3', '[\"*\"]', '2024-05-19 21:16:56', NULL, '2024-05-19 20:45:31', '2024-05-19 21:16:56'),
(103, 'App\\Models\\User', 1, 'auth_token', 'a458bf1765597585563da696f6bf9168c0a408572bff7e2e06a1615efab82e5c', '[\"*\"]', '2024-05-20 10:13:06', NULL, '2024-05-20 06:04:04', '2024-05-20 10:13:06'),
(104, 'App\\Models\\User', 1, 'auth_token', 'dc4bcf354682e0bd48db6454d2fc4d2feb08328409c4024a6a16754ef75267dc', '[\"*\"]', '2024-05-20 10:24:39', NULL, '2024-05-20 10:15:04', '2024-05-20 10:24:39'),
(105, 'App\\Models\\User', 1, 'auth_token', 'f46d925923b7940fb9fff0234a3f612984a82bef66ebf35cf4f888a37c9a25a5', '[\"*\"]', '2024-05-21 08:30:52', NULL, '2024-05-20 10:24:49', '2024-05-21 08:30:52'),
(106, 'App\\Models\\User', 1, 'auth_token', '4c5abc5261a06aadeb79a05f86ea41a404b2bad1785218311bde226653f43a29', '[\"*\"]', NULL, NULL, '2024-05-21 10:23:59', '2024-05-21 10:23:59'),
(107, 'App\\Models\\User', 1, 'auth_token', '47d77371e4f5762f531cb529a99b3283a3686af3e860566f91a4a21ee3e42964', '[\"*\"]', '2024-05-21 10:46:46', NULL, '2024-05-21 10:46:39', '2024-05-21 10:46:46'),
(108, 'App\\Models\\User', 1, 'auth_token', '8861abedac25644c327e72e0d08a533565b8a2617926e2374c8dc29866410eaf', '[\"*\"]', '2024-05-21 14:50:56', NULL, '2024-05-21 10:56:26', '2024-05-21 14:50:56'),
(109, 'App\\Models\\User', 1, 'auth_token', 'ec1cebea265367171a490b3fb462cb6510fd95128f96e7284fd5c895ca202c80', '[\"*\"]', '2024-05-21 16:28:44', NULL, '2024-05-21 16:23:06', '2024-05-21 16:28:44');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `intitule` varchar(255) NOT NULL,
  `id_ville` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_emateur` varchar(255) NOT NULL,
  `nom_recepteur` varchar(255) NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `pays_provenance` int(255) NOT NULL,
  `pays_destinateut` int(255) NOT NULL,
  `montant` varchar(255) NOT NULL,
  `motif` varchar(255) NOT NULL,
  `etat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `transactions`
--

INSERT INTO `transactions` (`id`, `nom_emateur`, `nom_recepteur`, `matricule`, `telephone`, `pays_provenance`, `pays_destinateut`, `montant`, `motif`, `etat`, `created_at`, `updated_at`) VALUES
(1, 's', 's', 'dd', '22', 1, 1, '200', 'dd', '1', '2024-03-29 11:43:35', '2024-03-29 11:43:35'),
(2, 'sarah', 'dasb', '123456', '0984356', 2, 2, '400', 'achat', '3', '2024-03-30 16:47:12', '2024-03-30 16:47:12'),
(3, 'jojo', 'salem', '34455ff', '0896754123', 1, 2, '2000', 'achat', '3', '2024-04-01 22:44:08', '2024-04-01 22:44:08'),
(4, 'jules', 'eliott', '1234df', '0896789076', 2, 1, '3000', 'fouiller', '1', '2024-04-01 22:44:08', '2024-04-01 22:44:08'),
(5, 'Kbg', 'jjj', 'jjj', '44', 1, 2, '200', 'ff', '1', '2024-04-09 17:51:54', '2024-04-09 17:51:54'),
(6, 'cc', 'cc', 'cc', '333', 1, 2, '100', 'dd', '1', '2024-04-09 21:56:19', '2024-04-09 21:56:19'),
(7, 'rabby@gmail.com', '12345', '1', '12345', 1, 2, '12345', '12345', '1', '2024-04-11 11:10:28', '2024-04-11 11:10:28'),
(13, 'Rabby', 'rabbymbamu@gmail.com', 'MPO', '0822662472', 1, 2, '100', 'sss', '2', '2024-04-13 20:34:13', '2024-04-13 20:34:13'),
(14, 'Rabby', 'rabbymbamu@gmail.com', 'mlo', '0822662472', 1, 2, '1000', 'ddddd', '1', '2024-04-13 20:37:12', '2024-04-13 20:37:12'),
(15, 'Rabbyss', 'rabbymbamu@gmail.com', 'sss', '0822662472', 1, 2, '200', 'sss', '1', '2024-04-13 20:38:54', '2024-04-13 20:38:54'),
(16, 'Rabby', 'rabbymbamu@gmail.com', 'ddd', '0822662472', 2, 1, '34', 'dd', '1', '2024-04-13 20:42:43', '2024-04-13 20:42:43'),
(17, 'rabby', 'rabbymbamu@gmail.com', 'd', '0822662472', 2, 1, '100', 'ss', '2', '2024-04-13 20:44:17', '2024-04-13 20:44:17'),
(18, 'Rabby', 'rabbymbamu@gmail.com', 'dd', '0822662472', 1, 2, '1200', 'ss', '1', '2024-04-13 20:46:18', '2024-04-13 20:46:18'),
(19, 'Rabby', 'rabbymbamu@gmail.com', 'd', '0822662472', 1, 2, '300', 'dd', '2', '2024-04-13 20:47:19', '2024-04-13 20:47:19'),
(20, 'kbg', 'kbg', 'molh', '0822662472', 1, 2, '1000', 'ddd', '1', '2024-04-14 20:34:14', '2024-04-14 20:34:14'),
(21, 'kbg', 'kbg', 'bbb', '0822662472', 2, 1, '300', 'ff', '2', '2024-04-14 20:36:00', '2024-04-14 20:36:00'),
(22, 'gg', 'gg', 'gg', '0822662472', 2, 1, '400', 'dd', '1', '2024-04-14 20:36:40', '2024-04-14 20:36:40'),
(23, 'alphrina', 'kbg', 'ffffff', '0822662472', 1, 2, '200', 'bbbbbbb', '1', '2024-04-16 20:42:29', '2024-04-16 20:42:29'),
(24, 'Rabby', 'rabbymbamu@gmail.com', 'd', '0822662472', 1, 2, '100', 'xsd', '2', '2024-04-16 20:45:04', '2024-04-16 20:45:04'),
(25, 'bb', 'vv', 'ABG-2024423101752', '0822662472', 1, 2, '33', 'bb', '1', '2024-04-23 08:17:53', '2024-04-23 08:17:53'),
(26, 'cc', 'cc', 'ABG-2024423102528', '0822662472', 1, 2, '100', 'ss', '2', '2024-04-23 08:25:28', '2024-04-23 08:25:28'),
(27, 'dd', 'dd', 'ABG-202442595040', '0822662472', 1, 2, '12', 'ss', '1', '2024-04-25 07:50:40', '2024-04-25 07:50:40'),
(28, 'Rabby', 'rabbymbamu@gmail.com', 'ABG-2024425113638', '0822662472', 2, 1, '200', 'sss', '1', '2024-04-25 09:36:39', '2024-04-25 09:36:39'),
(29, 'Rabby', 'rabbymbamu@gmail.com', 'ABG-2024425113747', '0822662472', 2, 1, '3400', 'dd', '1', '2024-04-25 09:37:47', '2024-04-25 09:37:47'),
(31, 'dd', 'dd', 'ABG-202442722491', '0822662472', 2, 1, '300', 'dd', '1', '2024-04-27 20:49:01', '2024-04-27 20:49:01'),
(32, 'Rabby', 'rabbymbamu@gmail.com', 'ABG-2024427225253', '0822662472', 2, 1, '33', 's', '1', '2024-04-27 20:52:53', '2024-04-27 20:52:53'),
(33, 'alphrina', 'alphrina', 'ABG-2024429213433', '0822662472', 1, 2, '10', 'ss', '1', '2024-04-29 19:34:33', '2024-04-29 19:34:33'),
(34, 'rabby', 'ddd', 'ABG-2024429213945', '0822662472', 1, 2, '50', 'sss', '2', '2024-04-29 19:39:46', '2024-04-29 19:39:46'),
(35, 'rabby', 'rabbymbamu@gmail.com', 'ABG-2024429214143', '0822662472', 1, 2, '9', 'dd', '2', '2024-04-29 19:41:43', '2024-04-29 19:41:43'),
(39, 'ff', 'ff', 'ABG-2024581585', '0822662472', 1, 2, '4000', 'mm', '1', '2024-05-07 23:58:05', '2024-05-07 23:58:05'),
(40, 'vv', 'vv', 'ABG-2024581599', '0822662472', 1, 1, '300', 'dd', '2', '2024-05-07 23:59:10', '2024-05-07 23:59:10'),
(41, 'dd', 'dd', 'ABG-2024515191144', '0822662472', 1, 2, '100', 'dd', '1', '2024-05-15 17:11:45', '2024-05-15 17:11:45'),
(46, 'mbamu', 'md', 'ABG-202452010291', '0822662472', 1, 1, '10', 'dd', '1', '2024-05-20 08:29:01', '2024-05-20 08:29:01'),
(47, 'dd', 'dd', 'ABG-202452016180', '0822662472', 2, 1, '1000', 'dd', '1', '2024-05-20 14:18:00', '2024-05-20 14:18:00'),
(48, 'dd', 'dd', 'ABG-2024520161937', '0822662472', 1, 1, '1000', 'dd', '1', '2024-05-20 14:19:37', '2024-05-20 14:19:37'),
(49, 'dd', 'dd', 'ABG-2024520161946', '0822662472', 1, 1, '1000', 'dd', '1', '2024-05-20 14:19:46', '2024-05-20 14:19:46'),
(50, 'dd', 'dd', 'ABG-202452016212', '0822662472', 2, 1, '1000', 'dd', '1', '2024-05-20 14:21:02', '2024-05-20 14:21:02');

-- --------------------------------------------------------

--
-- Structure de la table `type_depenses`
--

CREATE TABLE `type_depenses` (
  `id` int(11) NOT NULL,
  `intitule` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `updated_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `type_depenses`
--

INSERT INTO `type_depenses` (`id`, `intitule`, `created_at`, `updated_at`) VALUES
(5, 'Commission', '2024-05-06 21:09:44', '2024-05-06 21:09:44'),
(6, 'Demande BL', '2024-05-06 21:09:57', '2024-05-06 21:09:57'),
(7, 'legalisation communal', '2024-05-06 21:10:17', '2024-05-06 21:10:17'),
(8, 'RUFFIN', '2024-05-06 21:10:27', '2024-05-06 21:10:27');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `id_ville` varchar(255) NOT NULL,
  `postnom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `id_ville`, `postnom`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kikwele', '1', 'Rabby', 'rabby@gmail.com', NULL, '$2y$12$D1pJfBxrRmB5Ndh4C44yiOKuoy5jpEp1B/JuHiMPZSgVThh6G6MlW', NULL, '2024-03-29 07:09:05', '2024-05-20 10:24:39'),
(2, 'sss', 'ss', 'ss', 'ss', NULL, '$2y$12$mLD8nGF2rzOTW9HuqUh7X.nZshWKuFedOwn4LVKO1s0VdslcitJSK', NULL, '2024-05-19 16:13:25', '2024-05-19 16:13:25');

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `intitule` varchar(255) NOT NULL,
  `id_pays` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `intitule`, `id_pays`, `created_at`, `updated_at`) VALUES
(1, 'Dubai', '1', '2024-04-01 18:01:38', '2024-04-01 18:01:38'),
(2, 'Kinshasa', '2', '2024-04-01 18:01:38', '2024-04-01 18:01:38');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clotures`
--
ALTER TABLE `clotures`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comptes`
--
ALTER TABLE `comptes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `conteneurs`
--
ALTER TABLE `conteneurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `depenses`
--
ALTER TABLE `depenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `depense_clients`
--
ALTER TABLE `depense_clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `depense_conteneurs`
--
ALTER TABLE `depense_conteneurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dettes`
--
ALTER TABLE `dettes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dette_partenaires`
--
ALTER TABLE `dette_partenaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `marchandises`
--
ALTER TABLE `marchandises`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `paiements`
--
ALTER TABLE `paiements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `paiements_dettes`
--
ALTER TABLE `paiements_dettes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_depenses`
--
ALTER TABLE `type_depenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `clotures`
--
ALTER TABLE `clotures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `comptes`
--
ALTER TABLE `comptes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `conteneurs`
--
ALTER TABLE `conteneurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `depenses`
--
ALTER TABLE `depenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `depense_clients`
--
ALTER TABLE `depense_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `depense_conteneurs`
--
ALTER TABLE `depense_conteneurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `dettes`
--
ALTER TABLE `dettes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `dette_partenaires`
--
ALTER TABLE `dette_partenaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `marchandises`
--
ALTER TABLE `marchandises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `paiements`
--
ALTER TABLE `paiements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `paiements_dettes`
--
ALTER TABLE `paiements_dettes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `type_depenses`
--
ALTER TABLE `type_depenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
