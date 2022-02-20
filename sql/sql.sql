-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2022 at 02:55 AM
-- Server version: 8.0.28
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devlaabc_fullz`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `log_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'order', 'The order has been created', 'App\\Models\\Order', 'created', 1, 'App\\Models\\User', 2, '{\"attributes\": {\"id\": 1, \"amount\": \"32.00\", \"user_id\": 2, \"fullz_id\": 1, \"created_at\": \"2022-02-10T21:56:37.000000Z\", \"updated_at\": \"2022-02-10T21:56:37.000000Z\"}}', NULL, '2022-02-10 16:56:37', '2022-02-10 16:56:37'),
(2, 'order', 'The order has been created', 'App\\Models\\Order', 'created', 2, 'App\\Models\\User', 2, '{\"attributes\": {\"id\": 2, \"amount\": \"1.00\", \"user_id\": 2, \"fullz_id\": 2, \"created_at\": \"2022-02-10T22:00:06.000000Z\", \"updated_at\": \"2022-02-10T22:00:06.000000Z\"}}', NULL, '2022-02-10 17:00:06', '2022-02-10 17:00:06'),
(3, 'order', 'The order has been created', 'App\\Models\\Order', 'created', 3, 'App\\Models\\User', 2, '{\"attributes\": {\"id\": 3, \"amount\": \"1.00\", \"user_id\": 2, \"fullz_id\": 2, \"created_at\": \"2022-02-10T22:01:10.000000Z\", \"updated_at\": \"2022-02-10T22:01:10.000000Z\"}}', NULL, '2022-02-10 17:01:10', '2022-02-10 17:01:10'),
(4, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 1, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 1, \"dob\": \"1980-11-17\", \"ssn\": \"453924103\", \"zip\": \"77014\", \"city\": \"Houston\", \"type\": \"1\", \"price\": \"1.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"2615 VETERANS MEMORIAL\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"harris\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"vazina\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(5, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 2, \"dob\": \"1980-11-17\", \"ssn\": \"461517481\", \"zip\": \"78559\", \"city\": \"La Feria\", \"type\": \"1\", \"price\": \"2.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"26037 N PARKER RD\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"nieto\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"carlos\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(6, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 3, \"dob\": \"1980-11-17\", \"ssn\": \"464858949\", \"zip\": \"77619\", \"city\": \"Groves\", \"type\": \"1\", \"price\": \"56.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"6255 WARREN ST APT H\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"hollis\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"bonita\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(7, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 4, \"dob\": \"1980-11-17\", \"ssn\": \"463616814\", \"zip\": \"78043\", \"city\": \"Laredo\", \"type\": \"1\", \"price\": \"4.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"4226 ARGUELLO\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"martinez\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"carlos\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(8, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 5, \"dob\": \"1980-11-17\", \"ssn\": \"463633852\", \"zip\": \"76012\", \"city\": \"Arlington\", \"type\": \"1\", \"price\": \"24.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1600 PECAN CHASE CIR # 9\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"white\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"arlene\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(9, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 6, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"76012\", \"city\": \"Arlington\", \"type\": \"1\", \"price\": \"6.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1600 PECAN CHASE CIR # 9\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"white\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"arlene\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(10, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 7, \"dob\": \"1980-11-17\", \"ssn\": \"462495994\", \"zip\": \"75602\", \"city\": \"Longview\", \"type\": \"1\", \"price\": \"43.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1911 BAXTER AVE\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"traylor\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"curtis\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(11, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 8, \"dob\": \"1980-11-17\", \"ssn\": \"459751793\", \"zip\": \"75602\", \"city\": \"Longview\", \"type\": \"1\", \"price\": \"8.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1224 S HIGH ST APT 218\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"mitchell\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"hubert\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(12, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 9, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 9, \"dob\": \"1980-11-17\", \"ssn\": \"453924103\", \"zip\": \"77071\", \"city\": \"Houston\", \"type\": \"1\", \"price\": \"9.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"11406 PEPPERDINE LN\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"jack\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"daphine\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(13, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 10, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 10, \"dob\": \"1980-11-17\", \"ssn\": \"461517481\", \"zip\": \"77083\", \"city\": \"Houston\", \"type\": \"1\", \"price\": \"42.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"6905 GREAT OAKS SHADOW\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"black\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"verline\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(14, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 11, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 11, \"dob\": \"1980-11-17\", \"ssn\": \"464858949\", \"zip\": \"75203\", \"city\": \"Dallas\", \"type\": \"1\", \"price\": \"11.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1809 HIGH HILL BLVD # D\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"joiner\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"stephanie\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(15, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 12, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 12, \"dob\": \"1980-11-17\", \"ssn\": \"463616814\", \"zip\": \"78210\", \"city\": \"San Antonio\", \"type\": \"1\", \"price\": \"2.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"127 SARGENT ST\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"griffin\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"connie\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(16, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 13, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 13, \"dob\": \"1980-11-17\", \"ssn\": \"463633852\", \"zip\": \"76017\", \"city\": \"Arlington\", \"type\": \"1\", \"price\": \"13.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"5306 BRADLEY LN\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"wilborn\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"shawn\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(17, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 14, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 14, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"75070\", \"city\": \"McKinney\", \"type\": \"1\", \"price\": \"14.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"3400 CRAIG DR APT 1225\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"cabiness\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"lisa\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(18, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 15, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 15, \"dob\": \"1980-11-17\", \"ssn\": \"463616814\", \"zip\": \"76112\", \"city\": \"Fort Worth\", \"type\": \"1\", \"price\": \"15.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1740 AZTECA DR\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"holbert\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"patrick\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(19, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 16, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 16, \"dob\": \"1980-11-17\", \"ssn\": \"463633852\", \"zip\": \"77833\", \"city\": \"Brenham\", \"type\": \"1\", \"price\": \"16.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"3971 HWY36N\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"burton\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"jerome\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(20, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 17, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 17, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"76119\", \"city\": \"Fort Worth\", \"type\": \"1\", \"price\": \"17.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"5429 WILBARGER ST # 25\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"khearalla\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"mowhib\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(21, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 18, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 18, \"dob\": \"1980-11-17\", \"ssn\": \"462495994\", \"zip\": \"75039\", \"city\": \"Irving\", \"type\": \"1\", \"price\": \"654.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"301 W LAS COLINAS BLVD 338\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"sharpe\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"melissa\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(22, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 19, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 19, \"dob\": \"1980-11-17\", \"ssn\": \"459751793\", \"zip\": \"78041\", \"city\": \"Laredo\", \"type\": \"1\", \"price\": \"19.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1311 WILD ROSE LN\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"martinez\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"jessica\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(23, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 20, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 20, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"78242\", \"city\": \"San Antonio\", \"type\": \"1\", \"price\": \"20.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"5434 SHERRY DR\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"ortega\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"dalila\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(24, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 21, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 21, \"dob\": \"1980-11-17\", \"ssn\": \"462495994\", \"zip\": \"75979\", \"city\": \"Woodville\", \"type\": \"1\", \"price\": \"654.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"200 CR 3530\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"haynes\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"tina\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(25, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 22, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 22, \"dob\": \"1980-11-17\", \"ssn\": \"459751793\", \"zip\": \"78155\", \"city\": \"Seguin\", \"type\": \"1\", \"price\": \"22.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"800 N 123 BYPASS 28\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"scott\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"patrice\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(26, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 23, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 23, \"dob\": \"1980-11-17\", \"ssn\": \"463616814\", \"zip\": \"76015\", \"city\": \"Arlington\", \"type\": \"1\", \"price\": \"3.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1023 PLOVER LN\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"rodriguez\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"rudy\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(27, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 24, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 24, \"dob\": \"1980-11-17\", \"ssn\": \"463633852\", \"zip\": \"77051\", \"city\": \"Houston\", \"type\": \"1\", \"price\": \"24.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"3116 BOLT ST\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"lafleur\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"ronda\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(28, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 25, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 25, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"78572\", \"city\": \"Mission\", \"type\": \"1\", \"price\": \"25.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1318 E KENNEDY\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"martinez\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"juan\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(29, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 26, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 26, \"dob\": \"1980-11-17\", \"ssn\": \"463616814\", \"zip\": \"77036\", \"city\": \"Houston\", \"type\": \"1\", \"price\": \"26.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"9803 CLUB CREEK 111\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"thomas\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"felicia\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(30, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 27, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 27, \"dob\": \"1980-11-17\", \"ssn\": \"463633852\", \"zip\": \"75040\", \"city\": \"Garland\", \"type\": \"1\", \"price\": \"27.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"2425 NORWAY DR\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"thornton\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"tracy\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(31, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 28, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 28, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"75040\", \"city\": \"Garland\", \"type\": \"1\", \"price\": \"28.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"24 25 NORWAY DR\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"thornton\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"tracy\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(32, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 29, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": null, \"id\": 29, \"dob\": \"1980-11-17\", \"ssn\": \"462495994\", \"zip\": \"75040\", \"city\": \"Garland\", \"type\": \"1\", \"price\": \"29.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"2425 NORWAY DR\", \"dl_issue\": null, \"dl_state\": null, \"dl_expiry\": null, \"last_name\": \"thornton\", \"created_at\": \"2022-02-11T11:55:58.000000Z\", \"first_name\": \"tracy\", \"updated_at\": \"2022-02-11T11:55:58.000000Z\"}}', NULL, '2022-02-11 06:55:58', '2022-02-11 06:55:58'),
(33, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 30, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1000763\", \"id\": 30, \"dob\": \"1980-11-17\", \"ssn\": \"453924103\", \"zip\": \"77014\", \"city\": \"Houston\", \"type\": \"2\", \"price\": \"11.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"2615 VETERANS MEMORIAL\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"harris\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"vazina\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(34, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 31, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10010113\", \"id\": 31, \"dob\": \"1980-11-17\", \"ssn\": \"461517481\", \"zip\": \"78559\", \"city\": \"La Feria\", \"type\": \"2\", \"price\": \"11.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"26037 N PARKER RD\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"nieto\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"carlos\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(35, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 32, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1001130\", \"id\": 32, \"dob\": \"1980-11-17\", \"ssn\": \"464858949\", \"zip\": \"77619\", \"city\": \"Groves\", \"type\": \"2\", \"price\": \"13.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"6255 WARREN ST APT H\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"hollis\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"bonita\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(36, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 33, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10012187\", \"id\": 33, \"dob\": \"1980-11-17\", \"ssn\": \"463616814\", \"zip\": \"78043\", \"city\": \"Laredo\", \"type\": \"2\", \"price\": \"34.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"4226 ARGUELLO\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"martinez\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"carlos\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(37, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 34, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1001362\", \"id\": 34, \"dob\": \"1980-11-17\", \"ssn\": \"463633852\", \"zip\": \"76012\", \"city\": \"Arlington\", \"type\": \"2\", \"price\": \"53.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1600 PECAN CHASE CIR # 9\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"white\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"arlene\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(38, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 35, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1001362\", \"id\": 35, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"76012\", \"city\": \"Arlington\", \"type\": \"2\", \"price\": \"6.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1600 PECAN CHASE CIR # 9\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"white\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"arlene\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(39, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 36, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1001585\", \"id\": 36, \"dob\": \"1980-11-17\", \"ssn\": \"462495994\", \"zip\": \"75602\", \"city\": \"Longview\", \"type\": \"2\", \"price\": \"23.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1911 BAXTER AVE\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"traylor\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"curtis\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(40, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 37, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10015855\", \"id\": 37, \"dob\": \"1980-11-17\", \"ssn\": \"459751793\", \"zip\": \"75602\", \"city\": \"Longview\", \"type\": \"2\", \"price\": \"8.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1224 S HIGH ST APT 218\", \"dl_issue\": \"2019-11-17\", \"dl_state\": null, \"dl_expiry\": \"2025-11-17\", \"last_name\": \"mitchell\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"hubert\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(41, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 38, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1001812\", \"id\": 38, \"dob\": \"1980-11-17\", \"ssn\": \"453924103\", \"zip\": \"77071\", \"city\": \"Houston\", \"type\": \"2\", \"price\": \"9.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"11406 PEPPERDINE LN\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"jack\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"daphine\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(42, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 39, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10019825\", \"id\": 39, \"dob\": \"1980-11-17\", \"ssn\": \"461517481\", \"zip\": \"77083\", \"city\": \"Houston\", \"type\": \"2\", \"price\": \"32.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"6905 GREAT OAKS SHADOW\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"black\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"verline\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(43, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 40, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10020936\", \"id\": 40, \"dob\": \"1980-11-17\", \"ssn\": \"464858949\", \"zip\": \"75203\", \"city\": \"Dallas\", \"type\": \"2\", \"price\": \"11.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1809 HIGH HILL BLVD # D\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"joiner\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"stephanie\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(44, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 41, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10029339\", \"id\": 41, \"dob\": \"1980-11-17\", \"ssn\": \"463616814\", \"zip\": \"78210\", \"city\": \"San Antonio\", \"type\": \"2\", \"price\": \"342.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"127 SARGENT ST\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"griffin\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"connie\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(45, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 42, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1002995\", \"id\": 42, \"dob\": \"1980-11-17\", \"ssn\": \"463633852\", \"zip\": \"76017\", \"city\": \"Arlington\", \"type\": \"2\", \"price\": \"23.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"5306 BRADLEY LN\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"wilborn\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"shawn\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(46, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 43, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1003030\", \"id\": 43, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"75070\", \"city\": \"McKinney\", \"type\": \"2\", \"price\": \"14.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"3400 CRAIG DR APT 1225\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"cabiness\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"lisa\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(47, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 44, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10030649\", \"id\": 44, \"dob\": \"1980-11-17\", \"ssn\": \"463616814\", \"zip\": \"76112\", \"city\": \"Fort Worth\", \"type\": \"2\", \"price\": \"23.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1740 AZTECA DR\", \"dl_issue\": \"2019-11-17\", \"dl_state\": null, \"dl_expiry\": \"2025-11-17\", \"last_name\": \"holbert\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"patrick\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(48, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 45, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1003617\", \"id\": 45, \"dob\": \"1980-11-17\", \"ssn\": \"463633852\", \"zip\": \"77833\", \"city\": \"Brenham\", \"type\": \"2\", \"price\": \"16.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"3971 HWY36N\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"burton\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"jerome\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(49, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 46, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1003904\", \"id\": 46, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"76119\", \"city\": \"Fort Worth\", \"type\": \"2\", \"price\": \"17.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"5429 WILBARGER ST # 25\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"khearalla\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"mowhib\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(50, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 47, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10041099\", \"id\": 47, \"dob\": \"1980-11-17\", \"ssn\": \"462495994\", \"zip\": \"75039\", \"city\": \"Irving\", \"type\": \"2\", \"price\": \"18.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"301 W LAS COLINAS BLVD 338\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"sharpe\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"melissa\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(51, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 48, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1004113\", \"id\": 48, \"dob\": \"1980-11-17\", \"ssn\": \"459751793\", \"zip\": \"78041\", \"city\": \"Laredo\", \"type\": \"2\", \"price\": \"19.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1311 WILD ROSE LN\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"martinez\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"jessica\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(52, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 49, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10043696\", \"id\": 49, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"78242\", \"city\": \"San Antonio\", \"type\": \"2\", \"price\": \"20.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"5434 SHERRY DR\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"ortega\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"dalila\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(53, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 50, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10049318\", \"id\": 50, \"dob\": \"1980-11-17\", \"ssn\": \"462495994\", \"zip\": \"75979\", \"city\": \"Woodville\", \"type\": \"2\", \"price\": \"21.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"200 CR 3530\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"haynes\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"tina\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(54, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 51, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1005168\", \"id\": 51, \"dob\": \"1980-11-17\", \"ssn\": \"459751793\", \"zip\": \"78155\", \"city\": \"Seguin\", \"type\": \"2\", \"price\": \"22.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"800 N 123 BYPASS 28\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"scott\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"patrice\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(55, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 52, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10057793\", \"id\": 52, \"dob\": \"1980-11-17\", \"ssn\": \"463616814\", \"zip\": \"76015\", \"city\": \"Arlington\", \"type\": \"2\", \"price\": \"23.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1023 PLOVER LN\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"rodriguez\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"rudy\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(56, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 53, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10064875\", \"id\": 53, \"dob\": \"1980-11-17\", \"ssn\": \"463633852\", \"zip\": \"77051\", \"city\": \"Houston\", \"type\": \"2\", \"price\": \"24.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"3116 BOLT ST\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"lafleur\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"ronda\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(57, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 54, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1008623\", \"id\": 54, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"78572\", \"city\": \"Mission\", \"type\": \"2\", \"price\": \"25.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1318 E KENNEDY\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"martinez\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"juan\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(58, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 55, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10090567\", \"id\": 55, \"dob\": \"1980-11-17\", \"ssn\": \"463616814\", \"zip\": \"77036\", \"city\": \"Houston\", \"type\": \"2\", \"price\": \"26.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"9803 CLUB CREEK 111\", \"dl_issue\": \"2019-11-17\", \"dl_state\": null, \"dl_expiry\": \"2025-11-17\", \"last_name\": \"thomas\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"felicia\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(59, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 56, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10091003\", \"id\": 56, \"dob\": \"1980-11-17\", \"ssn\": \"463633852\", \"zip\": \"75040\", \"city\": \"Garland\", \"type\": \"2\", \"price\": \"27.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"2425 NORWAY DR\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"thornton\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"tracy\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(60, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 57, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1009103\", \"id\": 57, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"75040\", \"city\": \"Garland\", \"type\": \"2\", \"price\": \"28.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"24 25 NORWAY DR\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"thornton\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"tracy\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(61, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 58, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1009103\", \"id\": 58, \"dob\": \"1980-11-17\", \"ssn\": \"462495994\", \"zip\": \"75040\", \"city\": \"Garland\", \"type\": \"2\", \"price\": \"29.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"2425 NORWAY DR\", \"dl_issue\": \"2019-11-17\", \"dl_state\": null, \"dl_expiry\": \"2025-11-17\", \"last_name\": \"thornton\", \"created_at\": \"2022-02-11T11:56:17.000000Z\", \"first_name\": \"tracy\", \"updated_at\": \"2022-02-11T11:56:17.000000Z\"}}', NULL, '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(62, 'order', 'The order has been created', 'App\\Models\\Order', 'created', 4, 'App\\Models\\User', 2, '{\"attributes\": {\"id\": 4, \"amount\": \"6.00\", \"user_id\": 2, \"fullz_id\": 35, \"created_at\": \"2022-02-11T12:07:40.000000Z\", \"updated_at\": \"2022-02-11T12:07:40.000000Z\"}}', NULL, '2022-02-11 07:07:40', '2022-02-11 07:07:40'),
(63, 'order', 'The order has been created', 'App\\Models\\Order', 'created', 5, 'App\\Models\\User', 2, '{\"attributes\": {\"id\": 5, \"amount\": \"24.00\", \"user_id\": 2, \"fullz_id\": 5, \"created_at\": \"2022-02-12T09:50:05.000000Z\", \"updated_at\": \"2022-02-12T09:50:05.000000Z\"}}', NULL, '2022-02-12 04:50:05', '2022-02-12 04:50:05'),
(64, 'order', 'The order has been created', 'App\\Models\\Order', 'created', 6, 'App\\Models\\User', 2, '{\"attributes\": {\"id\": 6, \"amount\": \"9.00\", \"user_id\": 2, \"fullz_id\": 38, \"created_at\": \"2022-02-12T09:51:44.000000Z\", \"updated_at\": \"2022-02-12T09:51:44.000000Z\"}}', NULL, '2022-02-12 04:51:44', '2022-02-12 04:51:44'),
(65, 'funds', 'The funds has been created', 'App\\Models\\Fund', 'created', 2, 'App\\Models\\User', 2, '{\"attributes\": {\"id\": 2, \"amount\": null, \"status\": \"Pending\", \"user_id\": \"2\", \"currency\": null, \"created_at\": \"2022-02-12T14:33:15.000000Z\", \"updated_at\": \"2022-02-12T14:33:15.000000Z\", \"invoice_sum\": \"\", \"invoice_url\": null, \"source_rate\": null, \"order_number\": \"6207c4db4c496398\", \"source_amount\": \"1.00\", \"transaction_id\": \"6207c52a1aaea5215b004cf3\", \"source_currency\": null, \"invoice_total_sum\": null, \"invoice_commission\": null}}', NULL, '2022-02-12 19:33:15', '2022-02-12 19:33:15'),
(66, 'funds', 'The funds has been created', 'App\\Models\\Fund', 'created', 3, 'App\\Models\\User', 2, '{\"attributes\": {\"id\": 3, \"amount\": null, \"status\": \"Pending\", \"user_id\": \"2\", \"currency\": null, \"created_at\": \"2022-02-12T14:36:36.000000Z\", \"updated_at\": \"2022-02-12T14:36:36.000000Z\", \"invoice_sum\": \"\", \"invoice_url\": null, \"source_rate\": null, \"order_number\": \"6207c5e577407805\", \"source_amount\": \"1.00\", \"transaction_id\": \"6207c5f1fa14bb23225c37ad\", \"source_currency\": null, \"invoice_total_sum\": null, \"invoice_commission\": null}}', NULL, '2022-02-12 19:36:36', '2022-02-12 19:36:36'),
(67, 'funds', 'The funds has been created', 'App\\Models\\Fund', 'created', 4, 'App\\Models\\User', 2, '{\"attributes\": {\"id\": 4, \"amount\": null, \"status\": \"Pending\", \"user_id\": \"2\", \"currency\": null, \"created_at\": \"2022-02-12T14:37:39.000000Z\", \"updated_at\": \"2022-02-12T14:37:39.000000Z\", \"invoice_sum\": \"\", \"invoice_url\": null, \"source_rate\": null, \"order_number\": \"6207c5e577407805\", \"source_amount\": \"3.00\", \"transaction_id\": \"6207c6328e8f927a9d64e1a1\", \"source_currency\": null, \"invoice_total_sum\": null, \"invoice_commission\": null}}', NULL, '2022-02-12 19:37:39', '2022-02-12 19:37:39'),
(68, 'User', 'The user has been updated', 'App\\Models\\User', 'updated', 2, 'App\\Models\\User', 2, '{\"old\": {\"phone\": \"0000000000\", \"password\": \"$2y$10$h/CA9aTOX50NPdeBUxaSFuZAOWKKSp6SSIeL7Tfvk5gBUI7n3N0Gi\", \"updated_at\": \"2022-02-07T11:06:58.000000Z\"}, \"attributes\": {\"phone\": \"1111111111\", \"password\": \"$2y$10$CHVV94dk9kq3cyKuvo2iieVeSDnNHPHlOZWtbFUo7rpPERKnrklYO\", \"updated_at\": \"2022-02-12T14:44:35.000000Z\"}}', NULL, '2022-02-12 19:44:35', '2022-02-12 19:44:35'),
(69, 'User', 'The user has been updated', 'App\\Models\\User', 'updated', 2, 'App\\Models\\User', 2, '{\"old\": {\"password\": \"$2y$10$CHVV94dk9kq3cyKuvo2iieVeSDnNHPHlOZWtbFUo7rpPERKnrklYO\", \"updated_at\": \"2022-02-12T14:44:35.000000Z\"}, \"attributes\": {\"password\": \"$2y$10$uE1UsGOhNfLzVhuUUACry.i5z1hPcQM6g1XKjXyuQ4UVbyyqj.4am\", \"updated_at\": \"2022-02-12T14:45:43.000000Z\"}}', NULL, '2022-02-12 19:45:43', '2022-02-12 19:45:43'),
(72, 'funds', 'The funds has been created', 'App\\Models\\Fund', 'created', 6, 'App\\Models\\User', 3, '{\"attributes\": {\"id\": 6, \"amount\": null, \"status\": \"Pending\", \"user_id\": \"3\", \"currency\": null, \"created_at\": \"2022-02-12T15:56:31.000000Z\", \"updated_at\": \"2022-02-12T15:56:31.000000Z\", \"invoice_sum\": \"\", \"invoice_url\": null, \"source_rate\": null, \"order_number\": \"6207d8953ccc1989\", \"source_amount\": \"5.00\", \"transaction_id\": \"6207d8a62328506df602189d\", \"source_currency\": null, \"invoice_total_sum\": null, \"invoice_commission\": null}}', NULL, '2022-02-12 20:56:31', '2022-02-12 20:56:31'),
(73, 'funds', 'The funds has been created', 'App\\Models\\Fund', 'created', 7, 'App\\Models\\User', 3, '{\"attributes\": {\"id\": 7, \"amount\": null, \"status\": \"Pending\", \"user_id\": \"3\", \"currency\": null, \"created_at\": \"2022-02-12T16:39:06.000000Z\", \"updated_at\": \"2022-02-12T16:39:06.000000Z\", \"invoice_sum\": \"\", \"invoice_url\": null, \"source_rate\": null, \"order_number\": \"6207e2a346c00544\", \"source_amount\": \"2.00\", \"transaction_id\": \"6207e2a96e49de383a734cd8\", \"source_currency\": null, \"invoice_total_sum\": null, \"invoice_commission\": null}}', NULL, '2022-02-12 21:39:06', '2022-02-12 21:39:06'),
(74, 'funds', 'The funds has been created', 'App\\Models\\Fund', 'created', 8, 'App\\Models\\User', 3, '{\"attributes\": {\"id\": 8, \"amount\": null, \"status\": \"Pending\", \"user_id\": \"3\", \"currency\": null, \"created_at\": \"2022-02-12T17:01:28.000000Z\", \"updated_at\": \"2022-02-12T17:01:28.000000Z\", \"invoice_sum\": \"\", \"invoice_url\": null, \"source_rate\": null, \"order_number\": \"6207e7d1e32a7746\", \"source_amount\": \"2.00\", \"transaction_id\": \"6207e7d9816fee4cc26c1c8a\", \"source_currency\": null, \"invoice_total_sum\": null, \"invoice_commission\": null}}', NULL, '2022-02-12 22:01:28', '2022-02-12 22:01:28'),
(75, 'funds', 'The funds has been created', 'App\\Models\\Fund', 'created', 9, 'App\\Models\\User', 2, '{\"attributes\": {\"id\": 9, \"amount\": null, \"status\": \"Pending\", \"user_id\": \"2\", \"currency\": null, \"created_at\": \"2022-02-12T17:15:57.000000Z\", \"updated_at\": \"2022-02-12T17:15:57.000000Z\", \"invoice_sum\": \"\", \"invoice_url\": null, \"source_rate\": null, \"order_number\": \"6207eb43e690d608\", \"source_amount\": \"2.00\", \"transaction_id\": \"6207eb4c0f6a5021960a4594\", \"source_currency\": null, \"invoice_total_sum\": null, \"invoice_commission\": null}}', NULL, '2022-02-12 22:15:57', '2022-02-12 22:15:57'),
(76, 'funds', 'The funds has been created', 'App\\Models\\Fund', 'created', 10, 'App\\Models\\User', 3, '{\"attributes\": {\"id\": 10, \"amount\": null, \"status\": \"Pending\", \"user_id\": \"3\", \"currency\": null, \"created_at\": \"2022-02-12T17:20:06.000000Z\", \"updated_at\": \"2022-02-12T17:20:06.000000Z\", \"invoice_sum\": \"\", \"invoice_url\": null, \"source_rate\": null, \"order_number\": \"6207ec40792ec410\", \"source_amount\": \"2.00\", \"transaction_id\": \"6207ec45816fee4cc26c1c8e\", \"source_currency\": null, \"invoice_total_sum\": null, \"invoice_commission\": null}}', NULL, '2022-02-12 22:20:06', '2022-02-12 22:20:06'),
(77, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 10, 'App\\Models\\User', 2, '{\"old\": {\"fee\": null, \"amount\": null, \"status\": \"Pending\", \"currency\": null, \"updated_at\": \"2022-02-12T17:20:06.000000Z\", \"invoice_sum\": \"\", \"source_rate\": null, \"source_currency\": null, \"invoice_total_sum\": null, \"invoice_commission\": null}, \"attributes\": {\"fee\": \"0.00005507\", \"amount\": \"0.00\", \"status\": \"Completed\", \"currency\": \"BTC\", \"updated_at\": \"2022-02-12T18:27:22.000000Z\", \"invoice_sum\": \"0.00025773\", \"source_rate\": \"0.00002339\", \"source_currency\": \"USD\", \"invoice_total_sum\": \"0.00020266\", \"invoice_commission\": \"0.00000000\"}}', NULL, '2022-02-12 23:27:22', '2022-02-12 23:27:22'),
(78, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 10, 'App\\Models\\User', 2, '{\"old\": {\"updated_at\": \"2022-02-12T18:27:22.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-12T18:28:32.000000Z\"}}', NULL, '2022-02-12 23:28:32', '2022-02-12 23:28:32'),
(79, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 10, 'App\\Models\\User', 2, '{\"old\": {\"updated_at\": \"2022-02-12T18:28:32.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-12T18:29:44.000000Z\"}}', NULL, '2022-02-12 23:29:44', '2022-02-12 23:29:44'),
(80, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 10, 'App\\Models\\User', 2, '{\"old\": {\"amount\": \"0.00\", \"updated_at\": \"2022-02-12T18:29:44.000000Z\"}, \"attributes\": {\"amount\": \"0.00020266\", \"updated_at\": \"2022-02-12T18:31:36.000000Z\"}}', NULL, '2022-02-12 23:31:36', '2022-02-12 23:31:36'),
(81, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 9, 'App\\Models\\User', 2, '{\"old\": {\"fee\": null, \"amount\": null, \"status\": \"Pending\", \"currency\": null, \"updated_at\": \"2022-02-12T17:15:57.000000Z\", \"invoice_sum\": \"\", \"source_rate\": null, \"source_currency\": null, \"invoice_total_sum\": null, \"invoice_commission\": null}, \"attributes\": {\"fee\": \"0.00005507\", \"amount\": \"0.00020266\", \"status\": \"Completed\", \"currency\": \"BTC\", \"updated_at\": \"2022-02-12T18:46:52.000000Z\", \"invoice_sum\": \"0.00025773\", \"source_rate\": \"0.00002339\", \"source_currency\": \"USD\", \"invoice_total_sum\": \"0.00020266\", \"invoice_commission\": \"0.00000000\"}}', NULL, '2022-02-12 23:46:52', '2022-02-12 23:46:52'),
(82, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 8, 'App\\Models\\User', 2, '{\"old\": {\"fee\": null, \"amount\": null, \"status\": \"Pending\", \"currency\": null, \"updated_at\": \"2022-02-12T17:01:28.000000Z\", \"invoice_sum\": \"\", \"source_rate\": null, \"source_currency\": null, \"invoice_total_sum\": null, \"invoice_commission\": null}, \"attributes\": {\"fee\": \"0.00005507\", \"amount\": \"0.00020266\", \"status\": \"Completed\", \"currency\": \"BTC\", \"updated_at\": \"2022-02-12T18:46:53.000000Z\", \"invoice_sum\": \"0.00025773\", \"source_rate\": \"0.00002339\", \"source_currency\": \"USD\", \"invoice_total_sum\": \"0.00020266\", \"invoice_commission\": \"0.00000000\"}}', NULL, '2022-02-12 23:46:53', '2022-02-12 23:46:53'),
(83, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 7, 'App\\Models\\User', 2, '{\"old\": {\"fee\": null, \"amount\": null, \"status\": \"Pending\", \"currency\": null, \"updated_at\": \"2022-02-12T16:39:06.000000Z\", \"invoice_sum\": \"\", \"source_rate\": null, \"source_currency\": null, \"invoice_total_sum\": null, \"invoice_commission\": null}, \"attributes\": {\"fee\": \"0.00005507\", \"amount\": \"0.00020266\", \"status\": \"Completed\", \"currency\": \"BTC\", \"updated_at\": \"2022-02-12T18:46:54.000000Z\", \"invoice_sum\": \"0.00025773\", \"source_rate\": \"0.00002339\", \"source_currency\": \"USD\", \"invoice_total_sum\": \"0.00020266\", \"invoice_commission\": \"0.00000000\"}}', NULL, '2022-02-12 23:46:54', '2022-02-12 23:46:54');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(84, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 6, 'App\\Models\\User', 2, '{\"old\": {\"fee\": null, \"amount\": null, \"status\": \"Pending\", \"currency\": null, \"updated_at\": \"2022-02-12T15:56:31.000000Z\", \"invoice_sum\": \"\", \"source_rate\": null, \"source_currency\": null, \"invoice_total_sum\": null, \"invoice_commission\": null}, \"attributes\": {\"fee\": \"0.00005507\", \"amount\": \"0.00020266\", \"status\": \"Completed\", \"currency\": \"BTC\", \"updated_at\": \"2022-02-12T18:46:54.000000Z\", \"invoice_sum\": \"0.00025773\", \"source_rate\": \"0.00002339\", \"source_currency\": \"USD\", \"invoice_total_sum\": \"0.00020266\", \"invoice_commission\": \"0.00000000\"}}', NULL, '2022-02-12 23:46:54', '2022-02-12 23:46:54'),
(85, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 5, 'App\\Models\\User', 2, '{\"old\": {\"fee\": null, \"amount\": null, \"status\": \"Pending\", \"currency\": null, \"updated_at\": \"2022-02-12T15:41:49.000000Z\", \"invoice_sum\": \"\", \"source_rate\": null, \"source_currency\": null, \"invoice_total_sum\": null, \"invoice_commission\": null}, \"attributes\": {\"fee\": \"0.00005507\", \"amount\": \"0.00020266\", \"status\": \"Completed\", \"currency\": \"BTC\", \"updated_at\": \"2022-02-12T18:46:55.000000Z\", \"invoice_sum\": \"0.00025773\", \"source_rate\": \"0.00002339\", \"source_currency\": \"USD\", \"invoice_total_sum\": \"0.00020266\", \"invoice_commission\": \"0.00000000\"}}', NULL, '2022-02-12 23:46:55', '2022-02-12 23:46:55'),
(86, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 4, 'App\\Models\\User', 2, '{\"old\": {\"fee\": null, \"amount\": null, \"status\": \"Pending\", \"currency\": null, \"updated_at\": \"2022-02-12T14:37:39.000000Z\", \"invoice_sum\": \"\", \"source_rate\": null, \"source_currency\": null, \"invoice_total_sum\": null, \"invoice_commission\": null}, \"attributes\": {\"fee\": \"0.00005507\", \"amount\": \"0.00020266\", \"status\": \"Completed\", \"currency\": \"BTC\", \"updated_at\": \"2022-02-12T18:46:56.000000Z\", \"invoice_sum\": \"0.00025773\", \"source_rate\": \"0.00002339\", \"source_currency\": \"USD\", \"invoice_total_sum\": \"0.00020266\", \"invoice_commission\": \"0.00000000\"}}', NULL, '2022-02-12 23:46:56', '2022-02-12 23:46:56'),
(87, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 3, 'App\\Models\\User', 2, '{\"old\": {\"fee\": null, \"amount\": null, \"status\": \"Pending\", \"currency\": null, \"updated_at\": \"2022-02-12T14:36:36.000000Z\", \"invoice_sum\": \"\", \"source_rate\": null, \"source_currency\": null, \"invoice_total_sum\": null, \"invoice_commission\": null}, \"attributes\": {\"fee\": \"0.00005507\", \"amount\": \"0.00020266\", \"status\": \"Completed\", \"currency\": \"BTC\", \"updated_at\": \"2022-02-12T18:46:57.000000Z\", \"invoice_sum\": \"0.00025773\", \"source_rate\": \"0.00002339\", \"source_currency\": \"USD\", \"invoice_total_sum\": \"0.00020266\", \"invoice_commission\": \"0.00000000\"}}', NULL, '2022-02-12 23:46:57', '2022-02-12 23:46:57'),
(88, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 10, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:31:36.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T18:49:56.000000Z\"}}', NULL, '2022-02-12 23:49:56', '2022-02-12 23:49:56'),
(89, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 9, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:46:52.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T18:49:57.000000Z\"}}', NULL, '2022-02-12 23:49:57', '2022-02-12 23:49:57'),
(90, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 8, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:46:53.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T18:49:58.000000Z\"}}', NULL, '2022-02-12 23:49:58', '2022-02-12 23:49:58'),
(91, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 7, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:46:54.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T18:49:59.000000Z\"}}', NULL, '2022-02-12 23:49:59', '2022-02-12 23:49:59'),
(92, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 6, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:46:54.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T18:50:00.000000Z\"}}', NULL, '2022-02-12 23:50:00', '2022-02-12 23:50:00'),
(93, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 5, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:46:55.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T18:50:01.000000Z\"}}', NULL, '2022-02-12 23:50:01', '2022-02-12 23:50:01'),
(94, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 4, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:46:56.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T18:50:02.000000Z\"}}', NULL, '2022-02-12 23:50:02', '2022-02-12 23:50:02'),
(95, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 3, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:46:57.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T18:50:03.000000Z\"}}', NULL, '2022-02-12 23:50:03', '2022-02-12 23:50:03'),
(96, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 10, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:49:56.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T18:54:47.000000Z\"}}', NULL, '2022-02-12 23:54:47', '2022-02-12 23:54:47'),
(97, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 9, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:49:57.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T18:54:48.000000Z\"}}', NULL, '2022-02-12 23:54:49', '2022-02-12 23:54:49'),
(98, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 8, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:49:58.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T18:54:50.000000Z\"}}', NULL, '2022-02-12 23:54:50', '2022-02-12 23:54:50'),
(99, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 7, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:49:59.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T18:54:50.000000Z\"}}', NULL, '2022-02-12 23:54:50', '2022-02-12 23:54:50'),
(100, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 6, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:50:00.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T18:54:51.000000Z\"}}', NULL, '2022-02-12 23:54:51', '2022-02-12 23:54:51'),
(101, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 5, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:50:01.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T18:54:52.000000Z\"}}', NULL, '2022-02-12 23:54:52', '2022-02-12 23:54:52'),
(102, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 4, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:50:02.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T18:54:53.000000Z\"}}', NULL, '2022-02-12 23:54:53', '2022-02-12 23:54:53'),
(103, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 3, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:50:03.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T18:54:54.000000Z\"}}', NULL, '2022-02-12 23:54:54', '2022-02-12 23:54:54'),
(104, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 10, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:54:47.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T19:04:33.000000Z\"}}', NULL, '2022-02-13 00:04:33', '2022-02-13 00:04:33'),
(105, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 9, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:54:48.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T19:04:34.000000Z\"}}', NULL, '2022-02-13 00:04:34', '2022-02-13 00:04:34'),
(106, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 8, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:54:50.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T19:04:35.000000Z\"}}', NULL, '2022-02-13 00:04:35', '2022-02-13 00:04:35'),
(107, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 7, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:54:50.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T19:04:36.000000Z\"}}', NULL, '2022-02-13 00:04:36', '2022-02-13 00:04:36'),
(108, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 6, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:54:51.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T19:04:37.000000Z\"}}', NULL, '2022-02-13 00:04:37', '2022-02-13 00:04:37'),
(109, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 5, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:54:52.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T19:04:38.000000Z\"}}', NULL, '2022-02-13 00:04:38', '2022-02-13 00:04:38'),
(110, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 4, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:54:53.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T19:04:39.000000Z\"}}', NULL, '2022-02-13 00:04:39', '2022-02-13 00:04:39'),
(111, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 3, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T18:54:54.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T19:04:40.000000Z\"}}', NULL, '2022-02-13 00:04:40', '2022-02-13 00:04:40'),
(112, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 10, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T19:04:33.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T19:11:55.000000Z\"}}', NULL, '2022-02-13 00:11:55', '2022-02-13 00:11:55'),
(113, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 9, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T19:04:34.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T19:11:56.000000Z\"}}', NULL, '2022-02-13 00:11:56', '2022-02-13 00:11:56'),
(114, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 8, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T19:04:35.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T19:11:57.000000Z\"}}', NULL, '2022-02-13 00:11:57', '2022-02-13 00:11:57'),
(115, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 7, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T19:04:36.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T19:11:57.000000Z\"}}', NULL, '2022-02-13 00:11:57', '2022-02-13 00:11:57'),
(116, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 6, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T19:04:37.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T19:11:58.000000Z\"}}', NULL, '2022-02-13 00:11:58', '2022-02-13 00:11:58'),
(117, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 5, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T19:04:38.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T19:11:59.000000Z\"}}', NULL, '2022-02-13 00:11:59', '2022-02-13 00:11:59'),
(118, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 4, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T19:04:39.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T19:12:00.000000Z\"}}', NULL, '2022-02-13 00:12:00', '2022-02-13 00:12:00'),
(119, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 3, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T19:04:40.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T19:12:01.000000Z\"}}', NULL, '2022-02-13 00:12:01', '2022-02-13 00:12:01'),
(120, 'order', 'The order has been created', 'App\\Models\\Order', 'created', 7, 'App\\Models\\User', 3, '{\"attributes\": {\"id\": 7, \"amount\": \"6.00\", \"user_id\": \"3\", \"fullz_id\": \"6\", \"created_at\": \"2022-02-12T19:17:17.000000Z\", \"updated_at\": \"2022-02-12T19:17:17.000000Z\"}}', NULL, '2022-02-13 00:17:17', '2022-02-13 00:17:17'),
(121, 'order', 'The order has been created', 'App\\Models\\Order', 'created', 8, 'App\\Models\\User', 3, '{\"attributes\": {\"id\": 8, \"amount\": \"2.00\", \"user_id\": \"3\", \"fullz_id\": \"12\", \"created_at\": \"2022-02-12T19:18:14.000000Z\", \"updated_at\": \"2022-02-12T19:18:14.000000Z\"}}', NULL, '2022-02-13 00:18:14', '2022-02-13 00:18:14'),
(122, 'order', 'The order has been created', 'App\\Models\\Order', 'created', 9, 'App\\Models\\User', 3, '{\"attributes\": {\"id\": 9, \"amount\": \"2.00\", \"user_id\": \"3\", \"fullz_id\": \"2\", \"created_at\": \"2022-02-12T19:18:14.000000Z\", \"updated_at\": \"2022-02-12T19:18:14.000000Z\"}}', NULL, '2022-02-13 00:18:14', '2022-02-13 00:18:14'),
(123, 'funds', 'The funds has been created', 'App\\Models\\Fund', 'created', 11, 'App\\Models\\User', 3, '{\"attributes\": {\"id\": 11, \"fee\": null, \"amount\": null, \"status\": \"Pending\", \"user_id\": \"3\", \"currency\": null, \"created_at\": \"2022-02-12T19:56:50.000000Z\", \"updated_at\": \"2022-02-12T19:56:50.000000Z\", \"invoice_sum\": \"\", \"invoice_url\": null, \"source_rate\": null, \"order_number\": \"620810f780638994\", \"source_amount\": \"2.00\", \"transaction_id\": \"620810fddb845c39a40fc99b\", \"source_currency\": null, \"invoice_total_sum\": null, \"invoice_commission\": null}}', NULL, '2022-02-13 00:56:50', '2022-02-13 00:56:50'),
(124, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 11, 'App\\Models\\User', 2, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T19:56:50.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T21:06:40.000000Z\"}}', NULL, '2022-02-13 02:06:40', '2022-02-13 02:06:40'),
(125, 'funds', 'The funds has been created', 'App\\Models\\Fund', 'created', 12, 'App\\Models\\User', 3, '{\"attributes\": {\"id\": 12, \"fee\": null, \"amount\": null, \"status\": \"Pending\", \"user_id\": \"3\", \"currency\": \"BTC\", \"created_at\": \"2022-02-12T21:15:12.000000Z\", \"updated_at\": \"2022-02-12T21:15:12.000000Z\", \"invoice_sum\": \"\", \"invoice_url\": null, \"source_rate\": null, \"order_number\": \"6208235975d20147\", \"source_amount\": \"2.00\", \"transaction_id\": \"6208235e0fc9fb1a882535a7\", \"source_currency\": \"USD\", \"invoice_total_sum\": null, \"invoice_commission\": null}}', NULL, '2022-02-13 02:15:12', '2022-02-13 02:15:12'),
(126, 'funds', 'The funds has been updated', 'App\\Models\\Fund', 'updated', 12, 'App\\Models\\User', 3, '{\"old\": {\"status\": \"Pending\", \"updated_at\": \"2022-02-12T21:15:12.000000Z\"}, \"attributes\": {\"status\": \"Completed\", \"updated_at\": \"2022-02-12T21:23:22.000000Z\"}}', NULL, '2022-02-13 02:23:22', '2022-02-13 02:23:22'),
(127, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 59, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1000763\", \"id\": 59, \"dob\": \"1980-11-17\", \"ssn\": \"453924103\", \"zip\": \"77014\", \"city\": \"Houston\", \"type\": \"2\", \"price\": \"11.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"2615 VETERANS MEMORIAL\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"harris\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"vazina\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(128, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 60, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10010113\", \"id\": 60, \"dob\": \"1980-11-17\", \"ssn\": \"461517481\", \"zip\": \"78559\", \"city\": \"La Feria\", \"type\": \"2\", \"price\": \"11.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"26037 N PARKER RD\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"nieto\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"carlos\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(129, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 61, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1001130\", \"id\": 61, \"dob\": \"1980-11-17\", \"ssn\": \"464858949\", \"zip\": \"77619\", \"city\": \"Groves\", \"type\": \"2\", \"price\": \"13.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"6255 WARREN ST APT H\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"hollis\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"bonita\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(130, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 62, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10012187\", \"id\": 62, \"dob\": \"1980-11-17\", \"ssn\": \"463616814\", \"zip\": \"78043\", \"city\": \"Laredo\", \"type\": \"2\", \"price\": \"34.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"4226 ARGUELLO\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"martinez\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"carlos\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(131, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 63, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1001362\", \"id\": 63, \"dob\": \"1980-11-17\", \"ssn\": \"463633852\", \"zip\": \"76012\", \"city\": \"Arlington\", \"type\": \"2\", \"price\": \"53.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1600 PECAN CHASE CIR # 9\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"white\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"arlene\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(132, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 64, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1001362\", \"id\": 64, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"76012\", \"city\": \"Arlington\", \"type\": \"2\", \"price\": \"6.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1600 PECAN CHASE CIR # 9\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"white\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"arlene\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(133, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 65, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1001585\", \"id\": 65, \"dob\": \"1980-11-17\", \"ssn\": \"462495994\", \"zip\": \"75602\", \"city\": \"Longview\", \"type\": \"2\", \"price\": \"23.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1911 BAXTER AVE\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"traylor\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"curtis\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(134, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 66, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10015855\", \"id\": 66, \"dob\": \"1980-11-17\", \"ssn\": \"459751793\", \"zip\": \"75602\", \"city\": \"Longview\", \"type\": \"2\", \"price\": \"8.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1224 S HIGH ST APT 218\", \"dl_issue\": \"2019-11-17\", \"dl_state\": null, \"dl_expiry\": \"2025-11-17\", \"last_name\": \"mitchell\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"hubert\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(135, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 67, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1001812\", \"id\": 67, \"dob\": \"1980-11-17\", \"ssn\": \"453924103\", \"zip\": \"77071\", \"city\": \"Houston\", \"type\": \"2\", \"price\": \"9.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"11406 PEPPERDINE LN\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"jack\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"daphine\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(136, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 68, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10019825\", \"id\": 68, \"dob\": \"1980-11-17\", \"ssn\": \"461517481\", \"zip\": \"77083\", \"city\": \"Houston\", \"type\": \"2\", \"price\": \"32.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"6905 GREAT OAKS SHADOW\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"black\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"verline\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(137, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 69, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10020936\", \"id\": 69, \"dob\": \"1980-11-17\", \"ssn\": \"464858949\", \"zip\": \"75203\", \"city\": \"Dallas\", \"type\": \"2\", \"price\": \"11.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1809 HIGH HILL BLVD # D\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"joiner\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"stephanie\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(138, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 70, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10029339\", \"id\": 70, \"dob\": \"1980-11-17\", \"ssn\": \"463616814\", \"zip\": \"78210\", \"city\": \"San Antonio\", \"type\": \"2\", \"price\": \"342.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"127 SARGENT ST\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"griffin\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"connie\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(139, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 71, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1002995\", \"id\": 71, \"dob\": \"1980-11-17\", \"ssn\": \"463633852\", \"zip\": \"76017\", \"city\": \"Arlington\", \"type\": \"2\", \"price\": \"23.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"5306 BRADLEY LN\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"wilborn\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"shawn\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(140, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 72, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1003030\", \"id\": 72, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"75070\", \"city\": \"McKinney\", \"type\": \"2\", \"price\": \"14.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"3400 CRAIG DR APT 1225\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"cabiness\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"lisa\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(141, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 73, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10030649\", \"id\": 73, \"dob\": \"1980-11-17\", \"ssn\": \"463616814\", \"zip\": \"76112\", \"city\": \"Fort Worth\", \"type\": \"2\", \"price\": \"23.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1740 AZTECA DR\", \"dl_issue\": \"2019-11-17\", \"dl_state\": null, \"dl_expiry\": \"2025-11-17\", \"last_name\": \"holbert\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"patrick\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(142, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 74, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1003617\", \"id\": 74, \"dob\": \"1980-11-17\", \"ssn\": \"463633852\", \"zip\": \"77833\", \"city\": \"Brenham\", \"type\": \"2\", \"price\": \"16.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"3971 HWY36N\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"burton\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"jerome\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(143, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 75, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1003904\", \"id\": 75, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"76119\", \"city\": \"Fort Worth\", \"type\": \"2\", \"price\": \"17.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"5429 WILBARGER ST # 25\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"khearalla\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"mowhib\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(144, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 76, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10041099\", \"id\": 76, \"dob\": \"1980-11-17\", \"ssn\": \"462495994\", \"zip\": \"75039\", \"city\": \"Irving\", \"type\": \"2\", \"price\": \"18.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"301 W LAS COLINAS BLVD 338\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"sharpe\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"melissa\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(145, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 77, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1004113\", \"id\": 77, \"dob\": \"1980-11-17\", \"ssn\": \"459751793\", \"zip\": \"78041\", \"city\": \"Laredo\", \"type\": \"2\", \"price\": \"19.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1311 WILD ROSE LN\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"martinez\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"jessica\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(146, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 78, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10043696\", \"id\": 78, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"78242\", \"city\": \"San Antonio\", \"type\": \"2\", \"price\": \"20.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"5434 SHERRY DR\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"ortega\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"dalila\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(147, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 79, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10049318\", \"id\": 79, \"dob\": \"1980-11-17\", \"ssn\": \"462495994\", \"zip\": \"75979\", \"city\": \"Woodville\", \"type\": \"2\", \"price\": \"21.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"200 CR 3530\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"haynes\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"tina\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(148, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 80, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1005168\", \"id\": 80, \"dob\": \"1980-11-17\", \"ssn\": \"459751793\", \"zip\": \"78155\", \"city\": \"Seguin\", \"type\": \"2\", \"price\": \"22.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"800 N 123 BYPASS 28\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"scott\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"patrice\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(149, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 81, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10057793\", \"id\": 81, \"dob\": \"1980-11-17\", \"ssn\": \"463616814\", \"zip\": \"76015\", \"city\": \"Arlington\", \"type\": \"2\", \"price\": \"23.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1023 PLOVER LN\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"rodriguez\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"rudy\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(150, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 82, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10064875\", \"id\": 82, \"dob\": \"1980-11-17\", \"ssn\": \"463633852\", \"zip\": \"77051\", \"city\": \"Houston\", \"type\": \"2\", \"price\": \"24.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"3116 BOLT ST\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"lafleur\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"ronda\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(151, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 83, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1008623\", \"id\": 83, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"78572\", \"city\": \"Mission\", \"type\": \"2\", \"price\": \"25.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"1318 E KENNEDY\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"martinez\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"juan\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(152, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 84, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10090567\", \"id\": 84, \"dob\": \"1980-11-17\", \"ssn\": \"463616814\", \"zip\": \"77036\", \"city\": \"Houston\", \"type\": \"2\", \"price\": \"26.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"9803 CLUB CREEK 111\", \"dl_issue\": \"2019-11-17\", \"dl_state\": null, \"dl_expiry\": \"2025-11-17\", \"last_name\": \"thomas\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"felicia\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(153, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 85, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"10091003\", \"id\": 85, \"dob\": \"1980-11-17\", \"ssn\": \"463633852\", \"zip\": \"75040\", \"city\": \"Garland\", \"type\": \"2\", \"price\": \"27.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"2425 NORWAY DR\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"thornton\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"tracy\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(154, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 86, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1009103\", \"id\": 86, \"dob\": \"1980-11-17\", \"ssn\": \"638862414\", \"zip\": \"75040\", \"city\": \"Garland\", \"type\": \"2\", \"price\": \"28.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"24 25 NORWAY DR\", \"dl_issue\": \"2019-11-17\", \"dl_state\": \"TX\", \"dl_expiry\": \"2025-11-17\", \"last_name\": \"thornton\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"tracy\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(155, 'Fullz', 'The fullz table has been created', 'App\\Models\\Fullz', 'created', 87, 'App\\Models\\User', 1, '{\"attributes\": {\"dl\": \"1009103\", \"id\": 87, \"dob\": \"1980-11-17\", \"ssn\": \"462495994\", \"zip\": \"75040\", \"city\": \"Garland\", \"type\": \"2\", \"price\": \"29.00\", \"state\": \"TX\", \"status\": \"1\", \"street\": \"2425 NORWAY DR\", \"dl_issue\": \"2019-11-17\", \"dl_state\": null, \"dl_expiry\": \"2025-11-17\", \"last_name\": \"thornton\", \"created_at\": \"2022-02-13T19:16:52.000000Z\", \"first_name\": \"tracy\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}}', NULL, '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(156, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 15, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"15.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"11.00\", \"updated_at\": \"2022-02-14T11:47:40.000000Z\"}}', NULL, '2022-02-14 16:47:40', '2022-02-14 16:47:40'),
(157, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 15, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"11.00\", \"updated_at\": \"2022-02-14T11:47:40.000000Z\"}, \"attributes\": {\"price\": \"31.00\", \"updated_at\": \"2022-02-14T11:53:35.000000Z\"}}', NULL, '2022-02-14 16:53:35', '2022-02-14 16:53:35'),
(158, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 60, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"11.00\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}, \"attributes\": {\"price\": \"100.00\", \"updated_at\": \"2022-02-14T12:09:03.000000Z\"}}', NULL, '2022-02-14 17:09:03', '2022-02-14 17:09:03'),
(159, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 15, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"31.00\", \"updated_at\": \"2022-02-14T11:53:35.000000Z\"}, \"attributes\": {\"price\": \"200.00\", \"updated_at\": \"2022-02-14T12:09:20.000000Z\"}}', NULL, '2022-02-14 17:09:20', '2022-02-14 17:09:20'),
(160, 'User', 'The user has been created', 'App\\Models\\User', 'created', 4, NULL, NULL, '{\"attributes\": {\"id\": 4, \"name\": \"karl\", \"email\": \"karl@gmail.com\", \"phone\": null, \"password\": \"$2y$10$OxIQrpSFtm3UUdpOIoKMj.5TY.Y6st.eDz/WbFgw3NvRNId/MAOGG\", \"last_name\": null, \"user_type\": \"2\", \"created_at\": \"2022-02-14T13:09:52.000000Z\", \"first_name\": null, \"updated_at\": \"2022-02-14T13:09:52.000000Z\", \"remember_token\": null, \"email_verified_at\": null}}', NULL, '2022-02-14 18:09:52', '2022-02-14 18:09:52'),
(161, 'funds', 'The funds has been created', 'App\\Models\\Fund', 'created', 13, 'App\\Models\\User', 4, '{\"attributes\": {\"id\": 13, \"fee\": null, \"amount\": null, \"status\": \"Pending\", \"user_id\": \"4\", \"currency\": \"BTC\", \"created_at\": \"2022-02-14T13:10:56.000000Z\", \"updated_at\": \"2022-02-14T13:10:56.000000Z\", \"invoice_sum\": \"\", \"invoice_url\": null, \"source_rate\": null, \"order_number\": \"620a54db4bec6199\", \"source_amount\": \"20.00\", \"transaction_id\": \"620a54e07cf6893e95753fa4\", \"source_currency\": \"USD\", \"invoice_total_sum\": null, \"invoice_commission\": null}}', NULL, '2022-02-14 18:10:56', '2022-02-14 18:10:56'),
(163, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 62, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"34.00\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T19:36:41.000000Z\"}}', NULL, '2022-02-15 00:36:41', '2022-02-15 00:36:41'),
(164, 'order', 'The order has been created', 'App\\Models\\Order', 'created', 10, 'App\\Models\\User', 3, '{\"attributes\": {\"id\": 10, \"amount\": \"2.00\", \"user_id\": \"3\", \"fullz_id\": \"62\", \"created_at\": \"2022-02-14T19:37:22.000000Z\", \"updated_at\": \"2022-02-14T19:37:22.000000Z\"}}', NULL, '2022-02-15 00:37:22', '2022-02-15 00:37:22'),
(165, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 1, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}}', NULL, '2022-02-15 01:47:07', '2022-02-15 01:47:07'),
(166, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 2, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}}', NULL, '2022-02-15 01:47:07', '2022-02-15 01:47:07'),
(167, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 3, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"56.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}}', NULL, '2022-02-15 01:47:07', '2022-02-15 01:47:07'),
(168, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 4, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"4.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}}', NULL, '2022-02-15 01:47:07', '2022-02-15 01:47:07'),
(169, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 5, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"24.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}}', NULL, '2022-02-15 01:47:07', '2022-02-15 01:47:07'),
(170, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 6, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}}', NULL, '2022-02-15 01:47:07', '2022-02-15 01:47:07'),
(171, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 7, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"43.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}}', NULL, '2022-02-15 01:47:07', '2022-02-15 01:47:07'),
(172, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 8, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"8.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}}', NULL, '2022-02-15 01:47:07', '2022-02-15 01:47:07'),
(173, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 9, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}}', NULL, '2022-02-15 01:47:07', '2022-02-15 01:47:07'),
(174, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 10, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"42.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}}', NULL, '2022-02-15 01:47:07', '2022-02-15 01:47:07'),
(175, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 15, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"200.00\", \"updated_at\": \"2022-02-14T12:09:20.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(176, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 29, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"29.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(177, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 28, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"28.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(178, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 27, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"27.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(179, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 26, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"26.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(180, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 25, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"25.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(181, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 24, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"24.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(182, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 23, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"3.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(183, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 22, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"22.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(184, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 21, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"654.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(185, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 20, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"20.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(186, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 19, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"19.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(187, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 18, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"654.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(188, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 17, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"17.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(189, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 16, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"16.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(190, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 1, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(191, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 14, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"14.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(192, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 13, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"13.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(193, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 12, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(194, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 11, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"11.00\", \"updated_at\": \"2022-02-11T01:55:58.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(195, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 10, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(196, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 9, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(197, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 8, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(198, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 7, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(199, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 6, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(200, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 5, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(201, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 4, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(202, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 3, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(203, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 2, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"10.00\", \"updated_at\": \"2022-02-14T20:47:07.000000Z\"}, \"attributes\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}}', NULL, '2022-02-15 01:47:59', '2022-02-15 01:47:59'),
(204, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 1, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}}', NULL, '2022-02-15 01:51:47', '2022-02-15 01:51:47'),
(205, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 2, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}}', NULL, '2022-02-15 01:51:47', '2022-02-15 01:51:47'),
(206, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 3, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}}', NULL, '2022-02-15 01:51:47', '2022-02-15 01:51:47'),
(207, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 4, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}}', NULL, '2022-02-15 01:51:47', '2022-02-15 01:51:47'),
(208, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 5, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}}', NULL, '2022-02-15 01:51:47', '2022-02-15 01:51:47'),
(209, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 6, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}}', NULL, '2022-02-15 01:51:47', '2022-02-15 01:51:47'),
(210, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 7, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}}', NULL, '2022-02-15 01:51:47', '2022-02-15 01:51:47'),
(211, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 8, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}}', NULL, '2022-02-15 01:51:47', '2022-02-15 01:51:47'),
(212, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 9, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}}', NULL, '2022-02-15 01:51:47', '2022-02-15 01:51:47'),
(213, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 10, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}}', NULL, '2022-02-15 01:51:47', '2022-02-15 01:51:47'),
(214, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 62, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T19:36:41.000000Z\"}, \"attributes\": {\"price\": \"5.00\", \"updated_at\": \"2022-02-14T20:53:26.000000Z\"}}', NULL, '2022-02-15 01:53:26', '2022-02-15 01:53:26'),
(215, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 68, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"32.00\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}, \"attributes\": {\"price\": \"5.00\", \"updated_at\": \"2022-02-14T20:53:26.000000Z\"}}', NULL, '2022-02-15 01:53:26', '2022-02-15 01:53:26'),
(216, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 65, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"23.00\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}, \"attributes\": {\"price\": \"5.00\", \"updated_at\": \"2022-02-14T20:53:26.000000Z\"}}', NULL, '2022-02-15 01:53:26', '2022-02-15 01:53:26'),
(217, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 63, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"53.00\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}, \"attributes\": {\"price\": \"5.00\", \"updated_at\": \"2022-02-14T20:53:26.000000Z\"}}', NULL, '2022-02-15 01:53:26', '2022-02-15 01:53:26'),
(218, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 87, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"29.00\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}, \"attributes\": {\"price\": \"5.00\", \"updated_at\": \"2022-02-14T20:53:26.000000Z\"}}', NULL, '2022-02-15 01:53:26', '2022-02-15 01:53:26'),
(219, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 67, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}, \"attributes\": {\"price\": \"5.00\", \"updated_at\": \"2022-02-14T20:53:26.000000Z\"}}', NULL, '2022-02-15 01:53:26', '2022-02-15 01:53:26'),
(220, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 61, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"13.00\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}, \"attributes\": {\"price\": \"5.00\", \"updated_at\": \"2022-02-14T20:53:26.000000Z\"}}', NULL, '2022-02-15 01:53:26', '2022-02-15 01:53:26'),
(221, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 66, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"8.00\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}, \"attributes\": {\"price\": \"5.00\", \"updated_at\": \"2022-02-14T20:53:26.000000Z\"}}', NULL, '2022-02-15 01:53:26', '2022-02-15 01:53:26'),
(222, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 64, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-13T19:16:52.000000Z\"}, \"attributes\": {\"price\": \"5.00\", \"updated_at\": \"2022-02-14T20:53:26.000000Z\"}}', NULL, '2022-02-15 01:53:26', '2022-02-15 01:53:26'),
(223, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 60, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"100.00\", \"updated_at\": \"2022-02-14T12:09:03.000000Z\"}, \"attributes\": {\"price\": \"5.00\", \"updated_at\": \"2022-02-14T20:53:26.000000Z\"}}', NULL, '2022-02-15 01:53:26', '2022-02-15 01:53:26'),
(224, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 15, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(225, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 29, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(226, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 28, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(227, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 27, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(228, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 26, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(229, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 25, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(230, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 24, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(231, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 23, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(232, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 22, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(233, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 21, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(234, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 20, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(235, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 19, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(236, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 18, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(237, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 17, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(238, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 16, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(239, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 1, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(240, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 14, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(241, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 13, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(242, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 12, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(243, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 11, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"1.00\", \"updated_at\": \"2022-02-14T20:47:59.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(244, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 10, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(245, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 9, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(246, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 8, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(247, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 7, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(248, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 6, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(249, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 5, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(250, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 4, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(251, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 3, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(252, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 2, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"12.00\", \"updated_at\": \"2022-02-14T20:51:47.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}}', NULL, '2022-02-15 02:15:59', '2022-02-15 02:15:59'),
(253, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 1, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}}', NULL, '2022-02-15 02:16:26', '2022-02-15 02:16:26'),
(254, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 2, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}}', NULL, '2022-02-15 02:16:26', '2022-02-15 02:16:26'),
(255, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 3, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}}', NULL, '2022-02-15 02:16:26', '2022-02-15 02:16:26'),
(256, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 4, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}}', NULL, '2022-02-15 02:16:26', '2022-02-15 02:16:26'),
(257, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 5, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}}', NULL, '2022-02-15 02:16:26', '2022-02-15 02:16:26'),
(258, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 6, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}}', NULL, '2022-02-15 02:16:26', '2022-02-15 02:16:26'),
(259, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 7, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}}', NULL, '2022-02-15 02:16:26', '2022-02-15 02:16:26'),
(260, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 8, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}}', NULL, '2022-02-15 02:16:26', '2022-02-15 02:16:26'),
(261, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 9, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}}', NULL, '2022-02-15 02:16:26', '2022-02-15 02:16:26'),
(262, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 10, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}}', NULL, '2022-02-15 02:16:26', '2022-02-15 02:16:26'),
(263, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 2, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}, \"attributes\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}}', NULL, '2022-02-15 02:16:51', '2022-02-15 02:16:51'),
(264, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 3, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}, \"attributes\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}}', NULL, '2022-02-15 02:16:51', '2022-02-15 02:16:51'),
(265, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 4, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}, \"attributes\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}}', NULL, '2022-02-15 02:16:51', '2022-02-15 02:16:51'),
(266, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 5, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}, \"attributes\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}}', NULL, '2022-02-15 02:16:51', '2022-02-15 02:16:51'),
(267, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 6, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}, \"attributes\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}}', NULL, '2022-02-15 02:16:51', '2022-02-15 02:16:51'),
(268, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 7, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}, \"attributes\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}}', NULL, '2022-02-15 02:16:51', '2022-02-15 02:16:51'),
(269, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 8, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}, \"attributes\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}}', NULL, '2022-02-15 02:16:51', '2022-02-15 02:16:51'),
(270, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 9, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}, \"attributes\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}}', NULL, '2022-02-15 02:16:51', '2022-02-15 02:16:51'),
(271, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 10, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}, \"attributes\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}}', NULL, '2022-02-15 02:16:51', '2022-02-15 02:16:51'),
(272, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 15, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(273, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 29, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(274, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 28, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(275, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 27, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(276, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 26, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(277, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 25, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(278, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 24, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(279, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 23, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(280, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 22, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(281, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 21, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(282, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 20, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(283, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 19, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(284, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 18, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(285, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 17, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(286, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 16, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(287, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 1, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"6.00\", \"updated_at\": \"2022-02-14T21:16:26.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(288, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 14, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(289, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 13, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(290, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 12, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(291, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 11, 'App\\Models\\User', 1, '{\"old\": {\"updated_at\": \"2022-02-14T21:15:59.000000Z\"}, \"attributes\": {\"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(292, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 10, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(293, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 9, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(294, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 8, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(295, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 7, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(296, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 6, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(297, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 5, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(298, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 4, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(299, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 3, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(300, 'Fullz', 'The fullz table has been updated', 'App\\Models\\Fullz', 'updated', 2, 'App\\Models\\User', 1, '{\"old\": {\"price\": \"9.00\", \"updated_at\": \"2022-02-14T21:16:51.000000Z\"}, \"attributes\": {\"price\": \"2.00\", \"updated_at\": \"2022-02-14T21:17:19.000000Z\"}}', NULL, '2022-02-15 02:17:19', '2022-02-15 02:17:19'),
(301, 'order', 'The order has been created', 'App\\Models\\Order', 'created', 11, 'App\\Models\\User', 3, '{\"attributes\": {\"id\": 11, \"amount\": \"2.00\", \"user_id\": \"3\", \"fullz_id\": \"5\", \"created_at\": \"2022-02-16T16:50:25.000000Z\", \"updated_at\": \"2022-02-16T16:50:25.000000Z\"}}', NULL, '2022-02-16 21:50:25', '2022-02-16 21:50:25'),
(302, 'funds', 'The funds has been created', 'App\\Models\\Fund', 'created', 14, 'App\\Models\\User', 3, '{\"attributes\": {\"id\": 14, \"fee\": null, \"amount\": null, \"status\": \"Pending\", \"user_id\": \"3\", \"currency\": \"BTC\", \"created_at\": \"2022-02-16T16:51:09.000000Z\", \"updated_at\": \"2022-02-16T16:51:09.000000Z\", \"invoice_sum\": \"\", \"invoice_url\": null, \"source_rate\": null, \"order_number\": \"620d2b76d347f418\", \"source_amount\": \"2.00\", \"transaction_id\": \"620d2b7d17e93e7cbd72baa6\", \"source_currency\": \"USD\", \"invoice_total_sum\": null, \"invoice_commission\": null}}', NULL, '2022-02-16 21:51:09', '2022-02-16 21:51:09'),
(303, 'funds', 'The funds has been created', 'App\\Models\\Fund', 'created', 15, 'App\\Models\\User', 3, '{\"attributes\": {\"id\": 15, \"fee\": null, \"amount\": null, \"status\": \"Pending\", \"user_id\": \"3\", \"currency\": \"BTC\", \"created_at\": \"2022-02-18T00:38:07.000000Z\", \"updated_at\": \"2022-02-18T00:38:07.000000Z\", \"invoice_sum\": \"\", \"invoice_url\": null, \"source_rate\": null, \"order_number\": \"620eea5c90539690\", \"source_amount\": \"20.00\", \"transaction_id\": \"620eea6f1f86eb31127dabc7\", \"source_currency\": \"USD\", \"invoice_total_sum\": null, \"invoice_commission\": null}}', NULL, '2022-02-18 05:38:07', '2022-02-18 05:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_payments`
--

CREATE TABLE `crypto_payments` (
  `paymentID` bigint UNSIGNED NOT NULL,
  `boxID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `boxType` enum('paymentbox','captchabox') NOT NULL,
  `orderID` varchar(50) NOT NULL DEFAULT '',
  `userID` varchar(50) NOT NULL DEFAULT '',
  `countryID` varchar(3) NOT NULL DEFAULT '',
  `coinLabel` varchar(6) NOT NULL DEFAULT '',
  `amount` double(20,8) NOT NULL DEFAULT '0.00000000',
  `amountUSD` double(20,8) NOT NULL DEFAULT '0.00000000',
  `unrecognised` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `addr` varchar(34) NOT NULL DEFAULT '',
  `txID` char(64) NOT NULL DEFAULT '',
  `txDate` datetime DEFAULT NULL,
  `txConfirmed` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `txCheckDate` datetime DEFAULT NULL,
  `processed` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `processedDate` datetime DEFAULT NULL,
  `recordCreated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fullzs`
--

CREATE TABLE `fullzs` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `dl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dl_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dl_issue` date DEFAULT NULL,
  `dl_expiry` date DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1->active, 2->in-active',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1->Fullz SSN, 2->FullzSS+NDL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fullzs`
--

INSERT INTO `fullzs` (`id`, `first_name`, `last_name`, `street`, `city`, `state`, `zip`, `ssn`, `dob`, `dl`, `dl_state`, `dl_issue`, `dl_expiry`, `price`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, 'vazina', 'harris', '2615 VETERANS MEMORIAL', 'Houston', 'TX', '77014', '453924103', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(2, 'carlos', 'nieto', '26037 N PARKER RD', 'La Feria', 'TX', '78559', '461517481', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(3, 'bonita', 'hollis', '6255 WARREN ST APT H', 'Groves', 'TX', '77619', '464858949', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(4, 'carlos', 'martinez', '4226 ARGUELLO', 'Laredo', 'TX', '78043', '463616814', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(5, 'arlene', 'white', '1600 PECAN CHASE CIR # 9', 'Arlington', 'TX', '76012', '463633852', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(6, 'arlene', 'white', '1600 PECAN CHASE CIR # 9', 'Arlington', 'TX', '76012', '638862414', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(7, 'curtis', 'traylor', '1911 BAXTER AVE', 'Longview', 'TX', '75602', '462495994', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(8, 'hubert', 'mitchell', '1224 S HIGH ST APT 218', 'Longview', 'TX', '75602', '459751793', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(9, 'daphine', 'jack', '11406 PEPPERDINE LN', 'Houston', 'TX', '77071', '453924103', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(10, 'verline', 'black', '6905 GREAT OAKS SHADOW', 'Houston', 'TX', '77083', '461517481', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(11, 'stephanie', 'joiner', '1809 HIGH HILL BLVD # D', 'Dallas', 'TX', '75203', '464858949', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(12, 'connie', 'griffin', '127 SARGENT ST', 'San Antonio', 'TX', '78210', '463616814', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(13, 'shawn', 'wilborn', '5306 BRADLEY LN', 'Arlington', 'TX', '76017', '463633852', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(14, 'lisa', 'cabiness', '3400 CRAIG DR APT 1225', 'McKinney', 'TX', '75070', '638862414', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(15, 'patrick', 'holbert', '1740 AZTECA DR', 'Fort Worth', 'TX', '76112', '463616814', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(16, 'jerome', 'burton', '3971 HWY36N', 'Brenham', 'TX', '77833', '463633852', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(17, 'mowhib', 'khearalla', '5429 WILBARGER ST # 25', 'Fort Worth', 'TX', '76119', '638862414', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(18, 'melissa', 'sharpe', '301 W LAS COLINAS BLVD 338', 'Irving', 'TX', '75039', '462495994', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(19, 'jessica', 'martinez', '1311 WILD ROSE LN', 'Laredo', 'TX', '78041', '459751793', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(20, 'dalila', 'ortega', '5434 SHERRY DR', 'San Antonio', 'TX', '78242', '638862414', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(21, 'tina', 'haynes', '200 CR 3530', 'Woodville', 'TX', '75979', '462495994', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(22, 'patrice', 'scott', '800 N 123 BYPASS 28', 'Seguin', 'TX', '78155', '459751793', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(23, 'rudy', 'rodriguez', '1023 PLOVER LN', 'Arlington', 'TX', '76015', '463616814', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(24, 'ronda', 'lafleur', '3116 BOLT ST', 'Houston', 'TX', '77051', '463633852', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(25, 'juan', 'martinez', '1318 E KENNEDY', 'Mission', 'TX', '78572', '638862414', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(26, 'felicia', 'thomas', '9803 CLUB CREEK 111', 'Houston', 'TX', '77036', '463616814', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(27, 'tracy', 'thornton', '2425 NORWAY DR', 'Garland', 'TX', '75040', '463633852', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(28, 'tracy', 'thornton', '24 25 NORWAY DR', 'Garland', 'TX', '75040', '638862414', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(29, 'tracy', 'thornton', '2425 NORWAY DR', 'Garland', 'TX', '75040', '462495994', '1980-11-17', NULL, NULL, NULL, NULL, 2.00, '1', '1', '2022-02-11 06:55:58', '2022-02-15 02:17:19'),
(30, 'vazina', 'harris', '2615 VETERANS MEMORIAL', 'Houston', 'TX', '77014', '453924103', '1980-11-17', '1000763', 'TX', '2019-11-17', '2025-11-17', 11.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(31, 'carlos', 'nieto', '26037 N PARKER RD', 'La Feria', 'TX', '78559', '461517481', '1980-11-17', '10010113', 'TX', '2019-11-17', '2025-11-17', 11.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(32, 'bonita', 'hollis', '6255 WARREN ST APT H', 'Groves', 'TX', '77619', '464858949', '1980-11-17', '1001130', 'TX', '2019-11-17', '2025-11-17', 13.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(33, 'carlos', 'martinez', '4226 ARGUELLO', 'Laredo', 'TX', '78043', '463616814', '1980-11-17', '10012187', 'TX', '2019-11-17', '2025-11-17', 34.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(34, 'arlene', 'white', '1600 PECAN CHASE CIR # 9', 'Arlington', 'TX', '76012', '463633852', '1980-11-17', '1001362', 'TX', '2019-11-17', '2025-11-17', 53.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(35, 'arlene', 'white', '1600 PECAN CHASE CIR # 9', 'Arlington', 'TX', '76012', '638862414', '1980-11-17', '1001362', 'TX', '2019-11-17', '2025-11-17', 6.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(36, 'curtis', 'traylor', '1911 BAXTER AVE', 'Longview', 'TX', '75602', '462495994', '1980-11-17', '1001585', 'TX', '2019-11-17', '2025-11-17', 23.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(37, 'hubert', 'mitchell', '1224 S HIGH ST APT 218', 'Longview', 'TX', '75602', '459751793', '1980-11-17', '10015855', NULL, '2019-11-17', '2025-11-17', 8.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(38, 'daphine', 'jack', '11406 PEPPERDINE LN', 'Houston', 'TX', '77071', '453924103', '1980-11-17', '1001812', 'TX', '2019-11-17', '2025-11-17', 9.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(39, 'verline', 'black', '6905 GREAT OAKS SHADOW', 'Houston', 'TX', '77083', '461517481', '1980-11-17', '10019825', 'TX', '2019-11-17', '2025-11-17', 32.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(40, 'stephanie', 'joiner', '1809 HIGH HILL BLVD # D', 'Dallas', 'TX', '75203', '464858949', '1980-11-17', '10020936', 'TX', '2019-11-17', '2025-11-17', 11.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(41, 'connie', 'griffin', '127 SARGENT ST', 'San Antonio', 'TX', '78210', '463616814', '1980-11-17', '10029339', 'TX', '2019-11-17', '2025-11-17', 342.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(42, 'shawn', 'wilborn', '5306 BRADLEY LN', 'Arlington', 'TX', '76017', '463633852', '1980-11-17', '1002995', 'TX', '2019-11-17', '2025-11-17', 23.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(43, 'lisa', 'cabiness', '3400 CRAIG DR APT 1225', 'McKinney', 'TX', '75070', '638862414', '1980-11-17', '1003030', 'TX', '2019-11-17', '2025-11-17', 14.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(44, 'patrick', 'holbert', '1740 AZTECA DR', 'Fort Worth', 'TX', '76112', '463616814', '1980-11-17', '10030649', NULL, '2019-11-17', '2025-11-17', 23.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(45, 'jerome', 'burton', '3971 HWY36N', 'Brenham', 'TX', '77833', '463633852', '1980-11-17', '1003617', 'TX', '2019-11-17', '2025-11-17', 16.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(46, 'mowhib', 'khearalla', '5429 WILBARGER ST # 25', 'Fort Worth', 'TX', '76119', '638862414', '1980-11-17', '1003904', 'TX', '2019-11-17', '2025-11-17', 17.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(47, 'melissa', 'sharpe', '301 W LAS COLINAS BLVD 338', 'Irving', 'TX', '75039', '462495994', '1980-11-17', '10041099', 'TX', '2019-11-17', '2025-11-17', 18.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(48, 'jessica', 'martinez', '1311 WILD ROSE LN', 'Laredo', 'TX', '78041', '459751793', '1980-11-17', '1004113', 'TX', '2019-11-17', '2025-11-17', 19.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(49, 'dalila', 'ortega', '5434 SHERRY DR', 'San Antonio', 'TX', '78242', '638862414', '1980-11-17', '10043696', 'TX', '2019-11-17', '2025-11-17', 20.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(50, 'tina', 'haynes', '200 CR 3530', 'Woodville', 'TX', '75979', '462495994', '1980-11-17', '10049318', 'TX', '2019-11-17', '2025-11-17', 21.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(51, 'patrice', 'scott', '800 N 123 BYPASS 28', 'Seguin', 'TX', '78155', '459751793', '1980-11-17', '1005168', 'TX', '2019-11-17', '2025-11-17', 22.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(52, 'rudy', 'rodriguez', '1023 PLOVER LN', 'Arlington', 'TX', '76015', '463616814', '1980-11-17', '10057793', 'TX', '2019-11-17', '2025-11-17', 23.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(53, 'ronda', 'lafleur', '3116 BOLT ST', 'Houston', 'TX', '77051', '463633852', '1980-11-17', '10064875', 'TX', '2019-11-17', '2025-11-17', 24.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(54, 'juan', 'martinez', '1318 E KENNEDY', 'Mission', 'TX', '78572', '638862414', '1980-11-17', '1008623', 'TX', '2019-11-17', '2025-11-17', 25.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(55, 'felicia', 'thomas', '9803 CLUB CREEK 111', 'Houston', 'TX', '77036', '463616814', '1980-11-17', '10090567', NULL, '2019-11-17', '2025-11-17', 26.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(56, 'tracy', 'thornton', '2425 NORWAY DR', 'Garland', 'TX', '75040', '463633852', '1980-11-17', '10091003', 'TX', '2019-11-17', '2025-11-17', 27.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(57, 'tracy', 'thornton', '24 25 NORWAY DR', 'Garland', 'TX', '75040', '638862414', '1980-11-17', '1009103', 'TX', '2019-11-17', '2025-11-17', 28.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(58, 'tracy', 'thornton', '2425 NORWAY DR', 'Garland', 'TX', '75040', '462495994', '1980-11-17', '1009103', NULL, '2019-11-17', '2025-11-17', 29.00, '1', '2', '2022-02-11 06:56:17', '2022-02-11 06:56:17'),
(59, 'vazina', 'harris', '2615 VETERANS MEMORIAL', 'Houston', 'TX', '77014', '453924103', '1980-11-17', '1000763', 'TX', '2019-11-17', '2025-11-17', 11.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(60, 'carlos', 'nieto', '26037 N PARKER RD', 'La Feria', 'TX', '78559', '461517481', '1980-11-17', '10010113', 'TX', '2019-11-17', '2025-11-17', 5.00, '1', '2', '2022-02-14 00:16:52', '2022-02-15 01:53:26'),
(61, 'bonita', 'hollis', '6255 WARREN ST APT H', 'Groves', 'TX', '77619', '464858949', '1980-11-17', '1001130', 'TX', '2019-11-17', '2025-11-17', 5.00, '1', '2', '2022-02-14 00:16:52', '2022-02-15 01:53:26'),
(62, 'carlos', 'martinez', '4226 ARGUELLO', 'Laredo', 'TX', '78043', '463616814', '1980-11-17', '10012187', 'TX', '2019-11-17', '2025-11-17', 5.00, '1', '2', '2022-02-14 00:16:52', '2022-02-15 01:53:26'),
(63, 'arlene', 'white', '1600 PECAN CHASE CIR # 9', 'Arlington', 'TX', '76012', '463633852', '1980-11-17', '1001362', 'TX', '2019-11-17', '2025-11-17', 5.00, '1', '2', '2022-02-14 00:16:52', '2022-02-15 01:53:26'),
(64, 'arlene', 'white', '1600 PECAN CHASE CIR # 9', 'Arlington', 'TX', '76012', '638862414', '1980-11-17', '1001362', 'TX', '2019-11-17', '2025-11-17', 5.00, '1', '2', '2022-02-14 00:16:52', '2022-02-15 01:53:26'),
(65, 'curtis', 'traylor', '1911 BAXTER AVE', 'Longview', 'TX', '75602', '462495994', '1980-11-17', '1001585', 'TX', '2019-11-17', '2025-11-17', 5.00, '1', '2', '2022-02-14 00:16:52', '2022-02-15 01:53:26'),
(66, 'hubert', 'mitchell', '1224 S HIGH ST APT 218', 'Longview', 'TX', '75602', '459751793', '1980-11-17', '10015855', NULL, '2019-11-17', '2025-11-17', 5.00, '1', '2', '2022-02-14 00:16:52', '2022-02-15 01:53:26'),
(67, 'daphine', 'jack', '11406 PEPPERDINE LN', 'Houston', 'TX', '77071', '453924103', '1980-11-17', '1001812', 'TX', '2019-11-17', '2025-11-17', 5.00, '1', '2', '2022-02-14 00:16:52', '2022-02-15 01:53:26'),
(68, 'verline', 'black', '6905 GREAT OAKS SHADOW', 'Houston', 'TX', '77083', '461517481', '1980-11-17', '10019825', 'TX', '2019-11-17', '2025-11-17', 5.00, '1', '2', '2022-02-14 00:16:52', '2022-02-15 01:53:26'),
(69, 'stephanie', 'joiner', '1809 HIGH HILL BLVD # D', 'Dallas', 'TX', '75203', '464858949', '1980-11-17', '10020936', 'TX', '2019-11-17', '2025-11-17', 11.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(70, 'connie', 'griffin', '127 SARGENT ST', 'San Antonio', 'TX', '78210', '463616814', '1980-11-17', '10029339', 'TX', '2019-11-17', '2025-11-17', 342.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(71, 'shawn', 'wilborn', '5306 BRADLEY LN', 'Arlington', 'TX', '76017', '463633852', '1980-11-17', '1002995', 'TX', '2019-11-17', '2025-11-17', 23.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(72, 'lisa', 'cabiness', '3400 CRAIG DR APT 1225', 'McKinney', 'TX', '75070', '638862414', '1980-11-17', '1003030', 'TX', '2019-11-17', '2025-11-17', 14.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(73, 'patrick', 'holbert', '1740 AZTECA DR', 'Fort Worth', 'TX', '76112', '463616814', '1980-11-17', '10030649', NULL, '2019-11-17', '2025-11-17', 23.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(74, 'jerome', 'burton', '3971 HWY36N', 'Brenham', 'TX', '77833', '463633852', '1980-11-17', '1003617', 'TX', '2019-11-17', '2025-11-17', 16.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(75, 'mowhib', 'khearalla', '5429 WILBARGER ST # 25', 'Fort Worth', 'TX', '76119', '638862414', '1980-11-17', '1003904', 'TX', '2019-11-17', '2025-11-17', 17.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(76, 'melissa', 'sharpe', '301 W LAS COLINAS BLVD 338', 'Irving', 'TX', '75039', '462495994', '1980-11-17', '10041099', 'TX', '2019-11-17', '2025-11-17', 18.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(77, 'jessica', 'martinez', '1311 WILD ROSE LN', 'Laredo', 'TX', '78041', '459751793', '1980-11-17', '1004113', 'TX', '2019-11-17', '2025-11-17', 19.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(78, 'dalila', 'ortega', '5434 SHERRY DR', 'San Antonio', 'TX', '78242', '638862414', '1980-11-17', '10043696', 'TX', '2019-11-17', '2025-11-17', 20.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(79, 'tina', 'haynes', '200 CR 3530', 'Woodville', 'TX', '75979', '462495994', '1980-11-17', '10049318', 'TX', '2019-11-17', '2025-11-17', 21.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(80, 'patrice', 'scott', '800 N 123 BYPASS 28', 'Seguin', 'TX', '78155', '459751793', '1980-11-17', '1005168', 'TX', '2019-11-17', '2025-11-17', 22.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(81, 'rudy', 'rodriguez', '1023 PLOVER LN', 'Arlington', 'TX', '76015', '463616814', '1980-11-17', '10057793', 'TX', '2019-11-17', '2025-11-17', 23.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(82, 'ronda', 'lafleur', '3116 BOLT ST', 'Houston', 'TX', '77051', '463633852', '1980-11-17', '10064875', 'TX', '2019-11-17', '2025-11-17', 24.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(83, 'juan', 'martinez', '1318 E KENNEDY', 'Mission', 'TX', '78572', '638862414', '1980-11-17', '1008623', 'TX', '2019-11-17', '2025-11-17', 25.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(84, 'felicia', 'thomas', '9803 CLUB CREEK 111', 'Houston', 'TX', '77036', '463616814', '1980-11-17', '10090567', NULL, '2019-11-17', '2025-11-17', 26.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(85, 'tracy', 'thornton', '2425 NORWAY DR', 'Garland', 'TX', '75040', '463633852', '1980-11-17', '10091003', 'TX', '2019-11-17', '2025-11-17', 27.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(86, 'tracy', 'thornton', '24 25 NORWAY DR', 'Garland', 'TX', '75040', '638862414', '1980-11-17', '1009103', 'TX', '2019-11-17', '2025-11-17', 28.00, '1', '2', '2022-02-14 00:16:52', '2022-02-14 00:16:52'),
(87, 'tracy', 'thornton', '2425 NORWAY DR', 'Garland', 'TX', '75040', '462495994', '1980-11-17', '1009103', NULL, '2019-11-17', '2025-11-17', 5.00, '1', '2', '2022-02-14 00:16:52', '2022-02-15 01:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_number` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `source_amount` decimal(8,2) DEFAULT NULL,
  `amount` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_currency` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_rate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_sum` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `invoice_total_sum` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_commission` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `funds`
--

INSERT INTO `funds` (`id`, `user_id`, `transaction_id`, `order_number`, `invoice_url`, `source_amount`, `amount`, `currency`, `source_currency`, `source_rate`, `invoice_sum`, `invoice_total_sum`, `invoice_commission`, `fee`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, '45655645634532443546', '6207b34a10141933', NULL, 100.00, '100.00', 'BTC', 'USD', '0.00008525', '0.00364490', '0.00370040', '0.00005550', NULL, 'Completed', '2022-02-09 19:58:21', '2022-02-09 19:58:21'),
(3, 2, '6207c5f1fa14bb23225c37ad', '6207c5e577407805', NULL, 1.00, '0.00020266', 'BTC', 'USD', '0.00002339', '0.00025773', '0.00020266', '0.00000000', '0.00005507', 'Completed', '2022-02-12 19:36:36', '2022-02-13 00:12:01'),
(4, 2, '6207c6328e8f927a9d64e1a1', '6207c5e577407805', NULL, 3.00, '0.00020266', 'BTC', 'USD', '0.00002339', '0.00025773', '0.00020266', '0.00000000', '0.00005507', 'Completed', '2022-02-12 19:37:39', '2022-02-13 00:12:00'),
(5, 3, '6207d53d62480e385e39b4e3', '6207d535464ae182', NULL, 5.00, '0.00020266', 'BTC', 'USD', '0.00002339', '0.00025773', '0.00020266', '0.00000000', '0.00005507', 'Completed', '2022-02-12 20:41:49', '2022-02-13 00:11:59'),
(6, 3, '6207d8a62328506df602189d', '6207d8953ccc1989', NULL, 5.00, '0.00020266', 'BTC', 'USD', '0.00002339', '0.00025773', '0.00020266', '0.00000000', '0.00005507', 'Completed', '2022-02-12 20:56:31', '2022-02-13 00:11:58'),
(7, 3, '6207e2a96e49de383a734cd8', '6207e2a346c00544', NULL, 2.00, '0.00020266', 'BTC', 'USD', '0.00002339', '0.00025773', '0.00020266', '0.00000000', '0.00005507', 'Completed', '2022-02-12 21:39:06', '2022-02-13 00:11:57'),
(8, 3, '6207e7d9816fee4cc26c1c8a', '6207e7d1e32a7746', NULL, 2.00, '0.00020266', 'BTC', 'USD', '0.00002339', '0.00025773', '0.00020266', '0.00000000', '0.00005507', 'Completed', '2022-02-12 22:01:28', '2022-02-13 00:11:57'),
(9, 2, '6207eb4c0f6a5021960a4594', '6207eb43e690d608', NULL, 2.00, '0.00020266', 'BTC', 'USD', '0.00002339', '0.00025773', '0.00020266', '0.00000000', '0.00005507', 'Completed', '2022-02-12 22:15:57', '2022-02-13 00:11:56'),
(10, 3, '6207ec45816fee4cc26c1c8e', '6207ec40792ec410', NULL, 2.00, '0.00020266', 'BTC', 'USD', '0.00002339', '0.00025773', '0.00020266', '0.00000000', '0.00005507', 'Completed', '2022-02-12 22:20:06', '2022-02-13 00:11:55'),
(11, 3, '620810fddb845c39a40fc99b', '620810f780638994', NULL, 2.00, NULL, 'BTC', NULL, NULL, '', NULL, NULL, NULL, 'Completed', '2022-02-13 00:56:50', '2022-02-13 02:06:40'),
(12, 3, '6208235e0fc9fb1a882535a7', '6208235975d20147', NULL, 2.00, NULL, 'BTC', 'USD', NULL, '', NULL, NULL, NULL, 'Completed', '2022-02-13 02:15:12', '2022-02-13 02:23:22'),
(13, 4, '620a54e07cf6893e95753fa4', '620a54db4bec6199', NULL, 20.00, NULL, 'BTC', 'USD', NULL, '', NULL, NULL, NULL, 'Pending', '2022-02-14 18:10:56', '2022-02-14 18:10:56'),
(14, 3, '620d2b7d17e93e7cbd72baa6', '620d2b76d347f418', NULL, 2.00, NULL, 'BTC', 'USD', NULL, '', NULL, NULL, NULL, 'Pending', '2022-02-16 21:51:09', '2022-02-16 21:51:09'),
(15, 3, '620eea6f1f86eb31127dabc7', '620eea5c90539690', NULL, 20.00, NULL, 'BTC', 'USD', NULL, '', NULL, NULL, NULL, 'Pending', '2022-02-18 05:38:07', '2022-02-18 05:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_06_200824_create_transactions_table', 1),
(6, '2022_02_06_201543_create_activity_log_table', 1),
(7, '2022_02_06_201544_add_event_column_to_activity_log_table', 1),
(8, '2022_02_06_201545_add_batch_uuid_column_to_activity_log_table', 1),
(9, '2022_02_07_195827_create_fullzs_table', 1),
(10, '2022_02_09_164026_create_funds_table', 2),
(11, '2022_02_09_164546_create_orders_table', 2),
(12, '2021_08_15_113006_create_crypto_payments_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `fullz_id` int NOT NULL,
  `user_id` int NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `fullz_id`, `user_id`, `amount`, `created_at`, `updated_at`) VALUES
(4, 35, 2, 6.00, '2022-02-11 07:07:40', '2022-02-11 07:07:40'),
(5, 5, 2, 24.00, '2022-02-12 04:50:05', '2022-02-12 04:50:05'),
(6, 38, 2, 9.00, '2022-02-12 04:51:44', '2022-02-12 04:51:44'),
(7, 6, 3, 6.00, '2022-02-13 00:17:17', '2022-02-13 00:17:17'),
(8, 12, 3, 2.00, '2022-02-13 00:18:14', '2022-02-13 00:18:14'),
(9, 2, 3, 2.00, '2022-02-13 00:18:14', '2022-02-13 00:18:14'),
(10, 62, 3, 2.00, '2022-02-15 00:37:22', '2022-02-15 00:37:22'),
(11, 5, 3, 2.00, '2022-02-16 21:50:25', '2022-02-16 21:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('digitalbusiness30@gmail.com', '$2y$10$Y/NnmiJebBS2XQLQa7FMPeNO67QAwJ9KxwAXhyDSKyxuYA9e7XwYa', '2022-02-12 21:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `transaction_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1->credit, 2->debit',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transaction_no`, `user_id`, `type`, `source`, `amount`, `balance`, `status`, `created_at`, `updated_at`) VALUES
(1, '3532434436563', 2, 'Credit', 'BTC', '100', '100', 'Completed', '2022-02-09 19:58:21', '2022-02-09 19:58:21'),
(5, '15993012', 2, 'Debit', 'Funds', '6.00', '94', 'Completed', '2022-02-11 07:07:40', '2022-02-11 07:07:40'),
(6, '99467892', 2, 'Debit', 'Funds', '24.00', '70', 'Completed', '2022-02-12 04:50:05', '2022-02-12 04:50:05'),
(7, '50253373', 2, 'Debit', 'Funds', '9.00', '61', 'Completed', '2022-02-12 04:51:44', '2022-02-12 04:51:44'),
(70, '6207ec45816fee4cc26c1c8e', 3, 'Credit', 'BTC', '2.00', '2', 'Completed', '2022-02-13 00:11:55', '2022-02-13 00:11:55'),
(71, '6207eb4c0f6a5021960a4594', 2, 'Credit', 'BTC', '2.00', '63', 'Completed', '2022-02-13 00:11:56', '2022-02-13 00:11:56'),
(72, '6207e7d9816fee4cc26c1c8a', 3, 'Credit', 'BTC', '2.00', '4', 'Completed', '2022-02-13 00:11:57', '2022-02-13 00:11:57'),
(73, '6207e2a96e49de383a734cd8', 3, 'Credit', 'BTC', '2.00', '6', 'Completed', '2022-02-13 00:11:57', '2022-02-13 00:11:57'),
(74, '6207d8a62328506df602189d', 3, 'Credit', 'BTC', '5.00', '11', 'Completed', '2022-02-13 00:11:58', '2022-02-13 00:11:58'),
(75, '6207d53d62480e385e39b4e3', 3, 'Credit', 'BTC', '5.00', '16', 'Completed', '2022-02-13 00:11:59', '2022-02-13 00:11:59'),
(76, '6207d53d62480e385e39b4e3', 3, 'Credit', 'BTC', '5.00', '21', 'Completed', '2022-02-13 00:11:59', '2022-02-13 00:11:59'),
(77, '6207c6328e8f927a9d64e1a1', 2, 'Credit', 'BTC', '3.00', '66', 'Completed', '2022-02-13 00:12:00', '2022-02-13 00:12:00'),
(78, '6207c6328e8f927a9d64e1a1', 2, 'Credit', 'BTC', '3.00', '69', 'Completed', '2022-02-13 00:12:01', '2022-02-13 00:12:01'),
(79, '6207c5f1fa14bb23225c37ad', 2, 'Credit', 'BTC', '1.00', '70', 'Completed', '2022-02-13 00:12:01', '2022-02-13 00:12:01'),
(80, '6207c5f1fa14bb23225c37ad', 2, 'Credit', 'BTC', '1.00', '70', 'Completed', '2022-02-13 00:12:01', '2022-02-13 00:12:01'),
(81, '89405088', 3, 'Debit', 'Funds', '6.00', '15', 'Completed', '2022-02-13 00:17:17', '2022-02-13 00:17:17'),
(82, '22289349', 3, 'Debit', 'Funds', '4.00', '11', 'Completed', '2022-02-13 00:18:14', '2022-02-13 00:18:14'),
(83, '620810fddb845c39a40fc99b', 3, 'Credit', 'BTC', '2.00', '13', 'Completed', '2022-02-13 02:06:40', '2022-02-13 02:06:40'),
(84, '6208235e0fc9fb1a882535a7', 3, 'Credit', 'BTC', '2.00', '15', 'Completed', '2022-02-13 02:23:22', '2022-02-13 02:23:22'),
(85, '45392759', 3, 'Debit', 'Funds', '2.00', '13', 'Completed', '2022-02-15 00:37:22', '2022-02-15 00:37:22'),
(86, '55837049', 3, 'Debit', 'Funds', '2.00', '11', 'Completed', '2022-02-16 21:50:25', '2022-02-16 21:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2' COMMENT '1->admin,2->user',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `name`, `phone`, `user_type`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'admin', '0000000000', '1', 'admin@admin.com', NULL, '$2y$10$PVrLfsJaByTXPsCvtEZ8bu.qxX6Picgz5a2Z.FDkSB2e21mvxKZ26', NULL, '2022-02-07 15:11:19', '2022-02-07 15:11:19'),
(2, NULL, NULL, 'user', '1111111111', '2', 'user@user.com', NULL, '$2y$10$uE1UsGOhNfLzVhuUUACry.i5z1hPcQM6g1XKjXyuQ4UVbyyqj.4am', NULL, '2022-02-07 16:06:58', '2022-02-12 19:45:43'),
(3, NULL, NULL, 'digitalself30', '60476488743', '2', 'digitalbusiness30@gmail.com', NULL, '$2y$10$FHppIf/d94Z71gRlEFimBeT6V/yPP1GpJOnGmhyt0ovhHYyt521AS', NULL, '2022-02-12 20:06:45', '2022-02-12 20:06:45'),
(4, NULL, NULL, 'karl', NULL, '2', 'karl@gmail.com', NULL, '$2y$10$OxIQrpSFtm3UUdpOIoKMj.5TY.Y6st.eDz/WbFgw3NvRNId/MAOGG', NULL, '2022-02-14 18:09:52', '2022-02-14 18:09:52'),
(5, NULL, NULL, 'howdy', NULL, '2', 'howdy@gmail.com', NULL, '$2y$10$mKU8loZJhDsZvtsccAdxX.jrWh71omnAsOYyWnwbKgMoIFvtJEmDK', NULL, '2022-02-14 22:32:02', '2022-02-14 22:32:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  ADD PRIMARY KEY (`paymentID`),
  ADD UNIQUE KEY `key3` (`boxID`,`orderID`,`userID`,`txID`,`amount`,`addr`),
  ADD KEY `boxID` (`boxID`),
  ADD KEY `boxType` (`boxType`),
  ADD KEY `userID` (`userID`),
  ADD KEY `countryID` (`countryID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `amount` (`amount`),
  ADD KEY `amountUSD` (`amountUSD`),
  ADD KEY `coinLabel` (`coinLabel`),
  ADD KEY `unrecognised` (`unrecognised`),
  ADD KEY `addr` (`addr`),
  ADD KEY `txID` (`txID`),
  ADD KEY `txDate` (`txDate`),
  ADD KEY `txConfirmed` (`txConfirmed`),
  ADD KEY `txCheckDate` (`txCheckDate`),
  ADD KEY `processed` (`processed`),
  ADD KEY `processedDate` (`processedDate`),
  ADD KEY `recordCreated` (`recordCreated`),
  ADD KEY `key1` (`boxID`,`orderID`),
  ADD KEY `key2` (`boxID`,`orderID`,`userID`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fullzs`
--
ALTER TABLE `fullzs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

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
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  MODIFY `paymentID` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fullzs`
--
ALTER TABLE `fullzs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
