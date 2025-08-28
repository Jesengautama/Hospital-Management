-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2025 at 09:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalman`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hospital_id` bigint(20) UNSIGNED NOT NULL,
  `specialty_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `hospital_id`, `specialty_id`, `name`, `email`, `phone`, `bio`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 'Mr. Jordi Parker', 'guadalupe.fay@example.net', '678-561-4008', 'Perspiciatis esse nihil aperiam numquam. Laborum quod voluptas dolores. Explicabo est qui perspiciatis ab est quidem.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(2, 1, 3, 'Johathan Hammes', 'samantha41@example.net', '+1-936-974-6745', 'Qui incidunt perferendis consequatur quis et omnis sint porro. Cupiditate ea qui voluptatem distinctio nulla minus quaerat. Enim illo fugiat sit.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(3, 1, 5, 'Annalise Klein', 'green.emmanuelle@example.com', '352-514-4639', 'Omnis et iure magnam excepturi optio aut. Id et et corrupti illo est. Molestias odio consequatur eum illo asperiores consequatur quia. Delectus et natus deleniti id inventore quo non.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(4, 1, 5, 'Nina Oberbrunner', 'aurore.leffler@example.com', '(531) 974-0832', 'Et qui praesentium architecto similique doloremque beatae fuga. Est dicta quia et vel.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(5, 1, 6, 'Edythe Pfeffer', 'etillman@example.com', '+1-908-768-3771', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(6, 1, 2, 'Sonny Abbott', 'sipes.ransom@example.net', '+1-458-327-7069', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(7, 1, 6, 'Juston Jenkins II', 'mathias.johnson@example.org', '(662) 580-3956', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(8, 1, 7, 'Travon Frami', 'greta.west@example.org', '947-993-9350', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(9, 2, 3, 'Dr. Webster Jones', 'block.laron@example.com', '+1-281-824-1920', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(10, 2, 4, 'Jany Hammes', 'hrosenbaum@example.com', '1-757-306-2731', 'Soluta quae dolor quaerat. In eligendi et debitis sed. Autem aut occaecati molestias natus culpa. Et non nobis consectetur temporibus rem dolores ab minus. Odio dicta minus consequatur velit dolores.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(11, 2, 6, 'Nella Rempel', 'dmetz@example.com', '1-225-716-2490', 'Quis esse optio qui incidunt nam ea. Hic nam eos eius eius consequatur vero. Facilis eum animi quibusdam voluptatem aut voluptas. Perspiciatis voluptate at incidunt et atque aperiam.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(12, 2, 3, 'Mathilde Schulist V', 'hudson.patricia@example.com', '+1 (212) 389-5420', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(13, 2, 3, 'Angelica Koch', 'rosenbaum.tamia@example.com', '+1.662.813.4455', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(14, 2, 2, 'Mrs. Mikayla Altenwerth DVM', 'gladys.bogan@example.com', '1-475-764-6819', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(15, 2, 7, 'Rosetta Smitham', 'ezekiel.mann@example.com', '364.622.5060', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(16, 2, 8, 'Ms. Carolanne Mann DVM', 'estel89@example.org', '+1-540-764-5969', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(17, 3, 2, 'Willis Reynolds', 'perry85@example.net', '(682) 557-3058', 'Harum reprehenderit cupiditate porro non magni modi earum consequuntur. Natus ea aliquid reprehenderit id. Minima doloremque aliquam ipsa at voluptatum non ipsam. Dolorem laudantium non est accusantium sunt commodi omnis ratione.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(18, 3, 6, 'Mrs. Nannie Rau PhD', 'susan64@example.com', '956-650-0798', 'Magni praesentium sed nisi reprehenderit vel. Eaque vitae nostrum tenetur eius distinctio omnis sed. Sit repudiandae aspernatur consequatur et.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(19, 3, 3, 'Dr. Earnest Schaden Sr.', 'shanahan.jermey@example.com', '+1.434.718.8073', 'Consectetur exercitationem est est fugiat officiis id. Quo sunt est corrupti accusantium mollitia ut. Eum voluptatem odit repudiandae nemo odit.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(20, 3, 9, 'Prof. Toni Crooks', 'becker.crystal@example.org', '(484) 786-7506', 'Id voluptas deleniti voluptas itaque animi. Est reiciendis natus ducimus. Natus aut architecto rerum explicabo suscipit. Aut et alias cupiditate quaerat non quibusdam mollitia.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(21, 3, 2, 'Miss Litzy Ward I', 'bnitzsche@example.org', '+1.580.994.0392', 'Minus fuga vero vitae animi tempore. A id nesciunt voluptates harum in iure. Voluptas quibusdam deserunt autem nulla qui.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(22, 3, 7, 'Prof. Rosina Moore II', 'rod86@example.com', '+1 (458) 407-3167', 'Eos amet aliquid a sequi nihil et et. Aut quo voluptas dolorum reprehenderit facilis. Quaerat autem beatae expedita est.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(23, 3, 6, 'Marilou Funk', 'blanda.haley@example.com', '+1-503-821-4555', 'Et asperiores molestiae tenetur nulla harum eum. Ea possimus temporibus magni tempore. Qui illo et fugit quia ipsam non at.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(24, 3, 6, 'Ms. Trisha Kling DVM', 'giuseppe67@example.org', '551-549-6559', 'Facere et eligendi ab illum aliquid quas vitae. Voluptatem aperiam deserunt molestiae vero ea. Aut fuga aut officia non. Est modi corporis dolorem perspiciatis est aut consequuntur.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(25, 4, 5, 'Prof. Alexandrine Klein', 'cristal79@example.net', '971-265-3020', 'Omnis qui qui rerum rerum eaque. Aspernatur consequatur iste repellat consectetur eum debitis sed. Nulla assumenda repellat dolor qui molestias consequuntur. Tempore itaque sit magni sapiente.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(26, 4, 8, 'Alisa Turcotte', 'simonis.lucas@example.org', '+1 (940) 600-0515', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(27, 4, 5, 'Anabel Rogahn', 'mossie.marvin@example.net', '301-667-5109', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(28, 4, 8, 'Anderson Keebler', 'marques.moore@example.com', '1-725-721-8428', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(29, 4, 3, 'Dr. Haleigh Orn III', 'kreiger.finn@example.com', '843-967-8651', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(30, 4, 1, 'Darlene King', 'ephraim.bogisich@example.net', '432.224.4508', 'Molestias reiciendis placeat nisi laborum nobis eaque. Veniam voluptas vel et dolore. Et temporibus omnis culpa et modi praesentium.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(31, 4, 1, 'Lonny Maggio', 'meghan.hayes@example.org', '1-623-220-9652', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(32, 4, 7, 'Prof. Deshawn Gutkowski Sr.', 'erica.wuckert@example.net', '862.960.0896', 'Necessitatibus esse nihil omnis maxime alias minima recusandae et. Tempore eum corrupti consectetur dolores et autem iusto. Quisquam nam quis numquam fugit.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(33, 5, 3, 'Dr. Olen Kuhn', 'ghermann@example.com', '762-763-3378', 'Beatae vel sed dolores tenetur. Libero dicta doloremque assumenda iusto. Modi provident maiores architecto consectetur dolor aut officia. Et ut autem iure odit consectetur maiores eum.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(34, 5, 7, 'Dr. Greyson Hudson', 'icrist@example.net', '+1.916.649.5698', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(35, 5, 10, 'Meaghan Altenwerth', 'bruen.guy@example.net', '1-734-908-5506', 'Nihil earum quam optio. Maxime sit aliquid est ut. Impedit aliquid qui eos accusantium.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(36, 5, 2, 'Mr. Murphy Homenick Sr.', 'crist.dean@example.net', '+1.307.216.5371', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(37, 5, 10, 'Tiana Mertz', 'nannie.kassulke@example.org', '+1-470-547-3016', 'Non optio dicta architecto alias et dolore illum quod. Illum expedita esse id non cupiditate autem. Id a qui nam nobis nesciunt eos.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(38, 5, 1, 'Laurence Mraz', 'ewitting@example.net', '+1 (351) 541-0553', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(39, 5, 10, 'Uriah Tremblay', 'altenwerth.kira@example.org', '(803) 655-4411', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(40, 5, 8, 'Ms. Magnolia Fahey II', 'isabell.bauch@example.net', '+16022638118', 'Esse quidem numquam sed recusandae et. Aspernatur praesentium voluptates ut a alias provident qui. Architecto harum suscipit explicabo magni perspiciatis et. Aut perferendis magni adipisci iste alias nostrum. Est aspernatur vel perferendis ut.', '2025-08-27 23:23:04', '2025-08-27 23:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `slug`, `address`, `city`, `phone`, `latitude`, `longitude`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Braun-Lueilwitz Hospital', 'braun-lueilwitz-hospital-385', '968 Christiansen Bypass Apt. 704', 'Port Roxanne', '1-510-617-9430', -4.1248270, 128.5729350, NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(2, 'Paucek-Fritsch Hospital', 'paucek-fritsch-hospital-617', '96529 Adriana Street', 'Lake Alvah', '(831) 216-9031', 0.7496850, 141.0892970, NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(3, 'Kiehn PLC Hospital', 'kiehn-plc-hospital-904', '26511 Erika Via', 'Beattyland', '+1-352-316-7718', -6.7491070, 97.0363120, 'Unde et inventore nihil quibusdam ut rerum. Ut aut sapiente dolorem maxime. Sunt quaerat numquam dolor et dolor est. Voluptatem voluptates et labore neque velit nisi.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(4, 'Gislason-Rempel Hospital', 'gislason-rempel-hospital-286', '14439 Schultz Fields Suite 013', 'Schaeferton', '+1-754-287-9937', 3.3555130, 127.6019790, 'Velit rerum sunt consequatur sed aut. Ex eum enim nobis eligendi eligendi et occaecati nobis. Pariatur eum omnis voluptatem vel explicabo rem iusto. Omnis officia similique velit voluptatem provident rerum impedit.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(5, 'Davis Group Hospital', 'davis-group-hospital-668', '264 Murray Lakes Suite 737', 'Murphymouth', '425.567.5648', -4.6751230, 100.3100750, 'Est iste commodi architecto similique. Praesentium ipsum aliquam quo doloremque earum. Qui ipsam et non et.', '2025-08-27 23:23:04', '2025-08-27 23:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_27_162447_create_hospitals_table', 1),
(5, '2025_08_27_162454_create_specialties_table', 1),
(6, '2025_08_27_162500_create_doctors_table', 1),
(7, '2025_08_27_162507_create_schedules_table', 1),
(8, '2025_08_27_162513_create_reservations_table', 1),
(9, '2025_08_27_163641_add_role_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `hospital_id` bigint(20) UNSIGNED NOT NULL,
  `specialty_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'booked',
  `reference_code` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `doctor_id`, `hospital_id`, `specialty_id`, `date`, `time`, `status`, `reference_code`, `notes`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 1, 9, '2025-08-31', '03:04:45', 'booked', 'RES-34486', 'Asperiores fugit ut tempore ex molestiae.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(2, 11, 1, 1, 9, '2025-09-02', '19:43:21', 'booked', 'RES-03730', 'Et fugit numquam quia rem.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(3, 10, 2, 1, 3, '2025-08-30', '14:38:00', 'booked', 'RES-87713', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(4, 10, 2, 1, 3, '2025-09-04', '05:06:15', 'booked', 'RES-38816', 'Vero pariatur quidem ex ut est.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(5, 8, 3, 1, 5, '2025-08-29', '11:31:55', 'booked', 'RES-06114', 'Eos unde atque consequatur exercitationem non molestias est.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(6, 11, 3, 1, 5, '2025-09-01', '08:15:06', 'booked', 'RES-10804', 'Voluptatem similique quis dolorem aperiam distinctio explicabo at.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(7, 10, 4, 1, 5, '2025-09-04', '21:35:11', 'booked', 'RES-48537', 'Officiis laborum harum eum distinctio reprehenderit vel velit.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(8, 6, 4, 1, 5, '2025-09-06', '07:10:34', 'booked', 'RES-27035', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(9, 10, 5, 1, 6, '2025-08-31', '08:14:09', 'booked', 'RES-26766', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(10, 2, 5, 1, 6, '2025-09-06', '14:42:14', 'booked', 'RES-54352', 'Recusandae sunt dolor aut rerum.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(11, 10, 6, 1, 2, '2025-09-04', '15:59:36', 'booked', 'RES-99124', 'Deserunt culpa labore saepe ullam sint.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(12, 5, 6, 1, 2, '2025-08-29', '14:15:43', 'booked', 'RES-80485', 'Facere et atque nulla assumenda saepe sapiente cumque.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(13, 5, 7, 1, 6, '2025-09-03', '10:38:45', 'booked', 'RES-38595', 'Neque voluptatem hic accusantium ea a.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(14, 11, 7, 1, 6, '2025-09-04', '21:55:57', 'booked', 'RES-99387', 'Aut esse dolor accusamus.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(15, 8, 8, 1, 7, '2025-09-02', '16:34:02', 'booked', 'RES-80823', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(16, 9, 8, 1, 7, '2025-09-05', '15:59:42', 'booked', 'RES-85065', 'Id beatae cumque delectus iste doloribus possimus eaque.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(17, 11, 9, 2, 3, '2025-09-06', '19:20:00', 'booked', 'RES-33455', 'A illum cupiditate ut dolores nam et.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(18, 10, 9, 2, 3, '2025-09-03', '23:57:49', 'booked', 'RES-47036', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(19, 7, 10, 2, 4, '2025-08-31', '05:20:03', 'booked', 'RES-32302', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(20, 9, 10, 2, 4, '2025-08-30', '05:26:15', 'booked', 'RES-17102', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(21, 11, 11, 2, 6, '2025-09-02', '19:15:06', 'booked', 'RES-56279', 'Eligendi eum enim itaque harum.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(22, 10, 11, 2, 6, '2025-08-30', '12:49:04', 'booked', 'RES-94115', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(23, 5, 12, 2, 3, '2025-08-30', '23:52:45', 'booked', 'RES-75010', 'Eligendi ut aliquam adipisci vel laudantium autem.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(24, 3, 12, 2, 3, '2025-08-30', '10:34:49', 'booked', 'RES-13872', 'Modi beatae et officia rerum eius.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(25, 4, 13, 2, 3, '2025-08-29', '06:50:02', 'booked', 'RES-24708', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(26, 3, 13, 2, 3, '2025-09-04', '17:20:52', 'booked', 'RES-26514', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(27, 2, 14, 2, 2, '2025-09-03', '09:32:49', 'booked', 'RES-33761', 'Nobis dolores voluptatibus qui nulla quod.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(28, 5, 14, 2, 2, '2025-08-30', '06:11:14', 'booked', 'RES-90250', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(29, 7, 15, 2, 7, '2025-09-05', '10:37:45', 'booked', 'RES-68842', 'Quia soluta aut dolorem possimus est et sint.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(30, 5, 15, 2, 7, '2025-09-05', '13:52:01', 'booked', 'RES-73618', 'Quia illo et odit dicta et id sed.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(31, 5, 16, 2, 8, '2025-09-01', '11:33:17', 'booked', 'RES-76784', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(32, 11, 16, 2, 8, '2025-09-04', '07:04:16', 'booked', 'RES-17949', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(33, 2, 17, 3, 2, '2025-08-31', '01:09:59', 'booked', 'RES-75198', 'Doloremque voluptas dolores sit dicta.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(34, 11, 17, 3, 2, '2025-08-31', '16:55:34', 'booked', 'RES-75958', 'At voluptas vel et adipisci id.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(35, 5, 18, 3, 6, '2025-08-31', '17:13:53', 'booked', 'RES-42837', 'Ipsam beatae enim numquam sunt.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(36, 8, 18, 3, 6, '2025-09-05', '12:07:28', 'booked', 'RES-18630', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(37, 2, 19, 3, 3, '2025-09-01', '20:48:59', 'booked', 'RES-65296', 'At dolorem ea ullam asperiores ut voluptate necessitatibus.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(38, 11, 19, 3, 3, '2025-09-02', '16:14:43', 'booked', 'RES-94463', 'Ut perferendis dolore consequatur.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(39, 4, 20, 3, 9, '2025-09-05', '06:40:49', 'booked', 'RES-47159', 'Dolorum eum nobis maiores et et pariatur deserunt.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(40, 4, 20, 3, 9, '2025-09-02', '09:10:18', 'booked', 'RES-10515', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(41, 3, 21, 3, 2, '2025-09-03', '01:36:21', 'booked', 'RES-99573', 'Iusto ut doloremque quas iure ipsum.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(42, 11, 21, 3, 2, '2025-09-02', '13:41:49', 'booked', 'RES-36093', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(43, 3, 22, 3, 7, '2025-09-04', '13:47:11', 'booked', 'RES-88576', 'Fuga vel quia a ab est ipsum.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(44, 3, 22, 3, 7, '2025-09-03', '21:24:58', 'booked', 'RES-44662', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(45, 6, 23, 3, 6, '2025-08-31', '11:59:37', 'booked', 'RES-58249', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(46, 10, 23, 3, 6, '2025-09-04', '13:35:19', 'booked', 'RES-73639', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(47, 5, 24, 3, 6, '2025-08-29', '21:08:02', 'booked', 'RES-03386', 'Ipsum et minima dolores.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(48, 4, 24, 3, 6, '2025-09-02', '08:28:33', 'booked', 'RES-50043', 'Sequi qui occaecati enim explicabo architecto aliquam dolorem expedita.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(49, 9, 25, 4, 5, '2025-09-06', '01:47:50', 'booked', 'RES-39301', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(50, 10, 25, 4, 5, '2025-09-06', '04:30:13', 'booked', 'RES-38881', 'Ut ipsa ex officiis.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(51, 4, 26, 4, 8, '2025-09-06', '22:00:02', 'booked', 'RES-18978', 'Consequatur et aut asperiores itaque quisquam.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(52, 3, 26, 4, 8, '2025-09-02', '17:48:24', 'booked', 'RES-19419', 'Voluptate libero numquam enim libero voluptas consequatur.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(53, 2, 27, 4, 5, '2025-09-07', '01:13:41', 'booked', 'RES-31355', 'Quia et labore nostrum rerum rerum.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(54, 9, 27, 4, 5, '2025-08-29', '13:53:16', 'booked', 'RES-77913', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(55, 5, 28, 4, 8, '2025-09-03', '06:45:54', 'booked', 'RES-92515', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(56, 11, 28, 4, 8, '2025-09-06', '00:51:58', 'booked', 'RES-49878', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(57, 10, 29, 4, 3, '2025-09-02', '02:34:02', 'booked', 'RES-99370', 'Sed corrupti aperiam qui enim aut.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(58, 10, 29, 4, 3, '2025-09-04', '15:35:09', 'booked', 'RES-51019', 'Voluptatum voluptatem eum pariatur delectus.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(59, 8, 30, 4, 1, '2025-08-30', '13:12:37', 'booked', 'RES-60647', 'Voluptates dolorem non architecto laboriosam esse.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(60, 8, 30, 4, 1, '2025-08-30', '07:58:18', 'booked', 'RES-84720', 'Facilis tenetur eaque ullam laborum.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(61, 5, 31, 4, 1, '2025-08-30', '20:16:53', 'booked', 'RES-88447', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(62, 10, 31, 4, 1, '2025-08-30', '01:14:21', 'booked', 'RES-91663', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(63, 3, 32, 4, 7, '2025-08-29', '21:25:56', 'booked', 'RES-11592', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(64, 11, 32, 4, 7, '2025-09-05', '00:04:18', 'booked', 'RES-05980', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(65, 10, 33, 5, 3, '2025-09-03', '14:59:26', 'booked', 'RES-33367', 'Numquam officia exercitationem quod suscipit vel.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(66, 4, 33, 5, 3, '2025-09-03', '11:38:33', 'booked', 'RES-57614', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(67, 11, 34, 5, 7, '2025-09-01', '16:52:05', 'booked', 'RES-70650', 'Nesciunt error qui tempora et.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(68, 2, 34, 5, 7, '2025-09-07', '04:19:33', 'booked', 'RES-80963', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(69, 3, 35, 5, 10, '2025-09-01', '16:01:07', 'booked', 'RES-31070', 'Velit odio repellendus officiis quo officiis cum.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(70, 9, 35, 5, 10, '2025-09-06', '09:23:11', 'booked', 'RES-13337', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(71, 11, 36, 5, 2, '2025-08-30', '20:02:34', 'booked', 'RES-79873', 'Distinctio quia vitae et quos alias qui expedita eos.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(72, 8, 36, 5, 2, '2025-08-29', '18:07:31', 'booked', 'RES-65010', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(73, 4, 37, 5, 10, '2025-08-30', '21:01:26', 'booked', 'RES-58429', 'Beatae numquam nobis esse qui ipsam iste.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(74, 10, 37, 5, 10, '2025-09-07', '06:07:35', 'booked', 'RES-77635', 'Fugit est ut quis at occaecati.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(75, 8, 38, 5, 1, '2025-09-06', '17:54:18', 'booked', 'RES-89861', 'Ipsa autem placeat autem tenetur tenetur.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(76, 9, 38, 5, 1, '2025-09-02', '03:22:11', 'booked', 'RES-81900', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(77, 8, 39, 5, 10, '2025-09-05', '22:25:41', 'booked', 'RES-76845', 'Nesciunt reiciendis vitae at numquam.', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(78, 6, 39, 5, 10, '2025-08-31', '18:03:27', 'booked', 'RES-31422', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(79, 10, 40, 5, 8, '2025-09-03', '16:34:04', 'booked', 'RES-90164', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(80, 7, 40, 5, 8, '2025-09-04', '07:49:53', 'booked', 'RES-47472', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `slot_duration_minutes` int(10) UNSIGNED NOT NULL DEFAULT 30,
  `max_patients` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `doctor_id`, `date`, `start_time`, `end_time`, `slot_duration_minutes`, `max_patients`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-09-07', '00:53:20', '03:53:20', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(2, 1, '2025-09-02', '06:53:53', '09:53:53', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(3, 1, '2025-09-01', '06:52:50', '09:52:50', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(4, 1, '2025-09-05', '03:02:50', '06:02:50', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(5, 1, '2025-08-30', '16:57:49', '19:57:49', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(6, 2, '2025-09-04', '18:32:15', '21:32:15', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(7, 2, '2025-09-04', '07:09:27', '10:09:27', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(8, 2, '2025-09-03', '01:48:38', '04:48:38', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(9, 2, '2025-09-05', '17:28:19', '20:28:19', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(10, 2, '2025-08-29', '20:56:27', '23:56:27', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(11, 3, '2025-08-31', '01:14:56', '04:14:56', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(12, 3, '2025-08-29', '10:30:12', '13:30:12', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(13, 3, '2025-08-31', '02:50:40', '05:50:40', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(14, 3, '2025-08-30', '10:17:50', '13:17:50', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(15, 3, '2025-09-06', '23:37:37', '02:37:37', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(16, 4, '2025-09-01', '14:47:22', '17:47:22', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(17, 4, '2025-09-01', '06:39:07', '09:39:07', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(18, 4, '2025-09-07', '04:04:16', '07:04:16', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(19, 4, '2025-09-06', '20:01:07', '23:01:07', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(20, 4, '2025-08-31', '02:31:17', '05:31:17', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(21, 5, '2025-09-01', '09:36:47', '12:36:47', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(22, 5, '2025-09-04', '00:05:24', '03:05:24', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(23, 5, '2025-09-06', '08:48:48', '11:48:48', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(24, 5, '2025-09-05', '21:42:07', '00:42:07', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(25, 5, '2025-09-03', '09:07:15', '12:07:15', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(26, 6, '2025-08-31', '12:35:09', '15:35:09', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(27, 6, '2025-09-06', '03:57:27', '06:57:27', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(28, 6, '2025-09-07', '01:53:18', '04:53:18', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(29, 6, '2025-08-30', '20:54:19', '23:54:19', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(30, 6, '2025-09-03', '17:23:22', '20:23:22', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(31, 7, '2025-09-03', '03:33:08', '06:33:08', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(32, 7, '2025-08-31', '07:45:10', '10:45:10', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(33, 7, '2025-08-29', '17:07:33', '20:07:33', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(34, 7, '2025-09-02', '04:08:27', '07:08:27', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(35, 7, '2025-09-02', '06:33:24', '09:33:24', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(36, 8, '2025-08-29', '23:35:26', '02:35:26', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(37, 8, '2025-09-06', '01:15:41', '04:15:41', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(38, 8, '2025-09-03', '07:38:42', '10:38:42', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(39, 8, '2025-09-01', '10:14:23', '13:14:23', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(40, 8, '2025-09-05', '13:33:24', '16:33:24', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(41, 9, '2025-08-30', '18:33:43', '21:33:43', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(42, 9, '2025-08-31', '11:26:18', '14:26:18', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(43, 9, '2025-09-01', '10:22:17', '13:22:17', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(44, 9, '2025-09-03', '21:21:16', '00:21:16', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(45, 9, '2025-09-05', '20:58:47', '23:58:47', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(46, 10, '2025-08-29', '06:45:07', '09:45:07', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(47, 10, '2025-09-04', '04:38:15', '07:38:15', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(48, 10, '2025-09-02', '05:54:21', '08:54:21', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(49, 10, '2025-09-02', '06:19:33', '09:19:33', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(50, 10, '2025-09-03', '17:04:21', '20:04:21', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(51, 11, '2025-08-30', '01:03:31', '04:03:31', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(52, 11, '2025-09-01', '23:26:10', '02:26:10', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(53, 11, '2025-08-29', '12:18:36', '15:18:36', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(54, 11, '2025-09-05', '15:37:31', '18:37:31', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(55, 11, '2025-08-31', '22:11:58', '01:11:58', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(56, 12, '2025-08-31', '14:59:07', '17:59:07', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(57, 12, '2025-09-02', '16:28:29', '19:28:29', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(58, 12, '2025-09-03', '20:35:54', '23:35:54', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(59, 12, '2025-09-01', '12:37:49', '15:37:49', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(60, 12, '2025-09-05', '23:06:33', '02:06:33', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(61, 13, '2025-09-06', '07:50:39', '10:50:39', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(62, 13, '2025-09-05', '14:17:00', '17:17:00', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(63, 13, '2025-09-02', '08:20:58', '11:20:58', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(64, 13, '2025-09-06', '19:54:15', '22:54:15', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(65, 13, '2025-08-30', '08:23:49', '11:23:49', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(66, 14, '2025-08-31', '16:57:49', '19:57:49', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(67, 14, '2025-08-30', '17:31:48', '20:31:48', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(68, 14, '2025-08-29', '14:06:32', '17:06:32', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(69, 14, '2025-09-06', '18:12:30', '21:12:30', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(70, 14, '2025-08-30', '09:46:04', '12:46:04', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(71, 15, '2025-09-04', '15:43:57', '18:43:57', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(72, 15, '2025-09-07', '02:56:52', '05:56:52', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(73, 15, '2025-08-31', '19:35:34', '22:35:34', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(74, 15, '2025-09-01', '23:29:26', '02:29:26', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(75, 15, '2025-09-02', '02:56:35', '05:56:35', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(76, 16, '2025-08-29', '20:57:59', '23:57:59', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(77, 16, '2025-09-04', '03:54:37', '06:54:37', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(78, 16, '2025-09-06', '06:50:01', '09:50:01', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(79, 16, '2025-08-31', '02:49:16', '05:49:16', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(80, 16, '2025-08-29', '16:23:01', '19:23:01', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(81, 17, '2025-08-30', '15:19:12', '18:19:12', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(82, 17, '2025-09-02', '00:42:56', '03:42:56', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(83, 17, '2025-09-02', '00:58:50', '03:58:50', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(84, 17, '2025-09-07', '02:46:41', '05:46:41', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(85, 17, '2025-08-31', '04:43:25', '07:43:25', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(86, 18, '2025-09-05', '08:08:42', '11:08:42', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(87, 18, '2025-08-31', '08:11:32', '11:11:32', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(88, 18, '2025-08-29', '16:22:57', '19:22:57', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(89, 18, '2025-09-05', '17:11:03', '20:11:03', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(90, 18, '2025-08-29', '09:12:57', '12:12:57', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(91, 19, '2025-09-01', '22:14:12', '01:14:12', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(92, 19, '2025-09-06', '18:30:56', '21:30:56', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(93, 19, '2025-08-31', '23:07:31', '02:07:31', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(94, 19, '2025-09-03', '00:18:47', '03:18:47', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(95, 19, '2025-09-06', '07:46:14', '10:46:14', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(96, 20, '2025-09-01', '09:32:28', '12:32:28', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(97, 20, '2025-09-03', '09:33:25', '12:33:25', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(98, 20, '2025-08-29', '13:43:00', '16:43:00', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(99, 20, '2025-09-07', '04:08:13', '07:08:13', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(100, 20, '2025-09-06', '16:52:19', '19:52:19', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(101, 21, '2025-09-03', '10:11:58', '13:11:58', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(102, 21, '2025-09-03', '18:41:08', '21:41:08', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(103, 21, '2025-09-05', '09:18:24', '12:18:24', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(104, 21, '2025-08-30', '09:10:09', '12:10:09', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(105, 21, '2025-09-01', '06:50:06', '09:50:06', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(106, 22, '2025-09-07', '02:42:22', '05:42:22', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(107, 22, '2025-09-04', '15:37:48', '18:37:48', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(108, 22, '2025-09-03', '05:56:14', '08:56:14', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(109, 22, '2025-08-29', '19:45:30', '22:45:30', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(110, 22, '2025-08-29', '15:33:05', '18:33:05', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(111, 23, '2025-09-05', '10:25:43', '13:25:43', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(112, 23, '2025-08-29', '12:22:19', '15:22:19', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(113, 23, '2025-09-05', '06:36:31', '09:36:31', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(114, 23, '2025-09-02', '12:02:59', '15:02:59', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(115, 23, '2025-08-30', '04:21:26', '07:21:26', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(116, 24, '2025-09-01', '00:05:28', '03:05:28', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(117, 24, '2025-09-07', '02:09:25', '05:09:25', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(118, 24, '2025-08-30', '01:35:11', '04:35:11', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(119, 24, '2025-08-30', '18:17:28', '21:17:28', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(120, 24, '2025-09-01', '20:40:21', '23:40:21', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(121, 25, '2025-08-30', '03:39:23', '06:39:23', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(122, 25, '2025-08-31', '09:48:20', '12:48:20', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(123, 25, '2025-09-01', '20:18:25', '23:18:25', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(124, 25, '2025-09-06', '18:15:39', '21:15:39', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(125, 25, '2025-09-01', '19:57:58', '22:57:58', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(126, 26, '2025-09-04', '10:33:41', '13:33:41', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(127, 26, '2025-09-04', '07:52:51', '10:52:51', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(128, 26, '2025-09-06', '10:25:50', '13:25:50', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(129, 26, '2025-09-07', '01:27:19', '04:27:19', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(130, 26, '2025-09-05', '00:30:40', '03:30:40', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(131, 27, '2025-09-01', '14:07:44', '17:07:44', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(132, 27, '2025-09-02', '00:54:48', '03:54:48', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(133, 27, '2025-09-06', '07:31:28', '10:31:28', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(134, 27, '2025-09-06', '16:14:10', '19:14:10', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(135, 27, '2025-08-30', '19:39:27', '22:39:27', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(136, 28, '2025-08-30', '20:43:29', '23:43:29', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(137, 28, '2025-08-30', '03:40:09', '06:40:09', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(138, 28, '2025-09-03', '10:04:00', '13:04:00', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(139, 28, '2025-09-04', '09:32:18', '12:32:18', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(140, 28, '2025-09-03', '12:56:47', '15:56:47', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(141, 29, '2025-09-01', '01:31:11', '04:31:11', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(142, 29, '2025-09-01', '18:10:36', '21:10:36', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(143, 29, '2025-09-03', '04:41:12', '07:41:12', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(144, 29, '2025-09-02', '06:28:33', '09:28:33', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(145, 29, '2025-08-31', '05:10:54', '08:10:54', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(146, 30, '2025-09-02', '20:45:46', '23:45:46', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(147, 30, '2025-09-03', '13:50:34', '16:50:34', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(148, 30, '2025-09-02', '00:40:25', '03:40:25', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(149, 30, '2025-08-29', '19:11:42', '22:11:42', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(150, 30, '2025-09-05', '15:42:31', '18:42:31', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(151, 31, '2025-09-02', '22:42:47', '01:42:47', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(152, 31, '2025-09-02', '01:05:24', '04:05:24', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(153, 31, '2025-09-01', '11:27:43', '14:27:43', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(154, 31, '2025-09-03', '00:07:22', '03:07:22', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(155, 31, '2025-08-31', '21:31:33', '00:31:33', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(156, 32, '2025-09-05', '05:21:12', '08:21:12', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(157, 32, '2025-09-06', '02:02:14', '05:02:14', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(158, 32, '2025-08-30', '10:59:22', '13:59:22', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(159, 32, '2025-09-03', '06:52:37', '09:52:37', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(160, 32, '2025-09-02', '23:28:37', '02:28:37', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(161, 33, '2025-09-02', '15:57:32', '18:57:32', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(162, 33, '2025-09-02', '21:30:10', '00:30:10', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(163, 33, '2025-09-07', '00:26:18', '03:26:18', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(164, 33, '2025-09-05', '04:57:23', '07:57:23', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(165, 33, '2025-09-02', '15:07:39', '18:07:39', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(166, 34, '2025-08-29', '18:11:14', '21:11:14', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(167, 34, '2025-08-30', '12:31:30', '15:31:30', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(168, 34, '2025-08-30', '04:31:42', '07:31:42', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(169, 34, '2025-09-04', '12:12:21', '15:12:21', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(170, 34, '2025-09-01', '17:39:16', '20:39:16', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(171, 35, '2025-09-02', '19:51:45', '22:51:45', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(172, 35, '2025-08-30', '22:30:26', '01:30:26', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(173, 35, '2025-09-01', '13:56:48', '16:56:48', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(174, 35, '2025-08-30', '11:43:59', '14:43:59', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(175, 35, '2025-09-02', '21:28:34', '00:28:34', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(176, 36, '2025-09-05', '10:16:00', '13:16:00', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(177, 36, '2025-09-05', '17:14:45', '20:14:45', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(178, 36, '2025-08-29', '14:08:45', '17:08:45', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(179, 36, '2025-09-06', '05:54:44', '08:54:44', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(180, 36, '2025-09-05', '22:35:45', '01:35:45', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(181, 37, '2025-09-03', '01:20:54', '04:20:54', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(182, 37, '2025-09-03', '06:55:02', '09:55:02', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(183, 37, '2025-09-04', '11:01:17', '14:01:17', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(184, 37, '2025-09-04', '15:49:11', '18:49:11', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(185, 37, '2025-08-30', '15:39:26', '18:39:26', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(186, 38, '2025-09-03', '08:30:34', '11:30:34', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(187, 38, '2025-09-01', '11:35:44', '14:35:44', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(188, 38, '2025-09-06', '11:29:33', '14:29:33', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(189, 38, '2025-09-01', '10:20:17', '13:20:17', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(190, 38, '2025-08-29', '17:40:37', '20:40:37', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(191, 39, '2025-08-31', '15:43:39', '18:43:39', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(192, 39, '2025-09-02', '02:11:58', '05:11:58', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(193, 39, '2025-09-03', '07:48:18', '10:48:18', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(194, 39, '2025-09-02', '01:47:53', '04:47:53', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(195, 39, '2025-09-03', '03:25:06', '06:25:06', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(196, 40, '2025-08-30', '13:48:27', '16:48:27', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(197, 40, '2025-09-02', '20:18:47', '23:18:47', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(198, 40, '2025-09-04', '13:05:28', '16:05:28', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(199, 40, '2025-09-02', '07:07:31', '10:07:31', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(200, 40, '2025-09-01', '17:48:28', '20:48:28', 30, 1, 1, '2025-08-27 23:23:04', '2025-08-27 23:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1H8Bg7JFA1EQP706CRnbEMw5vds4rejBpfdnY9kb', 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibE9NYnEwZ1l5Y2N4VldPVWhVMkRiSXo3emFsZ1FSVWl4MU8wYVc0biI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kb2N0b3JzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTI7fQ==', 1756367384),
('3zyK9qKnco6DMzSvSSrEmbTF8DuOcLFjzfBkM7lH', NULL, '127.0.0.1', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFNyRk9EUmRFamxodm9lUW5rR2JqME96Z1U0YWMzMUFxNnBXYmhXMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756365500),
('57wU2lzPHRBX90SpjVgPVoRrAL2KWyNoLqgR0hXm', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2huRjJpdWFESWpTbGtUZENoOElXakVPblkzak13OFZmSXlIZXdwUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756362380),
('9ow32G3lyxMN7Vzcxz95YWlV12OzWrAGcpdWp3qQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXRzT1JDSFk4a2ljSGtwY1JJU2FOV1ZtVDg1UGdnYWRlN2p5OGd1eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756363689),
('Ah5SrT43vWzKVESCrS8gTG5XfV6AKIn4yImfDVYW', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNzhSQUdKT2hObmRLbUFsSkJXUnVPVFdzM1paalo1N1ZZYkVpOFBCOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756365878),
('ArmoEnkr1UkOe0jaMfUkNG8vwiLc1nrSvYKgWobO', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMnJ0NVZkb3IzdTl3SG1JZGQ1UGNWaFJlNTlyaVY0RmExZzEzTVY1QSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Jlc2VydmF0aW9ucy9jcmVhdGUiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756362902),
('cALgUjpf31M4K61Hu3NMOqDn9bObiAfuFy16zWAO', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNVd1ZXN2d2xJRWh3bWNXa1M4Ylg0TEducmUydmlzWWJlVzk5QnNJNSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Jlc2VydmF0aW9ucy9jcmVhdGUiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756363097),
('Dzkk0Rq5QkksBEIVxrvOaYNvHrtflWQUrb0d06ZA', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZG5PMk5UYVpvR2tGSGJPRFNRUk1BYlJmSmY4NkhpVUdDRzQ4b2pncyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Jlc2VydmF0aW9ucy9jcmVhdGUiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756364658),
('e6JToRbL7pGkN62H0yZrjXjOAsRS2lPk1sh9QoqJ', NULL, '127.0.0.1', '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWmlDb2NhejJ2blFCclhTdmdoUG5adHVYc1hidGNYT1RLbzZJQXFFRSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo3NjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Jlc2VydmF0aW9ucy9hbHRlcm5hdGl2ZXM/aG9zcGl0YWxfaWQ9MSZzcGVjaWFsdHlfaWQ9MSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjc2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcmVzZXJ2YXRpb25zL2FsdGVybmF0aXZlcz9ob3NwaXRhbF9pZD0xJnNwZWNpYWx0eV9pZD0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756365500),
('fA6UBMjHEQvuAkFZpaJaqWrHJ7mAB3zhcP6VD2uI', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDZPODdIRVZBUkpyTFhMbUpUbmRVTFVkcDdocEJ5alhNdTJYamR6ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756363623),
('H5lEsE0MIHwVGjHlAe0X6QCLOTvhY3qtXL9J55rQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMEd3dnhDajFKSWIwNHZ2ZVA3MldTWGMyeUo2dHlhN2w4SGxYcTFpeiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Jlc2VydmF0aW9ucy9jcmVhdGUiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756364783),
('hdDzfHR7TQHbpq83E2sJHleLf5uNJR4sbY8js1es', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzAyMWZHRzFhTTE2Z0swclVqVjlnaW1OU1FQa0g2ZHQ2M0Z5UmJwcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756362284),
('hu1WQ0GkApwN5foPPrkxfWw1ukVFG5zBwJTEfBv1', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVFmN3lvOThCNklBMDRIYnZNZHVSckN3MFdsbFVxV0pHcFJuMWpBRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756366256),
('kdLUY9xUvCGvfuffALEE6h0ddReruH71lFkvIKqv', NULL, '127.0.0.1', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDhuTHJmWTEwSEdSQUduUjY1eGZ1aGYybmI2SWVqOTgwVUdOd3V4VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756365500),
('MRXWyW7WuRvbXqUnn3BLdh7o7ALcAtEaegPFzjRh', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVFvRDBFS1JYNk5kcTRBbTBrSW9xS0FqNFVUNEhuSU9TUHNUazJJViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756362360),
('NOKsyuJcusVaJyRKdJERKgqsgJDTHtLppimCyvv7', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib2NGN2xjZUF5SHRpY1libnAzV0x6bFBhaTlvbzRsS2tnbjhjdkh0USI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756365690),
('Ob8yXEbQNj1yzi1CzcaUmvz2HHIJd6wLGTNz9iR2', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid0dCRmlXWGVDWTFFWE9mZU9pdzRqSGhTdFNUbFA4eE9UT1Y3WmdTVSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Jlc2VydmF0aW9ucy9jcmVhdGUiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756365774),
('Plg6FcXknaKcVVDQgKATLk7s4xIT68fmuWkhvqFd', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUktHMklsUlZWNHRaaDExd2xQcmZPZm9kUFhlZzdvVVM4RXFLSnVoZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756362978),
('RgTEarDVYydYeLxx5aVQP7MZlPFum4bpOXVstYkR', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZTJpaFNPb2ZaUGRUREs4ZmhrM09RNGM0TkN1QUN2dU1odEh1d3o4MiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1756362225),
('rtHrLmEoto2ag4SaeM8bkLjLNRM8XsKsM3e0Ab5E', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0k2NFF5UTZmMHlmeG1XUG5QV1JkS2VIY09MdUJ2S3FDbnI2bHd6SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756361061),
('U2K0l8FAXayfHidBncH0CVko1CId52ZTtf2lwGkH', NULL, '127.0.0.1', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2t6RFFPMXhuSGtZWXlTdmZ6dnI4R3Axb3cxSDlGeTkwQmxnTVJRWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756366242),
('WaBJbwPON4vJ6lHe1LPiBFLW6p6ka32Zbz0owAnn', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUZrTHBOOGVYcjNsZHJMcGZPNlJaUURVdUNuSFJzY3ZzRDI2bmtMUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756364037),
('wlV5iwThhWpUO5GNjHMapMvdtBU8jzLRnCbdigPO', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZFozR2VucGZHMVBmYTBsUXJEa0tpaGJDV2F0dU9wbjNhYzd5bEM1dSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756366242),
('xtxDKymt24ohH5KB4CTDlG9kArpsiDCQH74jEUZg', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmNJcm9QTnRDT0dKOE5WUEJJMjF2Q1hQcVpOQVU0aFphMnpLNGVpNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756363532),
('Y4gdHkubvoMklby1vzfYzqE8V7tlV1DcBtZI3AuY', NULL, '127.0.0.1', '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR3k1dklLYkI3cmFIZlhvUEtkTzdvQlFUNUtRRXFKVGhpWUpNS1NFciI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo1ODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Jlc2VydmF0aW9ucy9zbG90cy8xP2RhdGU9MjAyNC0wMS0xNSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjU4OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcmVzZXJ2YXRpb25zL3Nsb3RzLzE/ZGF0ZT0yMDI0LTAxLTE1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756365500),
('zI8UQ0zj9SmPKlA7CmDXflolUlJZ7yGao1ShsfTI', NULL, '127.0.0.1', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ2VQWWlRakRrM1JCdEFyZEl5NHlyNGFCejhMNTN5ejcxWUNPNEFxSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756366185),
('ZxPplIS1Hx5bb3P1YksHG8cMnzoMzyJT5c7c71sp', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEdCaEY3bjl5Vkp3UUx0anFmN1loMEZ4eDM5dkpScmxqd0tNZWJGdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756364474);

-- --------------------------------------------------------

--
-- Table structure for table `specialties`
--

CREATE TABLE `specialties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specialties`
--

INSERT INTO `specialties` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Dokter Umum', 'dokter-umum', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(2, 'Dokter Gigi', 'dokter-gigi', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(3, 'Penyakit Dalam', 'penyakit-dalam', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(4, 'Anak', 'anak', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(5, 'Kandungan', 'kandungan', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(6, 'Bedah', 'bedah', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(7, 'Neurologi', 'neurologi', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(8, 'Kulit & Kelamin', 'kulit-kelamin', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(9, 'THT', 'tht', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(10, 'Mata', 'mata', NULL, '2025-08-27 23:23:04', '2025-08-27 23:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Jazmyn Emmerich', 'zconn@example.net', 'user', '2025-08-27 23:23:04', '$2y$12$RcXjMaf1yK/roiMl5tyzzuh3xWEgCxbAt0Mi.jnf8YMlr97flAo6y', 'AayqSq2UWf', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(3, 'Prof. Carmel Flatley', 'russ13@example.net', 'user', '2025-08-27 23:23:04', '$2y$12$RcXjMaf1yK/roiMl5tyzzuh3xWEgCxbAt0Mi.jnf8YMlr97flAo6y', 'CQJri84n2n', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(4, 'Mr. Brent McGlynn', 'foreilly@example.com', 'user', '2025-08-27 23:23:04', '$2y$12$RcXjMaf1yK/roiMl5tyzzuh3xWEgCxbAt0Mi.jnf8YMlr97flAo6y', 'ExIQlA1Xbz', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(5, 'Ollie Grimes', 'oscar.farrell@example.com', 'user', '2025-08-27 23:23:04', '$2y$12$RcXjMaf1yK/roiMl5tyzzuh3xWEgCxbAt0Mi.jnf8YMlr97flAo6y', 'DIwwMYxZMg', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(6, 'Prof. Frederique Harris', 'fritsch.rafaela@example.com', 'user', '2025-08-27 23:23:04', '$2y$12$RcXjMaf1yK/roiMl5tyzzuh3xWEgCxbAt0Mi.jnf8YMlr97flAo6y', 'pfQaS7uKzq', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(7, 'Prof. Hassan Conn', 'carol07@example.com', 'user', '2025-08-27 23:23:04', '$2y$12$RcXjMaf1yK/roiMl5tyzzuh3xWEgCxbAt0Mi.jnf8YMlr97flAo6y', 'HXWEEDsrYK', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(8, 'Santino Langosh', 'mhyatt@example.com', 'user', '2025-08-27 23:23:04', '$2y$12$RcXjMaf1yK/roiMl5tyzzuh3xWEgCxbAt0Mi.jnf8YMlr97flAo6y', 'D4lD0mZnPc', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(9, 'Mrs. Serenity Bogisich Sr.', 'prosacco.kellie@example.org', 'user', '2025-08-27 23:23:04', '$2y$12$RcXjMaf1yK/roiMl5tyzzuh3xWEgCxbAt0Mi.jnf8YMlr97flAo6y', 'nSfRoqUoRO', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(10, 'Ms. Lori Farrell', 'idibbert@example.net', 'user', '2025-08-27 23:23:04', '$2y$12$RcXjMaf1yK/roiMl5tyzzuh3xWEgCxbAt0Mi.jnf8YMlr97flAo6y', 'IEo9PZHWJG', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(11, 'Dereck Pagac', 'spinka.victor@example.net', 'user', '2025-08-27 23:23:04', '$2y$12$RcXjMaf1yK/roiMl5tyzzuh3xWEgCxbAt0Mi.jnf8YMlr97flAo6y', 'eonXaAI8lG', '2025-08-27 23:23:04', '2025-08-27 23:23:04'),
(12, 'admin', 'admin@hospital.com', 'admin', NULL, '$2y$12$hIodacvLjYFrWD.FzbC9PeTlzXd2u0Iy8SdeuRFg6ahdicZ9NyCb2', NULL, '2025-08-27 23:27:46', '2025-08-27 23:47:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctors_hospital_id_foreign` (`hospital_id`),
  ADD KEY `doctors_specialty_id_foreign` (`specialty_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hospitals_slug_unique` (`slug`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reservations_doctor_id_date_time_unique` (`doctor_id`,`date`,`time`),
  ADD UNIQUE KEY `reservations_reference_code_unique` (`reference_code`),
  ADD KEY `reservations_user_id_foreign` (`user_id`),
  ADD KEY `reservations_hospital_id_foreign` (`hospital_id`),
  ADD KEY `reservations_specialty_id_foreign` (`specialty_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `specialties`
--
ALTER TABLE `specialties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `specialties_name_unique` (`name`),
  ADD UNIQUE KEY `specialties_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `specialties`
--
ALTER TABLE `specialties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_hospital_id_foreign` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `doctors_specialty_id_foreign` FOREIGN KEY (`specialty_id`) REFERENCES `specialties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_hospital_id_foreign` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_specialty_id_foreign` FOREIGN KEY (`specialty_id`) REFERENCES `specialties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
