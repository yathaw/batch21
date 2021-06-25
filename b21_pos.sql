-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 25, 2021 at 05:46 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b21_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 'image/853618.png', '2020-08-11 03:03:33', '0000-00-00 00:00:00'),
(2, 'Ariel', 'image/261463.png', '2020-08-11 03:03:42', '0000-00-00 00:00:00'),
(3, 'Bella', 'image/327538.png', '2020-08-11 03:03:48', '0000-00-00 00:00:00'),
(4, 'Brands', 'image/181497.png', '2020-08-11 03:03:55', '0000-00-00 00:00:00'),
(5, 'Giordano', 'image/583127.png', '2020-08-11 03:04:03', '0000-00-00 00:00:00'),
(6, 'Lock and Lock', 'image/552553.png', '2020-08-11 03:04:22', '0000-00-00 00:00:00'),
(7, 'Acer', 'image/134924.png', '2020-08-11 03:04:44', '0000-00-00 00:00:00'),
(8, 'Fame', 'image/113725.png', '2020-08-11 03:05:57', '0000-00-00 00:00:00'),
(9, 'Other', 'image/139269.png', '2020-08-11 03:06:46', '0000-00-00 00:00:00'),
(10, 'Swetty Home', 'image/252252.jpg', '2020-08-11 03:07:37', '0000-00-00 00:00:00'),
(11, 'Pwint Oo', 'image/733102.jpeg', '2020-08-11 03:10:32', '0000-00-00 00:00:00'),
(12, 'LUX', 'image/632109.png', '2020-08-11 03:12:05', '0000-00-00 00:00:00'),
(13, 'Samsung', 'image/139921.png', '2020-08-11 03:12:57', '0000-00-00 00:00:00'),
(14, 'Garnier', 'image/845476.png', '2020-08-11 03:13:44', '0000-00-00 00:00:00'),
(15, 'Ponds', 'image/677266.jpg', '2020-08-11 03:19:11', '0000-00-00 00:00:00'),
(16, 'Sai Sai', 'image/870833.png', '2020-08-11 03:56:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `logo`, `name`, `created_at`, `updated_at`) VALUES
(1, 'image/453571.png', 'Grocery', '2020-08-10 04:22:53', '0000-00-00 00:00:00'),
(2, 'image/318398.png', 'Smart Home', '2020-08-10 04:23:10', '0000-00-00 00:00:00'),
(3, 'image/303732.png', 'Cosmetic', '2020-08-10 04:24:08', '0000-00-00 00:00:00'),
(4, 'image/459294.png', 'Stationery', '2020-08-10 04:24:28', '0000-00-00 00:00:00'),
(5, 'image/893324.png', 'Electronic Devices', '2020-08-10 04:24:40', '0000-00-00 00:00:00'),
(6, 'image/717795.png', 'Furniture', '2020-08-10 04:24:51', '0000-00-00 00:00:00'),
(7, 'image/742246.png', 'Kitchen Apperience', '2020-08-10 04:25:04', '0000-00-00 00:00:00'),
(8, 'image/701235.jpg', 'Health Care', '2020-08-10 04:25:15', '0000-00-00 00:00:00'),
(9, 'image/602615.png', 'Baby Store', '2020-08-11 07:16:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `codeno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `codeno`, `name`, `photo`, `price`, `discount`, `description`, `brand_id`, `subcategory_id`, `created_at`, `updated_at`) VALUES
(1, 'OP-726118', 'Air Pod Pro', 'image/666434.jpeg', '550000', '350000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 26, '2020-08-11 03:49:58', '0000-00-00 00:00:00'),
(2, 'OP-675853', 'Apple Watch Series 5', 'image/356717.jpg', '800000', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 23, '2020-10-20 03:46:25', '0000-00-00 00:00:00'),
(3, 'OP-837650', 'iPhone sE 2', 'image/230914.jpg', '810000', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 21, '2020-08-11 03:52:47', '0000-00-00 00:00:00'),
(4, 'OP-407385', 'Macbook Pro 13\'\' 2020', 'image/138439.png', '2970000', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 25, '2020-08-11 03:53:57', '0000-00-00 00:00:00'),
(5, 'OP-756831', 'Starry Eyeshadow', 'image/326656.jpg', '18000', '', 'The most appealing and portable eyeshadow + bronzer palette youâ€™d ever own!\r\nStar gaze! Dreamer! Skyler! Hope! Wish! Smoke!\r\nThese extremely pigmented and incredibly artistic colours of Starry Eyes will make your eyes more beautiful. Calm or sparkle yourself by choosing either matte or glitter depending on your mood.\r\nPerfected with a beautiful bronzer â€œmidnightâ€ for contouring on any skin tone.\r\nINGREDIENTS\r\nIngredients â€“ Talc, Nylon-12, Hexyl Laurate, Diisostearyl Malate, Polyethylene, Phenyl Trimethicone, Aluminum Starch octenylsuccinate, Cetearyl Ethylhexanoate, PTFE, Octyldodecyl Stearoyl Stearate, Dipentaerythrityl Hexa- hydroxystearate/Hexasteara te/Hexarosinate, Bis-Diglyceryl Polyacyladipate-2, Glycerin, Silica, Methyl Methacrylate Crosspolymer, Zinc Stearate, lsostearyl neopentanoate, Sorbitan Sesquioleate, Magnesium Stearate, Lauroyl Lysine, Phytosqualane, Dimethicone, 1,2-Hexanediol (May Contain +,-) Mica,Cl 77499, Cl 77491, Titanium Dioxide, Calcium Sodium Borosilicate, Calcium Aluminum Borosilicate, Calcium Titanium Borosilicate, Cl 77492, Cl 15850:1, Cl 42090, Cl 73360, Ultramarines, Tin Oxide, Ferric Ferrocynide, Carmine.', 16, 47, '2020-08-11 03:58:41', '0000-00-00 00:00:00'),
(6, 'OP-221366', 'Gawjuz Pink Velvet Lip Cushion', 'image/101372.jpg', '15000', '', 'Any time, any place, you are the most gorgeous one if the Secret Admirer (Velvet Lip Cushion) â€“ Gawjuz Pink is with you.', 16, 14, '2020-08-11 13:45:15', '0000-00-00 00:00:00'),
(7, 'OP-804110', 'Soothing', 'image/728538.jpg', '2500', '', 'CALMING, HEALING EFFECTS\r\nAloe Vera and Cucumber\r\nThis high-quality SAI Soothing Face Mask is specially made for sensitive skin, it gently soothes the skin and reduces the redness. Formulating with highly concentrated essence of Aloe Vera and Cucumber, it serves as natural healer especially after exposure to the sun and any harsh weather. Your skin will be calm and refreshed. Your stress will be released. You will feel relaxed and revitalized.\r\nINGREDIENTS\r\nWater,Glycerin, Butylene Glycol, Dipropyslene Glycol, Aloe Barvadensis Leaf Extract, Cucumis Sativus(Cucumber) Fruit Extract, Portulaca Oleracea Extract, Betaine, Allantoin, Arginine, Carbomer, Homamelis Virginiana (Witch Hazel) Water, Methylparaben, Panthenol, Poysorbate 80, Dipotassium Glycyrrhizate, Tocopheryl Acetate, Disodium EDTA, Phenoxyethanol, Hydroxyethylcellulose, Frogrance, Sodium Hyaluronate , Propylparaben, Ethythexylycrein, Tetrasodium Glutamate Diocetate.\r\nCAUTIONS\r\nFor external use only. Avoid contact with eyes and mouth. Keep out of reach of children. Use immediately after opening. Of signs of irritation and /or rash appear, please stop using. Store at room temperature', 16, 17, '2020-08-11 04:00:40', '0000-00-00 00:00:00'),
(8, 'OP-800806', 'Babe Tint Tint', 'image/445238.jpg', '14000', '', 'The perfect match for your pinkish lips is not other than Tint Tint babe. Once you wear it, your babe look is undeniable.', 16, 14, '2020-08-11 04:01:33', '0000-00-00 00:00:00'),
(9, 'OP-890947', 'Urocrush', 'image/734373.png', '8000', '5000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 8, 43, '2020-08-11 04:03:17', '0000-00-00 00:00:00'),
(10, 'OP-992438', 'Neurogin', 'image/993480.png', '8000', '5000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 8, 43, '2020-08-11 04:04:33', '0000-00-00 00:00:00'),
(11, 'OP-963825', 'BeePollen', 'image/856724.png', '8000', '5000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 8, 43, '2020-08-11 04:05:16', '0000-00-00 00:00:00'),
(12, 'OP-913094', 'Hand Sanitizer', 'image/819226.jpg', '8000', '5000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 9, 46, '2020-08-11 04:06:30', '0000-00-00 00:00:00'),
(13, 'OP-640025', 'Surgical Masks, Disposable, Box of 50 Units 50 pcs / Box', 'image/527203.jpg', '15000', '12000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 9, 46, '2020-08-11 13:46:09', '0000-00-00 00:00:00'),
(14, 'OP-806825', 'Protection screen of Methacrylate for counters and offices', 'image/632570.jpg', '30000', '25000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 9, 46, '2020-08-11 13:46:52', '0000-00-00 00:00:00'),
(15, 'OP-377017', 'Face Shield', 'image/107454.jpg', '1000', '700', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 9, 46, '2020-08-12 04:01:26', '0000-00-00 00:00:00'),
(16, 'OP-206076', ' Watsons Lux Magical Spell Shower Cream 950ml', 'image/666139.jpg', '8000', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 12, 18, '2020-08-11 04:12:50', '0000-00-00 00:00:00'),
(17, 'OP-816469', 'Contactless infrared Thermometer', 'image/918234.jpg', '22000', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 9, 46, '2020-08-11 13:47:18', '0000-00-00 00:00:00'),
(18, 'OP-554749', 'Medical Gloves', 'image/133429.jpg', '10000', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 9, 46, '2020-08-11 04:16:23', '0000-00-00 00:00:00'),
(19, 'OP-460877', 'PPE', 'image/570406.jpg', '300000', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 9, 46, '2020-08-11 04:18:11', '0000-00-00 00:00:00'),
(20, 'OP-460371', 'Safety Goggles', 'image/823611.png', '14000', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commod consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 9, 46, '2020-08-11 04:19:06', '0000-00-00 00:00:00'),
(22, 'OP_941547', 'Testing Item One', 'image/item/228271.png|image/item/239268.png|image/item/503929.png', '4000', '', 'asdfasdfasfa', 9, 6, '2020-10-23 01:24:49', '0000-00-00 00:00:00'),
(23, 'OP_382547', 'Testing Item Two', 'image/item/934869.png', '7000', '', 'asdfasdf', 9, 43, '2020-10-23 03:31:38', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `item_order`
--

CREATE TABLE `item_order` (
  `id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderdate` date NOT NULL,
  `voucherno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Oil', 1, '2020-08-11 02:40:49', '0000-00-00 00:00:00'),
(2, 'Sugar', 1, '2020-08-11 02:44:41', '0000-00-00 00:00:00'),
(3, 'Meat', 1, '2020-08-11 02:44:55', '0000-00-00 00:00:00'),
(4, 'Seafood', 1, '2020-08-11 02:45:02', '0000-00-00 00:00:00'),
(5, 'Vegetable', 1, '2020-08-11 02:45:09', '0000-00-00 00:00:00'),
(6, 'Fruit', 1, '2020-08-11 02:45:18', '0000-00-00 00:00:00'),
(7, 'Cooking Essentials', 1, '2020-08-11 02:45:48', '0000-00-00 00:00:00'),
(8, 'Refrigerator', 2, '2020-08-11 02:47:18', '0000-00-00 00:00:00'),
(9, 'Washing Machine', 2, '2020-08-11 02:47:31', '0000-00-00 00:00:00'),
(10, 'TV', 2, '2020-08-11 02:47:36', '0000-00-00 00:00:00'),
(11, 'Vacuum Cleaner', 2, '2020-08-11 02:47:55', '0000-00-00 00:00:00'),
(12, 'Air Conditioner', 2, '2020-08-11 02:48:20', '0000-00-00 00:00:00'),
(13, 'Fan', 2, '2020-08-11 02:48:27', '0000-00-00 00:00:00'),
(14, 'Lipstick', 3, '2020-08-11 02:48:40', '0000-00-00 00:00:00'),
(15, 'Makeup', 3, '2020-08-11 02:48:46', '0000-00-00 00:00:00'),
(16, 'Toner', 3, '2020-08-11 02:48:56', '0000-00-00 00:00:00'),
(17, 'Face Mask', 3, '2020-08-11 02:49:03', '0000-00-00 00:00:00'),
(18, 'Bath & Shower', 3, '2020-08-11 02:49:30', '0000-00-00 00:00:00'),
(19, 'Body Care', 3, '2020-08-11 02:49:40', '0000-00-00 00:00:00'),
(20, 'Feminie & Hygeine', 3, '2020-08-11 02:50:11', '0000-00-00 00:00:00'),
(21, 'Phone', 5, '2020-08-11 02:50:39', '0000-00-00 00:00:00'),
(22, 'Tablet', 5, '2020-08-11 02:50:47', '0000-00-00 00:00:00'),
(23, 'Watch', 5, '2020-08-11 02:50:58', '0000-00-00 00:00:00'),
(24, 'Laptop', 5, '2020-08-11 02:51:05', '0000-00-00 00:00:00'),
(25, 'Macbook', 5, '2020-08-11 02:51:12', '0000-00-00 00:00:00'),
(26, 'Earphone', 5, '2020-08-11 02:51:30', '0000-00-00 00:00:00'),
(27, 'School Stationery', 4, '2020-08-11 02:52:22', '0000-00-00 00:00:00'),
(28, 'Printing Paper, Notebook & Ledger', 4, '2020-08-11 02:52:47', '0000-00-00 00:00:00'),
(29, 'Chair', 6, '2020-08-11 02:54:08', '0000-00-00 00:00:00'),
(30, 'Table', 6, '2020-08-11 02:54:15', '0000-00-00 00:00:00'),
(31, 'TV stand', 6, '2020-08-11 02:55:52', '0000-00-00 00:00:00'),
(32, 'Sofa', 6, '2020-08-11 02:56:08', '0000-00-00 00:00:00'),
(33, 'Bookcase', 6, '2020-08-11 02:56:17', '0000-00-00 00:00:00'),
(34, 'Wardrobe', 6, '2020-08-11 02:56:27', '0000-00-00 00:00:00'),
(35, 'Blender', 7, '2020-08-11 02:57:11', '0000-00-00 00:00:00'),
(36, 'Toaster', 7, '2020-08-11 02:57:20', '0000-00-00 00:00:00'),
(37, 'Kettle', 7, '2020-08-11 02:57:28', '0000-00-00 00:00:00'),
(38, 'Cake Pan', 7, '2020-08-11 02:57:43', '0000-00-00 00:00:00'),
(39, 'Kitchen Tools', 7, '2020-08-11 02:57:54', '0000-00-00 00:00:00'),
(40, 'Bowl', 7, '2020-08-11 02:58:12', '0000-00-00 00:00:00'),
(41, 'Vitamins', 8, '2020-08-11 02:58:53', '0000-00-00 00:00:00'),
(42, 'Skin Treatment', 8, '2020-08-11 02:59:22', '0000-00-00 00:00:00'),
(43, 'Myanmar Traditional Medicine', 8, '2020-08-11 02:59:40', '0000-00-00 00:00:00'),
(44, 'Cough, Cold & Digestives', 8, '2020-08-11 03:00:01', '0000-00-00 00:00:00'),
(45, 'Eye, Ear & Nasal Care', 8, '2020-08-11 03:00:20', '0000-00-00 00:00:00'),
(46, 'Covid 19 Essentials', 8, '2020-08-11 03:00:41', '0000-00-00 00:00:00'),
(47, 'Eyeshadow', 3, '2020-08-11 03:57:54', '0000-00-00 00:00:00'),
(48, 'Testing One', 7, '2020-10-19 03:25:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategory_id` (`subcategory_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `item_order`
--
ALTER TABLE `item_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `item_order`
--
ALTER TABLE `item_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`),
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Constraints for table `item_order`
--
ALTER TABLE `item_order`
  ADD CONSTRAINT `item_order_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `item_order_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `model_has_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
