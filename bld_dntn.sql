-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 01:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bld_dntn`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Shahin', 'admin@gmail.com', '$2y$10$inJlbcwjbwkMYzVndNp6H.xbSzDe3rtU.NiP2TUpjMvYvkS5XhrRC', 'admin.jpg', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blood_donors`
--

CREATE TABLE `blood_donors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `fullname` text DEFAULT NULL,
  `dob` text DEFAULT NULL,
  `sex` text DEFAULT NULL,
  `bloodgroup` text DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `town` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_donors`
--

INSERT INTO `blood_donors` (`id`, `username`, `password`, `fullname`, `dob`, `sex`, `bloodgroup`, `mobile`, `email`, `town`, `state`, `created_at`, `updated_at`) VALUES
(2, 'Naruto', '21232f297a57a5a743894a0e4a801fc3', 'Utkarsh Utsav', '1997-05-03', 'male', 'O pos', '9431229986', 'utk.123@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(3, 'ashish', '7b69ad8a8999d4ca7c42b8a729fb0ffd', 'Ashish Kumar Anshu', '1997-11-09', 'male', 'B pos', '9179103906', 'ashish@gmail.com', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(4, 'Sino', '21232f297a57a5a743894a0e4a801fc3', 'Sushant kr. Sinha', '1996-05-03', 'male', 'A pos', '9434589986', 'Sus.123@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(5, 'Gaurav', '21232f297a57a5a743894a0e4a801fc3', 'Gaurav Kumar', '1995-03-03', 'male', 'B pos', '9431224986', 'gaurav15@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(7, 'Sino', '21232f297a57a5a743894a0e4a801fc3', 'Sushant kr. Sinha', '1996-05-03', 'male', 'O pos', '9431229986', 'Sus.123@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(12, 'aman.yadav', '7b69ad8a8999d4ca7c42b8a729fb0ffd', 'aman yadav', '1997-11-09', 'male', 'A pos', '7679103906', 'aman.23@gmail.com', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(14, 'Naruto', '21232f297a57a5a743894a0e4a801fc3', 'Utkarsh Utsav', '1997-05-03', 'male', 'O neg', '7412229986', 'utk.3@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(15, 'ashish', '7b69ad8a8999d4ca7c42b8a729fb0ffd', 'Ashish sharma', '1997-11-09', 'male', 'A pos', '9179103906', 'ashish.12@gmail.com', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(16, 'sunita', '21232f297a57a5a743894a0e4a801fc3', 'sunita Sinha', '1996-05-03', 'female', 'B neg', '7849229986', 'Sus.123@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(17, 'mahesh', '21232f297a57a5a743894a0e4a801fc3', 'mahesh Kumar', '1995-03-03', 'male', 'O neg', '9438547986', 'mahesh.1@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(19, 'vishal', '21232f297a57a5a743894a0e4a801fc3', 'vishal kr. Sinha', '1996-05-03', 'male', 'A neg', '7849229986', 'vishal.123@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(20, 'Nitin', '21232f297a57a5a743894a0e4a801fc3', 'Nitin Kumar', '1997-05-03', 'male', 'B neg', '9431229986', 'nitin.45@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(21, 'ashish', '7b69ad8a8999d4ca7c42b8a729fb0ffd', 'Ashish Kumar', '1997-11-09', 'male', 'AB pos', '9100003906', 'ashish@gmail.com', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(22, 'akash', '21232f297a57a5a743894a0e4a801fc3', 'akash kumar', '1996-05-03', 'male', 'B neg', '7894929986', 'akash.123@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(23, 'utsav12', '21232f297a57a5a743894a0e4a801fc3', 'Utsav Kumar sharma', '1995-03-03', 'male', 'A neg', '7511229986', 'utk.145@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(25, 'sunil', '21232f297a57a5a743894a0e4a801fc3', 'sunil sinha', '1996-05-03', 'male', 'B neg', '7485729986', 'sunil75@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(26, 'nishant', '21232f297a57a5a743894a0e4a801fc3', 'nishant', '1997-05-03', 'male', 'A neg', '9431229974', 'nishant.123@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(27, 'ayush', '7b69ad8a8999d4ca7c42b8a729fb0ffd', 'ayush kumar', '1997-11-09', 'male', 'A pos', '7489103906', 'ayush.123@mail.com', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(28, 'shaan', '21232f297a57a5a743894a0e4a801fc3', 'shaan mahto', '1997-05-03', 'male', 'A neg', '9431229986', 'shaan.123@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(30, 'Manish', '21232f297a57a5a743894a0e4a801fc3', 'Manish pandey', '1996-05-03', 'male', 'AB neg', '8831229986', 'Manish.123@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(31, 'utsav123', '21232f297a57a5a743894a0e4a801fc3', 'Utsav Yadav', '1995-03-03', 'male', 'O neg', '9431229986', 'utk.155@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(33, 'Sushant', '21232f297a57a5a743894a0e4a801fc3', 'Sushant kr. Sinha', '1996-05-03', 'male', 'O neg', '7021229986', 'Sus.1243@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(41, 'utsav', '21232f297a57a5a743894a0e4a801fc3', 'Utsav Kumar', '1995-03-03', 'male', 'AB pos', '9801229986', 'utk.1@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(43, 'Sino', '21232f297a57a5a743894a0e4a801fc3', 'Sushant kr. Sinha', '1996-05-03', 'male', 'AB pos', '9448229986', 'Sus.123@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(46, 'sachin', '21232f297a57a5a743894a0e4a801fc3', 'sachin kr. Sinha', '1996-05-03', 'male', 'AB pos', '9431229986', 'sachin.123@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(47, 'manav', '21232f297a57a5a743894a0e4a801fc3', 'manav Kumar', '1995-03-03', 'male', 'AB neg', '7431245986', 'manav@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(50, 'sachin', '21232f297a57a5a743894a0e4a801fc3', 'Sushant kr. yadav', '1996-05-03', 'male', 'AB neg', '9795229986', 'Sus.123@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(53, 'Deepak', '21232f297a57a5a743894a0e4a801fc3', 'Deepak kr. Sinha', '1996-05-03', 'male', 'AB neg', '7021229986', 'Deepak.123@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(58, 'abhi', '21232f297a57a5a743894a0e4a801fc3', 'abhi kumar', '1995-03-03', 'male', 'AB pos', '7894529986', 'abhi.1@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(59, 'rohit', '2d235ace000a3ad85f590e321c89bb99', 'rohit', '1997-11-11', 'male', 'B pos', '9454724262', 'rohit@gmail.com', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(60, 'rakesh', '2d235ace000a3ad85f590e321c89bb99', 'rakesh', '1997-11-11', 'male', 'B pos', '9004724262', 'rakesh@gmail.com', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(61, 'vaibhav', '310a87565a48526e9d096f917007dbfe', 'vaibhav singh', '1999-04-16', 'male', 'A neg', '9455231681', 'vaibhavsingh@live.in', 'Gwalior', 'Madhya Pradesh', NULL, '2023-05-12 03:54:06'),
(62, 'shubhy', '5d3145e1226fd39ee3b3039bfa90c95d', 'Shubham', '1997-11-02', 'male', 'A pos', '8989640853', 'dbkabdj@gmail.com', 'fkjsbi', 'fhsufi', NULL, '2023-05-12 03:54:06'),
(64, 'shahin', '827ccb0eea8a706c4c34a16891f84e7b', 'Abdur Rob Shahin', '2023-05-25', 'male', 'B pos', '01786756789', 'shahin@gmail.com', 'Dhaka', 'Dhaka', '2023-05-11 21:56:49', '2023-05-11 21:56:49'),
(65, 'jg', '202cb962ac59075b964b07152d234b70', 'sfsgd', '2023-05-16', 'male', 'B pos', '01786756789', 'admin@gmail.com', 'Dhaka', 'sff', '2023-05-11 23:00:00', '2023-05-11 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Ashik', 'ashik@gmail.com', 'About to help', 'Vai ekti help lagbe.', '2023-05-11 13:07:19', '2023-05-11 13:07:19'),
(2, 'Alomgir', 'alomgir@gmail.com', 'About to help', 'Vai ekta help lagbe', '2023-05-11 22:59:30', '2023-05-11 22:59:30');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'How does the blood donation process work?', 'text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......text bosiye nio......', '2023-05-13 05:27:29', '2023-05-13 05:27:29'),
(2, 'What should I do after donating blood?', '<p>text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...</p>', '2023-05-13 05:28:14', '2023-05-13 05:28:14'),
(3, 'Will it hurt when you insert the needle?', '<p>text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...</p>', '2023-05-13 05:28:47', '2023-05-13 05:28:47'),
(4, 'How long does a blood donation take?', '<p>text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...</p>', '2023-05-13 05:29:20', '2023-05-13 05:29:20'),
(5, 'How long will it take to replenish the pint of blood I donate?', '<p>text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...text bosiye nio...</p>', '2023-05-13 05:29:42', '2023-05-13 05:29:42');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_11_181437_create_admins_table', 1),
(6, '2023_05_11_182916_create_blood_donors_table', 2),
(7, '2023_05_11_184837_create_contacts_table', 3),
(8, '2023_05_12_040126_create_faqs_table', 4),
(9, '2023_05_13_094844_create_admins_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_donors`
--
ALTER TABLE `blood_donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blood_donors`
--
ALTER TABLE `blood_donors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
