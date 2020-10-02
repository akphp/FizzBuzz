-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 02, 2020 at 03:21 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fizzbuzz`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `parent_id`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, 1, NULL, 'ghghj', '2020-10-01 16:03:52', '2020-10-01 16:03:52', NULL),
(2, 11, 1, 1, 'hjjhhjjh', '2020-10-01 16:03:57', '2020-10-01 16:03:57', NULL),
(3, 11, 6, NULL, 'ggggggggggggggg', '2020-10-01 16:05:37', '2020-10-01 16:05:37', NULL),
(4, 11, 6, 3, 'uiiiiiiiiiii', '2020-10-01 16:05:41', '2020-10-01 16:05:41', NULL),
(5, 11, 6, 4, 'poooooooo', '2020-10-01 16:05:49', '2020-10-01 16:05:49', NULL),
(6, 11, 6, 4, 'uiiiiiiiiiiiiiiiiiiiiii', '2020-10-01 16:05:54', '2020-10-01 16:05:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_01_183928_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Voluptatum nihil enim', 'Rerum non optio quia aliquid. Tempore voluptatum rem aliquam amet omnis consectetur. Placeat in officiis voluptas alias reprehenderit fuga. Temporibus dicta sed voluptatum.', 1, '2020-10-01 15:55:18', '2020-10-01 15:55:18', NULL),
(2, 'Qui quisquam', 'Aliquid molestiae perspiciatis repellendus mollitia placeat velit. Et repellat aspernatur assumenda quo neque aliquam est. Nihil occaecati exercitationem enim debitis voluptate quia architecto.', 2, '2020-10-01 15:55:18', '2020-10-01 15:55:18', NULL),
(3, 'Aut delectus', 'Atque et hic quisquam. Molestias facere sed repudiandae ut. Perspiciatis cupiditate ea provident quam deleniti cumque adipisci esse. Molestias amet in quas reprehenderit. Aliquam qui quia facere quisquam dolor alias.', 3, '2020-10-01 15:55:18', '2020-10-01 15:55:18', NULL),
(4, 'Iure voluptates', 'Ut sunt quis saepe ut ipsam aut. Iure saepe totam velit dolor explicabo rerum ut. Doloremque vitae iure hic est non soluta earum voluptatum. Deserunt ratione nemo eius numquam sed. Et iusto id illo et sequi vel nobis rem.', 4, '2020-10-01 15:55:18', '2020-10-01 15:55:18', NULL),
(5, 'Voluptas et', 'Voluptatibus quibusdam voluptatem et et et qui in. A corporis iste id hic et accusantium.', 5, '2020-10-01 15:55:18', '2020-10-01 15:55:18', NULL),
(6, 'Quos sunt qui', 'Qui qui est qui error. Saepe error iusto enim aut. Fugit ut laborum est ipsa ipsam voluptatum omnis. Aut quod vitae tempore possimus nesciunt numquam.', 6, '2020-10-01 15:55:18', '2020-10-01 15:55:18', NULL),
(7, 'Reprehenderit pariatur', 'Dolores optio reprehenderit quo mollitia sed pariatur. Est deleniti amet et asperiores tenetur. Vitae similique accusantium quo.', 7, '2020-10-01 15:55:18', '2020-10-01 15:55:18', NULL),
(8, 'Enim deleniti aut', 'Fugiat fugiat corrupti et incidunt omnis et et accusantium. Nesciunt nostrum possimus quia quo odio repellendus. Explicabo fugit aut quia voluptas officiis eos.', 8, '2020-10-01 15:55:18', '2020-10-01 15:55:18', NULL),
(9, 'Consequatur vero optio', 'Nam sint ipsum nam quia. Ut eum et fugiat labore eos. Vel laboriosam est maxime maxime ratione vero accusamus. Nemo illum esse et dolorum sint.', 9, '2020-10-01 15:55:18', '2020-10-01 15:55:18', NULL),
(10, 'Et earum', 'Repudiandae et magni corrupti ratione ipsa. Voluptas et dolorem atque eum. Dolor quidem quam eius.', 10, '2020-10-01 15:55:18', '2020-10-01 15:55:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Xzavier Fadel II', 'jeromy.sauer@example.org', '2020-10-01 15:55:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OkRXFOmh14', '2020-10-01 15:55:18', '2020-10-01 15:55:18'),
(2, 'Emelia Padberg', 'nya.damore@example.net', '2020-10-01 15:55:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gTKbKktU0Z', '2020-10-01 15:55:18', '2020-10-01 15:55:18'),
(3, 'Mr. Demarco Gulgowski DVM', 'danny85@example.com', '2020-10-01 15:55:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gSaNVlDTJ4', '2020-10-01 15:55:18', '2020-10-01 15:55:18'),
(4, 'Prof. Tyrique Tromp I', 'rhea31@example.com', '2020-10-01 15:55:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'emVPScYOwj', '2020-10-01 15:55:18', '2020-10-01 15:55:18'),
(5, 'Prof. Tyler Altenwerth', 'jarrod.robel@example.com', '2020-10-01 15:55:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EAxSeByFhY', '2020-10-01 15:55:18', '2020-10-01 15:55:18'),
(6, 'Ms. Christiana Auer IV', 'wilkinson.penelope@example.com', '2020-10-01 15:55:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x6WIbbmD52', '2020-10-01 15:55:18', '2020-10-01 15:55:18'),
(7, 'Ms. Kianna Hammes Jr.', 'kaleigh45@example.org', '2020-10-01 15:55:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7tte3bygIn', '2020-10-01 15:55:18', '2020-10-01 15:55:18'),
(8, 'Dr. Creola Macejkovic IV', 'yblock@example.com', '2020-10-01 15:55:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sKwZ9oysVj', '2020-10-01 15:55:18', '2020-10-01 15:55:18'),
(9, 'Prof. Isidro Gutmann', 'schaefer.verner@example.net', '2020-10-01 15:55:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pTdYddGYdR', '2020-10-01 15:55:18', '2020-10-01 15:55:18'),
(10, 'Tad Macejkovic', 'brodriguez@example.net', '2020-10-01 15:55:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KNv2jicf0K', '2020-10-01 15:55:18', '2020-10-01 15:55:18'),
(11, 'moaz alawaity', 'moaz2088@gmail.com', NULL, '$2y$10$8BiSmCPV5N.rxQGqzBSvLuKoCSIc6eE1i1OG41kQ5mcG9aXUkT1E6', NULL, '2020-10-01 16:01:03', '2020-10-01 16:01:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
