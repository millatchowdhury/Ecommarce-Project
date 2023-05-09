-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2022 at 04:11 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_ecommerce_8`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
(1, 'Offer', 'offer', NULL, NULL),
(3, 'Promotion', 'promotion', NULL, NULL),
(4, 'Campaign', 'campaign', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_page` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `brand_logo`, `front_page`, `created_at`, `updated_at`) VALUES
(1, 'Zara Man', 'zara-man', 'public/files/brand/zara-man.jpg', 1, NULL, NULL),
(2, 'Plus Point', 'plus-point', 'public/files/brand/plus-point.jpg', 1, NULL, NULL),
(5, 'China', 'china', 'public/files/brand/china.jpg', 1, NULL, NULL),
(6, 'Oneplus', 'oneplus', 'public/files/brand/oneplus.png', 1, NULL, NULL),
(7, 'Nikon', 'nikon', 'public/files/brand/nikon.jpg', 1, NULL, NULL),
(8, 'Apple', 'apple', 'public/files/brand/apple.png', 1, NULL, NULL),
(9, 'Unknown', 'unknown', 'public/files/brand/unknown.jpeg', 1, NULL, NULL),
(10, 'Suzuki', 'suzuki', 'public/files/brand/suzuki.jpg', 1, NULL, NULL),
(11, 'Honda', 'honda', 'public/files/brand/honda.png', 1, NULL, NULL),
(12, 'Bajaj', 'bajaj', 'public/files/brand/bajaj.png', 1, NULL, NULL),
(13, 'Yamaha', 'yamaha', 'public/files/brand/yamaha.png', 1, NULL, NULL),
(14, 'Tvs', 'tvs', 'public/files/brand/tvs.png', 1, NULL, NULL),
(15, 'Samsung', 'samsung', 'public/files/brand/samsung.png', 1, NULL, NULL),
(16, 'Otobi', 'otobi', 'public/files/brand/otobi.jpg', 1, NULL, NULL),
(17, 'Regal', 'regal', 'public/files/brand/regal.png', 1, NULL, NULL),
(18, 'Xiaomi', 'xiaomi', 'public/files/brand/xiaomi.png', 1, NULL, NULL),
(19, 'Huawei', 'huawei', 'public/files/brand/huawei.png', 1, NULL, NULL),
(20, 'Toyota', 'toyota', 'public/files/brand/toyota.jpg', 1, NULL, NULL),
(21, 'Nissan', 'nissan', 'public/files/brand/nissan.jpg', 1, NULL, NULL),
(22, 'Harrier', 'harrier', 'public/files/brand/harrier.png', 1, NULL, NULL),
(23, 'Canon', 'canon', 'public/files/brand/canon.png', 1, NULL, NULL),
(24, 'Oppo', 'oppo', 'public/files/brand/oppo.png', 1, NULL, NULL),
(25, 'Nike', 'nike', 'public/files/brand/nike.jpg', 1, NULL, NULL),
(26, 'Puma', 'puma', 'public/files/brand/puma.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `start_date`, `end_date`, `image`, `status`, `discount`, `month`, `year`, `created_at`, `updated_at`) VALUES
(1, 'March Blast Offer 2022', '2022-03-29', '2022-03-31', 'public/files/campaign/september-blast-offer-2021.png', '1', '20', 'March', '2022', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_product`
--

CREATE TABLE `campaign_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_product`
--

INSERT INTO `campaign_product` (`id`, `campaign_id`, `product_id`, `price`, `created_at`, `updated_at`) VALUES
(2, 1, '3', '39600', NULL, NULL),
(3, 1, '4', '25600', NULL, NULL),
(4, 1, '5', '14800', NULL, NULL),
(5, 1, '7', '1040', NULL, NULL),
(6, 1, '8', '1920', NULL, NULL),
(7, 1, '9', '1000', NULL, NULL),
(8, 1, '10', '280000', NULL, NULL),
(9, 1, '11', '384000', NULL, NULL),
(10, 1, '6', '960', NULL, NULL),
(11, 1, '17', '157600', NULL, NULL),
(12, 1, '18', '960', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_page` int(2) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `icon`, `category_name`, `category_slug`, `home_page`, `created_at`, `updated_at`) VALUES
(2, 'public/files/category/mens-fashion.png', 'Mens Fashion', 'mens-fashion', 1, NULL, '2023-05-06 17:40:35'),
(3, 'public/files/category/women-fashion.png', 'Women Fashion', 'women-fashion', 1, NULL, NULL),
(5, 'public/files/category/electronics.png', 'Electronics', 'electronics', 0, NULL, NULL),
(6, 'public/files/category/furniture.png', 'Furniture', 'furniture', 0, NULL, NULL),
(7, 'public/files/category/vehicle.png', 'Vehicle', 'vehicle', 1, NULL, NULL),
(8, 'public/files/category/sports-outdoor.png', 'Sports & Outdoor', 'sports-outdoor', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `childcategory_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `childcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `category_id`, `subcategory_id`, `childcategory_slug`, `childcategory_name`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'formal-shoe', 'Formal Shoe', NULL, NULL),
(3, 2, 1, 'sneakers', 'Sneakers', NULL, NULL),
(4, 2, 1, 'flat-sandale', 'Flat Sandale', NULL, NULL),
(5, 3, 4, 'heel-shoe', 'Heel Shoe', NULL, NULL),
(7, 2, 2, 'casual-watch', 'Casual watch', NULL, NULL),
(8, 2, 2, 'smart-watch', 'Smart Watch', NULL, NULL),
(9, 3, 4, 'flat-shoe', 'Flat Shoe', NULL, NULL),
(10, 3, 4, 'sandle', 'Sandle', NULL, NULL),
(11, 5, 11, 'iphone', 'Iphone', NULL, NULL),
(12, 5, 11, 'smartphone', 'Smartphone', NULL, NULL),
(13, 5, 11, 'tablet', 'Tablet', NULL, NULL),
(14, 5, 11, 'button-phone', 'Button Phone', NULL, NULL),
(15, 5, 12, 'dslr-camera', 'DSLR camera', NULL, NULL),
(16, 5, 12, 'digital-camera', 'Digital camera', NULL, NULL),
(17, 5, 12, 'action-camera', 'Action camera', NULL, NULL),
(18, 3, 4, 'loafer', 'Loafer', NULL, NULL),
(19, 3, 4, 'sneakers', 'Sneakers', NULL, NULL),
(20, 3, 4, 'converse', 'Converse', NULL, NULL),
(21, 2, 1, 'converse', 'Converse', NULL, NULL),
(22, 7, 13, 'helmet', 'Helmet', NULL, NULL),
(23, 7, 13, 'jacket', 'Jacket', NULL, NULL),
(24, 7, 13, 'globs', 'Globs', NULL, NULL),
(25, 7, 13, '150cc-bike', '150cc Bike', NULL, NULL),
(26, 7, 13, '125cc-bike', '125cc Bike', NULL, NULL),
(27, 2, 16, 'belt', 'Belt', NULL, NULL),
(28, 2, 16, 'wallet', 'Wallet', NULL, NULL),
(29, 2, 16, 'ring', 'Ring', NULL, NULL),
(30, 3, 4, 'formal-shoe', 'Formal Shoe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `coupon_amount` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `valid_date`, `type`, `coupon_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Millat Chowdhury', '2023-10-12', 1, 1000, 'Active', NULL, NULL),
(20, 'lh1500', '2023-07-20', 1, 1500, 'Active', NULL, NULL),
(27, 'Summer500', '2023-07-20', 1, 500, 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_01_132433_create_categories_table', 2),
(5, '2021_05_10_131405_create_subcategories_table', 3),
(6, '2021_05_16_095427_create_childcategories_table', 4),
(7, '2021_05_27_093531_create_brands_table', 5),
(8, '2021_06_08_085543_create_seos_table', 6),
(9, '2021_06_08_111846_create_smtp_table', 7),
(10, '2021_06_09_130302_create_pages_table', 8),
(11, '2021_06_09_133551_create_settings_table', 9),
(12, '2021_06_16_133044_create_products_table', 10),
(13, '2021_06_16_134459_create_warehouses_table', 11),
(14, '2021_06_22_185108_create_coupons_table', 12),
(15, '2021_07_04_181330_create_pickup_point_table', 13),
(16, '2021_08_30_100140_create_reviews_table', 14),
(17, '2021_08_30_112205_create_wishlists_table', 15),
(18, '2021_09_02_181228_create_campaigns_table', 16),
(19, '2021_09_20_134913_create_wbreviews_table', 17),
(20, '2021_09_20_190946_create_shippings_table', 18),
(21, '2021_09_26_143716_create_newsletters_table', 19),
(22, '2021_10_12_134309_create_orders_table', 20),
(23, '2021_10_12_134325_create_order_details_table', 20),
(24, '2021_10_19_182212_create_tickets_table', 21),
(25, '2021_10_26_182438_create_replies_table', 22),
(26, '2021_10_28_104930_create_payment_gateway_bd_table', 23),
(27, '2014_10_12_000000_create_users_table', 24),
(28, '2021_11_01_185202_create_blog_category_table', 25),
(29, '2021_11_01_185250_create_blogs_table', 25),
(30, '2021_11_01_191732_create_contacts_table', 26),
(31, '2022_03_29_072424_create_campaign_product_table', 27),
(32, '2022_09_03_182404_create_notifications_table', 28);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'sohidulislam353@gmail.com', NULL, NULL),
(2, 'Millat Chowdhury18@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('18e92dfd-ffe9-4b44-83ad-7eeabc88ed14', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 1, '{\"order_id\":102}', NULL, '2022-09-03 12:47:07', '2022-09-03 12:47:07'),
('2f2ffad7-2ab9-4b65-babd-e49a631c5cb6', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 1, '{\"order_id\":101}', NULL, '2022-09-03 12:34:54', '2022-09-03 12:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_extra_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `c_name`, `c_phone`, `c_email`, `c_country`, `c_zipcode`, `c_address`, `c_extra_phone`, `c_city`, `subtotal`, `total`, `coupon_code`, `coupon_discount`, `after_discount`, `payment_type`, `tax`, `shipping_charge`, `order_id`, `status`, `date`, `month`, `year`, `created_at`, `updated_at`) VALUES
(1, 2, 'Alester Cook', '016525222222', 'example@gmail.com', 'Bangladesh', '1208', 'Dhaka bangladesh arambag', '01922121225122', 'Dhaka', '3800.00', '3800.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '159312', 0, '17-10-2021', 'October', '2021', NULL, NULL),
(4, 2, 'Alester Cook', '016525222222', 'example@gmail.com', 'Bangladesh', '1208', 'Dhaka bangladesh arambag', '01922121225122', 'Dhaka', '2700.00', '2700.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '572226', 0, '17-10-2021', 'October', '2021', NULL, NULL),
(5, 2, 'Alester Cook', '016525222222', 'example@gmail.com', 'Bangladesh', NULL, 'Dhaka bangladesh arambag', NULL, 'Dhaka', '1800.00', '1800.00', NULL, NULL, NULL, 'Aamarpay', '0', '0', '593312', 1, '28-10-2021', 'October', '2021', NULL, NULL),
(6, 7, 'Sohidul Islam', '01961363543', 'kaktarua@gmail.com', 'Bangladesh', NULL, '132 gandaria dit plot', NULL, 'Dhaka', '2500.00', '2500.00', NULL, NULL, NULL, 'Aamarpay', '0', '0', '491444', 1, '06-12-2021', 'December', '2021', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `single_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `single_price`, `subtotal_price`, `created_at`, `updated_at`) VALUES
(1, 1, 29, 'ladies velvet shoe', 'Army Green', '38', '1', '900', '900', NULL, NULL),
(2, 1, 29, 'ladies velvet shoe', 'Black', '39', '1', '900', '900', NULL, NULL),
(3, 1, 18, 'Mens Leather Belt Golden Frame', 'Black', '120cm', '2', '1000', '2000', NULL, NULL),
(4, 4, 29, 'ladies velvet shoe', 'Army Green', '38', '3', '900', '2700', NULL, NULL),
(5, 5, 29, 'ladies velvet shoe', 'Army Green', '36', '1', '900', '900', NULL, NULL),
(6, 5, 29, 'ladies velvet shoe', 'Army Green', '39', '1', '900', '900', NULL, NULL),
(7, 6, 9, 'Women Best Pinky Shade Converse', 'Black', '37', '2', '1250', '2500', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_position` int(11) DEFAULT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_position`, `page_name`, `page_slug`, `page_title`, `page_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Terms and conditions', 'terms-and-conditions', 'Terms & Condition For Purchasing Our Products', '<ul style=\"box-sizing: inherit; overflow: hidden; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; overflow: hidden; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; overflow: hidden; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><br></li></ul><hr><ul style=\"box-sizing: inherit; overflow: hidden; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li><ul style=\"box-sizing: inherit; overflow: hidden; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; overflow: hidden; margin-right: 0px; margin-left: 0px; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul></ul><ul style=\"box-sizing: inherit; overflow: hidden; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; overflow: hidden; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; overflow: hidden; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul>', NULL, NULL),
(2, 1, 'Privacy Policy', 'privacy-policy', 'Our privacy & Policy', '<ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><br></li></ul><hr><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul>', NULL, NULL),
(3, 1, 'Page Three', 'page-three', 'This is page three', '<ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><br></li></ul><hr><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul>', NULL, NULL),
(4, 1, 'Page Four', 'page-four', 'This is page four', '<ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><br></li></ul><hr><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul>', NULL, NULL),
(5, 1, 'Page Five', 'page-five', 'This is page five', '<ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><br></li></ul><hr><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul>', NULL, NULL),
(6, 1, 'Page Six', 'page-six', 'This is page six', '<ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><br></li></ul><hr><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul>', NULL, NULL),
(7, 2, 'Page Seven', 'page-seven', 'Page Seven', '<ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><br></li></ul><hr><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul>', NULL, NULL);
INSERT INTO `pages` (`id`, `page_position`, `page_name`, `page_slug`, `page_title`, `page_description`, `created_at`, `updated_at`) VALUES
(8, 2, 'Page Eight', 'page-eight', 'Page Eight', '<ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><br></li></ul><hr><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul>', NULL, NULL),
(9, 2, 'Page Nine', 'page-nine', 'Page Nine', '<ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><br></li></ul><hr><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul>', NULL, NULL),
(10, 2, 'Page Ten', 'page-ten', 'This is page ten !', '<ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><br></li></ul><hr><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Abusive users</strong>&nbsp;— Terms and conditions allow you to establish what constitutes appropriate activity on your site or app, so you can remove abusive users and content that violates your guidelines.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Intellectual property theft</strong>&nbsp;— Asserting your claim to the creative assets of your site in your terms and conditions will prevent ownership disputes and copyright infringement.</li></ul><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow: hidden; padding: 0px 0px 0px 3.75em; font-size: 1.1rem; line-height: 1.65; color: rgb(17, 17, 17); font-family: Roboto, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;\"><li style=\"box-sizing: inherit; list-style-type: disc; margin-bottom: 0px;\"><strong style=\"box-sizing: inherit; font-weight: bold;\">Potential litigation</strong>&nbsp;— If a user lodges a legal complaint against your business, showing that they were presented with clear terms and conditions before they used your site will help you immensely in court.</li></ul>', NULL, NULL),
(11, 2, 'Page Eleven', 'page-eleven', 'Page Eleven', '<p>Page Eleven<br></p>', NULL, NULL),
(12, 2, 'Page Twelve', 'page-twelve', 'Page Twelve', '<p>Page Twelve<br></p>', NULL, NULL);

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
-- Table structure for table `payment_gateway_bd`
--

CREATE TABLE `payment_gateway_bd` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateway_bd`
--

INSERT INTO `payment_gateway_bd` (`id`, `gateway_name`, `store_id`, `signature_key`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aamarpay', 'aamarpay', '28c78bb1f45112f5d40b956fe104645a', NULL, NULL, NULL),
(2, 'Surjopay', 'surjopay', '28c78bb1f45112f5d40b956fe104645a', NULL, NULL, NULL),
(3, 'SSL Commerz', NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pickup_point`
--

CREATE TABLE `pickup_point` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pickup_point_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_point_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_point_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_point_phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pickup_point`
--

INSERT INTO `pickup_point` (`id`, `pickup_point_name`, `pickup_point_address`, `pickup_point_phone`, `pickup_point_phone_two`, `created_at`, `updated_at`) VALUES
(1, 'Motijheel Branch', 'Motijheel Arambag Gawsia Center 4th floor', '01905655xxx', '01905655xxx', NULL, NULL),
(3, 'Lalbag Branch', 'Lalbag Kella Front Building 23/12', '01905655xxx', '01905655xxx', NULL, NULL),
(4, 'Banani pickup point', 'Banani 11 xyz address', '01905655xxx', '01905654xxx', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `childcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `pickup_point_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `today_deal` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `product_slider` int(11) DEFAULT 0,
  `product_views` int(11) DEFAULT 0,
  `trendy` int(2) DEFAULT 0,
  `admin_id` int(11) DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `pickup_point_id`, `name`, `slug`, `code`, `unit`, `tags`, `color`, `size`, `video`, `purchase_price`, `selling_price`, `discount_price`, `stock_quantity`, `warehouse`, `description`, `thumbnail`, `images`, `featured`, `today_deal`, `status`, `product_slider`, `product_views`, `trendy`, `admin_id`, `date`, `month`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 2, 5, 1, 'Crocodile formal shoe', 'crocodile-formal-shoe', 'ms-1001', 'pcs', 'formal shoes,mens shoes', 'black,brown,maroon', '38,39,40,41,42,43,44', 'BIt9o4zCWCQ', '2000', '3200', NULL, '100', 'Warehouse 101', '<p>demo<br></p>', 'crocodile-formal-shoe.jpg', '[\"1706835436493219.jpg\",\"1706835436565419.jpg\",\"1706835436640596.jpg\"]', 1, NULL, 0, NULL, 1, NULL, 1, '31-07-2021', 'July', NULL, '2023-09-20 05:21:54'),
(2, 3, 4, 9, 5, 1, 'Women boat mouth shoe', 'women-boat-mouth-shoe', 'ws-1001', 'pcs', 'women shoes', 'black,green,pink', '36,37,38,39,40,41,42', 'BIt9o4zCWCQ', '1000', '1300', '1100', '100', 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</span><br></p>', 'women-boat-mouth-shoe.jpg', '[\"1706886015711414.jpg\"]', 1, 0, 1, 0, 7, 0, 1, '01-08-2021', 'August', NULL, '2023-12-06 06:34:28'),
(3, 5, 11, 12, 6, 1, 'Oneplus smart phone 8/128 variation silver', 'oneplus-8t-8128', 'O-101', 'pcs', 'smartphone,oneplus', 'Silver,Black,Green', NULL, 'BIt9o4zCWCQ', '45000', '49500', '47000', '120', 'Warehouse 101', '<table class=\"has-fixed-layout\" style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; border-spacing: 0px; width: 810px; line-height: 1.5; table-layout: fixed; color: rgb(114, 115, 116); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 15px;\"><tbody style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; line-height: 1.5;\"><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; line-height: 1.5; background-color: rgb(240, 240, 240);\"><td class=\"has-text-align-left\" data-align=\"left\" style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid transparent; outline: none; line-height: 1.5; word-break: break-word;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600; line-height: 1.5;\">Mobile Name</span></td><td class=\"has-text-align-left\" data-align=\"left\" style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid transparent; outline: none; line-height: 1.5; word-break: break-word;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600; line-height: 1.5;\">OnePlus 8T</span></td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; line-height: 1.5; background: rgba(0, 0, 0, 0.03);\"><td class=\"has-text-align-left\" data-align=\"left\" style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid transparent; outline: none; line-height: 1.5; word-break: break-word;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600; line-height: 1.5;\">Phone Status</span></td><td class=\"has-text-align-left\" data-align=\"left\" style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid transparent; outline: none; line-height: 1.5; word-break: break-word;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600; line-height: 1.5;\">Available</span></td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; line-height: 1.5; background-color: rgb(240, 240, 240);\"><td class=\"has-text-align-left\" data-align=\"left\" style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid transparent; outline: none; line-height: 1.5; word-break: break-word;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600; line-height: 1.5;\">Performance</span></td><td class=\"has-text-align-left\" data-align=\"left\" style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid transparent; outline: none; line-height: 1.5; word-break: break-word;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600; line-height: 1.5;\">8/12 GB RAM</span>&nbsp;<em style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; line-height: 1.5;\">Qualcomm Snapdragon 865</em>+</td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; line-height: 1.5; background: rgba(0, 0, 0, 0.03);\"><td class=\"has-text-align-left\" data-align=\"left\" style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid transparent; outline: none; line-height: 1.5; word-break: break-word;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600; line-height: 1.5;\">Storage</span></td><td class=\"has-text-align-left\" data-align=\"left\" style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid transparent; outline: none; line-height: 1.5; word-break: break-word;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600; line-height: 1.5;\">128/256 GB</span>&nbsp;<em style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; line-height: 1.5;\">internal</em></td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; line-height: 1.5; background-color: rgb(240, 240, 240);\"><td class=\"has-text-align-left\" data-align=\"left\" style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid transparent; outline: none; line-height: 1.5; word-break: break-word;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600; line-height: 1.5;\">Camera</span></td><td class=\"has-text-align-left\" data-align=\"left\" style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid transparent; outline: none; line-height: 1.5; word-break: break-word;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600; line-height: 1.5;\">48 MP</span>&nbsp;<em style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; line-height: 1.5;\">Main</em>&nbsp;/&nbsp;<span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600; line-height: 1.5;\">32 MP</span>&nbsp;<em style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; line-height: 1.5;\">Selfie</em></td></tr><tr style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; line-height: 1.5; background: rgba(0, 0, 0, 0.03);\"><td class=\"has-text-align-left\" data-align=\"left\" style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid transparent; outline: none; line-height: 1.5; word-break: break-word;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600; line-height: 1.5;\">Battery Capacity</span></td><td class=\"has-text-align-left\" data-align=\"left\" style=\"padding: 0.5em; margin: 0px; list-style: none; border: 1px solid transparent; outline: none; line-height: 1.5; word-break: break-word;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; font-weight: 600; line-height: 1.5;\">4500 mAh</span>&nbsp;<em style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; line-height: 1.5;\">Li-Polymer</em></td></tr></tbody></table>', 'oneplus-8t-8128.png', '[\"1708800558387775.png\",\"1708800558387775.png\"]', 1, 1, 1, 1, 0, 0, 1, '22-08-2021', 'August', NULL, NULL),
(4, 5, 12, 15, 7, 1, 'Nikon Dex DSLR Camera', 'nikon-dex-dslr-camera', 'N-101', 'pcs', 'dslr camera,nikon camera,best camera', 'Black,White', NULL, NULL, '25000', '32000', '31000', '55', 'Warehouse 101', '<p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Compared to the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Canon_EOS_50D\" title=\"Canon EOS 50D\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">EOS 50D</a>, the following changes have been made, including:</p><ul style=\"list-style-image: url(&quot;/w/skins/Vector/resources/common/images/bullet-icon.svg?d4515&quot;); margin: 0.3em 0px 0px 1.6em; padding: 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><li style=\"margin-bottom: 0.1em;\">Resolution increase to 18.1&nbsp;<a href=\"https://en.wikipedia.org/wiki/Megapixel\" class=\"mw-redirect\" title=\"Megapixel\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">megapixels</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/APS-C\" title=\"APS-C\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">APS-C</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/CMOS_Sensor\" class=\"mw-redirect\" title=\"CMOS Sensor\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">CMOS Sensor</a>&nbsp;(50D has 15.1 megapixels).</li><li style=\"margin-bottom: 0.1em;\">Maximum sensitivity increased to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Film_speed#Current_system:_ISO\" title=\"Film speed\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">ISO</a>&nbsp;6400 (12800 as optional expanded setting) (50D has max 3200 ISO, with 6400 and 12800 as optional expanded settings).</li><li style=\"margin-bottom: 0.1em;\">Video recording, with same controls as the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Canon_EOS_550D\" title=\"Canon EOS 550D\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">550D/Rebel T2i</a>.<ul style=\"list-style-image: url(&quot;/w/skins/Vector/resources/common/images/bullet-icon.svg?d4515&quot;); margin-top: 0.3em; margin-right: 0px; margin-left: 1.6em; padding: 0px;\"><li style=\"margin-bottom: 0.1em;\"><a href=\"https://en.wikipedia.org/wiki/1080p\" title=\"1080p\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1080p</a>&nbsp;Full HD video recording at&nbsp;<a href=\"https://en.wikipedia.org/wiki/24p\" title=\"24p\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">24p</a>, 25p and 30p with drop frame timing.</li><li style=\"margin-bottom: 0.1em;\"><a href=\"https://en.wikipedia.org/wiki/720p\" title=\"720p\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">720p</a>&nbsp;HD video recording at 50p (50&nbsp;<a href=\"https://en.wikipedia.org/wiki/Hertz\" title=\"Hertz\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Hz</a>) and 60p (59.94&nbsp;Hz).</li><li style=\"margin-bottom: 0.1em;\"><a href=\"https://en.wikipedia.org/wiki/480p\" title=\"480p\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">480p</a>&nbsp;ED video recording at 50p (50&nbsp;Hz) and 60p (59.94&nbsp;Hz).</li></ul></li><li style=\"margin-bottom: 0.1em;\">Manual control of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Audio_recording\" class=\"mw-redirect\" title=\"Audio recording\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">audio recording</a>&nbsp;(same as newer&nbsp;<a href=\"https://en.wikipedia.org/wiki/Firmware\" title=\"Firmware\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">firmware</a>&nbsp;on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Canon_EOS_5D_Mark_II\" title=\"Canon EOS 5D Mark II\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">5D MkII</a>).</li><li style=\"margin-bottom: 0.1em;\"><a href=\"https://en.wikipedia.org/wiki/Articulating_screen\" title=\"Articulating screen\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Articulating screen</a>&nbsp;(3.0”) with a slightly higher resolution of 1,040,000 pixels, 288 ppi, in 3:2 ratio (50D has 4:3).<sup id=\"cite_ref-3\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Canon_EOS_60D#cite_note-3\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[3]</a></sup><ul style=\"list-style-image: url(&quot;/w/skins/Vector/resources/common/images/bullet-icon.svg?d4515&quot;); margin-top: 0.3em; margin-right: 0px; margin-left: 1.6em; padding: 0px;\"><li style=\"margin-bottom: 0.1em;\">The 60D screen, unlike that of the 50D, matches the aspect ratio of the sensor.</li></ul></li><li style=\"margin-bottom: 0.1em;\">Lower maximum burst frame rate of 5.3&nbsp;<a href=\"https://en.wikipedia.org/wiki/Frames_per_second\" class=\"mw-redirect\" title=\"Frames per second\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">fps</a>&nbsp;(50D maximum is 6.3&nbsp;fps).</li><li style=\"margin-bottom: 0.1em;\"><a href=\"https://en.wikipedia.org/wiki/Secure_Digital\" class=\"mw-redirect\" title=\"Secure Digital\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">SD/SDHC/SDXC</a>&nbsp;card slot (50D uses&nbsp;<a href=\"https://en.wikipedia.org/wiki/CompactFlash\" title=\"CompactFlash\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">CompactFlash</a>).</li><li style=\"margin-bottom: 0.1em;\">Smaller and lighter&nbsp;<a href=\"https://en.wikipedia.org/wiki/Polycarbonate\" title=\"Polycarbonate\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">polycarbonate</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Resin\" title=\"Resin\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">resin</a>&nbsp;with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Glass_fibre\" class=\"mw-redirect\" title=\"Glass fibre\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">glass fibre</a>&nbsp;on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Aluminium\" title=\"Aluminium\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">aluminium</a>&nbsp;chassis (50D has&nbsp;<a href=\"https://en.wikipedia.org/wiki/Magnesium_alloy\" title=\"Magnesium alloy\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">magnesium alloy</a>&nbsp;body).</li><li style=\"margin-bottom: 0.1em;\">Wireless&nbsp;<a href=\"https://en.wikipedia.org/wiki/Canon_EOS_flash_system\" title=\"Canon EOS flash system\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Speedlite</a>&nbsp;control.</li><li style=\"margin-bottom: 0.1em;\">Lack of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Autofocus\" title=\"Autofocus\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">AF</a>&nbsp;micro-adjustment feature (included in 50D).</li><li style=\"margin-bottom: 0.1em;\">Redesign of controls – multi-controller has been relocated to center of quick control dial; top buttons of 60D control only one setting.</li><li style=\"margin-bottom: 0.1em;\">Locking mode dial.</li><li style=\"margin-bottom: 0.1em;\">Electronic level that can be viewed in the viewfinder, rear&nbsp;<a href=\"https://en.wikipedia.org/wiki/LCD\" class=\"mw-redirect\" title=\"LCD\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">LCD</a>&nbsp;monitor, and top LCD panel.</li><li style=\"margin-bottom: 0.1em;\">LP-E6 battery, as used in the 5D MkII and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Canon_EOS_7D\" title=\"Canon EOS 7D\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">7D</a>.</li><li style=\"margin-bottom: 0.1em;\">Lack of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Prontor-Compur\" title=\"Prontor-Compur\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">PC socket</a>&nbsp;for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Flash_synchronization\" title=\"Flash synchronization\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">flash synchronization</a>.</li><li style=\"margin-bottom: 0.1em;\">External&nbsp;<a href=\"https://en.wikipedia.org/wiki/Shutter_(photography)\" title=\"Shutter (photography)\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">shutter</a>&nbsp;release port changed from \'Canon N3\' socket to 3/32\" (2.5mm)&nbsp;<a href=\"https://en.wikipedia.org/wiki/Tough_rubber-sheathed_cable\" title=\"Tough rubber-sheathed cable\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">TRS</a>&nbsp;pin.</li><li style=\"margin-bottom: 0.1em;\">In-camera&nbsp;<a href=\"https://en.wikipedia.org/wiki/Raw_image_format\" title=\"Raw image format\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">raw</a>&nbsp;development and built-in creative filters and special effects.</li><li style=\"margin-bottom: 0.1em;\">External 3.5mm&nbsp;<b>stereo microphone</b>&nbsp;jack</li></ul>', 'nikon-dex-dslr-camera.jpg', '[\"1708981760658595.jpg\",\"1708981760879996.jpg\"]', 1, NULL, 1, NULL, 6, 1, 1, '24-08-2021', 'August', NULL, '2022-03-29 12:59:17'),
(5, 5, 11, 11, 8, 1, 'HBQ I7S TWS Double Dual Mini Wireless 4.1 Bluetooth Earphone With Power Case - White', 'iphone-6s-464-gb', 'A-125', 'pcs', 'iphone,app;e phone', 'silver,rosegold,black', NULL, NULL, '15500', '18500', NULL, '100', 'Warehouse 101', '<ul style=\"list-style-image: url(&quot;/w/skins/Vector/resources/common/images/bullet-icon.svg?d4515&quot;); margin: 0.3em 0px 0px 1.6em; padding: 0px; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><li style=\"margin-bottom: 0.1em;\">Lower maximum burst frame rate of 5.3&nbsp;<a href=\"https://en.wikipedia.org/wiki/Frames_per_second\" class=\"mw-redirect\" title=\"Frames per second\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">fps</a>&nbsp;(50D maximum is 6.3&nbsp;fps).</li><li style=\"margin-bottom: 0.1em;\"><a href=\"https://en.wikipedia.org/wiki/Secure_Digital\" class=\"mw-redirect\" title=\"Secure Digital\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">SD/SDHC/SDXC</a>&nbsp;card slot (50D uses&nbsp;<a href=\"https://en.wikipedia.org/wiki/CompactFlash\" title=\"CompactFlash\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">CompactFlash</a>).</li><li style=\"margin-bottom: 0.1em;\">Smaller and lighter&nbsp;<a href=\"https://en.wikipedia.org/wiki/Polycarbonate\" title=\"Polycarbonate\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">polycarbonate</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Resin\" title=\"Resin\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">resin</a>&nbsp;with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Glass_fibre\" class=\"mw-redirect\" title=\"Glass fibre\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">glass fibre</a>&nbsp;on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Aluminium\" title=\"Aluminium\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">aluminium</a>&nbsp;chassis (50D has&nbsp;<a href=\"https://en.wikipedia.org/wiki/Magnesium_alloy\" title=\"Magnesium alloy\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">magnesium alloy</a>&nbsp;body).</li><li style=\"margin-bottom: 0.1em;\">Wireless&nbsp;<a href=\"https://en.wikipedia.org/wiki/Canon_EOS_flash_system\" title=\"Canon EOS flash system\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Speedlite</a>&nbsp;control.</li><li style=\"margin-bottom: 0.1em;\">Lack of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Autofocus\" title=\"Autofocus\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">AF</a>&nbsp;micro-adjustment feature (included in 50D).</li><li style=\"margin-bottom: 0.1em;\">Redesign of controls – multi-controller has been relocated to center of quick control dial; top buttons of 60D control only one setting.</li><li style=\"margin-bottom: 0.1em;\">Locking mode dial.</li><li style=\"margin-bottom: 0.1em;\">Electronic level that can be viewed in the viewfinder, rear&nbsp;<a href=\"https://en.wikipedia.org/wiki/LCD\" class=\"mw-redirect\" title=\"LCD\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">LCD</a>&nbsp;monitor, and top LCD panel.</li><li style=\"margin-bottom: 0.1em;\">LP-E6 battery, as used in the 5D MkII and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Canon_EOS_7D\" title=\"Canon EOS 7D\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">7D</a>.</li><li style=\"margin-bottom: 0.1em;\">Lack of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Prontor-Compur\" title=\"Prontor-Compur\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">PC socket</a>&nbsp;for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Flash_synchronization\" title=\"Flash synchronization\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">flash synchronization</a>.</li><li style=\"margin-bottom: 0.1em;\">External&nbsp;<a href=\"https://en.wikipedia.org/wiki/Shutter_(photography)\" title=\"Shutter (photography)\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">shutter</a>&nbsp;release port changed from \'Canon N3\' socket to 3/32\" (2.5mm)&nbsp;<a href=\"https://en.wikipedia.org/wiki/Tough_rubber-sheathed_cable\" title=\"Tough rubber-sheathed cable\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">TRS</a>&nbsp;pin.</li><li style=\"margin-bottom: 0.1em;\">In-camera&nbsp;<a href=\"https://en.wikipedia.org/wiki/Raw_image_format\" title=\"Raw image format\" style=\"color: rgb(6, 69, 173); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">raw</a>&nbsp;development and built-in creative filters and special effects.</li><li style=\"margin-bottom: 0.1em;\">External 3.5mm&nbsp;<b>stereo microphone</b>&nbsp;jack</li></ul>', 'iphone-6s-464-gb.jpg', '[\"1708982026822183.jpg\",\"1708982026904494.jpg\",\"1708982026962026.jpg\"]', 1, 0, 1, NULL, 1, 1, 1, '24-08-2021', 'August', NULL, '2022-03-29 02:47:13'),
(6, 3, 4, 9, 5, 1, 'Women best converse with jeans', 'women-best-converse-with-jeans', 'l-1001', 'pcs', 'women shoes,ladies shoes,ladies converse', 'Black ,White', '36,37,38,39,40', 'gLJ5Xay29Gs', '750', '1200', NULL, '120', 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', 'women-best-converse-with-jeans.jpg', '[\"1709502842830428.jpg\",\"1709502842896000.jpg\"]', 1, NULL, 1, NULL, 1, 1, 1, '30-08-2021', 'August', NULL, '2023-09-03 11:57:49'),
(7, 3, 4, 9, 9, 1, 'Women party glezzy shoes', 'women-party-glezzy-shoes', 'lp-1012', 'pair', 'ladies shoe,women party shoe', 'Black,Silver,Golden', '36 ,37,38,39,40,41', 'gLJ5Xay29Gs', '550', '1300', '1100', '55', 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</span><br></p>', 'women-party-glezzy-shoes.jpg', '[\"1709502968513587.jpg\",\"1709502968672901.jpg\"]', 1, 0, 1, NULL, 3, 1, 1, '30-08-2021', 'August', NULL, '2023-09-02 11:47:42'),
(8, 3, 4, 9, 5, 1, 'Ladies loafer shoes with jeans', 'ladies-loafer-shoes-with-jeans', 'lp-1005', 'pair', 'loadies hsoe,women loafer', 'Black,White,Cream,Golden', '36,37,38,39,40', 'gLJ5Xay29Gs', '1000', '2400', '2000', '80', 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</span><br></p>', 'ladies-loafer-shoes-with-jeans.jpg', '[\"1709503199250319.jpg\",\"1709503199365582.jpg\"]', 1, NULL, 1, NULL, 7, 1, 1, '30-08-2021', 'August', NULL, '2023-09-14 08:09:56'),
(9, 3, 4, 20, 5, 3, 'Women Best Pinky Shade Converse', 'women-best-pinky-shade-converse', 'wc-101', 'pair', 'converse ladies,women converse', 'White,Black', '36,37,38,39,40,41', 'gLJ5Xay29Gs', '750', '1250', NULL, '120', 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</span><br></p>', 'women-best-pinky-shade-converse.jpg', '[\"1709503490893290.jpg\",\"1709503491005223.jpg\"]', 1, 0, 1, NULL, 17, 1, 1, '30-08-2021', 'August', NULL, '2023-09-19 08:16:40'),
(10, 7, 13, 25, 10, 1, 'Suzuki GSX R150 , 2021  Model', 'suzuki-gsx-r150-2023-model', 'B-101', 'pcs', 'honda,bike,motorbike', 'Yellow,Red,Blue', NULL, 'B_PridhV-3Y', '290000', '350000', NULL, '120', 'Warehouse 101', '<table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Top Features</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Engine Type</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">4-Stroke, 1-cylinder, Air cooled</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Displacement</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">155 cc</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Max Power</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">13.6 PS @ 8000 rpm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Max Torque</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">13.8 Nm @ 6000 rpm</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">No. of Cylinders</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">1</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Cooling System</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Air Cooled</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Valve Per Cylinder</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">2</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Drive Type</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Chain Drive</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Starting</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Self Start Only</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Fuel Supply</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Fuel Injection</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Transmission</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Manual</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Gear Box</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">5 Speed</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Bore</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">56 mm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Stroke</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">62.9 mm</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Emission Type</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">bs6</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Safety &amp; Features</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">ABS</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Single Channel / Non ABS</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Console</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Pass Switch</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Clock</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Adjustable Windscreen</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Additional Features</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Twin Muffler, Aerodynamic Design</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Passenger Footrest</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Chassis &amp; Suspension</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Body Type</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Sports Bikes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front Suspension</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Telescopic</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Rear Suspension</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Swing arm</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Overall Dimensions</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Length</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">2025 mm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Width</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">715 mm</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Height</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">1035 mm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Fuel Capacity</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">12 L</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Saddle Height</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">795 mm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Ground Clearance</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">165 mm</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Wheelbase</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">1340 mm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Kerb Weight</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">148 kg</td></tr></tbody></table>', 'suzuki-gsx-r150-2023-model.jpg', '[\"1709999081795247.jpg\",\"1709999081894937.jpg\",\"1709999081991863.jpg\"]', NULL, NULL, 1, NULL, 0, NULL, 1, '04-09-2021', 'September', NULL, NULL);
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `pickup_point_id`, `name`, `slug`, `code`, `unit`, `tags`, `color`, `size`, `video`, `purchase_price`, `selling_price`, `discount_price`, `stock_quantity`, `warehouse`, `description`, `thumbnail`, `images`, `featured`, `today_deal`, `status`, `product_slider`, `product_views`, `trendy`, `admin_id`, `date`, `month`, `created_at`, `updated_at`) VALUES
(11, 7, 13, 25, 11, 1, 'Honda CBR150R Repsol ABS', 'honda-cbr150r-repsol-abs', 'B-102', 'pcs', 'bike,honda', 'Orange', NULL, 'B_PridhV-3Y', '430000', '480000', NULL, '100', 'Warehouse 101', '<table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Top Features</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Type:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Sports Bikes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">ABS Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Dual Channel</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Starting Method:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Self Start Only</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Speedometer Category:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Trip Meter Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Engine Cooling Method:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Liquid Cooled</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Instrument Console:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Bike Engine</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Displacement:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">149.16 cc</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Maximum Power:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">17.1 PS @ 9000 rpm</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Emission:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">bs6</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Maximum Torque:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">14.4 Nm @ 7000 rpm</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Driving Type:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Chain Drive</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Fuel:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Petrol</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Ignition:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Full Transisterized</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Compression Ratio:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">11. 3 : 1</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">About Transmission</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Number Of Gears:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">6 Speed</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Brake Details</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front Brake:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Disc</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Rear Brake:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Disc</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Chassis and Suspension</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">&nbsp;</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front Suspension:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Inverted Telescopic Front Suspension</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Chassis:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Diamond (Truss) Frame</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Rear Suspension:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Swing Arm with Monoshock (Pro-Link) System</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Wheels</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Tyre Size:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front :-100/80-17, Rear :- 130/70-17</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Tyre Type:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Tubeless</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Wheels (Steel / Alloy):</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Alloy</td></tr></tbody></table>', 'honda-cbr150r-repsol-abs.jpg', '[\"1709999300836510.jpg\",\"1709999300942855.jpg\"]', NULL, NULL, 1, NULL, 0, NULL, 1, '04-09-2021', 'September', NULL, NULL),
(12, 7, 13, 25, 13, 1, 'Yamaha R15 v3 Indonesian', 'yamaha-r15-v3-indonesian', 'B-103', 'pcs', 'bike', 'Blue,Black,Grey,Yellow', NULL, 'B_PridhV-3Y', '460000', '500000', NULL, '80', 'Warehouse 101', '<table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Top Features</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Type:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Sports Bikes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">ABS Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Dual Channel ABS or Non ABS</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Graphics:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Starting Method:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Self Start Only</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Type of Seat:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Split</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Pass Switch Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Speedometer Category:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Trip Meter Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Fuel Warning:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Clock Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Stepup Seat:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Low Oil Indicator:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Footrest:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Engine Cooling Method:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Liquid Cooled</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Instrument Console:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Odometer Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Bike Engine</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Bike Engine:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Liquid-cooled, 4-stroke, SOHC, 4-valve</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Displacement:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">155 cc</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Maximum Power:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">18.6 PS @ 10000 rpm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Emission:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">bs6</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Maximum Torque:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">14.1 Nm @ 8500 rpm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Bore:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">58 mm</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Stroke:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">58.7 mm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Driving Type:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Chain Drive</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Number Of Cyl:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">1</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Valve / Cylinder:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">4</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Fuel:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Petrol</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Ignition:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">TCI (Transistor controlled ignition)</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Compression Ratio:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">11.6:1</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">About Transmission</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Number Of Gears:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">6-Speed</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Brakes</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">&nbsp;</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front Brake:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Disc</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Rear Brake:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Disc</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Chassis &amp; Suspension</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front Suspension:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Telescopic Fork</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Chassis:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Deltabox</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Rear Suspension:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Monocross (link suspension)</td></tr></tbody></table>', 'yamaha-r15-v3-indonesian.jpg', '[\"1709999432570328.jpg\",\"1709999432721190.jpg\"]', NULL, NULL, 1, NULL, 0, NULL, 1, '04-09-2021', 'September', NULL, NULL),
(13, 7, 13, 25, 11, 1, 'New Honda CBR150R (ABS)', 'new-honda-cbr150r-abs', 'B-104', 'pcs', 'bike', 'Red,Black', NULL, NULL, '480000', '540000', NULL, '75', 'Warehouse 101', '<table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Top Features</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Body Type:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Sports Bikes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">ABS Availability</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Dual Channel</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Starting Method</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Self Start Only</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Speedometer Availability</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Trip Meter Availability</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Engine Cooling</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Liquid Cooled</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Instrument Console:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Engine Details</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Engine Displacement:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">149.16 cc</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Maximum Power:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">17.1 PS @ 9000 rpm</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Emission</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">bs6</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Maximum Torque:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">14.4 Nm @ 7000 rpm</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Driving Type:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Chain Drive</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Fuel</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Petrol</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Ignition:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Full Transisterized</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Compression Ratio:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">11. 3 : 1</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Transmission</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Transmission Type:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Manual</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Number Of Gears:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">6 Speed</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Brake Details</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front Brake</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Disc</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Rear Brake</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Disc</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Chassis &amp; Suspension</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front Suspension</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Inverted Telescopic Front Suspension</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Chassis Type</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Diamond (Truss) Frame</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Rear Suspension</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Swing Arm with Monoshock (Pro-Link) System</td></tr></tbody></table>', 'new-honda-cbr150r-abs.jpg', '[\"1709999557792743.jpg\",\"1709999557895991.jpg\"]', NULL, NULL, 1, NULL, 0, NULL, 1, '04-09-2021', 'September', NULL, NULL),
(14, 7, 13, 25, 10, 1, 'Suzuki GSX S150 , 2021', 'suzuki-gsx-s150-2021', 'B-105', 'pcs', 'bike', 'Blue,Black,Red', NULL, NULL, '300000', '325000', NULL, '100', 'Warehouse 101', '<table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><th colspan=\"2\" style=\"margin: 0px; padding: 10px; text-align: left; font-weight: 400; line-height: 1.42857; border-color: rgb(221, 221, 221);\"><h5 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: 700; line-height: 1.35; color: rgb(51, 62, 72); font-size: 14px;\">Body Dimensions</h5><h5 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: 700; line-height: 1.35; color: rgb(51, 62, 72); font-size: 14px;\"></h5></th></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px;\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Length / Width / Height</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">2020 mm / 745 mm / 1040 mm</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Wheel base</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">1300 mm</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px;\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Ground clearance</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">155 mm</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Kerb weight</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">130 kg</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px;\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Fuel tank capacity</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">11 litres</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><th colspan=\"2\" style=\"margin: 0px; padding: 10px; text-align: left; font-weight: 400; line-height: 1.42857; border-color: rgb(221, 221, 221);\"><h5 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: 700; line-height: 1.35; color: rgb(51, 62, 72); font-size: 14px;\">Engine Details</h5><h5 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: 700; line-height: 1.35; color: rgb(51, 62, 72); font-size: 14px;\"></h5></th></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px;\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Type</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Single cylinder, liquid-cooled, DOHC, 4-Stroke, 4-Valve</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Displacement</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">147.3 cc</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px;\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Max net power</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">18.90 Bhp @ 10,500 rpm</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Max net torque</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">14 NM @ 9000 rpm</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px;\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Bore</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">62.0 mm</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Starting method</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Kick/self</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px;\"><th colspan=\"2\" style=\"margin: 0px; padding: 10px; text-align: left; font-weight: 400; line-height: 1.42857; border-color: rgb(221, 221, 221);\"><h5 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: 700; line-height: 1.35; color: rgb(51, 62, 72); font-size: 14px;\">Transmission Details</h5><h5 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: 700; line-height: 1.35; color: rgb(51, 62, 72); font-size: 14px;\"></h5></th></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Gear type</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Manual</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px;\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Number Of Speed Gears</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">6 Speed</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><th colspan=\"2\" style=\"margin: 0px; padding: 10px; text-align: left; font-weight: 400; line-height: 1.42857; border-color: rgb(221, 221, 221);\"><h5 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: 700; line-height: 1.35; color: rgb(51, 62, 72); font-size: 14px;\">Tyres &amp; brakes</h5><h5 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: 700; line-height: 1.35; color: rgb(51, 62, 72); font-size: 14px;\"></h5></th></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px;\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Tyre Size (Front)</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">90/80-17</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Tyre Size (Rear)</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">130/70-17</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px;\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Wheel Size</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front :-17 inch, Rear :-17 inch</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Brakes Front</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Disc</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px;\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Brakes Rear</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Drum</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><th colspan=\"2\" style=\"margin: 0px; padding: 10px; text-align: left; font-weight: 400; line-height: 1.42857; border-color: rgb(221, 221, 221);\"><h5 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: 700; line-height: 1.35; color: rgb(51, 62, 72); font-size: 14px;\">Frame &amp; Suspension</h5><h5 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: 700; line-height: 1.35; color: rgb(51, 62, 72); font-size: 14px;\"></h5></th></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px;\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Chassis Type</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Diamond</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Suspension-Front</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Telescopic Forks</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px;\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Suspension-Rear</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Mono Shock</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><th colspan=\"2\" style=\"margin: 0px; padding: 10px; text-align: left; font-weight: 400; line-height: 1.42857; border-color: rgb(221, 221, 221);\"><h5 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: 700; line-height: 1.35; color: rgb(51, 62, 72); font-size: 14px;\">Electricals</h5><h5 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: 700; line-height: 1.35; color: rgb(51, 62, 72); font-size: 14px;\"></h5></th></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px;\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Battery Type</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">MF</td></tr><tr class=\"techSpecRow\" style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td class=\"techSpecTD1\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Head Lamp</td><td class=\"techSpecTD2\" style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">LED</td></tr></tbody></table>', 'suzuki-gsx-s150-2021.jpg', '[\"1709999674366509.jpg\",\"1709999674470358.jpg\"]', NULL, NULL, 1, NULL, 1, NULL, 1, '04-09-2021', 'September', NULL, '2023-12-06 06:33:46');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `pickup_point_id`, `name`, `slug`, `code`, `unit`, `tags`, `color`, `size`, `video`, `purchase_price`, `selling_price`, `discount_price`, `stock_quantity`, `warehouse`, `description`, `thumbnail`, `images`, `featured`, `today_deal`, `status`, `product_slider`, `product_views`, `trendy`, `admin_id`, `date`, `month`, `created_at`, `updated_at`) VALUES
(15, 7, 13, 25, 10, 1, 'Suzuki Gixxer SF FI & ABS', 'suzuki-gixxer-sf-fi-abs', 'B-106', 'pcs', 'bike', 'Blue,Silver,Black', NULL, NULL, '260000', '295000', NULL, '100', 'Warehouse 101', '<table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Top Features</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">ABS Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Single Channel</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Type:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Sports Bikes</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Type of Seat:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Split</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Starting Method:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Self Start Only</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Pass Switch Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Speedometer Category:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Trip Meter Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Fuel Warning:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Clock Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Footrest:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Engine Cooling Method:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Air Cooled</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Instrument Console:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Odometer Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Bike Engine</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Bike Engine:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">4-Stroke, 1-cylinder, Air cooled</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Displacement:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">155 cc</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Maximum Power:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">13.6 PS @ 8000 rpm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Emission:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">bs6</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Maximum Torque:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">13.8 Nm @ 6000 rpm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Bore:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">56 mm</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Stroke:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">62.9 mm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Number Of Cyl:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">1</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Driving Type:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Chain Drive</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Valve / Cylinder:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">2</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Fuel:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Petrol</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">About Transmission</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Number Of Gears:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">5 Speed</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Brake Details</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front Brake:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Disc</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Rear Brake:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Disc</td></tr></tbody></table>', 'suzuki-gixxer-sf-fi-abs.jpg', '[\"1709999777833453.jpg\",\"1709999777936034.jpg\"]', NULL, NULL, 1, NULL, 0, NULL, 1, '04-09-2021', 'September', NULL, NULL),
(16, 7, 13, 25, 12, 1, 'Pulsar NS 160 Fi ABS, 2021', 'pulsar-ns-160-fi-abs-2021', 'B-107', 'pcs', 'bike', 'Black,Silver,White', NULL, NULL, '220000', '250000', NULL, '120', 'Warehouse 101', '<table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Top Features</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">ABS Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">ABS / Non ABS</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Type:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Sports Bikes</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Graphics:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Starting Method:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Kick and Self Start</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Type of Seat:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Split</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Pass Switch Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Speedometer Category:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Tachometer:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Analogue</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Trip Meter Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Fuel Warning:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Clock Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Stepup Seat:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Footrest:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Engine Cooling Method:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Oil Cooled</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Instrument Console:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Analogue and Digital</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Odometer Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Bike Engine</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Bike Engine:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">4 Stroke, SOHC 4 Valve, Oil Cooled, Twin Spark BSVI DTS-i FI engine</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Displacement:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">160.3 cc</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Maximum Power:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">17.2 PS @ 9000 rpm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Emission:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">bs6</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Maximum Torque:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">14.6 Nm @ 7250 rpm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Driving Type:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Chain Drive</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Number Of Cyl:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">1</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Valve / Cylinder:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">4</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Fuel:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Petrol</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">About Transmission</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Number Of Gears:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">5 Speed</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Brake Details</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front Brake:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Disc</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Rear Brake:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Disc</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Chassis and Suspension</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">&nbsp;</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front Suspension:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Telescopic with Anti-friction Bush</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Chassis:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Perimeter Frame</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Rear Suspension:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Nitrox mono shock absorber with Canister</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Tyres and Wheels</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">&nbsp;</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Tyre Size:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front :-90/90 -17 Rear :-120/80 -17</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Wheel Size:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front :-431.8 mm, Rear :-431.8 mm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Radial Tyre Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Tyre Type:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Tubeless</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Wheels (Steel / Alloy):</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Alloy</td></tr></tbody></table>', 'pulsar-ns-160-fi-abs-2021.jpg', '[\"1709999927438966.jpg\",\"1709999927536911.jpg\"]', NULL, NULL, 1, NULL, 0, NULL, 1, '04-09-2021', 'September', NULL, NULL),
(17, 7, 13, 25, 14, 1, 'Apache RTR 160 4V (DD)', 'apache-rtr-160-4v-dd', 'B-108', 'pcs', 'bike', 'Red,Blue,Black', NULL, NULL, '180000', '197000', '190000', '100', 'Warehouse 101', '<table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Top Features</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">ABS Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">ABS / Non ABS</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Body Type:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Sports Naked Bikes</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Graphics:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Starting Method:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Self Start Only</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Type of Seat:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Split</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Pass Switch Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Speedometer Category:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Trip Meter Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Fuel Warning:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Clock Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Low Battery Indicator:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Stepup Seat:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Footrest:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Yes</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Engine Cooling Method:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Oil Cooled</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Instrument Console:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Odometer Availability:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Digital</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Bike Engine</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Bike Engine:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">SI, 4 stroke, Oil / Air cooled</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Displacement:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">159.7 cc</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Maximum Power:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">16.02 PS @ 8250 rpm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Emission:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">bs6</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Maximum Torque:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">14.12 Nm @ 7250 rpm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Bore:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">62 mm</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Stroke:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">52.9 mm</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Driving Type:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Chain Drive</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Number Of Cyl:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">1</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Valve / Cylinder:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">4</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Fuel:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Petrol</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Ignition:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Mapped ignition system</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Compression Ratio:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">10.0:1</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">About Transmission</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Number Of Gears:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">5 Speed</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Brake Details</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front Brake:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Disc</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Rear Brake:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Disc</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Chassis &amp; Suspension</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Chassis:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Double Cradle Split Synchro STIFF</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front Suspension:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Telescopic Forks</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Rear Suspension:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Mono Shock</td></tr></tbody></table><p><br style=\"margin: 0px; padding: 0px; color: rgb(51, 62, 72); font-family: arimo, sans-serif; font-size: 14px;\"></p><table class=\"table table-striped table-bordered table-condensed\" style=\"margin: 0px 0px 20px; padding: 0px; border-spacing: 0px; background-color: rgb(255, 255, 255); border-color: rgb(221, 221, 221); empty-cells: show; font-size: 14px; width: 1124px; max-width: 100%; color: rgb(51, 62, 72); font-family: arimo, sans-serif;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background: rgb(196, 217, 234); color: rgb(0, 0, 0);\"><td colspan=\"2\" style=\"margin: 0px; padding: 5px; font-weight: bold; line-height: 1.42857; border-color: rgb(221, 221, 221); font-size: 16px;\">Wheels</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Tyre Size:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front :-90/90-17, Rear :-130/70-17</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Wheel Size:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Front :-431.8 mm,Rear :-431.8 mm</td></tr><tr style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Tyre Type:</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Tubeless</td></tr><tr style=\"margin: 0px; padding: 0px; background-color: rgb(249, 249, 249);\"><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Wheels (Steel / Alloy):</td><td style=\"margin: 0px; padding: 5px; line-height: 1.42857; border-color: rgb(221, 221, 221);\">Alloy<br><br></td></tr></tbody></table>', 'apache-rtr-160-4v-dd.jpg', '[\"1710068948792399.jpg\",\"1710068948895091.jpg\"]', NULL, NULL, 1, NULL, 0, NULL, 1, '05-09-2021', 'September', NULL, NULL),
(18, 2, 16, 27, 5, 1, 'Mens Leather Belt Golden Frame', 'mens-leather-belt-golden-frame', 'Be-101', 'pcs', 'belt,fashion', 'Black,Red,Orange', '110cm,115cm,120cm,125cm', NULL, '700', '1200', '1000', '100', 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', 'mens-leather-belt-golden-frame.jpg', '[\"1710069215221859.jpg\",\"1710069215333705.jpg\"]', 1, 0, 1, NULL, 2, 1, 1, '05-09-2021', 'September', NULL, '2022-08-19 03:03:29'),
(19, 2, 16, 27, 5, 1, 'Cow head Leather belt for men', 'cow-head-leather-belt-for-men', 'Be-102', 'pcs', 'belt', 'Black,Orange', '115cm,120cm,125cm', NULL, '800', '1500', NULL, '100', 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</span><br></p>', 'cow-head-leather-belt-for-men.jpg', '[\"1710069428573834.jpg\",\"1710069428684089.jpg\"]', NULL, NULL, 1, NULL, 0, NULL, 1, '05-09-2021', 'September', NULL, NULL),
(20, 2, 16, 27, 5, 1, 'Crocodile shape leather belt', 'crocodile-shape-leather-belt', 'Be-103', 'pcs', 'belt', 'Black,Brown', '115cm,120cm,125cm,130cm', NULL, '750', '1200', NULL, '100', 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</span><br></p>', 'crocodile-shape-leather-belt.jpg', '[\"1710069522548688.jpg\",\"1710069522707516.jpg\"]', NULL, NULL, 1, NULL, 1, NULL, 1, '05-09-2021', 'September', NULL, '2023-09-20 12:40:59'),
(21, 2, 2, 7, 5, 1, 'Diamond shape mens premium watch', 'diamond-shape-mens-premium-watch', 'mw-101', 'pcs', 'watch', 'Golden,Black,White', NULL, NULL, '2500', '3500', NULL, '120', 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</span><br></p>', 'diamond-shape-mens-premium-watch.jpg', '[\"1710069638041012.jpg\",\"1710069638150623.jpg\"]', NULL, 1, 1, NULL, 2, NULL, 1, '05-09-2021', 'September', NULL, '2023-09-14 08:26:10'),
(22, 2, 2, 7, 5, 1, 'Mens regular casual watch', 'mens-regular-casual-watch', 'mw-102', 'pcs', NULL, 'Brown,Black', NULL, NULL, '900', '1500', NULL, '120', 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</span><br></p>', 'mens-regular-casual-watch.jpg', '[\"1710069737168698.jpg\",\"1710069737235195.jpg\"]', 1, 1, 1, NULL, 3, NULL, 1, '05-09-2021', 'September', NULL, '2023-10-10 07:35:20');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `pickup_point_id`, `name`, `slug`, `code`, `unit`, `tags`, `color`, `size`, `video`, `purchase_price`, `selling_price`, `discount_price`, `stock_quantity`, `warehouse`, `description`, `thumbnail`, `images`, `featured`, `today_deal`, `status`, `product_slider`, `product_views`, `trendy`, `admin_id`, `date`, `month`, `created_at`, `updated_at`) VALUES
(23, 2, 1, 2, 5, 1, 'Mens Formal Leather shoes', 'mens-formal-leather-shoes', 'ms-101', 'pcs', NULL, 'Chocolet,Black', '37,38,39,40,41,42,43,44', NULL, '1200', '3000', NULL, '100', 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</span><br></p>', 'mens-formal-leather-shoes.jpg', '[\"1710069835363167.jpg\"]', NULL, NULL, 1, NULL, 0, NULL, 1, '05-09-2021', 'September', NULL, NULL),
(24, 2, 1, 2, 5, 1, 'Formal shoe for mens', 'formal-shoe-for-mens', 'ms-103', 'pcs', NULL, 'Black,Brown', '36,37,38,39,40,41,42', NULL, '1200', '2800', NULL, '100', 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</span><br></p>', 'formal-shoe-for-mens.jpg', '[\"1710069946166411.jpg\"]', NULL, NULL, 1, NULL, 0, NULL, 1, '05-09-2021', 'September', NULL, NULL),
(25, 2, 1, 3, 5, 1, 'Busketball mens sports sneakers', 'busketball-mens-sports-sneakers', 'ms-104', 'pcs', NULL, 'White,Blue', '38,39,40,41,42,43,44', NULL, '1800', '3200', NULL, '100', 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</span><br></p>', 'busketball-mens-sports-sneakers.jpg', '[\"1710070062189295.jpg\"]', NULL, NULL, 1, NULL, 0, NULL, 1, '05-09-2021', 'September', NULL, NULL),
(26, 2, 1, 21, 5, 1, 'Nike Convers for men', 'nike-convers-for-men', 'ms-105', 'pcs', 'shoes', 'Army,White,Black', '38,39,40,41,42,43,44', NULL, '1300', '2500', NULL, NULL, 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</span><br></p>', 'nike-convers-for-men.jpg', '[\"1710070208448900.jpg\",\"1710070208565950.jpg\",\"1710070208634090.jpg\"]', NULL, NULL, 1, NULL, 0, NULL, 1, '05-09-2021', 'September', NULL, NULL),
(27, 7, 13, 26, 14, 1, 'TVS Wego 110', 'tvs-wego-110', 'B-110', 'pcs', NULL, 'Black,Maroon', NULL, NULL, '130000', '150000', NULL, '100', 'Warehouse 101', '<section style=\"font-family: &quot;Open Sans&quot;, sans-serif, Arial; background-color: rgb(245, 245, 245);\"><div class=\"section-area\" style=\"margin-bottom: 20px; padding: 20px; background-color: rgb(255, 255, 255); box-shadow: rgb(220, 220, 220) 2px 2px 2px;\"><h2 class=\"title-bar\" style=\"margin-right: -20px; margin-left: -20px; font-weight: 700; font-size: 15px; padding: 0px 20px 16px; color: rgb(77, 80, 87); box-shadow: rgb(226, 226, 226) 0px 2px 2px, rgb(241, 241, 241) 0px 1px 1px; border-left-color: rgb(255, 255, 255);\"><img src=\"https://www.motorcyclevalley.com/images/icon/specs/price.png\" width=\"20\" alt=\"price\">&nbsp; TVS Wego Price&nbsp;<small style=\"font-size: 12px;\">(September 2021)</small></h2><div class=\"section-details\" style=\"font-size: 14px; color: rgb(0, 0, 0); padding-top: 15px;\"><span style=\"font-weight: bolder;\">TVS Wego</span>&nbsp;is a high performing bike which is available in the Bangladesh motorcycle market.&nbsp;<i>TVS TVS Wego</i>&nbsp;Price in BD is<span style=\"font-weight: bolder;\">&nbsp;144,900.00Tk</span>.</div></div></section><section style=\"font-family: &quot;Open Sans&quot;, sans-serif, Arial; background-color: rgb(245, 245, 245);\"><div class=\"section-area\" style=\"margin-bottom: 20px; padding: 20px; background-color: rgb(255, 255, 255); box-shadow: rgb(220, 220, 220) 2px 2px 2px;\"><h2 class=\"title-bar\" style=\"margin-right: -20px; margin-left: -20px; font-weight: 700; font-size: 15px; padding: 0px 20px 16px; color: rgb(77, 80, 87); box-shadow: rgb(226, 226, 226) 0px 2px 2px, rgb(241, 241, 241) 0px 1px 1px; border-left-color: rgb(255, 255, 255);\"><img src=\"https://www.motorcyclevalley.com/images/icon/specs/Mileage.png\" width=\"20\" alt=\"Mileage\">&nbsp; TVS Wego Mileage</h2><div class=\"section-details\" style=\"font-size: 14px; color: rgb(0, 0, 0); padding-top: 15px;\"><span style=\"font-weight: bolder;\">TVS Wego&nbsp;</span>mileage is&nbsp;<span style=\"font-weight: bolder;\">65 KMPL</span>&nbsp;claimed by TVS and&nbsp;<i>TVS Wego</i>&nbsp;user mileage is&nbsp;<span style=\"font-weight: bolder;\">55 KMPL</span>.</div></div></section><p><span id=\"mileage\" style=\"font-family: &quot;Open Sans&quot;, sans-serif, Arial; background-color: rgb(245, 245, 245); padding-top: 25px;\"></span><span style=\"font-family: &quot;Open Sans&quot;, sans-serif, Arial; background-color: rgb(245, 245, 245);\"></span><span id=\"specs\" style=\"font-family: &quot;Open Sans&quot;, sans-serif, Arial; background-color: rgb(245, 245, 245); padding-top: 25px;\"></span><span style=\"font-family: &quot;Open Sans&quot;, sans-serif, Arial; background-color: rgb(245, 245, 245);\"></span></p><section style=\"font-family: &quot;Open Sans&quot;, sans-serif, Arial; background-color: rgb(245, 245, 245);\"><div class=\"section-area\" style=\"margin-bottom: 20px; padding: 20px; background-color: rgb(255, 255, 255); box-shadow: rgb(220, 220, 220) 2px 2px 2px;\"><h2 class=\"title-bar\" style=\"margin-right: -20px; margin-left: -20px; font-weight: 700; font-size: 15px; padding: 0px 20px 16px; color: rgb(77, 80, 87); box-shadow: rgb(226, 226, 226) 0px 2px 2px, rgb(241, 241, 241) 0px 1px 1px; border-left-color: rgb(255, 255, 255);\"><img src=\"https://www.motorcyclevalley.com/images/icon/specs/Specification.png\" width=\"20\" alt=\"Specification\">&nbsp; TVS Wego Specification</h2><div class=\"section-details\" style=\"font-size: 14px; color: rgb(120, 120, 120); padding-top: 15px;\"><div class=\"power\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-sm-6 col-12\" style=\"width: 550px; padding-right: 15px; padding-left: 15px;\"><table width=\"100%\"><tbody><tr><td class=\"power-item\" width=\"50%\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; font-weight: 600; color: rgb(77, 80, 87);\">Displacement (cc)</td><td class=\"power-item-d\" width=\"50%\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; color: rgb(130, 136, 139);\">109.7</td></tr><tr><td class=\"power-item\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; font-weight: 600; color: rgb(77, 80, 87);\">Maximum Power</td><td class=\"power-item-d\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; color: rgb(130, 136, 139);\">8 Bhp @ 7500 rpm</td></tr><tr><td class=\"power-item\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; font-weight: 600; color: rgb(77, 80, 87);\">Starting Method</td><td class=\"power-item-d\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; color: rgb(130, 136, 139);\"></td></tr></tbody></table></div><div class=\"col-sm-6 col-12\" style=\"width: 550px; padding-right: 15px; padding-left: 15px;\"><table width=\"100%\"><tbody><tr><td class=\"power-item\" width=\"50%\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; font-weight: 600; color: rgb(77, 80, 87);\">Brake Front</td><td class=\"power-item-d\" width=\"50%\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; color: rgb(130, 136, 139);\">Drum</td></tr><tr><td class=\"power-item\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; font-weight: 600; color: rgb(77, 80, 87);\">Brake Rear</td><td class=\"power-item-d\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; color: rgb(130, 136, 139);\">Drum</td></tr><tr><td class=\"power-item\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; font-weight: 600; color: rgb(77, 80, 87);\">Curb Weight</td><td class=\"power-item-d\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; color: rgb(130, 136, 139);\">N/A KG</td></tr></tbody></table></div></div></div></div></div></section>', 'tvs-wego-110.jpg', NULL, NULL, NULL, 1, NULL, 0, NULL, 1, '05-09-2021', 'September', NULL, NULL),
(28, 7, 13, 25, 13, 1, 'Yamaha Fazer Fi v2', 'yamaha-fazer-fi-v2', 'B-111', 'pcs', 'bike', 'Red,Black', NULL, NULL, '260000', '270000', NULL, '50', 'Warehouse 101', '<section style=\"font-family: &quot;Open Sans&quot;, sans-serif, Arial; background-color: rgb(245, 245, 245);\"><div class=\"section-area\" style=\"margin-bottom: 20px; padding: 20px; background-color: rgb(255, 255, 255); box-shadow: rgb(220, 220, 220) 2px 2px 2px;\"><h2 class=\"title-bar\" style=\"margin-right: -20px; margin-left: -20px; font-weight: 700; font-size: 15px; padding: 0px 20px 16px; color: rgb(77, 80, 87); box-shadow: rgb(226, 226, 226) 0px 2px 2px, rgb(241, 241, 241) 0px 1px 1px; border-left-color: rgb(255, 255, 255);\"><img src=\"https://www.motorcyclevalley.com/images/icon/specs/price.png\" width=\"20\" alt=\"price\">&nbsp; Fazer v2 Price&nbsp;<small style=\"font-size: 12px;\">(September 2021)</small></h2><div class=\"section-details\" style=\"font-size: 14px; color: rgb(0, 0, 0); padding-top: 15px;\"><span style=\"font-weight: bolder;\">Fazer v2</span>&nbsp;is a high performing bike which is available in the Bangladesh motorcycle market.&nbsp;<i>Yamaha Fazer v2</i>&nbsp;Price in BD is<span style=\"font-weight: bolder;\">&nbsp;271,000.00Tk</span>.</div></div></section><section style=\"font-family: &quot;Open Sans&quot;, sans-serif, Arial; background-color: rgb(245, 245, 245);\"><div class=\"section-area\" style=\"margin-bottom: 20px; padding: 20px; background-color: rgb(255, 255, 255); box-shadow: rgb(220, 220, 220) 2px 2px 2px;\"><h2 class=\"title-bar\" style=\"margin-right: -20px; margin-left: -20px; font-weight: 700; font-size: 15px; padding: 0px 20px 16px; color: rgb(77, 80, 87); box-shadow: rgb(226, 226, 226) 0px 2px 2px, rgb(241, 241, 241) 0px 1px 1px; border-left-color: rgb(255, 255, 255);\"><img src=\"https://www.motorcyclevalley.com/images/icon/specs/Mileage.png\" width=\"20\" alt=\"Mileage\">&nbsp; Fazer v2 Mileage</h2><div class=\"section-details\" style=\"font-size: 14px; color: rgb(0, 0, 0); padding-top: 15px;\"><span style=\"font-weight: bolder;\">Fazer v2&nbsp;</span>mileage is&nbsp;<span style=\"font-weight: bolder;\">55 KMPL</span>&nbsp;claimed by Yamaha and&nbsp;<i>Fazer v2</i>&nbsp;user mileage is&nbsp;<span style=\"font-weight: bolder;\">48 KMPL</span>.</div></div></section><p><span id=\"mileage\" style=\"font-family: &quot;Open Sans&quot;, sans-serif, Arial; background-color: rgb(245, 245, 245); padding-top: 25px;\"></span><span style=\"font-family: &quot;Open Sans&quot;, sans-serif, Arial; background-color: rgb(245, 245, 245);\"></span><span id=\"specs\" style=\"font-family: &quot;Open Sans&quot;, sans-serif, Arial; background-color: rgb(245, 245, 245); padding-top: 25px;\"></span><span style=\"font-family: &quot;Open Sans&quot;, sans-serif, Arial; background-color: rgb(245, 245, 245);\"></span></p><section style=\"font-family: &quot;Open Sans&quot;, sans-serif, Arial; background-color: rgb(245, 245, 245);\"><div class=\"section-area\" style=\"margin-bottom: 20px; padding: 20px; background-color: rgb(255, 255, 255); box-shadow: rgb(220, 220, 220) 2px 2px 2px;\"><h2 class=\"title-bar\" style=\"margin-right: -20px; margin-left: -20px; font-weight: 700; font-size: 15px; padding: 0px 20px 16px; color: rgb(77, 80, 87); box-shadow: rgb(226, 226, 226) 0px 2px 2px, rgb(241, 241, 241) 0px 1px 1px; border-left-color: rgb(255, 255, 255);\"><img src=\"https://www.motorcyclevalley.com/images/icon/specs/Specification.png\" width=\"20\" alt=\"Specification\">&nbsp; Fazer v2 Specification</h2><div class=\"section-details\" style=\"font-size: 14px; color: rgb(120, 120, 120); padding-top: 15px;\"><div class=\"power\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-sm-6 col-12\" style=\"width: 550px; padding-right: 15px; padding-left: 15px;\"><table width=\"100%\"><tbody><tr><td class=\"power-item\" width=\"50%\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; font-weight: 600; color: rgb(77, 80, 87);\">Displacement (cc)</td><td class=\"power-item-d\" width=\"50%\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; color: rgb(130, 136, 139);\">149</td></tr><tr><td class=\"power-item\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; font-weight: 600; color: rgb(77, 80, 87);\">Maximum Power</td><td class=\"power-item-d\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; color: rgb(130, 136, 139);\">12.9 Bhp @ 8000 rpm</td></tr><tr><td class=\"power-item\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; font-weight: 600; color: rgb(77, 80, 87);\">Starting Method</td><td class=\"power-item-d\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; color: rgb(130, 136, 139);\">Electric &amp; Kick</td></tr></tbody></table></div><div class=\"col-sm-6 col-12\" style=\"width: 550px; padding-right: 15px; padding-left: 15px;\"><table width=\"100%\"><tbody><tr><td class=\"power-item\" width=\"50%\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; font-weight: 600; color: rgb(77, 80, 87);\">Brake Front</td><td class=\"power-item-d\" width=\"50%\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; color: rgb(130, 136, 139);\">Disc</td></tr><tr><td class=\"power-item\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; font-weight: 600; color: rgb(77, 80, 87);\">Brake Rear</td><td class=\"power-item-d\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; color: rgb(130, 136, 139);\">Drum</td></tr><tr><td class=\"power-item\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; font-weight: 600; color: rgb(77, 80, 87);\">Curb Weight</td><td class=\"power-item-d\" style=\"padding-top: 20px; padding-right: 10px; padding-left: 10px; vertical-align: top; color: rgb(130, 136, 139);\">137 KG</td></tr></tbody></table></div></div></div></div></div></section>', 'yamaha-fazer-fi-v2.jpg', NULL, NULL, NULL, 1, NULL, 0, NULL, 1, '05-09-2021', 'September', NULL, NULL),
(29, 3, 4, 20, 5, 1, 'ladies velvet shoe', 'ladies-velvet-shoe', 'ls-1001', 'pcs', NULL, 'Army Green,Black', '36,37,38,39,40', NULL, '500', '900', NULL, '100', 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</span><br></p>', 'ladies-velvet-shoe.jpg', NULL, 1, 0, 1, NULL, 26, NULL, 1, '05-09-2021', 'September', NULL, '2023-12-25 12:03:55'),
(30, 3, 4, 19, 5, 1, 'Women Winter Snikers', 'women-winter-snikers', 'Ws-1002', 'pcs', NULL, 'Silver,Black,White,Pink', '37,38,39,40,41,42', NULL, '1200', '1800', NULL, '100', 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</span><br></p>', 'women-winter-snikers.jpg', NULL, NULL, NULL, 1, NULL, 3, NULL, 1, '05-09-2021', 'September', NULL, '2023-09-15 08:03:10'),
(31, 3, 4, 30, 5, 1, 'Women formal shoe', 'women-formal-shoe', 'ls-1003', 'pcs', 'formal shoe', 'Maroon,Black,Brown', '38,39,40,41,42', NULL, '1200', '2500', NULL, NULL, 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</span><br></p>', 'women-formal-shoe.jpg', NULL, NULL, NULL, 1, NULL, 1, NULL, 1, '05-09-2021', 'September', NULL, '2023-09-15 07:53:45'),
(32, 3, 4, 5, 5, 1, 'net High Hell shoe for women', 'net-high-hell-shoe-for-women', 'Ws-1006', 'pcs', 'hill shoe', 'Golden,Silver,Black', '38,39,40,41,42', NULL, '900', '1700', NULL, '100', 'Warehouse 101', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)</span><br></p>', 'net-high-hell-shoe-for-women.jpg', NULL, NULL, NULL, 1, NULL, 0, NULL, 1, '05-09-2021', 'September', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `ticket_id`, `user_id`, `message`, `image`, `reply_date`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Thanks for your feed back. i hope you will stay with us.', 'public/files/ticket/61785a778964a.png', '2023-10-26', NULL, NULL),
(2, 1, 2, 'You are most welcome. Tahnk You.', NULL, '2023-10-26', NULL, NULL),
(3, 1, 0, 'Thank You . good Bye.', NULL, '2023-10-26', NULL, NULL),
(4, 1, 2, 'You are also welcome.', NULL, '2023-10-26', NULL, NULL),
(5, 1, 0, 'You too. furthur have you facing any problem feel free to knock us.', NULL, '2023-10-26', NULL, NULL),
(6, 3, 0, 'we are solving the issue .thanks for your feedback.', NULL, '2023-12-06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_year` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `review`, `rating`, `review_date`, `review_month`, `review_year`, `created_at`, `updated_at`) VALUES
(1, 2, 8, 'This is a great shoes.really happy to buy this. product quality and color is outstanding .\r\nThank You', 5, '30-08-2021', 'August', 2021, NULL, NULL),
(2, 4, 8, 'This is really a great shoes.', 3, '30-08-2021', 'August', 2021, NULL, NULL),
(4, 5, 8, 'as like as general product not so much good.', 4, '30-08-2021', 'August', 2021, NULL, NULL),
(5, 2, 9, 'This is a great product. i really love this.', 5, '15-09-2021', 'September', 2021, NULL, NULL),
(6, 7, 2, 'This is a great product', 5, '06-12-2021', 'December', 2021, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexa_verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `meta_keyword`, `google_verification`, `google_analytics`, `alexa_verification`, `google_adsense`, `created_at`, `updated_at`) VALUES
(1, 'ABC Ecommerce', 'ABC Coder', 'Ecommerce,Online Shop, Online Bazar ,Online Market', 'Abc Market is an online shop where you can see the electronics products.', 'Ecommerce,Online Shop, Online Bazar ,Online Market', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `currency`, `phone_one`, `phone_two`, `main_email`, `support_email`, `logo`, `favicon`, `address`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, '৳', '01961363543', '01961363543', 'ecommerce@gmail.com', 'supportecommerce@gmail.com', 'public/files/setting/60c0c95167e6a.png', 'public/files/setting/60c0c9931978f.png', 'DHaka Motijheel arambag', 'http://Millat Chowdhury.live/', 'http://Millat Chowdhury.live/', 'http://Millat Chowdhury.live/', 'http://Millat Chowdhury.live/', 'http://Millat Chowdhury.live/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smtp`
--

CREATE TABLE `smtp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mailer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtp`
--

INSERT INTO `smtp` (`id`, `mailer`, `host`, `port`, `user_name`, `password`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'smtp.mailtrap.io', '2525', 'Millat Chowdhury', '12345678', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcat_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcat_slug`, `created_at`, `updated_at`) VALUES
(1, 2, 'Men\'s Shoe', 'mens-shoe', NULL, NULL),
(2, 2, 'Men\'s Watches', 'mens-watches', NULL, '2023-05-10 20:56:54'),
(4, 3, 'Women Shoes', 'women-shoes', NULL, NULL),
(5, 3, 'Watches', 'watches', NULL, NULL),
(6, 3, 'Sunglass', 'sunglass', NULL, NULL),
(7, 3, 'Bags', 'bags', NULL, NULL),
(8, 3, 'Dress', 'dress', NULL, NULL),
(9, 2, 'Sunglass', 'sunglass', NULL, NULL),
(10, 2, 'Men\'s dress', 'mens-dress', NULL, NULL),
(11, 5, 'Mobile Phone', 'mobile-phone', NULL, NULL),
(12, 5, 'Camera', 'camera', NULL, NULL),
(13, 7, 'Motorbike', 'motorbike', NULL, NULL),
(14, 7, 'Private Car', 'private-car', NULL, NULL),
(15, 7, 'Cycle', 'cycle', NULL, NULL),
(16, 2, 'Accessories', 'accessories', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `subject`, `service`, `priority`, `message`, `image`, `status`, `date`, `created_at`, `updated_at`) VALUES
(1, 2, 'Learn Hunter is one of the best bangla channel', 'Return', 'Medium', 'Learn Hunter is one of the best bangla channel.', 'public/files/ticket/616f117bdc3a3.png', 2, '2023-10-19', NULL, NULL),
(3, 7, 'We are facing a problem for buying product', 'Technical', 'High', 'We are facing a problem for buying product', NULL, 1, '2023-12-06', NULL, NULL);

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
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `role_admin` int(2) DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` int(2) DEFAULT 0,
  `product` int(2) DEFAULT 0,
  `offer` int(2) DEFAULT 0,
  `order` int(2) DEFAULT 0,
  `blog` int(2) DEFAULT 0,
  `pickup` int(2) DEFAULT 0,
  `ticket` int(2) DEFAULT 0,
  `contact` int(2) DEFAULT 0,
  `report` int(2) DEFAULT 0,
  `setting` int(2) DEFAULT 0,
  `userrole` int(2) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `is_admin`, `role_admin`, `avatar`, `provider`, `provider_id`, `access_token`, `remember_token`, `category`, `product`, `offer`, `order`, `blog`, `pickup`, `ticket`, `contact`, `report`, `setting`, `userrole`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$P5bJnBoYNvVz/WXnMfCCD.d7E/qxoVjJEFUBGHhCLzm8z18vCfeTq', '01961363543', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL),
(2, 'Alester Cook', 'customer@gmail.com', NULL, '$2y$10$P5bJnBoYNvVz/WXnMfCCD.d7E/qxoVjJEFUBGHhCLzm8z18vCfeTq', '019999999999', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(4, 'parven begum', 'parvenbegum2020@gmail.com', NULL, '', NULL, NULL, NULL, 'https://lh3.googleusercontent.com/a/AATXAJyUNtL5xzP1sDSgIC5NkeMERnbRRCKOtJToXkUS=s96-c', 'google', '116032158511978428058', 'ya29.a0ARrdaM_-A1ch12BbutLVrfvIpfAA_8WM-9bbKO_xI9Qwj4QDEapglAFcqz4OBmyC1opxqGY2FEtLh5r7zuajyrhSJyovmwE7hU5ZSPXe2WBUviHgHkibz7axfuEgki-dB2ayGzjEgVFBR8LiS3txB1tTCUis', 'rq0WAzI5IzssVPBRTBhVrql9LQtz2xC9GvG08oi68Oj4bfD06T1WBh5wIJVx', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-11-01 08:32:35', '2023-11-01 08:33:04'),
(5, 'Mamun', 'mamun@gmail.com', NULL, '$2y$10$P5bJnBoYNvVz/WXnMfCCD.d7E/qxoVjJEFUBGHhCLzm8z18vCfeTq', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL),
(6, 'SI Sohel', 'sohidulislam353@gmail.com', NULL, '', NULL, NULL, NULL, 'https://lh3.googleusercontent.com/a-/AOh14GhQLxI9Vp38YyCWXp_UZjw6P8koNO7YUliQK5p6_A=s96-c', 'google', '109254826656088542444', 'ya29.a0ARrdaM-WbUjz2RVoD5syZxuNyE5-tjoTf0GIjmjGp2PLvWH5V0fuKZuj0PwTxPIWirTx8F68wXb7u1ix97wAgMR9OegLGWn4_GRFIS4-q3H5jLttQAoS-8io_iSOYvPg-von08-fs8gJZ60gxlTS_B_hA3Tq', 'SCiy4RBab4rdSaqDoWTFb993QlRZrS9443QX8i0oEfM8c2Ap2nUhp4r424QB', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-06 06:28:55', '2023-12-06 06:28:55'),
(7, 'কাকতাড়ুয়া', 'kaktarua44@gmail.com', NULL, '', NULL, NULL, NULL, 'https://lh3.googleusercontent.com/a-/AOh14Gik_C4naeFI4I_XL7pIF_r5uCxOP_geRg0jJbe2Vg=s96-c', 'google', '101810011445642054229', 'ya29.a0ARrdaM-0_RtNbnr3mVwYQSsnVEiyX-dUCBiOKrgXpt0AOVNiDZ_n7M1iExzz_C9uQbeIsuDCvbpqFeEcPMhDHAeKxYQS-H4C84yuuucqmjQ5Wq9UssAX-iLtnOdilxQNelf_D5dKRjaOTfBX9Idt2zMChATn', 'PxAAVrH9xjOVc4ONaxFHe3Ve93LeDKoGheQ73hf0YkUQqLHUFWGhWUpF8dr5', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-12-06 06:29:20', '2023-12-06 06:29:20'),
(8, 'Example', 'example1@gmail.com', NULL, '$2y$10$sv.YSWCBVufksFkLNZ84r.ey/auwJEseZdHWbwFf89lwLa8n7eJI2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-09-16 13:08:41', '2022-09-16 13:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `warehouse_name`, `warehouse_address`, `warehouse_phone`, `created_at`, `updated_at`) VALUES
(1, 'Warehouse 101', 'Maniknagar Dhaka', '019658452312', NULL, NULL),
(2, 'Warehouse 102', 'Wari Dhaka Beside Arong', '019763152337', NULL, NULL),
(4, 'Warehouse 103', 'Mirpur dhaka', '016853254235', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wbreviews`
--

CREATE TABLE `wbreviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `review_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wbreviews`
--

INSERT INTO `wbreviews` (`id`, `user_id`, `name`, `review`, `rating`, `review_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Alester Cook', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', 5, '20 , September 2021', 1, NULL, NULL),
(3, 6, 'Rabiul Islam', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', 5, '19 , September 2021', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `date`, `created_at`, `updated_at`) VALUES
(1, 6, 3, '19 ,September 2021', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_blog_category_id_foreign` (`blog_category_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_product`
--
ALTER TABLE `campaign_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_product_campaign_id_foreign` (`campaign_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `childcategories_category_id_foreign` (`category_id`),
  ADD KEY `childcategories_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateway_bd`
--
ALTER TABLE `payment_gateway_bd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup_point`
--
ALTER TABLE `pickup_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_user_id_foreign` (`user_id`);

--
-- Indexes for table `smtp`
--
ALTER TABLE `smtp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wbreviews`
--
ALTER TABLE `wbreviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wbreviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `campaign_product`
--
ALTER TABLE `campaign_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment_gateway_bd`
--
ALTER TABLE `payment_gateway_bd`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pickup_point`
--
ALTER TABLE `pickup_point`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smtp`
--
ALTER TABLE `smtp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wbreviews`
--
ALTER TABLE `wbreviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `campaign_product`
--
ALTER TABLE `campaign_product`
  ADD CONSTRAINT `campaign_product_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD CONSTRAINT `childcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `childcategories_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wbreviews`
--
ALTER TABLE `wbreviews`
  ADD CONSTRAINT `wbreviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
