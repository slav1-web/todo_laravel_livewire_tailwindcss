-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 23, 2024 lúc 02:27 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_todos`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `todos`
--

INSERT INTO `todos` (`id`, `name`, `completed`, `created_at`, `updated_at`) VALUES
(8, '🎓 Study', 0, '2024-04-22 23:22:58', '2024-04-22 23:25:35'),
(9, '😴 Sleep', 0, '2024-04-22 23:23:05', '2024-04-22 23:27:26'),
(10, '🛒 Shopping', 0, '2024-04-22 23:24:23', '2024-04-22 23:27:23'),
(11, '📚 Work', 0, '2024-04-22 23:24:36', '2024-04-22 23:24:36'),
(12, '📞 Call mom', 0, '2024-04-22 23:24:55', '2024-04-22 23:24:55'),
(13, ' 🍳 Breakfast', 1, '2024-04-22 23:26:01', '2024-04-22 23:29:28'),
(14, '🥗 Lunch', 0, '2024-04-22 23:28:04', '2024-04-22 23:28:04'),
(15, '🍲 Dinner', 1, '2024-04-22 23:28:14', '2024-04-23 05:23:48'),
(16, '📅 Finish project', 1, '2024-04-22 23:28:27', '2024-04-22 23:28:29'),
(19, '👤 Làm người', 1, '2024-04-23 05:25:46', '2024-04-23 05:25:50');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
