-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Apr 2021 pada 11.59
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal_akt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alokasi_anggaran`
--

CREATE TABLE `alokasi_anggaran` (
  `id` int(11) NOT NULL,
  `unit_kerja` varchar(128) NOT NULL,
  `tanah` double NOT NULL,
  `gedung` double NOT NULL,
  `prlt_prbt` double NOT NULL,
  `hardware` double NOT NULL,
  `software` double NOT NULL,
  `electric` double NOT NULL,
  `non_electric` double NOT NULL,
  `kendaraan` double NOT NULL,
  `alokasi_awal` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangs`
--

CREATE TABLE `barangs` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `name` varchar(255) NOT NULL,
  `description` varchar(225) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'PENDING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barangs`
--

INSERT INTO `barangs` (`id`, `created_at`, `name`, `description`, `status`) VALUES
(10, '2021-04-19 09:00:16', 'fiqqi', 'TEST NALOGAD', 'reject'),
(11, '2021-04-19 02:00:25', 'fiqqi', 'TEST NALOGAD', 'pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `capex`
--

CREATE TABLE `capex` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mata_anggaran` varchar(128) NOT NULL,
  `alokasi` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `capex`
--

INSERT INTO `capex` (`id`, `created_at`, `mata_anggaran`, `alokasi`) VALUES
(1, '2021-04-16 04:32:29', '6', 0),
(2, '2021-04-16 04:32:36', '8', 0),
(3, '2021-04-16 04:32:40', '11', 0),
(4, '2021-04-16 04:32:24', '12', 0),
(5, '2021-04-16 04:32:19', '9', 0),
(6, '2021-04-16 04:32:08', '7', 0),
(7, '2021-04-16 04:26:45', '10', 0),
(8, '2021-04-15 20:17:09', '5', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Sepatu'),
(2, 'Kulkas'),
(3, 'Televisi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2021-04-12 08:19:49', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2021-04-12 08:20:50', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Fiqqi at Users Management', '', 1, '2021-04-12 08:21:32', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2021-04-12 08:21:42', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-12 08:21:54', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/2', 'Update data Fiqqi Nurrakhman at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Fiqqi</td><td>Fiqqi Nurrakhman</td></tr><tr><td>password</td><td>$2y$10$xs3upr9ZnFHpMreZ2oDqO.YdjSEec85FscqplIDH7wcNctoD1AqRS</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 2, '2021-04-12 08:22:49', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fiqqirahman@gmail.com logout', '', 2, '2021-04-12 08:26:07', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-12 08:26:42', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fiqqirahman@gmail.com logout', '', 2, '2021-04-12 08:27:00', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-12 08:27:24', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fiqqirahman@gmail.com logout', '', 2, '2021-04-12 08:28:29', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-12 08:28:40', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fiqqirahman@gmail.com logout', '', 2, '2021-04-12 08:29:48', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-12 08:30:02', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fiqqirahman@gmail.com logout', '', 2, '2021-04-12 08:30:52', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-12 08:31:04', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fiqqirahman@gmail.com logout', '', 2, '2021-04-12 08:31:33', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-12 08:31:53', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-12 18:28:48', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fiqqirahman@gmail.com logout', '', 2, '2021-04-12 18:38:35', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-12 18:38:47', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fiqqirahman@gmail.com logout', '', 2, '2021-04-12 18:46:36', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2021-04-12 18:46:36', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-12 18:46:50', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fiqqirahman@gmail.com logout', '', 2, '2021-04-12 18:58:53', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-12 18:59:22', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/mata_anggarans/add-save', 'Add New Data  at Jenis Mata Anggaran', '', 2, '2021-04-12 20:09:18', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/13', 'Delete data Jenis Mata Anggaran at Module Generator', '', 2, '2021-04-12 20:15:52', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/12', 'Delete data Alokasi Anggaran at Module Generator', '', 2, '2021-04-12 20:15:55', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/mata_anggarans14/add-save', 'Add New Data  at Mata Anggaran', '', 2, '2021-04-12 20:19:19', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/mata_anggarans14/add-save', 'Add New Data  at Mata Anggaran', '', 2, '2021-04-12 20:19:26', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/mata_anggarans14/add-save', 'Add New Data  at Mata Anggaran', '', 2, '2021-04-12 20:19:39', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/14', 'Delete data Mata Anggaran at Module Generator', '', 2, '2021-04-12 20:20:05', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/15', 'Delete data Jenis Mata Anggaran at Module Generator', '', 2, '2021-04-12 20:27:43', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/16', 'Delete data Jenis Mata Anggaran at Module Generator', '', 2, '2021-04-12 20:31:49', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/otomasi/add-save', 'Add New Data Hardware at Mata Anggaran Otomasi', '', 2, '2021-04-12 20:34:21', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/otomasi/add-save', 'Add New Data Software at Mata Anggaran Otomasi', '', 2, '2021-04-12 20:34:27', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/non_otomasi/add-save', 'Add New Data Electronic at Mata Anggaran Non Otomasi', '', 2, '2021-04-12 20:34:39', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/non_otomasi/add-save', 'Add New Data Non Electronic at Mata Anggaran Non Otomasi', '', 2, '2021-04-12 20:34:49', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/17', 'Delete data Jenis Mata Anggaran at Module Generator', '', 2, '2021-04-12 20:40:24', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/mata_anggarans20/add-save', 'Add New Data  at Mata Anggaran', '', 2, '2021-04-12 20:41:32', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/mata_anggarans20/add-save', 'Add New Data  at Mata Anggaran', '', 2, '2021-04-12 20:41:38', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/mata_anggarans20/add-save', 'Add New Data  at Mata Anggaran', '', 2, '2021-04-12 20:41:40', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/mata_anggarans20/add-save', 'Add New Data  at Mata Anggaran', '', 2, '2021-04-12 20:41:48', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/unit_kerjas/add-save', 'Add New Data  at Unit Kerja', '', 2, '2021-04-12 20:43:18', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/unit_kerjas/add-save', 'Add New Data  at Unit Kerja', '', 2, '2021-04-12 20:43:32', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/unit_kerjas/add-save', 'Add New Data  at Unit Kerja', '', 2, '2021-04-12 20:43:50', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/22', 'Delete data Alokasi Anggaran Investasi at Module Generator', '', 2, '2021-04-12 21:07:00', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/alokasi_anggaran23/add-save', 'Add New Data  at Alokasi Anggaran Investasi', '', 2, '2021-04-12 21:43:49', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/alokasi_anggaran23/add-save', 'Add New Data  at Alokasi Anggaran Investasi', '', 2, '2021-04-12 23:26:50', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/alokasi_anggaran23/delete/1', 'Delete data 1 at Alokasi Anggaran Investasi', '', 2, '2021-04-12 23:28:23', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/alokasi_anggaran23/delete/2', 'Delete data 2 at Alokasi Anggaran Investasi', '', 2, '2021-04-12 23:28:27', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fiqqirahman@gmail.com logout', '', 2, '2021-04-12 23:37:02', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-13 00:27:44', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/categories/add-save', 'Add New Data Sepatu at Categories', '', 2, '2021-04-13 00:32:35', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/categories/add-save', 'Add New Data Kulkas at Categories', '', 2, '2021-04-13 00:32:39', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/categories/add-save', 'Add New Data Televisi at Categories', '', 2, '2021-04-13 00:32:51', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/products/add-save', 'Add New Data Fiqqi at Products', '', 2, '2021-04-13 00:33:16', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/24', 'Delete data Products at Module Generator', '', 2, '2021-04-13 00:39:49', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/products26/add-save', 'Add New Data fiqqi at Products', '', 2, '2021-04-13 00:47:05', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/26', 'Delete data Products at Module Generator', '', 2, '2021-04-13 00:50:00', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Add New Data Mata Anggaran at Statistic Builder', '', 2, '2021-04-13 01:04:18', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data fiqqi at Users Management', '', 2, '2021-04-13 01:31:17', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete/3', 'Delete data fiqqi at Users Management', '', 2, '2021-04-13 01:33:02', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-13 18:48:59', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fiqqirahman@gmail.com logout', '', 2, '2021-04-13 18:51:02', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-13 23:57:20', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/25', 'Delete data Categories at Module Generator', '', 2, '2021-04-14 01:56:43', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/27', 'Delete data Products at Module Generator', '', 2, '2021-04-14 01:56:49', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-14 19:10:54', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/23', 'Delete data Alokasi Anggaran Investasi at Module Generator', '', 2, '2021-04-14 19:48:02', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/28', 'Delete data Alokasi Anggaran Investasi at Module Generator', '', 2, '2021-04-14 20:29:03', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/29', 'Delete data Alokasi Anggaran Investasi at Module Generator', '', 2, '2021-04-14 20:47:16', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/products31/add-save', 'Add New Data sepatu at Products', '', 2, '2021-04-14 23:17:53', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/products31/add-save', 'Add New Data sad at Products', '', 2, '2021-04-14 23:18:55', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/products31/edit-save/4', 'Update data sad at Products', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 2, '2021-04-14 23:23:05', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/products31/add-save', 'Add New Data fiqqi at Products', '', 2, '2021-04-14 23:27:43', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/products31/edit-save/5', 'Update data fiqqi at Products', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 2, '2021-04-14 23:27:55', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data Products at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminProducts31ControllerGetIndex</td><td>products31</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 2, '2021-04-14 23:33:19', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data Products at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Module</td><td>Controller & Method</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 2, '2021-04-14 23:34:00', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data Products at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>products31</td><td>products31,getSetStatus</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 2, '2021-04-14 23:34:42', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data Products at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>products31,getSetStatus</td><td>AdminProdicts31Controller@getSetStatus</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 2, '2021-04-14 23:35:41', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data Products at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Controller & Method</td><td>Route</td></tr><tr><td>path</td><td>AdminProdicts31Controller@getSetStatus</td><td>AdminProdicts31Controller</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 2, '2021-04-14 23:36:16', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data Products at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>AdminProdicts31Controller</td><td>Produtcs31</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 2, '2021-04-14 23:36:40', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data Products at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>Produtcs31</td><td>Products</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 2, '2021-04-14 23:37:08', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data Products at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 2, '2021-04-14 23:37:17', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data Products at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>Products31</td><td>products31</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 2, '2021-04-14 23:37:33', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/products31/edit-save/5', 'Update data fiqqi at Products', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 2, '2021-04-15 00:04:17', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/products31/edit-save/2', 'Update data fiqqi at Products', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>TEST NALOGAD</td><td>TEST NALOGADsad</td></tr></tbody></table>', 2, '2021-04-15 00:04:23', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/products31/delete/2', 'Delete data fiqqi at Products', '', 2, '2021-04-15 00:04:30', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/products31/delete/3', 'Delete data sepatu at Products', '', 2, '2021-04-15 00:04:33', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/products31/delete/4', 'Delete data sad at Products', '', 2, '2021-04-15 00:04:35', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/products31/delete/5', 'Delete data fiqqi at Products', '', 2, '2021-04-15 00:04:41', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/products31/add-save', 'Add New Data fiqqi at Products', '', 2, '2021-04-15 00:04:47', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/products31/add-save', 'Add New Data sadasd at Products', '', 2, '2021-04-15 00:04:53', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/products31/add-save', 'Add New Data sadasda at Products', '', 2, '2021-04-15 00:04:59', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/customers/add-save', 'Add New Data fiqqi at Customers', '', 2, '2021-04-15 00:20:02', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/customers/add-save', 'Add New Data budi at Customers', '', 2, '2021-04-15 00:20:07', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/customers/add-save', 'Add New Data ajung at Customers', '', 2, '2021-04-15 00:20:13', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/31', 'Delete data Products at Module Generator', '', 2, '2021-04-15 00:22:06', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/products33/add-save', 'Add New Data Sepatu at Products', '', 2, '2021-04-15 00:25:31', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/products33/add-save', 'Add New Data sandal at Products', '', 2, '2021-04-15 00:25:39', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/20', 'Delete data Products at Menu Management', '', 2, '2021-04-15 00:26:05', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/orders/add-save', 'Add New Data  at Orders', '', 2, '2021-04-15 00:27:13', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/orders/add-save', 'Add New Data  at Orders', '', 2, '2021-04-15 00:27:21', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/orders/add-save', 'Add New Data  at Orders', '', 2, '2021-04-15 00:27:30', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/orders/add-save', 'Add New Data  at Orders', '', 2, '2021-04-15 00:58:36', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-15 18:54:25', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/orders/delete/1', 'Delete data 1 at Orders', '', 2, '2021-04-15 19:01:25', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/orders/delete/2', 'Delete data 2 at Orders', '', 2, '2021-04-15 19:01:28', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/orders/delete/3', 'Delete data 3 at Orders', '', 2, '2021-04-15 19:01:31', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-15 19:05:37', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/orders/delete/4', 'Delete data 4 at Orders', '', 2, '2021-04-15 19:08:34', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fiqqirahman@gmail.com logout', '', 2, '2021-04-15 19:21:27', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-15 19:29:20', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/mata_anggarans20/add-save', 'Add New Data  at Mata Anggaran', '', 2, '2021-04-15 20:03:49', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/mata_anggarans20/add-save', 'Add New Data  at Mata Anggaran', '', 2, '2021-04-15 20:03:59', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/mata_anggarans20/add-save', 'Add New Data  at Mata Anggaran', '', 2, '2021-04-15 20:04:50', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/mata_anggarans20/add-save', 'Add New Data  at Mata Anggaran', '', 2, '2021-04-15 20:05:08', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/capex/add-save', 'Add New Data  at Alokasi CAPEX', '', 2, '2021-04-15 20:16:03', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/capex/add-save', 'Add New Data  at Alokasi CAPEX', '', 2, '2021-04-15 20:16:11', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/capex/add-save', 'Add New Data  at Alokasi CAPEX', '', 2, '2021-04-15 20:16:21', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/capex/add-save', 'Add New Data  at Alokasi CAPEX', '', 2, '2021-04-15 20:16:30', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/capex/add-save', 'Add New Data  at Alokasi CAPEX', '', 2, '2021-04-15 20:16:40', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/capex/add-save', 'Add New Data  at Alokasi CAPEX', '', 2, '2021-04-15 20:16:50', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/capex/add-save', 'Add New Data  at Alokasi CAPEX', '', 2, '2021-04-15 20:17:02', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/capex/add-save', 'Add New Data  at Alokasi CAPEX', '', 2, '2021-04-15 20:17:09', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/requests/add-save', 'Add New Data  at Request Alokasi Capex', '', 2, '2021-04-15 20:24:26', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/requests/add-save', 'Add New Data  at Request Alokasi Capex', '', 2, '2021-04-15 20:24:35', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/requests/add-save', 'Add New Data  at Request Alokasi Capex', '', 2, '2021-04-15 20:24:42', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/19', 'Delete data Mata Anggaran Otomasi at Module Generator', '', 2, '2021-04-15 21:23:45', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/18', 'Delete data Mata Anggaran Non Otomasi at Module Generator', '', 2, '2021-04-15 21:23:52', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/30', 'Delete data Alokasi Anggaran Investasi at Module Generator', '', 2, '2021-04-15 21:24:01', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/capex/edit-save/7', 'Update data  at Alokasi CAPEX', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alokasi</td><td>90</td><td>0</td></tr></tbody></table>', 2, '2021-04-15 21:26:45', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/capex/edit-save/8', 'Update data  at Alokasi CAPEX', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 2, '2021-04-15 21:32:03', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/capex/edit-save/6', 'Update data  at Alokasi CAPEX', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alokasi</td><td>90</td><td>0</td></tr></tbody></table>', 2, '2021-04-15 21:32:08', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/capex/edit-save/5', 'Update data  at Alokasi CAPEX', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alokasi</td><td>700</td><td>0</td></tr></tbody></table>', 2, '2021-04-15 21:32:19', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/capex/edit-save/4', 'Update data  at Alokasi CAPEX', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alokasi</td><td>70</td><td>0</td></tr></tbody></table>', 2, '2021-04-15 21:32:24', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/capex/edit-save/1', 'Update data  at Alokasi CAPEX', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alokasi</td><td>5000</td><td>0</td></tr></tbody></table>', 2, '2021-04-15 21:32:29', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/capex/edit-save/2', 'Update data  at Alokasi CAPEX', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alokasi</td><td>900</td><td>0</td></tr></tbody></table>', 2, '2021-04-15 21:32:36', NULL),
(140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/capex/edit-save/3', 'Update data  at Alokasi CAPEX', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>alokasi</td><td>80</td><td>0</td></tr></tbody></table>', 2, '2021-04-15 21:32:40', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/requests/add-save', 'Add New Data  at Request Alokasi Capex', '', 2, '2021-04-15 21:34:12', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/requests/delete/4', 'Delete data 4 at Request Alokasi Capex', '', 2, '2021-04-15 21:34:46', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/requests/delete/4', 'Delete data  at Request Alokasi Capex', '', 2, '2021-04-15 21:34:46', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/requests/add-save', 'Add New Data  at Request Alokasi Capex', '', 2, '2021-04-15 21:38:40', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'http://127.0.0.1:8000/admin/requests/add-save', 'Add New Data  at Request Alokasi Capex', '', 2, '2021-04-16 02:00:00', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-16 18:14:50', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/izin_anggaran/add-save', 'Add New Data  at Izin Penggunaan Anggaran', '', 2, '2021-04-16 19:14:41', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/izin_anggaran/delete/1', 'Delete data 1 at Izin Penggunaan Anggaran', '', 2, '2021-04-16 19:14:53', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/izin_anggaran/add-save', 'Add New Data  at Izin Penggunaan Anggaran', '', 2, '2021-04-16 19:31:49', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/26', 'Update data Persetujuan Izin Penggunaan Anggaran at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Izin Penggunaan Anggaran</td><td>Persetujuan Izin Penggunaan Anggaran</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>13</td><td></td></tr></tbody></table>', 2, '2021-04-16 19:44:28', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/26', 'Update data Permohonan Penggunaan Anggaran at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Persetujuan Izin Penggunaan Anggaran</td><td>Permohonan Penggunaan Anggaran</td></tr><tr><td>sorting</td><td>13</td><td></td></tr></tbody></table>', 2, '2021-04-16 19:44:53', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/26', 'Update data Permohonan Anggaran at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Permohonan Penggunaan Anggaran</td><td>Permohonan Anggaran</td></tr><tr><td>sorting</td><td>13</td><td></td></tr></tbody></table>', 2, '2021-04-16 19:45:29', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/26', 'Update data Permohonan Anggaran at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-inbox</td><td>fa fa-pencil-square-o</td></tr><tr><td>sorting</td><td>13</td><td></td></tr></tbody></table>', 2, '2021-04-16 19:45:56', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/izin_anggaran/add-save', 'Add New Data  at Permohonan Izin Penggunaan Anggaran', '', 2, '2021-04-16 19:47:26', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/izin_anggaran/add-save', 'Add New Data  at Permohonan Izin Penggunaan Anggaran', '', 2, '2021-04-16 19:48:30', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/izin_anggaran/add-save', 'Add New Data  at Permohonan Izin Penggunaan Anggaran', '', 2, '2021-04-16 19:49:59', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fiqqirahman@gmail.com logout', '', 2, '2021-04-16 20:01:52', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-16 20:02:00', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/persetujuan_anggaran/add-save', 'Add New Data  at Persetujuan Anggaran', '', 2, '2021-04-16 20:03:42', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/persetujuan_anggaran/delete/1', 'Delete data 1 at Persetujuan Anggaran', '', 2, '2021-04-16 20:26:12', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/persetujuan_anggaran/add-save', 'Add New Data  at Persetujuan Anggaran', '', 2, '2021-04-16 20:48:13', NULL),
(162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-17 19:23:20', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-18 20:12:03', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/persetujuan_anggaran/add-save', 'Add New Data  at Persetujuan Anggaran', '', 2, '2021-04-18 20:13:25', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/persetujuan_anggaran/add-save', 'Add New Data  at Persetujuan Anggaran', '', 2, '2021-04-18 20:15:06', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs/add-save', 'Add New Data adpsakasda at Barang', '', 2, '2021-04-18 20:20:25', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs/add-save', 'Add New Data dadadasd at Barang', '', 2, '2021-04-18 20:21:26', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs/delete/2', 'Delete data  at Barang', '', 2, '2021-04-18 20:27:53', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs40/add-save', 'Add New Data fiqqi at Barangs', '', 2, '2021-04-18 20:29:45', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-18 21:51:03', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fiqqirahman@gmail.com logout', '', 2, '2021-04-18 21:51:33', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-18 23:05:36', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs/add-save', 'Add New Data asdasds at Barang', '', 2, '2021-04-18 23:05:45', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs40/add-save', 'Add New Data sadasda at Barangs', '', 2, '2021-04-18 23:06:05', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/persetujuan_anggaran/add-save', 'Add New Data  at Persetujuan Anggaran', '', 2, '2021-04-18 23:18:51', NULL),
(176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/40', 'Delete data Barangs at Module Generator', '', 2, '2021-04-18 23:19:19', NULL),
(177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/39', 'Delete data Barang at Module Generator', '', 2, '2021-04-18 23:19:23', NULL),
(178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs/add-save', 'Add New Data sdadsda at Barang', '', 2, '2021-04-18 23:20:19', NULL),
(179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs/delete/3', 'Delete data fiqqi at Barang', '', 2, '2021-04-18 23:20:29', NULL),
(180, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs/delete/4', 'Delete data asdasds at Barang', '', 2, '2021-04-18 23:20:31', NULL),
(181, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs/delete/5', 'Delete data sadasda at Barang', '', 2, '2021-04-18 23:20:34', NULL),
(182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs/delete/6', 'Delete data sdadsda at Barang', '', 2, '2021-04-18 23:20:37', NULL),
(183, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs/add-save', 'Add New Data asdasd at Barang', '', 2, '2021-04-18 23:22:24', NULL),
(184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/41', 'Delete data Barang at Module Generator', '', 2, '2021-04-18 23:23:34', NULL),
(185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/persetujuan_anggaran/add-save', 'Add New Data  at Persetujuan Anggaran', '', 2, '2021-04-18 23:24:19', NULL),
(186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs42/add-save', 'Add New Data sadas at Barang', '', 2, '2021-04-18 23:33:11', NULL),
(187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs42/add-save', 'Add New Data sad at Barang', '', 2, '2021-04-18 23:33:47', NULL),
(188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/42', 'Delete data Barang at Module Generator', '', 2, '2021-04-18 23:38:43', NULL),
(189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/add-save', 'Add New Data fiqqi at Barang', '', 2, '2021-04-18 23:40:14', NULL),
(190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/add-save', 'Add New Data fiqqi at Barang', '', 2, '2021-04-18 23:46:29', NULL),
(191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/persetujuan_anggaran/add-save', 'Add New Data  at Persetujuan Anggaran', '', 2, '2021-04-18 23:48:19', NULL),
(192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/persetujuan_anggaran/add-save', 'Add New Data  at Persetujuan Anggaran', '', 2, '2021-04-18 23:49:03', NULL),
(193, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/38', 'Delete data Persetujuan Anggaran at Module Generator', '', 2, '2021-04-18 23:52:00', NULL),
(194, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/persetujuan_anggaran44/add-save', 'Add New Data  at Persetujuan Anggaran', '', 2, '2021-04-19 00:02:59', NULL),
(195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-19 00:04:52', NULL),
(196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/orders/add-save', 'Add New Data  at Orders', '', 2, '2021-04-19 00:16:01', NULL),
(197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/izin_anggaran/add-save', 'Add New Data  at Permohonan Izin Penggunaan Anggaran', '', 2, '2021-04-19 00:17:42', NULL),
(198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/44', 'Delete data Persetujuan Anggaran at Module Generator', '', 2, '2021-04-19 00:22:40', NULL),
(199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/44', 'Delete data Persetujuan Anggaran at Module Generator', '', 2, '2021-04-19 00:22:40', NULL),
(200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/requests/add-save', 'Add New Data  at Request Alokasi Capex', '', 2, '2021-04-19 00:46:50', NULL),
(201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/45', 'Delete data Izin Penggunaan Anggaran at Module Generator', '', 2, '2021-04-19 00:51:13', NULL),
(202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-19 00:57:15', NULL),
(203, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/46', 'Delete data Izin Penggunaan Anggaran at Module Generator', '', 2, '2021-04-19 01:09:03', NULL),
(204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/add-save', 'Add New Data fiqqi at Barang', '', 2, '2021-04-19 01:49:24', NULL),
(205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/add-save', 'Add New Data fiqqi at Barang', '', 2, '2021-04-19 01:50:58', NULL),
(206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/edit-save/4', 'Update data fiqqi at Barang', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 2, '2021-04-19 01:51:07', NULL),
(207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/add-save', 'Add New Data fiqqi at Barang', '', 2, '2021-04-19 01:52:18', NULL),
(208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/add-save', 'Add New Data fiqqi at Barang', '', 2, '2021-04-19 01:53:12', NULL),
(209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/add-save', 'Add New Data fiqqi at Barang', '', 2, '2021-04-19 01:54:37', NULL),
(210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/add-save', 'Add New Data fiqqi at Barang', '', 2, '2021-04-19 01:55:30', NULL),
(211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/add-save', 'Add New Data fiqqi at Barang', '', 2, '2021-04-19 01:57:31', NULL),
(212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/delete/9', 'Delete data fiqqi at Barang', '', 2, '2021-04-19 01:57:41', NULL),
(213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/delete/8', 'Delete data fiqqi at Barang', '', 2, '2021-04-19 01:57:44', NULL),
(214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/delete/7', 'Delete data fiqqi at Barang', '', 2, '2021-04-19 01:57:48', NULL),
(215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/delete/6', 'Delete data fiqqi at Barang', '', 2, '2021-04-19 01:57:50', NULL),
(216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/delete/5', 'Delete data fiqqi at Barang', '', 2, '2021-04-19 01:57:52', NULL),
(217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/delete/4', 'Delete data fiqqi at Barang', '', 2, '2021-04-19 01:57:56', NULL),
(218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/delete/3', 'Delete data fiqqi at Barang', '', 2, '2021-04-19 01:57:58', NULL),
(219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/delete/2', 'Delete data fiqqi at Barang', '', 2, '2021-04-19 01:58:00', NULL),
(220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/delete/1', 'Delete data fiqqi at Barang', '', 2, '2021-04-19 01:58:02', NULL),
(221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/add-save', 'Add New Data fiqqi at Barang', '', 2, '2021-04-19 01:58:08', NULL),
(222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/barangs43/add-save', 'Add New Data fiqqi at Barang', '', 2, '2021-04-19 02:00:25', NULL),
(223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-19 18:41:07', NULL),
(224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/cobas/add-save', 'Add New Data  at Coba', '', 2, '2021-04-19 19:33:39', NULL),
(225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/cobas/add-save', 'Add New Data  at Coba', '', 2, '2021-04-19 19:35:57', NULL),
(226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/cobas/add-save', 'Add New Data  at Coba', '', 2, '2021-04-19 19:36:23', NULL),
(227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/47', 'Delete data Coba at Module Generator', '', 2, '2021-04-19 20:01:28', NULL),
(228, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-19 20:21:16', NULL),
(229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/customers/edit-save/3', 'Update data ajunggg at Customers', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>ajung</td><td>ajunggg</td></tr></tbody></table>', 2, '2021-04-19 20:21:27', NULL),
(230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-20 23:11:22', NULL),
(231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Budi at Users Management', '', 2, '2021-04-20 23:14:24', NULL),
(232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/21', 'Update data Customers at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 2, '2021-04-20 23:14:49', NULL),
(233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/21', 'Update data Customers at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 2, '2021-04-20 23:14:49', NULL),
(234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/21', 'Update data Customers at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 2, '2021-04-20 23:15:00', NULL),
(235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/22', 'Update data Products at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 2, '2021-04-20 23:15:18', NULL),
(236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/23', 'Update data Orders at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 2, '2021-04-20 23:15:31', NULL),
(237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/32', 'Update data Barang at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>15</td><td></td></tr></tbody></table>', 2, '2021-04-20 23:15:48', NULL),
(238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/requests/add-save', 'Add New Data  at Request Alokasi Capex', '', 2, '2021-04-20 23:21:21', NULL),
(239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/requests/delete/1', 'Delete data 1 at Request Alokasi Capex', '', 2, '2021-04-20 23:21:28', NULL),
(240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/requests/delete/2', 'Delete data 2 at Request Alokasi Capex', '', 2, '2021-04-20 23:21:31', NULL),
(241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/requests/delete/3', 'Delete data 3 at Request Alokasi Capex', '', 2, '2021-04-20 23:21:33', NULL),
(242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/requests/delete/5', 'Delete data 5 at Request Alokasi Capex', '', 2, '2021-04-20 23:21:37', NULL),
(243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/requests/delete/6', 'Delete data 6 at Request Alokasi Capex', '', 2, '2021-04-20 23:21:39', NULL),
(244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/requests/delete/7', 'Delete data 7 at Request Alokasi Capex', '', 2, '2021-04-20 23:21:42', NULL),
(245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'http://127.0.0.1:8000/admin/requests/delete/8', 'Delete data 8 at Request Alokasi Capex', '', 2, '2021-04-20 23:21:45', NULL),
(246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fiqqirahman@gmail.com login with IP Address 127.0.0.1', '', 2, '2021-04-21 02:17:42', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(9, 'Mata Anggaran', 'Route', 'AdminMataAnggarans20ControllerGetIndex', NULL, 'fa fa-th-list', 0, 1, 0, 1, 4, '2021-04-12 20:41:00', NULL),
(10, 'Unit Kerja', 'Route', 'AdminUnitKerjasControllerGetIndex', NULL, 'fa fa-bank', 0, 1, 0, 1, 5, '2021-04-12 20:42:27', NULL),
(21, 'Customers', 'Route', 'AdminCustomersControllerGetIndex', 'normal', 'fa fa-user', 0, 1, 0, 1, 8, '2021-04-15 00:19:14', '2021-04-20 23:15:00'),
(22, 'Products', 'Route', 'AdminProducts33ControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 9, '2021-04-15 00:25:06', '2021-04-20 23:15:18'),
(23, 'Orders', 'Route', 'AdminOrdersControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 10, '2021-04-15 00:26:36', '2021-04-20 23:15:31'),
(24, 'Alokasi CAPEX', 'Route', 'AdminCapexControllerGetIndex', NULL, 'fa fa-bank', 0, 1, 0, 1, 11, '2021-04-15 20:14:42', NULL),
(25, 'Request Alokasi Capex', 'Route', 'AdminRequestsControllerGetIndex', NULL, 'fa fa-shopping-bag', 0, 1, 0, 1, 12, '2021-04-15 20:19:21', NULL),
(26, 'Permohonan Anggaran', 'Route', 'AdminIzinAnggaranControllerGetIndex', 'normal', 'fa fa-pencil-square-o', 0, 1, 0, 1, 13, '2021-04-16 18:59:57', '2021-04-16 19:45:56'),
(32, 'Barang', 'Route', 'AdminBarangs43ControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 15, '2021-04-18 23:38:55', '2021-04-20 23:15:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(29, 20, 1),
(33, 24, 1),
(34, 25, 1),
(39, 26, 1),
(40, 27, 1),
(41, 28, 1),
(42, 29, 1),
(43, 30, 1),
(44, 31, 1),
(46, 33, 1),
(47, 34, 1),
(48, 35, 1),
(49, 36, 1),
(52, 21, 2),
(53, 22, 2),
(54, 23, 2),
(55, 32, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2021-04-12 08:19:50', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2021-04-12 08:19:50', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2021-04-12 08:19:50', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2021-04-12 08:19:50', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2021-04-12 08:19:50', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2021-04-12 08:19:50', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2021-04-12 08:19:50', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2021-04-12 08:19:50', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2021-04-12 08:19:50', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2021-04-12 08:19:50', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2021-04-12 08:19:50', NULL, NULL),
(12, 'Alokasi Anggaran', 'fa fa-bank', 'orders_detail', 'orders_detail', 'AdminOrdersDetailController', 0, 0, '2021-04-12 19:53:48', NULL, '2021-04-12 20:15:55'),
(13, 'Jenis Mata Anggaran', 'fa fa-cog', 'mata_anggarans', 'mata_anggarans', 'AdminMataAnggaransController', 0, 0, '2021-04-12 20:08:13', NULL, '2021-04-12 20:15:52'),
(14, 'Mata Anggaran', 'fa fa-th-list', 'mata_anggarans14', 'mata_anggarans', 'AdminMataAnggarans14Controller', 0, 0, '2021-04-12 20:18:49', NULL, '2021-04-12 20:20:06'),
(15, 'Jenis Mata Anggaran', 'fa fa-glass', 'mata_anggarans15', 'mata_anggarans', 'AdminMataAnggarans15Controller', 0, 0, '2021-04-12 20:23:44', NULL, '2021-04-12 20:27:43'),
(16, 'Jenis Mata Anggaran', 'fa fa-th-list', 'mata_anggarans16', 'mata_anggarans', 'AdminMataAnggarans16Controller', 0, 0, '2021-04-12 20:27:58', NULL, '2021-04-12 20:31:49'),
(17, 'Jenis Mata Anggaran', 'fa fa-th-list', 'mata_anggarans17', 'mata_anggarans', 'AdminMataAnggarans17Controller', 0, 0, '2021-04-12 20:32:03', NULL, '2021-04-12 20:40:24'),
(18, 'Mata Anggaran Non Otomasi', 'fa fa-th-list', 'non_otomasi', 'non_otomasi', 'AdminNonOtomasiController', 0, 0, '2021-04-12 20:33:20', NULL, '2021-04-15 21:23:52'),
(19, 'Mata Anggaran Otomasi', 'fa fa-th-list', 'otomasi', 'otomasi', 'AdminOtomasiController', 0, 0, '2021-04-12 20:33:58', NULL, '2021-04-15 21:23:45'),
(20, 'Mata Anggaran', 'fa fa-th-list', 'mata_anggarans20', 'mata_anggarans', 'AdminMataAnggarans20Controller', 0, 0, '2021-04-12 20:41:00', NULL, NULL),
(21, 'Unit Kerja', 'fa fa-bank', 'unit_kerjas', 'unit_kerjas', 'AdminUnitKerjasController', 0, 0, '2021-04-12 20:42:27', NULL, NULL),
(22, 'Alokasi Anggaran Investasi', 'fa fa-calendar-plus-o', 'alokasi_anggaran', 'alokasi_anggaran', 'AdminAlokasiAnggaranController', 0, 0, '2021-04-12 21:06:10', NULL, '2021-04-12 21:07:00'),
(23, 'Alokasi Anggaran Investasi', 'fa fa-cart-plus', 'alokasi_anggaran23', 'alokasi_anggaran', 'AdminAlokasiAnggaran23Controller', 0, 0, '2021-04-12 21:07:17', NULL, '2021-04-14 19:48:02'),
(24, 'Products', 'fa fa-product-hunt', 'products', 'products', 'AdminProductsController', 0, 0, '2021-04-13 00:30:37', NULL, '2021-04-13 00:39:50'),
(25, 'Categories', 'fa fa-search', 'categories', 'categories', 'AdminCategoriesController', 0, 0, '2021-04-13 00:32:18', NULL, '2021-04-14 01:56:43'),
(26, 'Products', 'fa fa-product-hunt', 'products26', 'products', 'AdminProducts26Controller', 0, 0, '2021-04-13 00:45:01', NULL, '2021-04-13 00:50:00'),
(27, 'Products', 'fa fa-product-hunt', 'products27', 'products', 'AdminProducts27Controller', 0, 0, '2021-04-13 00:53:20', NULL, '2021-04-14 01:56:49'),
(28, 'Alokasi Anggaran Investasi', 'fa fa-shopping-bag', 'alokasi_anggaran', 'alokasi_anggaran', 'AdminAlokasiAnggaranController', 0, 0, '2021-04-14 19:53:12', NULL, '2021-04-14 20:29:03'),
(29, 'Alokasi Anggaran Investasi', 'fa fa-bank', 'alokasi_anggaran', 'alokasi_anggaran', 'AdminAlokasiAnggaranController', 0, 0, '2021-04-14 20:35:04', NULL, '2021-04-14 20:47:16'),
(30, 'Alokasi Anggaran Investasi', 'fa fa-cog', 'alokasi_anggaran30', 'alokasi_anggaran', 'AdminAlokasiAnggaran30Controller', 0, 0, '2021-04-14 20:47:40', NULL, '2021-04-15 21:24:01'),
(31, 'Products', 'fa fa-shopping-bag', 'products31', 'products', 'AdminProducts31Controller', 0, 0, '2021-04-14 23:17:30', NULL, '2021-04-15 00:22:06'),
(32, 'Customers', 'fa fa-user', 'customers', 'customers', 'AdminCustomersController', 0, 0, '2021-04-15 00:19:13', NULL, NULL),
(33, 'Products', 'fa fa-glass', 'products33', 'products', 'AdminProducts33Controller', 0, 0, '2021-04-15 00:25:06', NULL, NULL),
(34, 'Orders', 'fa fa-glass', 'orders', 'orders', 'AdminOrdersController', 0, 0, '2021-04-15 00:26:36', NULL, NULL),
(35, 'Alokasi CAPEX', 'fa fa-bank', 'capex', 'capex', 'AdminCapexController', 0, 0, '2021-04-15 20:14:42', NULL, NULL),
(36, 'Request Alokasi Capex', 'fa fa-shopping-bag', 'requests', 'requests', 'AdminRequestsController', 0, 0, '2021-04-15 20:19:21', NULL, NULL),
(37, 'Permohonan Izin Penggunaan Anggaran', 'fa fa-inbox', 'izin_anggaran', 'izin_anggaran', 'AdminIzinAnggaranController', 0, 0, '2021-04-16 18:59:57', NULL, NULL),
(38, 'Persetujuan Anggaran', 'fa fa-check-square-o', 'persetujuan_anggaran', 'persetujuan_anggaran', 'AdminPersetujuanAnggaranController', 0, 0, '2021-04-16 19:56:56', NULL, '2021-04-18 23:52:00'),
(39, 'Barang', 'fa fa-star', 'barangs', 'barangs', 'AdminBarangsController', 0, 0, '2021-04-18 20:19:35', NULL, '2021-04-18 23:19:23'),
(40, 'Barangs', 'fa fa-glass', 'barangs40', 'barangs', 'AdminBarangs40Controller', 0, 0, '2021-04-18 20:28:43', NULL, '2021-04-18 23:19:19'),
(41, 'Barang', 'fa fa-glass', 'barangs', 'barangs', 'AdminBarangsController', 0, 0, '2021-04-18 23:19:49', NULL, '2021-04-18 23:23:34'),
(42, 'Barang', 'fa fa-glass', 'barangs42', 'barangs', 'AdminBarangs42Controller', 0, 0, '2021-04-18 23:32:24', NULL, '2021-04-18 23:38:43'),
(43, 'Barang', 'fa fa-glass', 'barangs43', 'barangs', 'AdminBarangs43Controller', 0, 0, '2021-04-18 23:38:55', NULL, NULL),
(44, 'Persetujuan Anggaran', 'fa fa-check-circle', 'persetujuan_anggaran44', 'persetujuan_anggaran', 'AdminPersetujuanAnggaran44Controller', 0, 0, '2021-04-18 23:55:12', NULL, '2021-04-19 00:22:40'),
(45, 'Izin Penggunaan Anggaran', 'fa fa-glass', 'izin_penggunaan_anggaran', 'izin_penggunaan_anggaran', 'AdminIzinPenggunaanAnggaranController', 0, 0, '2021-04-19 00:34:43', NULL, '2021-04-19 00:51:13'),
(46, 'Izin Penggunaan Anggaran', 'fa fa-th-large', 'izin_penggunaan_anggaran46', 'izin_penggunaan_anggaran', 'AdminIzinPenggunaanAnggaran46Controller', 0, 0, '2021-04-19 00:51:30', NULL, '2021-04-19 01:09:03'),
(47, 'Coba', 'fa fa-glass', 'cobas', 'cobas', 'AdminCobasController', 0, 0, '2021-04-19 19:18:50', NULL, '2021-04-19 20:01:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2021-04-12 08:19:50', NULL),
(2, 'member', 0, 'skin-blue', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2021-04-12 08:19:50', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2021-04-12 08:19:50', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2021-04-12 08:19:50', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2021-04-12 08:19:50', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2021-04-12 08:19:50', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2021-04-12 08:19:50', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2021-04-12 08:19:50', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2021-04-12 08:19:50', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2021-04-12 08:19:50', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2021-04-12 08:19:50', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2021-04-12 08:19:50', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(24, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(25, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(26, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(27, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(29, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(30, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
(31, 1, 1, 1, 1, 1, 1, 31, NULL, NULL),
(32, 1, 1, 1, 1, 1, 1, 32, NULL, NULL),
(33, 1, 1, 1, 1, 1, 1, 33, NULL, NULL),
(34, 1, 1, 1, 1, 1, 1, 34, NULL, NULL),
(35, 1, 1, 1, 1, 1, 1, 35, NULL, NULL),
(36, 1, 1, 1, 1, 1, 1, 36, NULL, NULL),
(37, 1, 1, 1, 1, 1, 1, 37, NULL, NULL),
(38, 1, 1, 1, 1, 1, 1, 38, NULL, NULL),
(39, 1, 1, 1, 1, 1, 1, 39, NULL, NULL),
(40, 1, 1, 1, 1, 1, 1, 40, NULL, NULL),
(41, 1, 1, 1, 1, 1, 1, 41, NULL, NULL),
(42, 1, 1, 1, 1, 1, 1, 42, NULL, NULL),
(43, 1, 1, 1, 1, 1, 1, 43, NULL, NULL),
(44, 1, 1, 1, 1, 1, 1, 44, NULL, NULL),
(45, 1, 1, 1, 1, 1, 1, 45, NULL, NULL),
(46, 1, 1, 1, 1, 1, 1, 46, NULL, NULL),
(47, 1, 1, 1, 1, 1, 1, 47, NULL, NULL),
(48, 1, 1, 1, 1, 1, 2, 35, NULL, NULL),
(49, 1, 1, 1, 1, 1, 2, 43, NULL, NULL),
(50, 1, 1, 1, 1, 1, 2, 32, NULL, NULL),
(51, 1, 1, 1, 1, 1, 2, 20, NULL, NULL),
(52, 1, 1, 1, 1, 1, 2, 34, NULL, NULL),
(53, 1, 1, 1, 1, 1, 2, 37, NULL, NULL),
(54, 1, 1, 1, 1, 1, 2, 33, NULL, NULL),
(55, 1, 1, 1, 1, 1, 2, 36, NULL, NULL),
(56, 1, 1, 1, 1, 1, 2, 21, NULL, NULL),
(57, 1, 1, 1, 1, 1, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', '#ffffff', 'text', NULL, 'Input hexacode', '2021-04-12 08:19:50', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', '#141414', 'text', NULL, 'Input hexacode', '2021-04-12 08:19:50', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2021-04/8749451d4d9118350989225deea6656c.jpg', 'upload_image', NULL, NULL, '2021-04-12 08:19:50', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2021-04-12 08:19:50', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2021-04-12 08:19:50', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2021-04-12 08:19:50', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2021-04-12 08:19:50', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2021-04-12 08:19:50', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2021-04-12 08:19:50', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Portal AKT', 'text', NULL, NULL, '2021-04-12 08:19:50', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal, A4', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2021-04-12 08:19:50', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2021-04/61a5f82dae7e16096f1f041cb6e77ae7.png', 'upload_image', NULL, NULL, '2021-04-12 08:19:50', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2021-04/46c63fbff8298e03001b047cc4a7e9d3.png', 'upload_image', NULL, NULL, '2021-04-12 08:19:50', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2021-04-12 08:19:50', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2021-04-12 08:19:50', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2021-04-12 08:19:50', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mata Anggaran', 'mata-anggaran', '2021-04-13 01:04:18', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, '93563999642edce386be8d845ada5e13', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Mata Anggaran\",\"icon\":\"business-outline\",\"color\":\"bg-red\",\"link\":\"Mata Anggaran\",\"sql\":\"SELECT * FROM `mata_anggarans`\"}', '2021-04-13 01:04:24', NULL),
(2, 1, '0d73a489cbec4057152d37d1b6f15db4', 'table', 'area2', 0, 'Untitled', NULL, '2021-04-13 01:10:58', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$pnRAEm9zoYxi/XYI30BYH.OrHfh2wZOejMjfu6CWCOHQsBDQSUI6i', 1, '2021-04-12 08:19:49', NULL, 'Active'),
(2, 'Fiqqi Nurrakhman', 'uploads/1/2021-04/jellyfish.jpg', 'fiqqirahman@gmail.com', '$2y$10$xs3upr9ZnFHpMreZ2oDqO.YdjSEec85FscqplIDH7wcNctoD1AqRS', 1, '2021-04-12 08:21:32', '2021-04-12 08:22:49', NULL),
(4, 'Budi', 'uploads/2/2021-04/chrysanthemum.jpg', 'Budi@gmail.com', '$2y$10$WIG1LjcDnsPs0fkEWAMoeOqkseJ5l5gQ8LGvIAjN.B014R.Bl0g2y', 2, '2021-04-20 23:14:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cobas`
--

CREATE TABLE `cobas` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_cms_users` int(11) NOT NULL,
  `barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cobas`
--

INSERT INTO `cobas` (`id`, `created_at`, `id_cms_users`, `barang`) VALUES
(1, '2021-04-19 19:33:39', 0, 11111),
(2, '2021-04-19 19:35:56', 2, 211321),
(3, '2021-04-19 19:36:22', 2, 111);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `created_at`, `name`) VALUES
(1, '2021-04-15 00:20:02', 'fiqqi'),
(2, '2021-04-15 00:20:07', 'budi'),
(3, '2021-04-20 03:21:27', 'ajunggg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `forums`
--

CREATE TABLE `forums` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `izin_anggaran`
--

CREATE TABLE `izin_anggaran` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `no_memo` varchar(255) NOT NULL,
  `perihal` varchar(225) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi` text NOT NULL,
  `hps` int(11) NOT NULL,
  `upload` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `izin_anggaran`
--

INSERT INTO `izin_anggaran` (`id`, `created_at`, `no_memo`, `perihal`, `tanggal`, `deskripsi`, `hps`, `upload`) VALUES
(2, '2021-04-16 19:31:49', '001/MMO/AKT/I/2021', 'Permohonan Izin Penggunaan Anggaran Laptop', '2021-01-15', 'Laptop', 13000000, 'uploads/2/2021-04/flow.xlsx'),
(3, '2021-04-16 19:47:26', '025/MMO/AKT/II/2021', 'Permohonan Izin Penggunaan Anggaran Antasena', '2021-02-20', 'Antasena', 123456789, 'uploads/2/2021-04/flow.xlsx'),
(4, '2021-04-16 19:48:30', '027/MMO/AKT/II/2021', 'Permohonan Izin Penggunaan Anggaran Printer', '2021-02-20', 'Printer', 12345678, 'uploads/2/2021-04/flow.xlsx'),
(5, '2021-04-16 19:49:59', '028/MMO/AKT/II/2021', 'Permohonan Izin Penggunaan Anggaran Pengembangan Aplikasi Antasena', '2021-02-28', 'Pengembangan Aplikasi Antasena', 12345678, 'uploads/2/2021-04/whatsapp_image_2021_02_01_at_152342.jpeg'),
(6, '2021-04-19 00:17:42', 'asdadasdsad', 'Contoh memorandum', '2021-04-19', 'sdadadsad', 21321, 'uploads/2/2021-04/tracker_noncore.xlsx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentars`
--

CREATE TABLE `komentars` (
  `id` int(11) NOT NULL,
  `konten` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `forum_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_anggarans`
--

CREATE TABLE `mata_anggarans` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mata_anggaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mata_anggarans`
--

INSERT INTO `mata_anggarans` (`id`, `created_at`, `mata_anggaran`) VALUES
(5, '2021-04-12 20:41:32', 'Tanah'),
(6, '2021-04-12 20:41:38', 'Gedung'),
(7, '2021-04-12 20:41:40', 'Peralatan & Perabotan'),
(8, '2021-04-12 20:41:48', 'Kendaraan'),
(9, '2021-04-15 20:03:49', 'Otomasi - Hardware'),
(10, '2021-04-15 20:03:59', 'Otomasi - Software'),
(11, '2021-04-15 20:04:50', 'Non Otomasi - Electronic'),
(12, '2021-04-15 20:05:08', 'Non Otomasi - Non Electronic');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_08_07_145904_add_table_cms_apicustom', 1),
(4, '2016_08_07_150834_add_table_cms_dashboard', 1),
(5, '2016_08_07_151210_add_table_cms_logs', 1),
(6, '2016_08_07_151211_add_details_cms_logs', 1),
(7, '2016_08_07_152014_add_table_cms_privileges', 1),
(8, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(9, '2016_08_07_152320_add_table_cms_settings', 1),
(10, '2016_08_07_152421_add_table_cms_users', 1),
(11, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(12, '2016_08_07_154624_add_table_cms_moduls', 1),
(13, '2016_08_17_225409_add_status_cms_users', 1),
(14, '2016_08_20_125418_add_table_cms_notifications', 1),
(15, '2016_09_04_033706_add_table_cms_email_queues', 1),
(16, '2016_09_16_035347_add_group_setting', 1),
(17, '2016_09_16_045425_add_label_setting', 1),
(18, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(19, '2016_10_01_141740_add_method_type_apicustom', 1),
(20, '2016_10_01_141846_add_parameters_apicustom', 1),
(21, '2016_10_01_141934_add_responses_apicustom', 1),
(22, '2016_10_01_144826_add_table_apikey', 1),
(23, '2016_11_14_141657_create_cms_menus', 1),
(24, '2016_11_15_132350_create_cms_email_templates', 1),
(25, '2016_11_15_190410_create_cms_statistics', 1),
(26, '2016_11_17_102740_create_cms_statistic_components', 1),
(27, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `non_otomasi`
--

CREATE TABLE `non_otomasi` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `non_otomasi`
--

INSERT INTO `non_otomasi` (`id`, `name`) VALUES
(1, 'Electronic'),
(2, 'Non Electronic');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `customers_id` int(11) NOT NULL,
  `order_number` varchar(128) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `customers_id`, `order_number`, `total`) VALUES
(5, '2021-04-19 00:16:01', 1, '00003', 40000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `discount` double NOT NULL,
  `qty` double NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `created_at`, `orders_id`, `products_id`, `price`, `discount`, `qty`, `subtotal`) VALUES
(1, '2021-04-15 07:58:36', 4, 9, 200000, 0, 40, 8000000),
(2, '2021-04-19 07:16:01', 5, 10, 20000, 0, 2, 40000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `otomasi`
--

CREATE TABLE `otomasi` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `otomasi`
--

INSERT INTO `otomasi` (`id`, `name`) VALUES
(1, 'Hardware'),
(2, 'Software');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `persetujuan_anggaran`
--

CREATE TABLE `persetujuan_anggaran` (
  `id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `memo` varchar(255) NOT NULL,
  `perihal_` varchar(255) NOT NULL,
  `upload_` varchar(255) NOT NULL,
  `tanggal_persetujuan` date NOT NULL,
  `upload_persetujuan` varchar(255) NOT NULL,
  `status` varchar(25) DEFAULT 'PENDING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `persetujuan_anggaran`
--

INSERT INTO `persetujuan_anggaran` (`id`, `created_at`, `memo`, `perihal_`, `upload_`, `tanggal_persetujuan`, `upload_persetujuan`, `status`) VALUES
(NULL, '2021-04-19 00:02:59', '2', '3', '2', '2021-04-19', 'uploads/2/2021-04/tracker_noncore.xlsx', 'PENDING');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `created_at`, `name`, `price`) VALUES
(9, '2021-04-15 00:25:31', 'Sepatu', 200000),
(10, '2021-04-15 00:25:39', 'sandal', 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `unit_kerja_id` int(11) NOT NULL,
  `request_number` varchar(25) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `requests`
--

INSERT INTO `requests` (`id`, `created_at`, `unit_kerja_id`, `request_number`, `total`) VALUES
(9, '2021-04-20 23:21:21', 2, '001', 4800);

-- --------------------------------------------------------

--
-- Struktur dari tabel `requests_detail`
--

CREATE TABLE `requests_detail` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `request_id` int(11) NOT NULL,
  `capex_id` int(11) NOT NULL,
  `alokasi` double NOT NULL,
  `pengurangan` double DEFAULT NULL,
  `penambahan` double DEFAULT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `requests_detail`
--

INSERT INTO `requests_detail` (`id`, `created_at`, `request_id`, `capex_id`, `alokasi`, `pengurangan`, `penambahan`, `subtotal`) VALUES
(1, '2021-04-16 04:34:12', 4, 12, 50, 9, 0, 491),
(2, '2021-04-16 04:38:40', 5, 5, 0, 0, 0, 0),
(3, '2021-04-16 04:38:40', 5, 6, 0, 0, 0, 0),
(4, '2021-04-16 04:38:40', 5, 7, 90, 0, 0, 900),
(5, '2021-04-16 04:38:40', 5, 8, 0, 0, 0, 0),
(6, '2021-04-16 04:38:40', 5, 9, 9, 9, 0, 81),
(7, '2021-04-16 04:38:40', 5, 10, 5, 5, 0, 45),
(8, '2021-04-16 04:38:40', 5, 11, 6, 6, 0, 54),
(9, '2021-04-16 04:38:40', 5, 12, 200, 0, 0, 2000),
(10, '2021-04-16 09:00:00', 6, 12, 50, 5, 0, 495),
(11, '2021-04-19 07:46:50', 7, 11, 222, 2, 0, 2218),
(12, '2021-04-21 06:21:21', 9, 5, 600, NULL, NULL, 600),
(13, '2021-04-21 06:21:21', 9, 6, 1000, NULL, NULL, 1000),
(14, '2021-04-21 06:21:21', 9, 7, 300, NULL, NULL, 300),
(15, '2021-04-21 06:21:21', 9, 8, 500, NULL, NULL, 500),
(16, '2021-04-21 06:21:21', 9, 9, 500, NULL, NULL, 500),
(17, '2021-04-21 06:21:21', 9, 10, 400, NULL, NULL, 400),
(18, '2021-04-21 06:21:21', 9, 11, 500, NULL, NULL, 500),
(19, '2021-04-21 06:21:21', 9, 12, 1000, NULL, NULL, 1000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit_kerjas`
--

CREATE TABLE `unit_kerjas` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `unit_kerja` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `unit_kerjas`
--

INSERT INTO `unit_kerjas` (`id`, `created_at`, `unit_kerja`) VALUES
(1, '2021-04-12 20:43:18', '900 -  Grup Akutansi dan Keuangan'),
(2, '2021-04-12 20:43:31', '400 - Kantor Layanan Kebayoran baru'),
(3, '2021-04-12 20:43:50', '429 - Kantor Layanan Fatmawati');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alokasi_anggaran`
--
ALTER TABLE `alokasi_anggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `capex`
--
ALTER TABLE `capex`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cobas`
--
ALTER TABLE `cobas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `izin_anggaran`
--
ALTER TABLE `izin_anggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komentars`
--
ALTER TABLE `komentars`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mata_anggarans`
--
ALTER TABLE `mata_anggarans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `non_otomasi`
--
ALTER TABLE `non_otomasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `otomasi`
--
ALTER TABLE `otomasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `requests_detail`
--
ALTER TABLE `requests_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `unit_kerjas`
--
ALTER TABLE `unit_kerjas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alokasi_anggaran`
--
ALTER TABLE `alokasi_anggaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `capex`
--
ALTER TABLE `capex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT untuk tabel `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `cobas`
--
ALTER TABLE `cobas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `izin_anggaran`
--
ALTER TABLE `izin_anggaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `komentars`
--
ALTER TABLE `komentars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mata_anggarans`
--
ALTER TABLE `mata_anggarans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `non_otomasi`
--
ALTER TABLE `non_otomasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `otomasi`
--
ALTER TABLE `otomasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `requests_detail`
--
ALTER TABLE `requests_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `unit_kerjas`
--
ALTER TABLE `unit_kerjas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
