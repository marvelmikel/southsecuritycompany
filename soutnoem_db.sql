-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 13, 2022 at 05:18 PM
-- Server version: 10.3.36-MariaDB-log-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soutnoem_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `image`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'support@southsecuritycompany.net', 'admin', NULL, '632c6cc4341731663855812.png', '$2y$10$2qcOUKrDIUqyyCklvHp7IO8fGNcJ1gAXtxouTn1isZPHu6H8CfHPq', NULL, '2022-10-13 18:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_status` tinyint(1) NOT NULL DEFAULT 0,
  `click_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `user_id`, `title`, `read_status`, `click_url`, `created_at`, `updated_at`) VALUES
(1, 0, 'A new support ticket has opened ', 0, '/admin/tickets/view/1', '2022-09-27 18:15:47', '2022-09-27 18:15:47'),
(2, 0, 'A new support ticket has opened ', 0, '/admin/tickets/view/2', '2022-09-27 20:34:27', '2022-09-27 20:34:27'),
(3, 0, 'A new support ticket has opened ', 0, '/admin/tickets/view/3', '2022-09-27 20:35:48', '2022-09-27 20:35:48'),
(4, 0, 'A new support ticket has opened ', 0, '/admin/tickets/view/4', '2022-09-28 02:43:59', '2022-09-28 02:43:59'),
(5, 2, 'Dispatch Courier staff', 0, '/admin/courier/details/1', '2022-10-01 20:25:35', '2022-10-01 20:25:35'),
(6, 2, 'Dispatch Courier staff', 0, '/admin/courier/details/2', '2022-10-04 03:00:22', '2022-10-04 03:00:22'),
(7, 2, 'Courier Payment staff', 0, '/admin/courier/details/2', '2022-10-04 03:00:42', '2022-10-04 03:00:42'),
(8, 2, 'Dispatch Courier staff', 0, '/admin/courier/details/3', '2022-10-04 03:09:45', '2022-10-04 03:09:45'),
(9, 2, 'Courier Payment staff', 0, '/admin/courier/details/3', '2022-10-04 03:10:00', '2022-10-04 03:10:00'),
(10, 2, 'Courier Delivery staff', 0, '/admin/courier/details/3', '2022-10-04 03:13:32', '2022-10-04 03:13:32'),
(11, 0, 'A new support ticket has opened ', 0, '/admin/tickets/view/5', '2022-10-06 15:56:11', '2022-10-06 15:56:11'),
(12, 2, 'Dispatch Courier staff', 0, '/admin/courier/details/4', '2022-10-06 19:01:17', '2022-10-06 19:01:17'),
(13, 2, 'Courier Payment staff', 0, '/admin/courier/details/4', '2022-10-06 19:09:18', '2022-10-06 19:09:18'),
(14, 2, 'Dispatch Courier staff', 0, '/admin/courier/details/5', '2022-10-06 19:48:44', '2022-10-06 19:48:44'),
(15, 2, 'Courier Payment staff', 0, '/admin/courier/details/5', '2022-10-06 19:56:57', '2022-10-06 19:56:57'),
(16, 2, 'Dispatch Courier staff', 0, '/admin/courier/details/6', '2022-10-13 18:16:32', '2022-10-13 18:16:32'),
(17, 2, 'Courier Payment staff', 0, '/admin/courier/details/6', '2022-10-13 18:16:41', '2022-10-13 18:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'open : 1, closed : 2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'London', 'support@southsecuritycompany.net', '+44 7405 326585', '3gfghsdc6', 1, '2022-07-14 12:57:24', '2022-09-30 11:02:45'),
(2, 'Malaysia', 'supports@southsecuritycompany.net', '+60 18-363 8305', '14, Kompleks Nagaria, Jln. Imbi,55100 Kuala Lumpur, 55100, Malaysia', 1, '2022-10-06 18:40:09', '2022-10-06 20:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `courier_infos`
--

CREATE TABLE `courier_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_branch_id` int(11) NOT NULL,
  `sender_staff_id` int(11) NOT NULL,
  `sender_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_phone` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_branch_id` int(11) DEFAULT NULL,
  `receiver_staff_id` int(11) DEFAULT NULL,
  `receiver_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_phone` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Received : 0, Delivery : 1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courier_infos`
--

INSERT INTO `courier_infos` (`id`, `invoice_id`, `code`, `sender_branch_id`, `sender_staff_id`, `sender_name`, `sender_email`, `sender_phone`, `sender_address`, `receiver_branch_id`, `receiver_staff_id`, `receiver_name`, `receiver_email`, `receiver_phone`, `receiver_address`, `status`, `created_at`, `updated_at`) VALUES
(1, '95CMVXSEZ3KJ', 'S4ZJWMJKTF64', 1, 2, 'uche', 'uchefavourlink@yahoo.in', '080', '16 hgyff owerri', 1, NULL, 'linda', 'johnsui59@gmail.com', '766554433', '76657g ghft', 0, '2022-10-01 20:25:35', '2022-10-01 20:25:35'),
(2, 'NFOKCZYPUNUJ', 'M8TYVBU8F6RV', 1, 2, 'JOhn doe', 'akume.t.paul@gmail.com', '+2347081845361', 'shop 1 yatudu  plaza opposite futminna bosso campus', 1, NULL, 'marvel', 'marvelmikel1997@gmail.com', '09037190224', 'hgdhdhd', 0, '2022-10-04 03:00:22', '2022-10-04 03:00:22'),
(3, 'Z5UXCONMXV79', 'A4XBWEUWQ47H', 1, 2, 'Bright', 'gostore202@gmail.com', '+2347081845361', 'shop 1 yatudu  plaza opposite futminna bosso campus', 1, 2, 'GO STORE', 'gostore202@gmail.com', '+2347081845361', 'shop 1 yatudu  plaza opposite futminna bosso campus', 1, '2022-10-04 03:09:45', '2022-10-04 03:13:32'),
(4, '7GYG8EUZT696', 'RH83A1KOUYFG', 1, 2, 'uche', 'uchefavourlink@yahoo.in', '080', '16 hgyff owerri', 2, NULL, 'linda', 'johnsui59@gmail.com', '+768674867', '76657g ghft', 0, '2022-10-06 19:01:17', '2022-10-06 19:01:17'),
(5, '2DCXY49KOFW3', '4G4QOMMN4HWG', 1, 2, 'aboki fx', 'obiorahbrightifenna@gmail.com', '07065199503', 'No, 17 Osita Onyejianya Street Umuanuka Otolo Nnewi', 2, NULL, 'Obiorah Ifenna Bright', 'obiorahbrightifenna@gmail.com', '07065199503', 'No, 17 Osita Onyejianya Street Umuanuka Otolo Nnewi', 0, '2022-10-06 19:48:44', '2022-10-06 19:48:44'),
(6, 'HRFM31MZ8N2N', 'N7CFFOOJ4HBJ', 1, 2, 'mmm', 'marvelmikel1997@gmail.com', '-000000', 'minn', 2, NULL, 'kkk', 'marvelmikel1997@gmail.com', '00988', 'minna', 0, '2022-10-13 18:16:32', '2022-10-13 18:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `courier_payments`
--

CREATE TABLE `courier_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `courier_info_id` int(11) NOT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Unpaid : 0, Paid : 1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courier_payments`
--

INSERT INTO `courier_payments` (`id`, `courier_info_id`, `receiver_id`, `branch_id`, `date`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, '86860.00000000', 0, '2022-10-01 20:25:35', '2022-10-01 20:25:35'),
(2, 2, 2, 1, '2022-10-03', '60.00000000', 1, '2022-10-04 03:00:22', '2022-10-04 03:00:42'),
(3, 3, 2, 1, '2022-10-03', '60.00000000', 1, '2022-10-04 03:09:45', '2022-10-04 03:10:00'),
(4, 4, 2, 1, '2022-10-06', '10000.00000000', 1, '2022-10-06 19:01:17', '2022-10-06 19:09:18'),
(5, 5, 2, 1, '2022-10-06', '30100.00000000', 1, '2022-10-06 19:48:44', '2022-10-06 19:56:57'),
(6, 6, 2, 1, '2022-10-13', '10000.00000000', 1, '2022-10-13 18:16:32', '2022-10-13 18:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `courier_products`
--

CREATE TABLE `courier_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `courier_info_id` int(11) NOT NULL,
  `courier_type_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `fee` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courier_products`
--

INSERT INTO `courier_products` (`id`, `courier_info_id`, `courier_type_id`, `qty`, `fee`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4343, '86860.00000000', '2022-10-01 20:25:35', '2022-10-01 20:25:35'),
(2, 2, 1, 3, '60.00000000', '2022-10-04 03:00:22', '2022-10-04 03:00:22'),
(3, 3, 1, 3, '60.00000000', '2022-10-04 03:09:45', '2022-10-04 03:09:45'),
(4, 4, 2, 1, '10000.00000000', '2022-10-06 19:01:17', '2022-10-06 19:01:17'),
(5, 5, 2, 3, '30000.00000000', '2022-10-06 19:48:44', '2022-10-06 19:48:44'),
(6, 5, 1, 5, '100.00000000', '2022-10-06 19:48:44', '2022-10-06 19:48:44'),
(7, 6, 2, 1, '10000.00000000', '2022-10-13 18:16:32', '2022-10-13 18:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `email_logs`
--

CREATE TABLE `email_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `mail_sender` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_logs`
--

INSERT INTO `email_logs` (`id`, `user_id`, `mail_sender`, `email_from`, `email_to`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'php', 'Courierlab do-not-reply@viserlab.com', 'manager@gmail.com', 'Manager create', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Incrisz Devin (manager)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>Manager username manager and  manager@gmail.com has and password .</div><div><br></div><div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-07-14 12:58:38', '2022-07-14 12:58:38'),
(2, 2, 'php', 'Courierlab do-not-reply@viserlab.com', 'staff@gmail.com', 'Staff Create', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello present Devin (staff)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div>Staff username staff and  staff@gmail.com has and password .</div><div><br></div><div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-07-16 07:21:45', '2022-07-16 07:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `email_sms_templates`
--

CREATE TABLE `email_sms_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subj` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcodes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_status` tinyint(1) NOT NULL DEFAULT 1,
  `sms_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_sms_templates`
--

INSERT INTO `email_sms_templates` (`id`, `act`, `name`, `subj`, `email_body`, `sms_body`, `shortcodes`, `email_status`, `sms_status`, `created_at`, `updated_at`) VALUES
(1, 'PASS_RESET_CODE', 'Password Reset', 'Password Reset', '<div>We have received a request to reset the password for your account on <b>{{time}} .<br></b></div><div>Requested From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>{{code}}</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br>', 'Your account recovery code is: {{code}}', ' {\"code\":\"Password Reset Code\",\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2021-01-06 00:49:06'),
(2, 'PASS_RESET_DONE', 'Password Reset Confirmation', 'You have Reset your password', '<div><p>\r\n    You have successfully reset your password.</p><p>You changed from&nbsp; IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}}&nbsp;</b> on <b>{{time}}</b></p><p><b><br></b></p><p><font color=\"#FF0000\"><b>If you did not changed that, Please contact with us as soon as possible.</b></font><br></p></div>', 'Your password has been changed successfully', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-07 10:23:47'),
(3, 'EVER_CODE', 'Email Verification', 'Please verify your email address', '<div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> {{code}}</b></font></div>', 'Your email verification code is: {{code}}', '{\"code\":\"Verification code\"}', 1, 1, '2019-09-24 23:04:05', '2021-01-03 23:35:10'),
(4, 'SVER_CODE', 'SMS Verification ', 'Please verify your phone', 'Your phone verification code is: {{code}}', 'Your phone verification code is: {{code}}', '{\"code\":\"Verification code\"}', 0, 1, '2019-09-24 23:04:05', '2020-03-08 01:28:52'),
(5, '2FA_ENABLE', 'Google Two Factor - Enable', 'Google Two Factor Authentication is now  Enabled for Your Account', '<div>You just enabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Enabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Your verification code is: {{code}}', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-08 01:42:59'),
(6, '2FA_DISABLE', 'Google Two Factor Disable', 'Google Two Factor Authentication is now  Disabled for Your Account', '<div>You just Disabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Disabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Google two factor verification is disabled', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-08 01:43:46'),
(16, 'ADMIN_SUPPORT_REPLY', 'Support Ticket Reply ', 'Reply Support Ticket', '<div><p><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong>A member from our support team has replied to the following ticket:</strong></span></p><p><b><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong><br></strong></span></b></p><p><b>[Ticket#{{ticket_id}}] {{ticket_subject}}<br><br>Click here to reply:&nbsp; {{link}}</b></p><p>----------------------------------------------</p><p>Here is the reply : <br></p><p> {{reply}}<br></p></div><div><br></div>', '{{subject}}\r\n\r\n{{reply}}\r\n\r\n\r\nClick here to reply:  {{link}}', '{\"ticket_id\":\"Support Ticket ID\", \"ticket_subject\":\"Subject Of Support Ticket\", \"reply\":\"Reply from Staff/Admin\",\"link\":\"Ticket URL For relpy\"}', 1, 1, '2020-06-08 18:00:00', '2020-05-04 02:24:40'),
(217, 'MANAGER_CREATE', 'Manager Create', 'Manager create', '<div>Manager username {{username}} and  {{email}} has and {{password}} .</div><div><br></div><div>', '{{username}} {{email}} and {{password}} .', '{\"username\":\"Manager Username\",\"email\":\"Manager Email\",\"password\":\"Manager Password\"}', 1, 1, NULL, NULL),
(218, 'STAFF_CREATE', 'Staff Create', 'Staff Create', '<div>Staff username {{username}} and  {{email}} has and {{password}} .</div><div><br></div><div>', '{{username}} {{email}} and {{password}} .', '{\"username\":\"Staff Username\",\"email\":\"Staff Email\",\"password\":\"Staff Password\"}', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'object',
  `support` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>enable, 2=>disable',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'tawky_big.png', '<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n                        s1.async=true;\r\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\r\n                        s1.charset=\"UTF-8\";\r\n                        s1.setAttribute(\"crossorigin\",\"*\");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"8d1e50b2e8e292c8b307a96c97199db73beedd61\"}}', 'twak.png', 1, NULL, '2019-10-18 23:16:05', '2022-09-29 05:26:57'),
(4, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', 'google_analytics.png', '<script async src=\"https://www.googletagmanager.com/gtag/js?id={{app_key}}\"></script>\r\n                <script>\r\n                  window.dataLayer = window.dataLayer || [];\r\n                  function gtag(){dataLayer.push(arguments);}\r\n                  gtag(\"js\", new Date());\r\n                \r\n                  gtag(\"config\", \"{{app_key}}\");\r\n                </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'ganalytics.png', 0, NULL, NULL, '2021-05-04 10:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_keys` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_values` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(1, 'seo.data', '{\"seo_image\":\"1\",\"keywords\":[\"courier\",\"parcel\",\"cargo\",\"shipping\",\"shipment\",\"letter\"],\"description\":\"With over 15 years\\u2019 experience in the courier industry, South Security Company is perfectly placed to provide a competitively-priced express and same day courier service to London, and much further afield.\",\"social_title\":\"South Security Company - Online Courier Service\",\"social_description\":\"With over 15 years\\u2019 experience in the courier industry, South Security Company is perfectly placed to provide a competitively-priced express and same day courier service to London, and much further afield.\",\"image\":\"6334f386792221664414598.jpg\"}', '2020-07-04 23:42:52', '2022-09-29 05:23:20'),
(24, 'about.content', '{\"has_image\":\"1\",\"title\":\"Why We are The Best\",\"heading\":\"30+ Years Experiences in Courier Service\",\"sub_heading\":\"As a family run courier business based in Colchester, Essex, we\\u2019ve built a strong reputation over the last 16 years with firms both locally and nationwide as fast, reliable couriers. We\\u2019re constantly expanding and looking for new businesses to assist.\",\"background_image\":\"633349dbed4381664305627.jpg\"}', '2020-10-28 00:51:20', '2022-09-27 23:07:11'),
(25, 'blog.content', '{\"title\":\"Latest News\",\"heading\":\"Our Blog Posts\",\"sub_heading\":\"Deliveries to and from anywhere in the UK. Read about our Latest Developments on South Security\"}', '2020-10-28 00:51:34', '2022-09-27 23:56:38'),
(26, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Small Vans UK: Sending Your Small Items Out for Delivery\",\"description_nic\":\"<div class=\\\"post__header\\\" style=\\\"margin-bottom:45px;color:rgb(85,85,85);font-family:Nunito, sans-serif;\\\"><p class=\\\"MsoNormal\\\" align=\\\"center\\\" style=\\\"text-align:center;\\\"><span style=\\\"font-size:0.875rem;text-align:left;\\\">Fast and reliable delivery is vital for keeping the heels of\\nindustry turning, and for keeping in touch with friends, family and loved ones\\nacross a range of distances. With the festive period well and truly underway,\\nmany people will be making use of small vans for their UK-based deliveries in\\ntime for Christmas.<\\/span><br \\/><\\/p><p class=\\\"MsoNormal\\\"><\\/p><p><\\/p><p class=\\\"MsoNormal\\\"><\\/p><p>\\u00a0<\\/p><p class=\\\"MsoNormal\\\">With this in mind, let\\u2019s dive into why people might opt for\\na small van for delivery, and what industries benefit from this service.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\"><br \\/><\\/p><p class=\\\"MsoNormal\\\"><b>Delivering Smaller\\nItems<\\/b><\\/p><p><b><\\/b><\\/p><b><\\/b><p class=\\\"MsoNormal\\\">Using small vans to deliver smaller items makes a lot of\\nsense for several reasons. In the first place it\\u2019s more economical in terms of\\nfuel, which also makes it kinder to the environment.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\">Quicker on the motorway, small vans can also maneuver around\\nbusy towns and cities much more easily and rapidly. Parking is simpler, too,\\nand this can shave valuable time off deliveries. It\\u2019s also easier for drivers\\nto ensure items are transported safely and securely.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\"><\\/p><p>\\u00a0<\\/p><p class=\\\"MsoNormal\\\"><b>Advertising<\\/b><\\/p><p><b><\\/b><\\/p><b><\\/b><p class=\\\"MsoNormal\\\">Advertising comes in many shapes and sizes, from printed\\nmaterials to exhibition stands. Deadlines can be crucial and can also change\\nquickly. At Redhead Couriers we specialise in urgent orders, and a dedicated\\nsmall van will ensure your items are kept secure.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\"><\\/p><p>\\u00a0<\\/p><p class=\\\"MsoNormal\\\">It is plain to see that small vans are an ideal means of\\ntransport and shipping within the UK. With uncertain times ahead, it is\\npossible we may see more and more of these means of delivery taking place!\\nRedhead Couriers is a family-run business based in Essex, with a strong\\nreputation as a reliable same day delivery courier. We don\\u2019t just deliver your\\nitems; we deliver them safely, on time and at a cost-effective price.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\"><\\/p><p>\\u00a0<\\/p><p style=\\\"margin-top:-8px;margin-bottom:30px;\\\">\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n<\\/p><p class=\\\"MsoNormal\\\">For more information, or to have a chat about how we can get\\nyour goods or post from A to B the same day, don\\u2019t hesitate to get in touch\\nwith the friendly team at South Security Company today.<\\/p><p><\\/p><\\/div>\",\"blog_image\":\"63335da7e83ff1664310695.jpg\"}', '2020-10-28 00:57:19', '2022-09-28 00:31:36'),
(27, 'contact_us.content', '{\"title\":\"Start Conversation\",\"heading\":\"Get in Touch\",\"sub_heading\":\"Get in touch with us today for all of your same day courier needs, to set up a courier account, or to check the location of your delivery.\",\"has_image\":\"1\",\"contact_image\":\"6333a9af926a91664330159.jpg\"}', '2020-10-28 00:59:19', '2022-09-28 05:56:01'),
(28, 'counter.content', '{\"has_image\":\"1\",\"background_image\":\"6333aa5c6e2cf1664330332.jpg\"}', '2020-10-28 01:04:02', '2022-09-28 05:58:53'),
(30, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Sending Liquids by Courier in the UK\",\"description_nic\":\"<div class=\\\"post__header\\\" style=\\\"margin-bottom:45px;color:rgb(85,85,85);font-family:Nunito, sans-serif;\\\"><p class=\\\"MsoNormal\\\" align=\\\"center\\\" style=\\\"text-align:center;\\\"><br \\/><\\/p><p class=\\\"MsoNormal\\\">When it comes to packing and shipping liquid you need to be\\n100% sure that it is secure before sending it. Liquids that are dispatched\\nwithout being fully secured could leak out and ruin your product or anything\\nelse inside. In addition, if your product arrives in a ruined state, your clients\\nare going to be frustrated and angry. <\\/p><p><\\/p><p class=\\\"MsoNormal\\\">Therefore, the best way to send liquid by courier is by\\nfollowing our guide for safe packing and shipping of liquids. Here are the\\nsteps you should take when sending liquids by courier in the UK.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\"><b>Check what you can\\nship<\\/b><\\/p><p><b><\\/b><\\/p><b><\\/b><p class=\\\"MsoNormal\\\">While you can send most liquids by courier, there are some that\\nwill not be accepted due to safety reasons. Certain liquids that contain\\nalcohol such as perfumes and paints may not be shipped due to their\\nflammability. <\\/p><p><\\/p><p class=\\\"MsoNormal\\\">That said, alcoholic beverages like beer and wine are\\nusually safe. So with this in mind check with your courier as to what they\\naccept before sending liquid in a parcel.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\"><b>Make sure the\\ncontainer has a double seal<\\/b><\\/p><p><b><\\/b><\\/p><b><\\/b><p class=\\\"MsoNormal\\\">To ensure the safety of your liquid, make sure there is a\\ndouble seal around the opening of your container. This double seal is usually\\nan extra layer of plastic covering the lid but can also include a strip of\\nstrong tape covering the opening. <\\/p><p><\\/p><p class=\\\"MsoNormal\\\">This removes the need for any extra packaging and ensures\\nthe lid won\\u2019t accidently pop off during transport.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\"><\\/p><p>\\u00a0<\\/p><p class=\\\"MsoNormal\\\"><b>Include a waterproof\\nlayer<\\/b><\\/p><p><b><\\/b><\\/p><b><\\/b><p class=\\\"MsoNormal\\\">If you have a waterproof covering such as a bag, put the\\ncontainer with liquid inside. Make sure the bag completely covers the container\\nand seal it. You can even put the bag inside a second, larger waterproof bag\\nfor further protection. Make sure to seal both bags well and use rubber bands\\nto hold the container in place within.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\"><b>Use a trusted courier<\\/b><\\/p><p><b><\\/b><\\/p><b><\\/b><p class=\\\"MsoNormal\\\">When it comes to the best way to send liquid by courier,\\nthis final step is the most important. Make sure the courier has the means to\\ndeliver the product safely. In addition, choose overnight shipping or same day\\ndelivery if you are shipping any perishable liquids. The faster your product\\nreaches its destination, the less risk of breakages or damage.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\"><\\/p><p>\\u00a0<\\/p><p class=\\\"MsoNormal\\\">Sending a liquid by courier can be a daunting experience,\\nbut with Redhead Couriers, this need not be the case! To find out more about\\nhow we can assist you with our professional service, same-day delivery options\\nand competitive prices, please get in touch with our friendly team today<b>.<\\/b><\\/p><p><b><\\/b><\\/p><b><\\/b><p class=\\\"MsoNormal\\\"><b>\\u00a0<\\/b><\\/p><p class=\\\"MsoNormal\\\">When it comes to the best way to send liquid by courier,\\nthis final step is the most important. Make sure the courier has the means to\\ndeliver the product safely. In addition, choose overnight shipping or same day\\ndelivery if you are shipping any perishable liquids. The faster your product\\nreaches its destination, the less risk of breakages or damage.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\"><\\/p><p>\\u00a0<\\/p><p style=\\\"margin-top:-8px;margin-bottom:30px;\\\">\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n<\\/p><p class=\\\"MsoNormal\\\">Sending a liquid by courier can be a daunting experience,\\nbut with South Security Company Couriers, this need not be the case! To find\\nout more about how we can assist you with our professional service, same-day\\ndelivery options and competitive prices, please get in touch with our friendly\\nteam today.<\\/p><p><\\/p><\\/div>\",\"blog_image\":\"63339a3f3a26c1664326207.jpg\"}', '2020-10-31 00:39:05', '2022-09-28 04:50:07'),
(33, 'feature.content', '{\"heading\":\"asdf\",\"sub_heading\":\"asdf\"}', '2021-01-03 23:40:54', '2021-01-03 23:40:55'),
(36, 'service.content', '{\"title\":\"Services\",\"heading\":\"What We Serve\",\"sub_heading\":\"The growth of the courier industry in the USA is directly proportional to the growth of the economic progress of the country. One of the first courier companies in the USA was Wells Fargo in 1852 which operated in the unorganized sector. South Security Company has come to stay\",\"has_image\":\"1\",\"background_image\":\"6334486698ded1664370790.jpg\"}', '2021-03-06 01:27:34', '2022-09-28 17:13:14'),
(39, 'banner.content', '{\"heading\":\"Latest News\",\"sub_heading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Esse voluptatum eaque earum quos quia? Id aspernatur ratione, voluptas nulla rerum laudantium neque ipsam eaque\"}', '2021-05-02 06:09:30', '2021-05-02 06:09:30'),
(41, 'cookie.data', '{\"link\":\"#\",\"description\":\"<font face=\\\"Exo, sans-serif\\\"><span style=\\\"font-size: 18px;\\\">We may use cookies or any other tracking technologies when you visit our website, including any other media form, mobile website, or mobile application related or connected to help customize the Site and improve your experience.<\\/span><\\/font><br>\",\"status\":1}', '2020-07-04 23:42:52', '2021-06-06 09:43:37'),
(42, 'banner.element', '{\"heading\":\"Welcome to South Security Company\",\"sub_heading\":\"We Provide Best Dispatch and Parcel Services\",\"first_button_name\":\"Track Your Goods\",\"first_button_url\":\"https:\\/\\/southsecuritycompany.net\\/order\\/tracking\",\"second_button_name\":\"Contact Us\",\"second_button_url\":\"https:\\/\\/southsecuritycompany.net\\/contact\",\"has_image\":[\"1\"],\"background_image\":\"63334a5fc03df1664305759.jpg\"}', '2021-06-30 05:03:30', '2022-09-27 23:11:54'),
(43, 'banner.element', '{\"heading\":\"Same day. Tracked. Safe.\",\"sub_heading\":\"We\\u2019re one of the best UK based courier company\",\"first_button_name\":\"Get Quotes\",\"first_button_url\":\"https:\\/\\/southsecuritycompany.net\\/contact\",\"second_button_name\":\"Our Team\",\"second_button_url\":\"https:\\/\\/southsecuritycompany.net\\/team\",\"has_image\":[\"1\"],\"background_image\":\"63334d36b79741664306486.jpg\"}', '2021-06-30 05:04:17', '2022-09-27 23:23:43'),
(44, 'banner.element', '{\"heading\":\"South Security Company\",\"sub_heading\":\"We Provide Best Dispatch and Parcel Services all over the world\",\"first_button_name\":\"Get Quotes\",\"first_button_url\":\"https:\\/\\/southsecuritycompany.net\\/contact\",\"second_button_name\":\"Contact Us\",\"second_button_url\":\"https:\\/\\/southsecuritycompany.net\\/contact\",\"has_image\":[\"1\"],\"background_image\":\"63334eefeba011664306927.jpg\"}', '2021-06-30 05:04:54', '2022-09-27 23:28:51'),
(45, 'about.element', '{\"title\":\"Fast Delivery\",\"sub_title\":\"Our couriers can collect from the local Essex and Suffolk areas (such as Colchester, Braintree, Chelmsford and Ipswich) within 40 minutes or less, with collections from further afield usually done within 60 minutes. We deliver nationwide, specialising in same day deliveries no matter the destination.\",\"about_icon\":\"<i class=\\\"lab la-delicious\\\"><\\/i>\"}', '2021-06-30 05:19:18', '2022-09-27 22:59:34'),
(46, 'about.element', '{\"title\":\"Lowest Cost\",\"sub_title\":\"Ut recusandae non veniam obcaecati, sunt earum atque cumque, alias quae molestiae quo, ad debitis saepe.\",\"about_icon\":\"<i class=\\\"fas fa-money-check-alt\\\"><\\/i>\"}', '2021-06-30 05:19:56', '2021-06-30 05:19:56'),
(47, 'about.element', '{\"title\":\"Secured Services\",\"sub_title\":\"With the latest Samsara tracking on all vehicles we can see where your consignment is at all times. We can even share this with you, or your client with a simple web link.\\n\\nAll deliveries are electronically signed, instantly uploaded from the drivers phone and e-mailed to you.\\n\\nWe take care to digitally upload your signed paperwork as well which can be sent back to you as soon as you need.\",\"about_icon\":\"<i class=\\\"lab la-servicestack\\\"><\\/i>\"}', '2021-06-30 05:20:25', '2022-09-27 22:58:58'),
(48, 'feature.element', '{\"heading\":\"Dedicated express\",\"sub_heading\":\"Exclusive A to B delivery of your package. We have access to the largest network of express couriers in the UK\",\"feature_icon\":\"<i class=\\\"fas fa-file-invoice\\\"><\\/i>\"}', '2021-06-30 05:32:59', '2022-09-28 10:04:23'),
(49, 'feature.element', '{\"heading\":\"Reliable drivers\",\"sub_heading\":\"All of our drivers are employed by us. we\\u2019ve built a strong reputation over the last 16 years with firms both locally and nationwide as fast, reliable couriers\",\"feature_icon\":\"<i class=\\\"las la-file-invoice\\\"><\\/i>\"}', '2021-06-30 05:34:04', '2022-09-28 10:12:42'),
(50, 'feature.element', '{\"heading\":\"Receive Goods\",\"sub_heading\":\"We\\u2019re constantly expanding and looking for new businesses to assist. All deliveries are electronically signed, instantly uploaded from the drivers phone and e-mailed to you.\",\"feature_icon\":\"<i class=\\\"las la-file-invoice\\\"><\\/i>\"}', '2021-06-30 05:34:31', '2022-09-28 10:14:44'),
(51, 'service.element', '{\"has_image\":[\"1\"],\"title\":\"SPECIALTY PHARMACY PARCEL CARE\",\"description\":\"Specialty pharmacies are concerned about the cold chain boxes. The biggest temperature spikes occur during delivery and Summer 2019 is expected to be above normal temperatures in the Western US, Southwest, Texas and Alaska \\u2013 as well is the Northeast according to NOAA.\",\"image\":\"6334456bc59a31664370027.jpg\"}', '2021-06-30 05:43:37', '2022-09-28 17:00:28'),
(52, 'service.element', '{\"has_image\":[\"1\"],\"title\":\"Google Assistant\",\"description\":\"At South Security Company we\\u2019re always looking for ways to make it easier for you to manage your parcels, which is why we\\u2019ve created the South Security Company action for your Google Assisted devices.  It\\u2019s really easy to set up and use \\u2013 and it understands thousands of phrases, so start asking!\",\"image\":\"6334446fd50651664369775.jpg\"}', '2021-06-30 05:43:59', '2022-09-28 16:56:18'),
(53, 'service.element', '{\"has_image\":[\"1\"],\"title\":\"Weekend Delivery\",\"description\":\"We\\u2019ll deliver your parcel in 2 to 4 days, including weekends. We can even collect it from your home or workplace. Drop off your parcel at a Parcel Shop before noon on a working day and we\\u2019ll do our best to deliver the next day.\",\"image\":\"63344356b24691664369494.jpg\"}', '2021-06-30 05:44:20', '2022-09-28 16:51:36'),
(54, 'service.element', '{\"has_image\":[\"1\"],\"title\":\"Bulk Integrations\",\"description\":\"Wherever you sell your items, Bulk Integrations makes it quicker and easier to book your parcel deliveries. You can link your Evri account to your selling account with any of the following retailers: Ebay, Amazon, Etsy, Shopify\",\"image\":\"6334416aab7151664369002.jpg\"}', '2021-06-30 05:44:44', '2022-09-28 16:43:25'),
(55, 'service.element', '{\"has_image\":[\"1\"],\"title\":\"International Courier\",\"description\":\"Send parcels abroad from just \\u00a38.00. Simply click the button below to use our calculator and send your parcel.\\n\\nOur network spans across 190+ countries and six continents. Whether you\\u2019re sending gifts to friends or parcels to customers, we can help.\",\"image\":\"63344067607681664368743.jpg\"}', '2021-06-30 05:45:06', '2022-09-28 16:39:04'),
(56, 'service.element', '{\"has_image\":[\"1\"],\"title\":\"Our parcel prices\",\"description\":\"We offer convenient and cheap postage for your parcels.\\n\\nOur UK parcel prices vary depending on your parcel weight, delivery method and the level of cover you choose. Below are our main options, including Standard and Next Day delivery prices.*\",\"image\":\"63343f99cf4ef1664368537.jpg\"}', '2021-06-30 05:45:23', '2022-09-28 16:35:38'),
(59, 'team.content', '{\"title\":\"Expert Team\",\"heading\":\"Our Expert Team\",\"sub_heading\":\"For more than 16 years, Priority Dispatch has been recognized as a UK leader in same day and next-day delivery and logistic services for the healthcare and ecommerce industries.\"}', '2021-06-30 06:26:33', '2022-09-28 19:09:40'),
(60, 'team.element', '{\"has_image\":[\"1\"],\"name\":\"Liana Harris\",\"designation\":\"Sales Expert\",\"total_delivery\":\"2323\",\"member\":\"6334642f284b31664377903.jpg\"}', '2021-06-30 06:27:35', '2022-09-28 19:11:43'),
(61, 'team.element', '{\"has_image\":[\"1\"],\"name\":\"Dew Brisk\",\"designation\":\"Delivery Boy\",\"total_delivery\":\"323\",\"member\":\"6334644b1cd541664377931.jpg\"}', '2021-06-30 06:28:05', '2022-09-28 19:12:11'),
(62, 'team.element', '{\"has_image\":[\"1\"],\"name\":\"Harry Hardson\",\"designation\":\"Delivery Boy\",\"total_delivery\":\"656\",\"member\":\"6334646a6df3f1664377962.jpg\"}', '2021-06-30 06:28:17', '2022-09-28 19:12:42'),
(63, 'team.element', '{\"has_image\":[\"1\"],\"name\":\"John Dew\",\"designation\":\"Delivery Boy\",\"total_delivery\":\"6543\",\"member\":\"633464b2725041664378034.jpg\"}', '2021-06-30 06:28:37', '2022-09-28 19:13:54'),
(64, 'counter.element', '{\"title\":\"Satisfied Client\",\"counter_digit\":\"323\",\"counter_icon\":\"<i class=\\\"las la-users\\\"><\\/i>\"}', '2021-06-30 06:37:28', '2021-07-06 13:56:41'),
(65, 'counter.element', '{\"title\":\"Total Branches\",\"counter_digit\":\"43\",\"counter_icon\":\"<i class=\\\"las la-store-alt\\\"><\\/i>\"}', '2021-06-30 06:37:50', '2021-07-12 12:29:00'),
(66, 'counter.element', '{\"title\":\"Total Staffs\",\"counter_digit\":\"434\",\"counter_icon\":\"<i class=\\\"las la-user-friends\\\"><\\/i>\"}', '2021-06-30 06:38:15', '2021-07-12 12:29:15'),
(67, 'counter.element', '{\"title\":\"Total Member\",\"counter_digit\":\"34534\",\"counter_icon\":\"<i class=\\\"las la-people-carry\\\"><\\/i>\"}', '2021-06-30 06:38:58', '2021-07-12 12:29:41'),
(68, 'faq.content', '{\"title\":\"What we offer\",\"heading\":\"Explore Our Services and Solutions\",\"sub_heading\":\"Below you will find most frequently asked questions and answers about our couriers and delivery services.\",\"has_image\":\"1\",\"faq_image\":\"6333e18abaeb21664344458.jpg\"}', '2021-06-30 08:15:03', '2022-09-28 09:54:19'),
(69, 'faq.element', '{\"question\":\"What is a courier service?\",\"answer\":\"A courier service is a delivery service that is similar to shipping, but instead of shipping all of your deliveries are completed by a driver the same day. This ensures that your package is delivered on time with no delays and safely to it\\u2019s destination without it being bumped around during the shipping process.\"}', '2021-06-30 08:15:56', '2022-09-28 09:55:08'),
(70, 'faq.element', '{\"question\":\"Why would I need a courier service?\",\"answer\":\"Couriers fill the need for delivery of packages where shipping just doesn\\u2019t cut it. Some examples would be when a delivery needs to be completed quickly or the same day. Others an include when a package is too large to be shipped but still needs to be delivered quickly. Some deliveries are also too valuable to leave to a normal shipping provider. A courier and same day delivery service fills those needs because your package is picked up at point A and driven to point B without any stops in between. This means your package arrives on time and safely to it\\u2019s destination.\"}', '2021-06-30 08:16:17', '2022-09-28 09:56:46'),
(71, 'faq.element', '{\"question\":\"What does it cost for a courier?\",\"answer\":\"osts for our courier and delivery services will vary based upon the size and weight of the item, what type of vehicle you require, how quickly you need the item delivered and the distance from your pick up point and delivery point. Contact us or use our online request form for an accurate quote.\"}', '2021-06-30 08:16:38', '2022-09-28 09:57:25'),
(72, 'faq.element', '{\"question\":\"How quickly can you deliver my package?\",\"answer\":\"Our rush courier and delivery services can vary in terms of delivery time. We offer a rush service where a courier will pick up and deliver your package direct with no stops in between; which is usually delivered in under 60 minutes. Other courier services we offer include a 3 hour delivery, a 5 hour delivery, and a same day delivery which would deliver your package before end of business day. Contact us for more details regarding the types of services we provide.\"}', '2021-06-30 08:17:10', '2022-09-28 09:59:46'),
(73, 'client.content', '{\"has_image\":\"1\",\"background_image\":\"6333a771a0a7a1664329585.jpg\"}', '2021-06-30 08:28:43', '2022-09-28 05:46:29'),
(74, 'client.element', '{\"name\":\"Abu Desnan\",\"designation\":\"Chief Operations Officer\",\"rating\":\"5\",\"testimonial\":\"South Security is one courier company we are proud to be a part of\",\"has_image\":\"1\",\"client_image\":\"6333a7389831b1664329528.jpg\"}', '2021-06-30 08:29:59', '2022-09-28 05:45:28'),
(75, 'client.element', '{\"name\":\"Md Jisan\",\"designation\":\"Delivery Boy\",\"rating\":\"4\",\"testimonial\":\"South Security is one courier company we are proud to be a part of\",\"has_image\":\"1\",\"client_image\":\"6333a79ae39ce1664329626.jpg\"}', '2021-06-30 08:30:55', '2022-09-28 05:47:07'),
(76, 'client.element', '{\"name\":\"Md Demo Sarker\",\"designation\":\"Courier Customer\",\"rating\":\"3\",\"testimonial\":\"South Security is one courier company we are proud to be a part of\",\"has_image\":\"1\",\"client_image\":\"6333a7c617c091664329670.jpg\"}', '2021-06-30 08:31:22', '2022-09-28 05:47:50'),
(77, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"The Benefits of Choosing a Local Courier Company\",\"description_nic\":\"<div class=\\\"post__header\\\" style=\\\"margin-bottom:45px;color:rgb(85,85,85);font-family:Nunito, sans-serif;\\\"><p class=\\\"MsoNormal\\\" align=\\\"center\\\" style=\\\"text-align:center;\\\"><\\/p><p>\\u00a0<\\/p><p class=\\\"MsoNormal\\\">Nowadays, customers expect everything from dinner tables to\\ntakeaways delivered on time. As more and more purchases happen online, more and\\nmore companies are having to turn to dedicated couriers to keep up with demand.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\">Of course, one option is to send your parcels with the\\nbiggest courier companies. This could be the postal service, or one of the\\nlargest firms. But for many businesses, it may be better to work with a local\\ncourier.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\">But why should you work with a local courier service in Essex\\ninstead of the bigger firms?<\\/p><p><\\/p><p class=\\\"MsoNormal\\\">In this post, we\\u2019ll look at the many ways local courier\\nservices in Essex are ahead of the competition, and how they can help your\\nbusiness excel.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\"><\\/p><p>\\u00a0<\\/p><p class=\\\"MsoNormal\\\"><b>Flexible, Reliable,\\nScalable<\\/b><\\/p><p><b><\\/b><\\/p><b><\\/b><p class=\\\"MsoNormal\\\">There are certainly bigger companies you could work with than\\na local courier service. But a bigger company doesn\\u2019t always mean better\\nservice.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\">During busy periods, the nationwide postal service can often\\nbe overwhelmed. This can mean delays, lost packages, and mixed messages. During\\nthese times, customers can soon overrun helplines, making them difficult to\\nreach.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\"><\\/p><p>\\u00a0<\\/p><p class=\\\"MsoNormal\\\"><b>So how do local\\ncourier services avoid this?<\\/b><\\/p><p><b><\\/b><\\/p><b><\\/b><p class=\\\"MsoNormal\\\">Firstly, a local courier is flexible and scalable. You can\\narrange deliveries well in advance or on the same day. Whichever way you choose\\nto go about things, your local courier service will only take on what they can\\nfulfil. Unlike larger companies, your deliveries become the courier\\u2019s top\\npriority. For express service during peak times, there\\u2019s no better option.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\">With every delivery, you\\u2019ll get to know your local, trusted\\nteam of couriers more and more. From the drivers through to customer service,\\nthere\\u2019ll be a friendly face seeing your deliveries through. In the unlikely\\nevent something goes wrong with a delivery, you\\u2019ll get answers quickly. There\\u2019s\\nno long waits and busy customer helplines \\u2013 just helpful, personal customer\\nservice.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\">Although it\\u2019s unlikely you will lose anything with a local\\ncourier service. For one, all deliveries are tracked. This tracking can give\\nyou regular updates on the location of your parcels. There\\u2019s no ambiguity, and\\nno need to wait around. If you know exactly when your goods will arrive, you\\ncan use your time more effectively.<\\/p><p><\\/p><p class=\\\"MsoNormal\\\"><\\/p><p>\\u00a0<\\/p><p style=\\\"margin-top:-8px;margin-bottom:30px;\\\">\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n<\\/p><p class=\\\"MsoNormal\\\">So, if you\\u2019re planning to make deliveries around Essex or\\nnationwide, why not work with a local courier service near Colchester?<\\/p><p><\\/p><\\/div>\",\"blog_image\":\"63339f24663681664327460.jpg\"}', '2021-06-30 08:54:19', '2022-09-28 05:11:02'),
(79, 'branch.content', '{\"title\":\"Branches\",\"heading\":\"Our Top Branches\",\"sub_heading\":\"With over 15 years\\u2019 experience in the courier industry, South Security Company is perfectly placed to provide a competitively-priced express and same day courier service to London, and much further afield.\",\"has_image\":\"1\",\"background_image\":\"6334f1c1a042e1664414145.jpg\"}', '2021-06-30 09:10:00', '2022-09-29 05:15:48'),
(80, 'partner.element', '{\"has_image\":\"1\",\"partner_image\":\"6333e8b5b4b1f1664346293.png\"}', '2021-06-30 09:15:31', '2022-09-28 10:24:53'),
(81, 'partner.element', '{\"has_image\":\"1\",\"partner_image\":\"6333e8c4141df1664346308.jpeg\"}', '2021-06-30 09:15:37', '2022-09-28 10:25:08'),
(82, 'partner.element', '{\"has_image\":\"1\",\"partner_image\":\"6333e9062d9fd1664346374.png\"}', '2021-06-30 09:15:41', '2022-09-28 10:26:14'),
(83, 'partner.element', '{\"has_image\":\"1\",\"partner_image\":\"6333e9177e6c91664346391.png\"}', '2021-06-30 09:15:48', '2022-09-28 10:26:31'),
(84, 'partner.element', '{\"has_image\":\"1\",\"partner_image\":\"6333e932d59c51664346418.png\"}', '2021-06-30 09:15:53', '2022-09-28 10:26:58'),
(85, 'partner.element', '{\"has_image\":\"1\",\"partner_image\":\"6333e975040861664346485.png\"}', '2021-06-30 09:15:57', '2022-09-28 10:28:05'),
(87, 'breadcrumb.content', '{\"has_image\":\"1\",\"background_image\":\"63339fd0023e61664327632.jpg\"}', '2021-06-30 09:34:46', '2022-09-28 05:13:52'),
(88, 'social_icon.element', '{\"social_icon\":\"<i class=\\\"lab la-facebook-f\\\"><\\/i>\",\"url\":\"https:\\/\\/www.facebook.com\\/\"}', '2021-06-30 09:48:27', '2021-06-30 09:48:27'),
(89, 'social_icon.element', '{\"social_icon\":\"<i class=\\\"fab fa-twitter\\\"><\\/i>\",\"url\":\"https:\\/\\/www.twitter.com\\/\"}', '2021-06-30 09:48:38', '2021-06-30 09:48:38'),
(90, 'social_icon.element', '{\"social_icon\":\"<i class=\\\"lab la-linkedin-in\\\"><\\/i>\",\"url\":\"https:\\/\\/www.linkedin.com\\/\"}', '2021-06-30 09:49:11', '2021-06-30 09:49:11'),
(91, 'social_icon.element', '{\"social_icon\":\"<i class=\\\"lab la-instagram\\\"><\\/i>\",\"url\":\"https:\\/\\/www.instagram.com\\/\"}', '2021-06-30 09:49:27', '2021-06-30 09:49:27'),
(92, 'footer.content', '{\"heading\":\"South Security Company is based in UK who work with a variety of sectors to deliver important goods all over the UK, with a specialization in same day express deliveries.\",\"address\":\"Unit 1 King Edward Quay Hythe Quay, Colchester Essex, CO2 8HT\",\"mobile\":\"+44 7405 326585\",\"fax\":\"#\",\"email\":\"support@southsecuritycompany.net\",\"has_image\":\"1\",\"background_image\":\"60dc489dae42e1625049245.jpg\"}', '2021-06-30 10:04:05', '2022-09-30 11:08:24'),
(93, 'order_tracking.content', '{\"title\":\"Tracking Order\",\"heading\":\"Your Parcel Status\"}', '2021-07-06 08:21:39', '2021-07-06 08:21:39'),
(94, 'footer.element', '{\"menu\":\"Privacy and Policy\",\"description\":\"<div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How do we protect your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">All provided delicate\\/credit data is sent through Stripe.<br \\/>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Do we disclose any information to outside parties?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Changes to our Privacy Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How long we retain your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">What we don\\u2019t do with your data<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div>\"}', '2021-07-06 08:59:07', '2021-07-12 12:20:07'),
(95, 'footer.element', '{\"menu\":\"Refund Policy\",\"description\":\"<div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How do we protect your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">All provided delicate\\/credit data is sent through Stripe.<br \\/>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Do we disclose any information to outside parties?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Changes to our Privacy Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How long we retain your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">What we don\\u2019t do with your data<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div>\"}', '2021-07-06 09:00:08', '2021-07-06 09:00:08'),
(96, 'footer.element', '{\"menu\":\"Terms of Service\",\"description\":\"<div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">What information do we collect?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">How do we protect your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">All provided delicate\\/credit data is sent through Stripe.<br \\/>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Do we disclose any information to outside parties?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Changes to our Privacy Policy<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">How long we retain your information?<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">What we don\\u2019t do with your data<\\/h3><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div>\"}', '2021-07-06 09:02:49', '2021-07-06 09:02:49'),
(97, 'client.element', '{\"name\":\"Alex Branda\",\"designation\":\"Merchant\",\"rating\":\"5\",\"testimonial\":\"South Security is one courier company we are proud to be a part of\",\"has_image\":\"1\",\"client_image\":\"6333a7e44bd751664329700.jpg\"}', '2021-07-12 15:25:17', '2022-09-28 05:48:20'),
(98, 'client.element', '{\"name\":\"Carlos Rabanda\",\"designation\":\"Business Owner\",\"rating\":\"5\",\"testimonial\":\"South Security is one courier company we are proud to be a part of\",\"has_image\":\"1\",\"client_image\":\"6333a84138b521664329793.jpg\"}', '2021-07-12 15:26:35', '2022-09-28 05:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitename` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur_text` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency symbol',
  `email_from` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_api` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'email configuration',
  `sms_config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email notification, 0 - dont send, 1 - send',
  `sn` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms notification, 0 - dont send, 1 - send',
  `force_ssl` tinyint(1) NOT NULL DEFAULT 0,
  `active_template` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys_version` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `sitename`, `cur_text`, `cur_sym`, `email_from`, `email_template`, `sms_api`, `base_color`, `mail_config`, `sms_config`, `en`, `sn`, `force_ssl`, `active_template`, `sys_version`, `created_at`, `updated_at`) VALUES
(1, 'South Security Company', 'USD', '$', 'do-not-reply@viserlab.com', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello {{fullname}} ({{username}})</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\">{{message}}</td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'hi {{name}}, {{message}}', '1e90ff', '{\"name\":\"smtp\",\"host\":\"southsecuritycompany.net\",\"port\":\"465\",\"enc\":\"tls\",\"username\":\"support@southsecuritycompany.net\",\"password\":\"Mary@1997\"}', '{\"clickatell_api_key\":\"----------------------------\",\"infobip_username\":\"--------------\",\"infobip_password\":\"----------------------\",\"message_bird_api_key\":\"-------------------\",\"account_sid\":\"AC67afdacf2dacff5f163134883db92c24\",\"auth_token\":\"77726b242830fb28f52fb08c648dd7a6\",\"from\":\"+17739011523\",\"apiv2_key\":\"dfsfgdfgh\",\"name\":\"clickatell\"}', 1, 0, 1, 'basic', NULL, NULL, '2022-10-13 18:13:36');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_align` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: left to right text align, 1: right to left text align',
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `text_align`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '5f15968db08911595250317.png', 0, 0, '2020-07-06 03:47:55', '2021-05-18 05:37:23'),
(10, 'Spanish', 'es', NULL, 0, 0, '2021-07-07 05:36:52', '2021-07-07 05:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempname` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'template name',
  `secs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `tempname`, `secs`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'HOME', 'home', 'templates.basic.', '[\"feature\",\"about\",\"service\",\"team\",\"counter\",\"faq\",\"client\",\"blog\",\"branch\",\"partner\"]', 1, '2020-07-11 06:23:58', '2021-07-03 04:43:56'),
(2, 'About', 'about-us', 'templates.basic.', '[\"about\",\"branch\",\"team\"]', 0, '2020-07-11 06:35:35', '2021-07-07 05:43:27'),
(4, 'Team', 'team', 'templates.basic.', '[\"feature\",\"team\"]', 0, '2020-10-22 01:14:43', '2021-07-07 05:43:57'),
(5, 'Service', 'service', 'templates.basic.', '[\"faq\",\"service\",\"partner\"]', 0, '2020-10-22 01:14:53', '2021-07-07 05:45:17'),
(12, 'FAQ', 'faq', 'templates.basic.', '[\"faq\",\"branch\",\"partner\"]', 0, '2021-07-06 08:43:37', '2021-07-07 05:45:45'),
(13, 'Blog', 'blog', 'templates.basic.', NULL, 1, '2021-07-06 08:43:50', '2021-07-06 08:43:50'),
(14, 'Contact', 'contact', 'templates.basic.', NULL, 1, '2021-07-06 08:44:28', '2021-07-06 08:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_attachments`
--

CREATE TABLE `support_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_message_id` int(10) UNSIGNED NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supportticket_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_messages`
--

INSERT INTO `support_messages` (`id`, `supportticket_id`, `admin_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Hello,\r\n\r\nWe are interested to increase traffic to your website, please get back to us in order to discuss the possibility in further detail. \r\n\r\nPlease mention your phone number and suitable time to talk.\r\n\r\nThanks in advance!\r\nMike Casey (SEO consultants)', '2022-09-27 18:15:47', '2022-09-27 18:15:47'),
(2, 2, 0, 'Hey,\r\n\r\nYour website\'s design is absolutely brilliant. The visuals really enhance your message and the content compels action. I\'ve forwarded it to a few of my contacts who I think could benefit from your services.\r\n\r\nWhen I was looking at your site, though, I noticed some mistakes that you\'ve made re: search engine optimization (SEO) which may be leading to a decline in your organic SEO results. Would you like to fix it so that you can get maximum exposure/presence on Google, Bing, Yahoo and web traffic to your website?\r\n\r\nIt\'s a relatively simple fix. If this is a priority.\r\n\r\nPlease share your “Mobile Number\" and a suitable time to talk, so I can help you in that.\r\n\r\n\r\nBest Regards\r\nHarvey Spectre\r\nDigital Marketing Team\r\nCall Us: 1-620-765-4699', '2022-09-27 20:34:27', '2022-09-27 20:34:27'),
(3, 3, 0, 'Hey,\r\n\r\nYour website\'s design is absolutely brilliant. The visuals really enhance your message and the content compels action. I\'ve forwarded it to a few of my contacts who I think could benefit from your services.\r\n\r\nWhen I was looking at your site, though, I noticed some mistakes that you\'ve made re: search engine optimization (SEO) which may be leading to a decline in your organic SEO results. Would you like to fix it so that you can get maximum exposure/presence on Google, Bing, Yahoo and web traffic to your website?\r\n\r\nIt\'s a relatively simple fix. If this is a priority.\r\n\r\nPlease share your “Mobile Number\" and a suitable time to talk, so I can help you in that.\r\n\r\n\r\nBest Regards\r\nHarvey Spectre\r\nDigital Marketing Team\r\nCall Us: 1-620-765-4699', '2022-09-27 20:35:48', '2022-09-27 20:35:48'),
(4, 3, 0, 'Hey,\r\n\r\nYour website\'s design is absolutely brilliant. The visuals really enhance your message and the content compels action. I\'ve forwarded it to a few of my contacts who I think could benefit from your services.\r\n\r\nWhen I was looking at your site, though, I noticed some mistakes that you\'ve made re: search engine optimization (SEO) which may be leading to a decline in your organic SEO results. Would you like to fix it so that you can get maximum exposure/presence on Google, Bing, Yahoo and web traffic to your website?\r\n\r\nIt\'s a relatively simple fix. If this is a priority.\r\n\r\nPlease share your “Mobile Number\" and a suitable time to talk, so I can help you in that.\r\n\r\n\r\nBest Regards\r\nHarvey Spectre\r\nDigital Marketing Team\r\nCall Us: 1-620-765-4699', '2022-09-27 20:36:12', '2022-09-27 20:36:12'),
(5, 4, 0, 'To whom it may concern,\r\n\r\nI hope you are well.\r\n\r\nI just wanted to reach out to check If you are interested to exchange Dofollow Backlinks with our website. Currently, our domain has DA-10/PA-50 score on Moz. If you want to climb up to the top of Google Search, acquiring high-quality backlinks is a foolproof way to accelerate your progress. So if you are interested let me know for further discussion.\r\n\r\nOur Website: https://web.cheapestdigitalbooks.com\r\n\r\nKind regards,\r\nAlex\r\nCheapest Digital Books\r\ncontact@cheapestdigitalbooks.com', '2022-09-28 02:43:59', '2022-09-28 02:43:59'),
(6, 5, 0, 'Hey,\r\n\r\nYour website\'s design is absolutely brilliant. The visuals really enhance your message and the content compels action. I\'ve forwarded it to a few of my contacts who I think could benefit from your services.\r\n\r\nWhen I was looking at your site, though, I noticed some mistakes that you\'ve made re: search engine optimization (SEO) which may be leading to a decline in your organic SEO results. Would you like to fix it so that you can get maximum exposure/presence on Google, Bing, Yahoo and web traffic to your website?\r\n\r\nIt\'s a relatively simple fix. If this is a priority.\r\n\r\nPlease share your “Mobile Number\" and a suitable time to talk, so I can help you in that.\r\n\r\n\r\nBest Regards\r\nHarry Williams\r\nDigital Marketing Team\r\nCall Us: 1-620-765-4699', '2022-10-06 15:56:11', '2022-10-06 15:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) DEFAULT 0,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `priority` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = Low, 2 = medium, 3 = heigh',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `user_id`, `name`, `email`, `ticket`, `subject`, `status`, `priority`, `last_reply`, `created_at`, `updated_at`) VALUES
(1, 0, 'Mike Caley', 'mike@growdigitalcamp.com', '56645850', 'Re: Want more clients and customers?', 0, 2, '2022-09-27 14:15:47', '2022-09-27 18:15:47', '2022-09-27 18:15:47'),
(2, 0, 'Harvey Spectre', 'harveyspectrework4@gmail.com', '08130029', 'Question about your websites', 0, 2, '2022-09-27 16:34:27', '2022-09-27 20:34:27', '2022-09-27 20:34:27'),
(3, 0, 'Harvey Spectre', 'harveyspectrework4@gmail.com', '76283505', 'Question about your websites', 2, 2, '2022-09-27 16:36:12', '2022-09-27 20:35:48', '2022-09-27 20:36:12'),
(4, 0, 'Alex Jonson', 'contact@cheapestdigitalbooks.com', '47964533', 'Let\'s Talk About Backlink Exchange', 0, 2, '2022-09-27 22:43:59', '2022-09-28 02:43:59', '2022-09-28 02:43:59'),
(5, 0, 'Harry Williams', 'harrywilliamwork4@gmail.com', '63405874', 'Question about your websites', 0, 2, '2022-10-06 11:56:11', '2022-10-06 15:56:11', '2022-10-06 15:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Active : 1, Inactive: 0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `unit_id`, `name`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Type5', '20.00000000', 1, '2022-07-16 07:51:38', '2022-07-16 07:52:04'),
(2, 1, 'Type3', '10000.00000000', 1, '2022-10-06 19:00:26', '2022-10-06 19:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Active : 1, Inactive : 0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'unit', 1, '2022-07-16 07:42:03', '2022-07-16 07:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `firstname` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: banned, 1: active',
  `ver_code` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `branch_id`, `firstname`, `lastname`, `username`, `email`, `mobile`, `password`, `image`, `user_type`, `status`, `ver_code`, `ver_code_send_at`, `ts`, `tv`, `tsc`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 2, 'Incrisz', 'Devin', 'manager', 'support@southsecuritycompany.net', '+44 7405 326585', '$2y$10$mCWujzjhloNevRfgHHdVguUJb3k7VFXAbYJd0MPzA0IwrengkyuPa', NULL, 'manager', 1, NULL, NULL, 0, 1, NULL, NULL, '2022-07-14 12:58:38', '2022-10-06 19:24:14'),
(2, 1, 'present', 'Devin', 'staff', 'staff@gmail.com', '234567896', '$2y$10$E9GG5R4ufqBMbo2o3QlJQulLn9W/mhqXTobkSppSeH.9LFXGdB9cO', NULL, 'staff', 1, NULL, NULL, 0, 1, NULL, NULL, '2022-07-16 07:21:45', '2022-07-16 07:21:45'),
(3, 1, 'Linda', 'barker', 'linda32423', 'johnsui59@gmail.com', '08063859713', '$2y$10$g67HVU5z94MRSIPa7mvWP.H.pOYYmZQMwt7pY1rly0uhukmtQsJha', NULL, 'staff', 1, NULL, NULL, 0, 1, NULL, NULL, '2022-10-03 13:44:24', '2022-10-03 13:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_ip` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `user_ip`, `city`, `country`, `country_code`, `longitude`, `latitude`, `browser`, `os`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'Firefox', 'Windows 10', '2022-07-14 13:00:43', '2022-07-14 13:00:43'),
(2, 1, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'Firefox', 'Windows 10', '2022-07-16 07:19:18', '2022-07-16 07:19:18'),
(3, 2, '::1', NULL, NULL, NULL, NULL, NULL, 'Edge', 'Windows 10', '2022-07-16 07:29:14', '2022-07-16 07:29:14'),
(4, 2, '91.230.225.51', '', 'Kuwait', 'KW', '47.6581', '29.3375', 'Chrome', 'Mac OS X', '2022-09-22 18:30:39', '2022-09-22 18:30:39'),
(5, 1, '91.230.225.51', '', 'Kuwait', 'KW', '47.6581', '29.3375', 'Chrome', 'Mac OS X', '2022-09-22 18:33:12', '2022-09-22 18:33:12'),
(6, 2, '197.210.84.14', 'Lagos', 'Nigeria', 'NG', '3.3903', '6.4474', 'Chrome', 'Windows 10', '2022-10-01 19:07:01', '2022-10-01 19:07:01'),
(7, 2, '197.210.78.57', '', 'Nigeria', 'NG', '8', '10', 'Chrome', 'Windows 10', '2022-10-02 14:48:30', '2022-10-02 14:48:30'),
(8, 1, '197.210.78.197', '', 'Nigeria', 'NG', '8', '10', 'Chrome', 'Windows 10', '2022-10-03 12:57:13', '2022-10-03 12:57:13'),
(9, 1, '197.210.78.197', '', 'Nigeria', 'NG', '8', '10', 'Chrome', 'Windows 10', '2022-10-03 13:26:19', '2022-10-03 13:26:19'),
(10, 2, '91.230.225.200', '', 'Kuwait', 'KW', '47.6581', '29.3375', 'Chrome', 'Mac OS X', '2022-10-04 02:59:46', '2022-10-04 02:59:46'),
(11, 2, '31.210.107.201', '', 'Turkey', 'TR', '28.9948', '41.0214', 'Chrome', 'Windows 10', '2022-10-06 18:19:56', '2022-10-06 18:19:56'),
(12, 2, '41.203.75.18', 'Nnewi', 'Nigeria', 'NG', '6.9083', '6.0165', 'Chrome', 'Windows 10', '2022-10-06 18:22:15', '2022-10-06 18:22:15'),
(13, 2, '197.210.79.188', '', 'Nigeria', 'NG', '8', '10', 'Chrome', 'Windows 10', '2022-10-06 18:32:22', '2022-10-06 18:32:22'),
(14, 2, '185.192.71.13', 'London', 'United Kingdom', 'GB', '-0.093', '51.5164', 'Chrome', 'Mac OS X', '2022-10-13 17:52:20', '2022-10-13 17:52:20'),
(15, 1, '185.192.71.13', 'London', 'United Kingdom', 'GB', '-0.093', '51.5164', 'Chrome', 'Mac OS X', '2022-10-13 17:53:53', '2022-10-13 17:53:53'),
(16, 2, '91.230.225.186', '', 'Kuwait', 'KW', '47.6581', '29.3375', 'Chrome', 'Mac OS X', '2022-10-13 18:15:14', '2022-10-13 18:15:14'),
(17, 1, '185.192.71.1', 'London', 'United Kingdom', 'GB', '-0.093', '51.5164', 'Chrome', 'Mac OS X', '2022-10-13 18:19:21', '2022-10-13 18:19:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`username`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`email`,`phone`);

--
-- Indexes for table `courier_infos`
--
ALTER TABLE `courier_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courier_payments`
--
ALTER TABLE `courier_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courier_products`
--
ALTER TABLE `courier_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_logs`
--
ALTER TABLE `email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `support_attachments`
--
ALTER TABLE `support_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courier_infos`
--
ALTER TABLE `courier_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courier_payments`
--
ALTER TABLE `courier_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courier_products`
--
ALTER TABLE `courier_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_logs`
--
ALTER TABLE `email_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_attachments`
--
ALTER TABLE `support_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
