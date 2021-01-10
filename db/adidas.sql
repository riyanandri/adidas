-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2021 pada 13.38
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adidas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart_products`
--

CREATE TABLE `cart_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `category_name` varchar(250) DEFAULT NULL COMMENT 'last edited category name',
  `name` varchar(250) DEFAULT NULL COMMENT 'last edited product name',
  `description` text DEFAULT NULL COMMENT 'last edited product description',
  `price` float DEFAULT NULL COMMENT 'last edited price',
  `images` text DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `slug` varchar(50) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `slug`, `name`, `description`, `created_at`, `updated_at`) VALUES
(4, 0, 'basketball', 'Basketball', 'Adidas Shoes for Basketball', '2021-01-10 05:58:05', '2021-01-10 05:58:05'),
(5, 0, 'football', 'Football', 'Adidas Shoes for Football', '2021-01-10 05:58:21', '2021-01-10 05:58:21'),
(6, 0, 'running', 'Running', 'Adidas Shoes for Running Sports', '2021-01-10 06:14:03', '2021-01-10 06:36:10'),
(7, 0, 'originals', 'Originals', 'Adidas Shoes Originals', '2021-01-10 06:17:32', '2021-01-10 06:36:35'),
(8, 0, 'neo', 'Neo', 'Adidas Neo Shoes', '2021-01-10 06:22:05', '2021-01-10 06:36:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(8) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL COMMENT 'User Order Name',
  `address` text DEFAULT NULL COMMENT 'User Order Address',
  `total_price` float UNSIGNED DEFAULT NULL,
  `payment` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_products`
--

CREATE TABLE `order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `category_name` varchar(250) DEFAULT NULL COMMENT 'last edited category name',
  `name` varchar(250) DEFAULT NULL COMMENT 'last edited product name',
  `description` text DEFAULT NULL COMMENT 'last edited product description',
  `price` float DEFAULT NULL COMMENT 'last edited price',
  `images` text DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `slug` varchar(50) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` float DEFAULT NULL,
  `images` text DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `slug`, `name`, `description`, `price`, `images`, `quantity`, `created_at`, `updated_at`) VALUES
(13, 5, 'nemeziz-firm-ground-boots-orange', 'Nemeziz Firm Ground Boots Orange', '', 1000000, '[\"http://localhost/adidas/public/images/products/nemeziz-firm-ground-boots-orange-20210110130156-0.jpg\"]', 5, '2021-01-10 06:01:56', '2021-01-10 06:05:28'),
(14, 5, 'copa-firm-ground-boots-brown', 'Copa Firm Ground Boots Brown', 'Size 39 - 44', 800000, '[\"http://localhost/adidas/public/images/products/copa-firm-ground-boots-brown-20210110130451-0.jpg\"]', 6, '2021-01-10 06:04:51', '2021-01-10 06:04:51'),
(15, 5, 'copa-firm-ground-boots', 'Copa Firm Ground Boots', '', 900000, '[\"http://localhost/adidas/public/images/products/copa-firm-ground-boots-20210110130611-0.jpg\"]', 5, '2021-01-10 06:06:11', '2021-01-10 06:06:11'),
(16, 5, 'ghosted-firm-ground-boots-white', 'X Ghosted Firm Ground Boots White', '', 1200000, '[\"http://localhost/adidas/public/images/products/ghosted-firm-ground-boots-white-20210110130721-0.jpg\"]', 5, '2021-01-10 06:07:21', '2021-01-10 06:07:21'),
(18, 5, 'ghosted-laceless-firm-ground-boots', 'X Ghosted Laceless Firm Ground Boots', '', 1300000, '[\"http://localhost/adidas/public/images/products/ghosted-laceless-firm-ground-boots-20210110130903-0.jpg\"]', 5, '2021-01-10 06:09:03', '2021-01-10 06:09:03'),
(19, 4, 'court-vision', 'Court Vision', '', 1500000, '[\"http://localhost/adidas/public/images/products/court-vision-20210110131154-0.jpg\"]', 5, '2021-01-10 06:11:54', '2021-01-10 06:11:54'),
(20, 4, 'rose-black', 'D Rose Black', '', 1200000, '[\"http://localhost/adidas/public/images/products/rose-black-20210110131222-0.jpg\"]', 5, '2021-01-10 06:12:22', '2021-01-10 06:12:22'),
(21, 4, 'rose-red', 'D Rose Red', '', 1300000, '[\"http://localhost/adidas/public/images/products/rose-red-20210110131248-0.jpg\"]', 5, '2021-01-10 06:12:48', '2021-01-10 06:12:48'),
(22, 4, 'dame-shoes', 'Dame 6 Shoes', '', 1800000, '[\"http://localhost/adidas/public/images/products/dame-shoes-20210110131318-0.jpg\"]', 5, '2021-01-10 06:13:18', '2021-01-10 06:13:18'),
(23, 4, 'harden-vol', 'Harden Vol 4', '', 2000000, '[\"http://localhost/adidas/public/images/products/harden-vol-20210110131342-0.jpg\"]', 5, '2021-01-10 06:13:42', '2021-01-10 06:13:42'),
(24, 6, 'edge-black', 'Edge XT Black', '', 1500000, '[\"http://localhost/adidas/public/images/products/edge-black-20210110131457-0.jpg\"]', 5, '2021-01-10 06:14:57', '2021-01-10 06:14:57'),
(25, 6, 'edge-white', 'Edge XT White', '', 1500000, '[\"http://localhost/adidas/public/images/products/edge-white-20210110131518-0.jpg\"]', 5, '2021-01-10 06:15:18', '2021-01-10 06:15:18'),
(26, 6, 'x9000l', 'X9000L', '', 1800000, '[\"http://localhost/adidas/public/images/products/x9000l-20210110131537-0.jpg\"]', 5, '2021-01-10 06:15:37', '2021-01-10 06:15:37'),
(27, 6, 'x900', 'X900L 4', '', 1200000, '[\"http://localhost/adidas/public/images/products/x900-20210110131601-0.jpg\"]', 5, '2021-01-10 06:16:01', '2021-01-10 06:16:01'),
(28, 6, 'x9000', 'X9000L 1', '', 2200000, '[\"http://localhost/adidas/public/images/products/x9000-20210110131621-0.jpg\"]', 5, '2021-01-10 06:16:21', '2021-01-10 06:16:21'),
(29, 7, 'star-wars-v2', 'Star Wars NMD V2', '', 3000000, '[\"http://localhost/adidas/public/images/products/star-wars-v2-20210110131836-0.jpg\"]', 5, '2021-01-10 06:18:36', '2021-01-10 06:18:43'),
(30, 7, 'stan-smith', 'Stan Smith', '', 1200000, '[\"http://localhost/adidas/public/images/products/stan-smith-20210110131904-0.jpg\"]', 5, '2021-01-10 06:19:04', '2021-01-10 06:19:04'),
(31, 7, 'f-x9300-r1', 'FX9300 NMD R1', '', 1540000, '[\"http://localhost/adidas/public/images/products/f-x9300-r1-20210110131948-0.jpg\"]', 5, '2021-01-10 06:19:48', '2021-01-10 06:20:27'),
(32, 7, 'r1', 'NMD R1', '', 1540000, '[\"http://localhost/adidas/public/images/products/r1-20210110132019-0.jpg\"]', 5, '2021-01-10 06:20:19', '2021-01-10 06:20:19'),
(33, 7, 'continental', 'Continental 80', '', 1280000, '[\"http://localhost/adidas/public/images/products/continental-20210110132101-0.jpg\"]', 5, '2021-01-10 06:21:01', '2021-01-10 06:21:01'),
(34, 8, 'asweetrain', 'Asweetrain', '', 1000000, '[\"http://localhost/adidas/public/images/products/asweetrain-20210110132243-0.jpg\"]', 5, '2021-01-10 06:22:43', '2021-01-10 06:22:43'),
(35, 8, 'asweetrain-blue', 'Asweetrain Blue', '', 1000000, '[\"http://localhost/adidas/public/images/products/asweetrain-blue-20210110132308-0.jpg\"]', 5, '2021-01-10 06:23:08', '2021-01-10 06:23:08'),
(36, 8, 'fluidstreet', 'Fluidstreet', '', 950000, '[\"http://localhost/adidas/public/images/products/fluidstreet-20210110132334-0.jpg\"]', 5, '2021-01-10 06:23:34', '2021-01-10 06:23:34'),
(37, 8, 'response-sr', 'Response SR', '', 1000000, '[\"http://localhost/adidas/public/images/products/response-sr-20210110132402-0.jpg\"]', 5, '2021-01-10 06:24:02', '2021-01-10 06:24:02');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cart_products`
--
ALTER TABLE `cart_products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `cart_products`
--
ALTER TABLE `cart_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
