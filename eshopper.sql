-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2020 at 07:19 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshopper`
--

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
(1, '2020_08_16_041146_create_tbl_admin_table', 1),
(2, '2020_08_30_183949_create_tbl_category_table', 2),
(3, '2020_09_11_172446_create_manufacture_table', 3),
(4, '2020_09_11_205646_create_tbl_products_table', 4),
(5, '2020_09_28_175956_create_tbl_slider_table', 5),
(6, '2020_10_14_080231_create_tbl_customer_table', 6),
(7, '2020_10_14_151014_create_tbl_shipping_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(9, 'palashneub@gmail.com', 'c839338292621c2b839f1cab161a7c97', 'Palash Barman', '01776790889', NULL, NULL),
(45, 'mobinahmed102345@gmail.com', '32c713070f06896f87335210afdb8acb', 'Mobin Ahmed', '01887356842', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(15, 'men', 'men category', 1, NULL, NULL),
(19, 'laptop', 'laptop category', 1, NULL, NULL),
(22, 'old', 'old category', 1, NULL, NULL),
(23, 'child', 'child category', 1, NULL, NULL),
(24, 'electronics', 'electronics category', 1, NULL, NULL),
(25, 'phone', 'phone category', 1, NULL, NULL),
(26, 'other', 'other category', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `mobile_number`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Mobin Ahmed', 'mobinahmed102345@gmail.com', '01314890701', '32c713070f06896f87335210afdb8acb', NULL, NULL),
(2, 'Palash', 'palashneub@gmail.com', '01776790889', 'c839338292621c2b839f1cab161a7c97', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacture`
--

CREATE TABLE `tbl_manufacture` (
  `manufacture_id` int(10) UNSIGNED NOT NULL,
  `manufacture_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_manufacture`
--

INSERT INTO `tbl_manufacture` (`manufacture_id`, `manufacture_name`, `manufacture_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 'Noksha', 'this is the nokhsha', 1, NULL, NULL),
(4, 'Hppppp', 'Hp is good category.', 1, NULL, NULL),
(5, 'iphone', 'costly brand', 1, NULL, NULL),
(6, 'sumsang', 'popular brand', 1, NULL, NULL),
(7, 'easy', 'good brand', 1, NULL, NULL),
(8, 'walton', 'bangladeshi brand', 1, NULL, NULL),
(9, 'Pillips', 'osam', 1, NULL, NULL),
(10, 'lenevo', 'useable', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `product_short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `category_id`, `manufacture_id`, `product_short_description`, `product_long_description`, `product_price`, `product_image`, `product_size`, `product_color`, `publication_status`, `created_at`, `updated_at`) VALUES
(6, 'ntgbthkm;', 16, 2, 'sdfg', 'sd', 33.00, 'image/416232.jpg', '4', 'kk', 1, NULL, NULL),
(7, 'shirt', 15, 7, 'good', 'comfortable', 500.00, 'image/371262.jpg', 'L', 'black', 1, NULL, NULL),
(8, 'Sumsang A20', 25, 6, 'nice phone', 'good feature', 18000.00, 'image/8806.webp', '6', 'black', 1, NULL, NULL),
(10, 'hp', 19, 4, 'good', 'hhnl', 30000.00, 'image/995489.jpg', '14', 'black', 1, NULL, NULL),
(12, 'Philips Iron GC 1424', 24, 9, 'good and nice', 'kkll', 2000.00, 'image/394990.jpg', '5', 'red-white', 1, NULL, NULL),
(13, 'lenevo', 19, 10, 'good', 'cfgh', 28000.00, 'image/432579.jpg', '14', 'white', 1, NULL, NULL),
(14, 'Shirt', 15, 2, 'dfgdjewklfjklej', 'sjfjhgfwhertywhejfwg', 450.00, 'image/242443.jpg', 'xl', 'brown', 1, NULL, NULL),
(15, 'OPPO', 25, 8, 'acghsdfhds', 'sdkfkhdsflkrehaiguhe', 17000.00, 'image/859038.jpg', '4/5', 'blue', 0, NULL, NULL),
(16, 'huddi', 15, 7, 'wkjfhewhfkjbekj', 'ewjhkjewfkjeiulwhl7rywl', 1200.00, 'image/31891.jpg', 'M', 'brown-blue', 1, NULL, NULL),
(17, 'T-shirt', 15, 7, 'hfghjsgfyewteie', 'wehrtil34liuthiu43', 250.00, 'image/408503.jpg', 'M', 'dark-blue', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_mobile_number` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_email`, `shipping_first_name`, `shipping_last_name`, `shipping_address`, `shipping_mobile_number`, `shipping_city`, `created_at`, `updated_at`) VALUES
(1, 'mobinahmed102345@gmail.com', 'Mobin', 'Ahmed', 'Sylhet', '01314890701', 'Sylhet', NULL, NULL),
(2, 'mobinahmed102345@gmail.com', 'Mobin', 'Ahmed', 'Sylhet', '01314890701', 'Sylhet', NULL, NULL),
(3, 'mobinahmed102345@gmail.com', 'Mobin', 'Ahmed', 'Sylhet', '01314890701', 'Sylhet', NULL, NULL),
(4, 'mobinahmed102345@gmail.com', 'Mobin', 'Ahmed', 'Sylhet', '01314890701', 'Sylhet', NULL, NULL),
(5, 'mobinahmed102345@gmail.com', 'Mobin', 'Ahmed', 'Sylhet', '01314890701', 'Sylhet', NULL, NULL),
(6, 'mobinahmed102345@gmail.com', 'Mobin', 'Ahmed', 'Sylhet', '01314890701', 'Sylhet', NULL, NULL),
(7, 'mobinahmed102345@gmail.com', 'Mobin', 'Ahmed', 'Sylhet', '01314890701', 'Sylhet', NULL, NULL),
(8, 'mobinahmed102345@gmail.com', 'Mobin', 'Ahmed', 'Sylhet', '01314890701', 'Sylhet', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(4, 'slider/401351.jpg', '0', NULL, NULL),
(6, 'slider/397893.jpg', '0', NULL, NULL),
(7, 'slider/683120.jpg', '0', NULL, NULL),
(8, 'slider/609878.jpg', '1', NULL, NULL),
(9, 'slider/926590.jpg', '1', NULL, NULL),
(10, 'slider/724931.jpg', '1', NULL, NULL),
(11, 'slider/101250.png', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  ADD PRIMARY KEY (`manufacture_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  MODIFY `manufacture_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
