-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 10, 2018 at 11:27 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `opinionmining`
--
CREATE DATABASE IF NOT EXISTS `opinionmining` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `opinionmining`;

-- --------------------------------------------------------

--
-- Table structure for table `admins_prodcuts`
--

CREATE TABLE IF NOT EXISTS `admins_prodcuts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) NOT NULL,
  `vendor_name` varchar(200) NOT NULL,
  `color` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `featuers` varchar(200) NOT NULL,
  `images` varchar(100) NOT NULL,
  `version_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `admins_prodcuts`
--

INSERT INTO `admins_prodcuts` (`id`, `product_name`, `vendor_name`, `color`, `price`, `featuers`, `images`, `version_name`) VALUES
(1, 'shirt', ' Van Heusen', 'green', 2000, 'good product', '4.jpg', 'new collections'),
(2, 'shirt', 'Xiomi Peter England', 'white & Blue', 1870, 'All good features available', '1.jpg', 'new collections'),
(3, 'T-shirt', 'Parx', 'blue', 10000, 'It is good cloth', '2.jpg', 'new collections'),
(4, 'jeans pant', 'DENIZEN', 'light blue', 4000, 'it is good product', '5.jpg', 'new collections'),
(5, 'cotten pant', 'LEVI''S', 'brown', 2109, 'It is very cheap and worth product and it is indian made product', '6.jpg', 'new collections'),
(6, 'cotten pant', 'LEVI''S', 'blue', 3500, 'It is worthy product for cost and it is nice to use but it is little bit heavyIt is worthy product for cost and it is nice to use but it is little bit heavy abc', '7.jpg', 'new collections'),
(7, 'sudithar', 'Ives.', 'yellow', 1570, 'it is good product', '9.jpg', 'new collections'),
(8, 'sudithar', 'Biba.', 'gray', 1290, 'Money worth', '8.jpg', 'new collections'),
(9, 'sudithar', 'Biba', 'teal', 1240, 'good product', '10.jpg', 'new collections'),
(10, 'mobile accessories', 'Huwai', 'black', 52000, 'Good product', '14.jpg', 'Honor note 3'),
(11, 'mobile', 'sony', 'red', 25000, 'it is good motherboard', '15.jpg', 'vio'),
(13, 'mobile', 'xiaomi', 'pink', 6000, 'it is good product', '16.jpg', 'new'),
(14, 'TV', 'xiaomi', 'black', 45000, 'it is good product', '17.jpeg', 'new version'),
(15, 'watches', 'xiaomi', 'black', 46000, 'It is good product', '18.jpg', 'new version'),
(16, 'TV', 'micromax', 'black', 45670, 'USB support', 'micromax.jpeg', 'se7601');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add users', 7, 'add_users'),
(26, 'Can change users', 7, 'change_users'),
(27, 'Can delete users', 7, 'delete_users'),
(28, 'Can view users', 7, 'view_users'),
(29, 'Can add prodcuts', 8, 'add_prodcuts'),
(30, 'Can change prodcuts', 8, 'change_prodcuts'),
(31, 'Can delete prodcuts', 8, 'delete_prodcuts'),
(32, 'Can view prodcuts', 8, 'view_prodcuts'),
(33, 'Can add purchase', 9, 'add_purchase'),
(34, 'Can change purchase', 9, 'change_purchase'),
(35, 'Can delete purchase', 9, 'delete_purchase'),
(36, 'Can view purchase', 9, 'view_purchase'),
(37, 'Can add feedback', 10, 'add_feedback'),
(38, 'Can change feedback', 10, 'change_feedback'),
(39, 'Can delete feedback', 10, 'delete_feedback'),
(40, 'Can view feedback', 10, 'view_feedback'),
(41, 'Can add implict model', 11, 'add_implictmodel'),
(42, 'Can change implict model', 11, 'change_implictmodel'),
(43, 'Can delete implict model', 11, 'delete_implictmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(8, 'admins', 'prodcuts'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(10, 'user', 'feedback'),
(11, 'user', 'implictmodel'),
(9, 'user', 'purchase'),
(7, 'user', 'users');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-08-11 12:34:56.765625'),
(2, 'auth', '0001_initial', '2018-08-11 12:35:09.420898'),
(3, 'admin', '0001_initial', '2018-08-11 12:35:11.701171'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-08-11 12:35:11.794921'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2018-08-11 12:35:11.857421'),
(6, 'contenttypes', '0002_remove_content_type_name', '2018-08-11 12:35:13.250976'),
(7, 'auth', '0002_alter_permission_name_max_length', '2018-08-11 12:35:13.954101'),
(8, 'auth', '0003_alter_user_email_max_length', '2018-08-11 12:35:14.687500'),
(9, 'auth', '0004_alter_user_username_opts', '2018-08-11 12:35:14.734375'),
(10, 'auth', '0005_alter_user_last_login_null', '2018-08-11 12:35:15.306640'),
(11, 'auth', '0006_require_contenttypes_0002', '2018-08-11 12:35:15.353515'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2018-08-11 12:35:15.400390'),
(13, 'auth', '0008_alter_user_username_max_length', '2018-08-11 12:35:16.041015'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2018-08-11 12:35:16.823242'),
(15, 'sessions', '0001_initial', '2018-08-11 12:35:17.951171'),
(16, 'user', '0001_initial', '2018-08-11 12:35:18.374023'),
(17, 'user', '0002_users_profession', '2018-08-11 12:35:18.875000'),
(18, 'user', '0003_auto_20180811_1804', '2018-08-11 12:35:18.906250'),
(19, 'admins', '0001_initial', '2018-08-13 13:18:51.536132'),
(20, 'user', '0004_purchase', '2018-08-13 13:19:36.762695'),
(21, 'user', '0005_feedback', '2018-08-13 13:40:38.198242'),
(22, 'admins', '0002_prodcuts_version_name', '2018-08-14 10:08:50.041015'),
(23, 'admins', '0002_auto_20181208_1532', '2018-12-08 10:02:49.440201'),
(24, 'user', '0002_implictmodel', '2018-12-08 10:02:50.762807'),
(25, 'user', '0003_auto_20181208_1615', '2018-12-08 10:45:08.774279');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2vbh9pjauhkr4t5vx4yttdeuara9k46u', 'YTMzNjBlNWQ5NzZhZjczNjc5NDExOTJiZWJjNjM1NzQzOTljYzhmMjp7InVzZXJpZCI6NTQsInVzZXJuYW1lIjoic2FiYXJpIn0=', '2018-12-15 10:30:15.375606'),
('2yl2b4f9430j4y3vs1rn4hpfofg742wp', 'MjZhZTFiMWMxMWQwNzE0NDBlMTE1MDk3OTc3NmNmOGUwMDRlNWMyYzp7InVzZXJpZCI6MSwidXNlcm5hbWUiOiJhZG1pbiJ9', '2018-08-28 10:04:07.715820'),
('61jul8fcmja3nfmengybtzcysh9h2lp7', 'ODIxNjkyMWQyZWQ3OWIyN2E4NGQ5Yzg4MzY4NWNmYzJiMTA5ZjIyMDp7InVzZXJpZCI6NTQsInVzZXJuYW1lIjoic2FiYXJpIiwiYiI6IjE1OjI2OjI4In0=', '2018-12-24 09:56:28.567408'),
('8nbpelns1q0l9gnpla8yfpbp0mezri6h', 'MjZhZTFiMWMxMWQwNzE0NDBlMTE1MDk3OTc3NmNmOGUwMDRlNWMyYzp7InVzZXJpZCI6MSwidXNlcm5hbWUiOiJhZG1pbiJ9', '2018-09-04 11:04:52.277343'),
('fa1ba2hr1vi3zrsfm43nvcfndonou3wg', 'NjAxNjE4YjVlMDVjMzYwMWE4NjMwZmJjZjAxZThiNzljNTQ5MGUxODp7InVzZXJpZCI6MiwidXNlcm5hbWUiOiJnb2t1bCJ9', '2018-12-20 09:42:48.106102'),
('g5yj7hvb8s02s4g5r731qqg5pdvnpprm', 'NzU0NmM2ZWQzNDhjOTU0MGI5YjQ3N2JlYjVhNGFkOTg3YjNjNmE5Zjp7InVzZXJpZCI6MTAsInVzZXJuYW1lIjoicmFtIn0=', '2018-09-06 11:32:28.859375'),
('hxn7ymwgk7d48hg95sx9an8bm84nmx8s', 'MjZhZTFiMWMxMWQwNzE0NDBlMTE1MDk3OTc3NmNmOGUwMDRlNWMyYzp7InVzZXJpZCI6MSwidXNlcm5hbWUiOiJhZG1pbiJ9', '2018-09-05 14:22:30.652343'),
('j5ldau2u9jgut03ksa78f89hspuswzlo', 'ZmRjNTAxODUxMjdjODBkZjhlYmI4OTQyMGQ0NDBmOTQ2OTA5MjkwZjp7fQ==', '2018-12-12 11:52:36.879451'),
('j8kth4fwkwty12fgg3smr2sdua5dff8n', 'NzdjMWFkZWQxYmVlMjM0MTE4YTdjN2JjOWRhNTI2NzFlODkxNmE3MDp7InVzZXJpZCI6MSwidXNlcm5hbWUiOiJhZG1pbiJ9', '2018-12-20 11:05:21.240344'),
('j8p7y0kwx8yggsqo92euze7gfhsqztpp', 'MjZhZTFiMWMxMWQwNzE0NDBlMTE1MDk3OTc3NmNmOGUwMDRlNWMyYzp7InVzZXJpZCI6MSwidXNlcm5hbWUiOiJhZG1pbiJ9', '2018-12-06 07:10:18.004707'),
('ku4uk924u0w2wfaaik2lokot0txrtp9c', 'Y2E5MmI2ZmJlNWY5ODQ2YzA1YzViZjUwNGI5ZTYyZDM2NjY4MWRjODp7fQ==', '2018-09-05 14:44:56.993164'),
('mtjrobvpd5y80rav07lktdnuo2q80qpm', 'MjZhZTFiMWMxMWQwNzE0NDBlMTE1MDk3OTc3NmNmOGUwMDRlNWMyYzp7InVzZXJpZCI6MSwidXNlcm5hbWUiOiJhZG1pbiJ9', '2018-12-06 10:06:35.954061'),
('s8pxwsgx6vzbtj7mcrkflyb0kqvuijuq', 'NjAxNjE4YjVlMDVjMzYwMWE4NjMwZmJjZjAxZThiNzljNTQ5MGUxODp7InVzZXJpZCI6MiwidXNlcm5hbWUiOiJnb2t1bCJ9', '2018-12-14 12:25:45.620731'),
('thjcao031c99kn9jk25cvgrkzzoqocu6', 'Y2E5MmI2ZmJlNWY5ODQ2YzA1YzViZjUwNGI5ZTYyZDM2NjY4MWRjODp7fQ==', '2018-08-25 14:07:27.893554'),
('v90j1vl1itg1hyhda65h8oj5kk5lhw44', 'MjZhZTFiMWMxMWQwNzE0NDBlMTE1MDk3OTc3NmNmOGUwMDRlNWMyYzp7InVzZXJpZCI6MSwidXNlcm5hbWUiOiJhZG1pbiJ9', '2018-10-20 14:56:38.993666'),
('vbr6crzhkk4qjtot8q034a8usklkusvp', 'Y2E5MmI2ZmJlNWY5ODQ2YzA1YzViZjUwNGI5ZTYyZDM2NjY4MWRjODp7fQ==', '2018-09-05 14:01:04.137695');

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE IF NOT EXISTS `user_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isPurchased` varchar(200) NOT NULL,
  `rating` varchar(200) NOT NULL,
  `review` varchar(200) NOT NULL,
  `sentiment` varchar(200) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_feedback_product_id_fa325b04_fk_admins_prodcuts_id` (`product_id`),
  KEY `user_feedback_user_id_5b987fa1_fk_user_users_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=608 ;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`id`, `isPurchased`, `rating`, `review`, `sentiment`, `product_id`, `user_id`) VALUES
(1, 'not purchased', '3', 'It is very good product', 'positive', 2, 1),
(2, 'not purchased', '2', 'it is good\r', 'positive', 2, 1),
(3, 'purchased', '2', 'good', 'positive', 1, 4),
(4, 'not purchased', '4', 'It is worst', 'neutral', 3, 1),
(5, 'purchased', '1', 'poor product i have ever seen', 'negative', 3, 1),
(6, 'purchased', '5', 'worst product I have ever purchased', 'negative', 1, 1),
(7, 'purchased', '3', 'not good', 'negative', 1, 1),
(8, 'purchased', '3', 'poor purchase', 'negative', 6, 15),
(9, 'purchased', '2', 'great purchase', 'positive', 2, 1),
(10, 'purchased', '5', 'super', 'positive', 10, 1),
(11, 'purchased', '2', 'It is very good product', 'positive', 10, 1),
(12, 'not purchased', '1', 'it is good\r', 'positive', 1, 1),
(13, 'not purchased', '2', 'good', 'positive', 2, 1),
(14, 'not purchased', '5', 'It is worst', 'negative', 7, 14),
(15, 'not purchased', '4', 'poor product i have ever seen', 'neutral', 2, 14),
(16, 'purchased', '3', 'worst product I have ever purchased', 'neutral', 6, 14),
(17, 'purchased', '2', 'not good', 'neutral', 2, 14),
(18, 'purchased', '2', 'poor purchase', 'positive', 7, 14),
(19, 'purchased', '4', 'great purchase', 'positive', 8, 14),
(20, 'purchased', '1', 'super', 'positive', 7, 14),
(21, 'purchased', '5', 'It is very good product', 'positive', 10, 14),
(22, 'purchased', '3', 'it is good\r', 'neutral', 9, 18),
(23, 'not purchased', '3', 'good', 'negative', 8, 18),
(24, 'purchased', '2', 'It is worst', 'negative', 8, 1),
(25, 'not purchased', '5', 'poor product i have ever seen', 'negative', 7, 1),
(26, 'not purchased', '2', 'worst product I have ever purchased', 'negative', 1, 1),
(27, 'purchased', '1', 'not good', 'positive', 8, 1),
(28, 'purchased', '2', 'poor purchase', 'positive', 7, 1),
(29, 'purchased', '5', 'great purchase', 'positive', 3, 1),
(30, 'not purchased', '4', 'super', 'positive', 10, 1),
(31, 'purchased', '3', 'It is very good product', 'positive', 5, 1),
(32, 'not purchased', '2', 'it is good\r', 'negative', 7, 1),
(33, 'purchased', '2', 'good', 'neutral', 10, 1),
(34, 'purchased', '4', 'It is worst', 'neutral', 6, 1),
(35, 'purchased', '1', 'poor product i have ever seen', 'neutral', 4, 1),
(36, 'purchased', '5', 'worst product I have ever purchased', 'positive', 9, 1),
(37, 'purchased', '3', 'not good', 'positive', 4, 1),
(38, 'purchased', '3', 'poor purchase', 'positive', 8, 1),
(39, 'purchased', '2', 'great purchase', 'positive', 6, 1),
(40, 'purchased', '5', 'super', 'neutral', 3, 1),
(41, 'purchased', '2', 'It is very good product', 'positive', 3, 1),
(42, 'purchased', '1', 'it is good\r', 'positive', 5, 1),
(43, 'purchased', '2', 'good', 'positive', 9, 1),
(44, 'purchased', '5', 'It is worst', 'neutral', 3, 1),
(45, 'purchased', '4', 'poor product i have ever seen', 'negative', 2, 1),
(46, 'purchased', '3', 'worst product I have ever purchased', 'negative', 10, 1),
(47, 'purchased', '2', 'not good', 'negative', 10, 1),
(48, 'purchased', '2', 'poor purchase', 'negative', 10, 1),
(49, 'not purchased', '4', 'great purchase', 'positive', 4, 1),
(50, 'purchased', '1', 'super', 'positive', 3, 1),
(51, 'not purchased', '5', 'It is very good product', 'positive', 7, 1),
(52, 'purchased', '3', 'it is good\r', 'positive', 6, 1),
(53, 'purchased', '3', 'good', 'positive', 1, 1),
(54, 'purchased', '2', 'It is worst', 'negative', 10, 1),
(55, 'purchased', '5', 'poor product i have ever seen', 'neutral', 1, 1),
(56, 'purchased', '2', 'worst product I have ever purchased', 'neutral', 6, 1),
(57, 'not purchased', '1', 'not good', 'neutral', 4, 1),
(58, 'not purchased', '2', 'poor purchase', 'positive', 3, 1),
(59, 'purchased', '5', 'great purchase', 'positive', 9, 1),
(60, 'not purchased', '4', 'super', 'positive', 8, 1),
(61, 'not purchased', '3', 'It is very good product', 'positive', 6, 1),
(62, 'not purchased', '2', 'it is good\r', 'neutral', 3, 1),
(63, 'purchased', '2', 'good', 'negative', 7, 1),
(64, 'not purchased', '4', 'It is worst', 'negative', 7, 1),
(65, 'purchased', '1', 'poor product i have ever seen', 'negative', 7, 1),
(66, 'purchased', '5', 'worst product I have ever purchased', 'negative', 9, 1),
(67, 'purchased', '3', 'not good', 'positive', 3, 1),
(68, 'purchased', '3', 'poor purchase', 'positive', 9, 1),
(69, 'purchased', '2', 'great purchase', 'positive', 4, 1),
(70, 'purchased', '5', 'super', 'positive', 9, 1),
(71, 'purchased', '2', 'It is very good product', 'positive', 5, 1),
(72, 'not purchased', '1', 'it is good\r', 'negative', 5, 1),
(73, 'not purchased', '2', 'good', 'neutral', 9, 1),
(74, 'not purchased', '5', 'It is worst', 'neutral', 6, 1),
(75, 'not purchased', '4', 'poor product i have ever seen', 'neutral', 6, 1),
(76, 'purchased', '3', 'worst product I have ever purchased', 'positive', 7, 1),
(77, 'purchased', '2', 'not good', 'positive', 4, 1),
(78, 'purchased', '2', 'poor purchase', 'positive', 8, 1),
(79, 'purchased', '4', 'great purchase', 'positive', 3, 1),
(80, 'purchased', '1', 'super', 'neutral', 6, 1),
(81, 'purchased', '5', 'It is very good product', 'positive', 7, 1),
(82, 'purchased', '3', 'it is good\r', 'positive', 3, 1),
(83, 'not purchased', '3', 'good', 'positive', 1, 1),
(84, 'purchased', '2', 'It is worst', 'neutral', 1, 1),
(85, 'not purchased', '5', 'poor product i have ever seen', 'negative', 8, 1),
(86, 'not purchased', '2', 'worst product I have ever purchased', 'negative', 2, 1),
(87, 'purchased', '1', 'not good', 'negative', 8, 1),
(88, 'purchased', '2', 'poor purchase', 'negative', 4, 1),
(89, 'purchased', '5', 'great purchase', 'positive', 5, 1),
(90, 'not purchased', '4', 'super', 'positive', 9, 1),
(91, 'purchased', '3', 'It is very good product', 'positive', 6, 1),
(92, 'not purchased', '2', 'it is good\r', 'positive', 5, 1),
(93, 'purchased', '2', 'good', 'positive', 4, 1),
(94, 'purchased', '4', 'It is worst', 'negative', 1, 1),
(95, 'purchased', '1', 'poor product i have ever seen', 'neutral', 4, 1),
(96, 'purchased', '5', 'worst product I have ever purchased', 'neutral', 1, 1),
(97, 'purchased', '3', 'not good', 'neutral', 10, 1),
(98, 'purchased', '3', 'poor purchase', 'positive', 9, 1),
(99, 'purchased', '2', 'great purchase', 'positive', 4, 1),
(100, 'purchased', '5', 'super', 'positive', 2, 1),
(101, 'purchased', '2', 'It is very good product', 'positive', 10, 1),
(102, 'purchased', '1', 'it is good\r', 'neutral', 5, 1),
(103, 'purchased', '2', 'good', 'negative', 8, 1),
(104, 'purchased', '5', 'It is worst', 'negative', 6, 1),
(105, 'purchased', '4', 'poor product i have ever seen', 'negative', 9, 1),
(106, 'purchased', '3', 'worst product I have ever purchased', 'negative', 2, 1),
(107, 'purchased', '2', 'not good', 'positive', 6, 1),
(108, 'purchased', '2', 'poor purchase', 'positive', 7, 1),
(109, 'not purchased', '4', 'great purchase', 'positive', 2, 1),
(110, 'purchased', '1', 'super', 'positive', 3, 1),
(111, 'not purchased', '5', 'It is very good product', 'positive', 5, 1),
(112, 'purchased', '3', 'it is good\r', 'negative', 7, 1),
(113, 'purchased', '3', 'good', 'neutral', 4, 1),
(114, 'purchased', '2', 'It is worst', 'neutral', 6, 1),
(115, 'purchased', '5', 'poor product i have ever seen', 'neutral', 7, 1),
(116, 'purchased', '2', 'worst product I have ever purchased', 'positive', 6, 1),
(117, 'not purchased', '1', 'not good', 'positive', 10, 1),
(118, 'not purchased', '2', 'poor purchase', 'positive', 1, 1),
(119, 'purchased', '5', 'great purchase', 'positive', 7, 1),
(120, 'not purchased', '4', 'super', 'neutral', 6, 1),
(121, 'not purchased', '3', 'It is very good product', 'positive', 5, 1),
(122, 'not purchased', '2', 'it is good\r', 'positive', 9, 1),
(123, 'purchased', '2', 'good', 'positive', 5, 1),
(124, 'not purchased', '4', 'It is worst', 'neutral', 4, 1),
(125, 'purchased', '1', 'poor product i have ever seen', 'negative', 3, 1),
(126, 'purchased', '5', 'worst product I have ever purchased', 'negative', 9, 1),
(127, 'purchased', '3', 'not good', 'negative', 7, 1),
(128, 'purchased', '3', 'poor purchase', 'negative', 7, 1),
(129, 'purchased', '2', 'great purchase', 'positive', 10, 1),
(130, 'purchased', '5', 'super', 'positive', 3, 1),
(131, 'purchased', '2', 'It is very good product', 'positive', 3, 1),
(132, 'not purchased', '1', 'it is good\r', 'positive', 5, 1),
(133, 'not purchased', '2', 'good', 'positive', 9, 1),
(134, 'not purchased', '5', 'It is worst', 'negative', 2, 1),
(135, 'not purchased', '4', 'poor product i have ever seen', 'neutral', 2, 1),
(136, 'purchased', '3', 'worst product I have ever purchased', 'neutral', 8, 1),
(137, 'purchased', '2', 'not good', 'neutral', 4, 1),
(138, 'purchased', '2', 'poor purchase', 'positive', 7, 1),
(139, 'purchased', '4', 'great purchase', 'positive', 5, 1),
(140, 'purchased', '1', 'super', 'positive', 4, 1),
(141, 'purchased', '5', 'It is very good product', 'positive', 7, 1),
(142, 'purchased', '3', 'it is good\r', 'neutral', 9, 1),
(143, 'not purchased', '3', 'good', 'negative', 4, 1),
(144, 'purchased', '2', 'It is worst', 'negative', 10, 1),
(145, 'not purchased', '5', 'poor product i have ever seen', 'negative', 5, 1),
(146, 'not purchased', '2', 'worst product I have ever purchased', 'negative', 6, 1),
(147, 'purchased', '1', 'not good', 'positive', 9, 1),
(148, 'purchased', '2', 'poor purchase', 'positive', 7, 1),
(149, 'purchased', '5', 'great purchase', 'positive', 10, 1),
(150, 'not purchased', '4', 'super', 'positive', 2, 1),
(151, 'purchased', '3', 'It is very good product', 'positive', 3, 1),
(152, 'not purchased', '2', 'it is good\r', 'negative', 6, 1),
(153, 'purchased', '2', 'good', 'neutral', 10, 1),
(154, 'purchased', '4', 'It is worst', 'neutral', 8, 1),
(155, 'purchased', '1', 'poor product i have ever seen', 'neutral', 8, 1),
(156, 'purchased', '5', 'worst product I have ever purchased', 'positive', 3, 1),
(157, 'purchased', '3', 'not good', 'positive', 9, 1),
(158, 'purchased', '3', 'poor purchase', 'positive', 1, 1),
(159, 'purchased', '2', 'great purchase', 'positive', 8, 1),
(160, 'purchased', '5', 'super', 'neutral', 10, 1),
(161, 'purchased', '2', 'It is very good product', 'positive', 9, 1),
(162, 'purchased', '1', 'it is good\r', 'positive', 8, 1),
(163, 'purchased', '2', 'good', 'positive', 10, 1),
(164, 'purchased', '5', 'It is worst', 'neutral', 10, 1),
(165, 'purchased', '4', 'poor product i have ever seen', 'negative', 9, 1),
(166, 'purchased', '3', 'worst product I have ever purchased', 'negative', 9, 1),
(167, 'purchased', '2', 'not good', 'negative', 7, 1),
(168, 'purchased', '2', 'poor purchase', 'negative', 2, 1),
(169, 'not purchased', '4', 'great purchase', 'positive', 4, 1),
(170, 'purchased', '1', 'super', 'positive', 7, 1),
(171, 'not purchased', '5', 'It is very good product', 'positive', 3, 1),
(172, 'purchased', '3', 'it is good\r', 'positive', 3, 1),
(173, 'purchased', '3', 'good', 'positive', 7, 1),
(174, 'purchased', '2', 'It is worst', 'negative', 7, 1),
(175, 'purchased', '5', 'poor product i have ever seen', 'neutral', 9, 1),
(176, 'purchased', '2', 'worst product I have ever purchased', 'neutral', 10, 1),
(177, 'not purchased', '1', 'not good', 'neutral', 4, 1),
(178, 'not purchased', '2', 'poor purchase', 'positive', 3, 1),
(179, 'purchased', '5', 'great purchase', 'positive', 7, 1),
(180, 'not purchased', '4', 'super', 'positive', 8, 1),
(181, 'not purchased', '3', 'It is very good product', 'positive', 10, 1),
(182, 'not purchased', '2', 'it is good\r', 'neutral', 1, 1),
(183, 'purchased', '2', 'good', 'negative', 1, 1),
(184, 'not purchased', '4', 'It is worst', 'negative', 4, 1),
(185, 'purchased', '1', 'poor product i have ever seen', 'negative', 6, 1),
(186, 'purchased', '5', 'worst product I have ever purchased', 'negative', 10, 1),
(187, 'purchased', '3', 'not good', 'positive', 2, 1),
(188, 'purchased', '3', 'poor purchase', 'positive', 6, 1),
(189, 'purchased', '2', 'great purchase', 'positive', 2, 1),
(190, 'purchased', '5', 'super', 'positive', 8, 1),
(191, 'purchased', '2', 'It is very good product', 'positive', 9, 1),
(192, 'not purchased', '1', 'it is good\r', 'negative', 8, 1),
(193, 'not purchased', '2', 'good', 'neutral', 1, 1),
(194, 'not purchased', '5', 'It is worst', 'neutral', 7, 1),
(195, 'not purchased', '4', 'poor product i have ever seen', 'neutral', 7, 1),
(196, 'purchased', '3', 'worst product I have ever purchased', 'positive', 2, 1),
(197, 'purchased', '2', 'not good', 'positive', 5, 1),
(198, 'purchased', '2', 'poor purchase', 'positive', 9, 1),
(199, 'purchased', '4', 'great purchase', 'positive', 6, 1),
(200, 'purchased', '1', 'super', 'neutral', 9, 1),
(201, 'purchased', '5', 'It is very good product', 'positive', 1, 1),
(202, 'purchased', '3', 'it is good\r', 'positive', 4, 1),
(203, 'not purchased', '3', 'good', 'positive', 5, 1),
(204, 'purchased', '2', 'It is worst', 'neutral', 2, 1),
(205, 'not purchased', '5', 'poor product i have ever seen', 'negative', 9, 1),
(206, 'not purchased', '2', 'worst product I have ever purchased', 'negative', 7, 1),
(207, 'purchased', '1', 'not good', 'negative', 10, 1),
(208, 'purchased', '2', 'poor purchase', 'negative', 1, 1),
(209, 'purchased', '5', 'great purchase', 'positive', 4, 1),
(210, 'not purchased', '4', 'super', 'positive', 3, 1),
(211, 'purchased', '3', 'It is very good product', 'positive', 9, 1),
(212, 'not purchased', '2', 'it is good\r', 'positive', 10, 1),
(213, 'purchased', '2', 'good', 'positive', 5, 1),
(214, 'purchased', '4', 'It is worst', 'negative', 10, 1),
(215, 'purchased', '1', 'poor product i have ever seen', 'neutral', 9, 1),
(216, 'purchased', '5', 'worst product I have ever purchased', 'neutral', 8, 1),
(217, 'purchased', '3', 'not good', 'neutral', 6, 1),
(218, 'purchased', '3', 'poor purchase', 'positive', 8, 1),
(219, 'purchased', '2', 'great purchase', 'positive', 10, 1),
(220, 'purchased', '5', 'super', 'positive', 8, 1),
(221, 'purchased', '2', 'It is very good product', 'positive', 5, 1),
(222, 'purchased', '1', 'it is good\r', 'neutral', 6, 1),
(223, 'purchased', '2', 'good', 'negative', 2, 1),
(224, 'purchased', '5', 'It is worst', 'negative', 10, 1),
(225, 'purchased', '4', 'poor product i have ever seen', 'negative', 8, 1),
(226, 'purchased', '3', 'worst product I have ever purchased', 'negative', 1, 1),
(227, 'purchased', '2', 'not good', 'positive', 2, 1),
(228, 'purchased', '2', 'poor purchase', 'positive', 2, 1),
(229, 'not purchased', '4', 'great purchase', 'positive', 8, 1),
(230, 'purchased', '1', 'super', 'positive', 5, 1),
(231, 'not purchased', '5', 'It is very good product', 'positive', 8, 1),
(232, 'purchased', '3', 'it is good\r', 'negative', 7, 1),
(233, 'purchased', '3', 'good', 'neutral', 9, 1),
(234, 'purchased', '2', 'It is worst', 'neutral', 6, 1),
(235, 'purchased', '5', 'poor product i have ever seen', 'neutral', 9, 1),
(236, 'purchased', '2', 'worst product I have ever purchased', 'positive', 1, 1),
(237, 'not purchased', '1', 'not good', 'positive', 9, 1),
(238, 'not purchased', '2', 'poor purchase', 'positive', 8, 1),
(239, 'purchased', '5', 'great purchase', 'positive', 8, 1),
(240, 'not purchased', '4', 'super', 'neutral', 1, 1),
(241, 'not purchased', '3', 'It is very good product', 'positive', 1, 1),
(242, 'not purchased', '2', 'it is good\r', 'positive', 4, 1),
(243, 'purchased', '2', 'good', 'positive', 1, 1),
(244, 'not purchased', '4', 'It is worst', 'neutral', 7, 1),
(245, 'purchased', '1', 'poor product i have ever seen', 'negative', 5, 1),
(246, 'purchased', '5', 'worst product I have ever purchased', 'negative', 10, 1),
(247, 'purchased', '3', 'not good', 'negative', 4, 1),
(248, 'purchased', '3', 'poor purchase', 'negative', 9, 1),
(249, 'purchased', '2', 'great purchase', 'positive', 8, 1),
(250, 'purchased', '5', 'super', 'positive', 6, 1),
(251, 'purchased', '2', 'It is very good product', 'positive', 5, 1),
(252, 'not purchased', '1', 'it is good\r', 'positive', 5, 1),
(253, 'not purchased', '2', 'good', 'positive', 10, 1),
(254, 'not purchased', '5', 'It is worst', 'negative', 2, 1),
(255, 'not purchased', '4', 'poor product i have ever seen', 'neutral', 8, 1),
(256, 'purchased', '3', 'worst product I have ever purchased', 'neutral', 1, 1),
(257, 'purchased', '2', 'not good', 'neutral', 8, 1),
(258, 'purchased', '2', 'poor purchase', 'positive', 7, 1),
(259, 'purchased', '4', 'great purchase', 'positive', 4, 1),
(260, 'purchased', '1', 'super', 'positive', 3, 1),
(261, 'purchased', '5', 'It is very good product', 'positive', 10, 1),
(262, 'purchased', '3', 'it is good\r', 'neutral', 2, 1),
(263, 'not purchased', '3', 'good', 'negative', 1, 1),
(264, 'purchased', '2', 'It is worst', 'negative', 6, 1),
(265, 'not purchased', '5', 'poor product i have ever seen', 'negative', 2, 1),
(266, 'not purchased', '2', 'worst product I have ever purchased', 'negative', 3, 1),
(267, 'purchased', '1', 'not good', 'positive', 9, 1),
(268, 'purchased', '2', 'poor purchase', 'positive', 2, 1),
(269, 'purchased', '5', 'great purchase', 'positive', 4, 1),
(270, 'not purchased', '4', 'super', 'positive', 10, 1),
(271, 'purchased', '3', 'It is very good product', 'positive', 7, 1),
(272, 'not purchased', '2', 'it is good\r', 'negative', 1, 1),
(273, 'purchased', '2', 'good', 'neutral', 8, 1),
(274, 'purchased', '4', 'It is worst', 'neutral', 2, 1),
(275, 'purchased', '1', 'poor product i have ever seen', 'neutral', 3, 1),
(276, 'purchased', '5', 'worst product I have ever purchased', 'positive', 1, 1),
(277, 'purchased', '3', 'not good', 'positive', 1, 1),
(278, 'purchased', '3', 'poor purchase', 'positive', 7, 1),
(279, 'purchased', '2', 'great purchase', 'positive', 2, 1),
(280, 'purchased', '5', 'super', 'neutral', 10, 1),
(281, 'purchased', '2', 'It is very good product', 'positive', 4, 1),
(282, 'purchased', '1', 'it is good\r', 'positive', 9, 1),
(283, 'purchased', '2', 'good', 'positive', 7, 1),
(284, 'purchased', '5', 'It is worst', 'neutral', 5, 1),
(285, 'purchased', '4', 'poor product i have ever seen', 'negative', 1, 1),
(286, 'purchased', '3', 'worst product I have ever purchased', 'negative', 6, 1),
(287, 'purchased', '2', 'not good', 'negative', 1, 1),
(288, 'purchased', '2', 'poor purchase', 'negative', 6, 1),
(289, 'not purchased', '4', 'great purchase', 'positive', 8, 1),
(290, 'purchased', '1', 'super', 'positive', 5, 1),
(291, 'not purchased', '5', 'It is very good product', 'positive', 6, 1),
(292, 'purchased', '3', 'it is good\r', 'positive', 2, 1),
(293, 'purchased', '3', 'good', 'positive', 1, 1),
(294, 'purchased', '2', 'It is worst', 'negative', 9, 1),
(295, 'purchased', '5', 'poor product i have ever seen', 'neutral', 2, 1),
(296, 'purchased', '2', 'worst product I have ever purchased', 'neutral', 7, 1),
(297, 'not purchased', '1', 'not good', 'neutral', 7, 1),
(298, 'not purchased', '2', 'poor purchase', 'positive', 2, 1),
(299, 'purchased', '5', 'great purchase', 'positive', 10, 1),
(300, 'not purchased', '4', 'super', 'positive', 7, 1),
(301, 'not purchased', '3', 'It is very good product', 'positive', 5, 1),
(302, 'not purchased', '2', 'it is good\r', 'neutral', 2, 1),
(303, 'purchased', '2', 'good', 'negative', 6, 1),
(304, 'not purchased', '4', 'It is worst', 'negative', 8, 1),
(305, 'purchased', '1', 'poor product i have ever seen', 'negative', 2, 1),
(306, 'purchased', '5', 'worst product I have ever purchased', 'negative', 9, 1),
(307, 'purchased', '3', 'not good', 'positive', 4, 1),
(308, 'purchased', '3', 'poor purchase', 'positive', 7, 1),
(309, 'purchased', '2', 'great purchase', 'positive', 4, 1),
(310, 'purchased', '5', 'super', 'positive', 8, 1),
(311, 'purchased', '2', 'It is very good product', 'positive', 6, 1),
(312, 'not purchased', '1', 'it is good\r', 'negative', 9, 1),
(313, 'not purchased', '2', 'good', 'neutral', 3, 1),
(314, 'not purchased', '5', 'It is worst', 'neutral', 6, 1),
(315, 'not purchased', '4', 'poor product i have ever seen', 'neutral', 4, 1),
(316, 'purchased', '3', 'worst product I have ever purchased', 'positive', 9, 1),
(317, 'purchased', '2', 'not good', 'positive', 7, 1),
(318, 'purchased', '2', 'poor purchase', 'positive', 4, 1),
(319, 'purchased', '4', 'great purchase', 'positive', 7, 1),
(320, 'purchased', '1', 'super', 'neutral', 2, 1),
(321, 'purchased', '5', 'It is very good product', 'positive', 8, 1),
(322, 'purchased', '3', 'it is good\r', 'positive', 2, 1),
(323, 'not purchased', '3', 'good', 'positive', 10, 1),
(324, 'purchased', '2', 'It is worst', 'neutral', 8, 1),
(325, 'not purchased', '5', 'poor product i have ever seen', 'negative', 4, 1),
(326, 'not purchased', '2', 'worst product I have ever purchased', 'negative', 5, 1),
(327, 'purchased', '1', 'not good', 'negative', 6, 1),
(328, 'purchased', '2', 'poor purchase', 'negative', 10, 1),
(329, 'purchased', '5', 'great purchase', 'positive', 5, 1),
(330, 'not purchased', '4', 'super', 'positive', 2, 1),
(331, 'purchased', '3', 'It is very good product', 'positive', 3, 1),
(332, 'not purchased', '2', 'it is good\r', 'positive', 5, 1),
(333, 'purchased', '2', 'good', 'positive', 7, 1),
(334, 'purchased', '4', 'It is worst', 'negative', 8, 1),
(335, 'purchased', '1', 'poor product i have ever seen', 'neutral', 10, 1),
(336, 'purchased', '5', 'worst product I have ever purchased', 'neutral', 9, 1),
(337, 'purchased', '3', 'not good', 'neutral', 10, 1),
(338, 'purchased', '3', 'poor purchase', 'positive', 1, 1),
(339, 'purchased', '2', 'great purchase', 'positive', 8, 1),
(340, 'purchased', '5', 'super', 'positive', 7, 1),
(341, 'purchased', '2', 'It is very good product', 'positive', 5, 1),
(342, 'purchased', '1', 'it is good\r', 'neutral', 7, 1),
(343, 'purchased', '2', 'good', 'negative', 10, 1),
(344, 'purchased', '5', 'It is worst', 'negative', 5, 1),
(345, 'purchased', '4', 'poor product i have ever seen', 'negative', 1, 1),
(346, 'purchased', '3', 'worst product I have ever purchased', 'negative', 4, 1),
(347, 'purchased', '2', 'not good', 'positive', 7, 1),
(348, 'purchased', '2', 'poor purchase', 'positive', 6, 1),
(349, 'not purchased', '4', 'great purchase', 'positive', 1, 1),
(350, 'purchased', '1', 'super', 'positive', 7, 1),
(351, 'not purchased', '5', 'It is very good product', 'positive', 1, 1),
(352, 'purchased', '3', 'it is good\r', 'negative', 1, 1),
(353, 'purchased', '3', 'good', 'neutral', 7, 1),
(354, 'purchased', '2', 'It is worst', 'neutral', 9, 1),
(355, 'purchased', '5', 'poor product i have ever seen', 'neutral', 7, 1),
(356, 'purchased', '2', 'worst product I have ever purchased', 'positive', 8, 1),
(357, 'not purchased', '1', 'not good', 'positive', 5, 1),
(358, 'not purchased', '2', 'poor purchase', 'positive', 8, 1),
(359, 'purchased', '5', 'great purchase', 'positive', 2, 1),
(360, 'not purchased', '4', 'super', 'neutral', 7, 1),
(361, 'not purchased', '3', 'It is very good product', 'positive', 8, 1),
(362, 'not purchased', '2', 'it is good\r', 'positive', 2, 1),
(363, 'purchased', '2', 'good', 'positive', 7, 1),
(364, 'not purchased', '4', 'It is worst', 'neutral', 2, 1),
(365, 'purchased', '1', 'poor product i have ever seen', 'negative', 6, 1),
(366, 'purchased', '5', 'worst product I have ever purchased', 'negative', 8, 1),
(367, 'purchased', '3', 'not good', 'negative', 10, 1),
(368, 'purchased', '3', 'poor purchase', 'negative', 7, 1),
(369, 'purchased', '2', 'great purchase', 'positive', 6, 1),
(370, 'purchased', '5', 'super', 'positive', 2, 1),
(371, 'purchased', '2', 'It is very good product', 'positive', 10, 1),
(372, 'not purchased', '1', 'it is good\r', 'positive', 8, 1),
(373, 'not purchased', '2', 'good', 'positive', 6, 1),
(374, 'not purchased', '5', 'It is worst', 'negative', 6, 1),
(375, 'not purchased', '4', 'poor product i have ever seen', 'neutral', 9, 1),
(376, 'purchased', '3', 'worst product I have ever purchased', 'neutral', 5, 1),
(377, 'purchased', '2', 'not good', 'neutral', 1, 1),
(378, 'purchased', '2', 'poor purchase', 'positive', 6, 1),
(379, 'purchased', '4', 'great purchase', 'positive', 3, 1),
(380, 'purchased', '1', 'super', 'positive', 5, 1),
(381, 'purchased', '5', 'It is very good product', 'positive', 5, 1),
(382, 'purchased', '3', 'it is good\r', 'neutral', 8, 1),
(383, 'not purchased', '3', 'good', 'negative', 5, 1),
(384, 'purchased', '2', 'It is worst', 'negative', 6, 1),
(385, 'not purchased', '5', 'poor product i have ever seen', 'negative', 5, 1),
(386, 'not purchased', '2', 'worst product I have ever purchased', 'negative', 8, 1),
(387, 'purchased', '1', 'not good', 'positive', 2, 1),
(388, 'purchased', '2', 'poor purchase', 'positive', 8, 1),
(389, 'purchased', '5', 'great purchase', 'positive', 1, 1),
(390, 'not purchased', '4', 'super', 'positive', 9, 1),
(391, 'purchased', '3', 'It is very good product', 'positive', 2, 1),
(392, 'not purchased', '2', 'it is good\r', 'negative', 3, 1),
(393, 'purchased', '2', 'good', 'neutral', 1, 1),
(394, 'purchased', '4', 'It is worst', 'neutral', 2, 1),
(395, 'purchased', '1', 'poor product i have ever seen', 'neutral', 4, 1),
(396, 'purchased', '5', 'worst product I have ever purchased', 'positive', 4, 1),
(397, 'purchased', '3', 'not good', 'positive', 3, 1),
(398, 'purchased', '3', 'poor purchase', 'positive', 10, 1),
(399, 'purchased', '2', 'great purchase', 'positive', 10, 1),
(400, 'purchased', '5', 'super', 'neutral', 5, 1),
(401, 'purchased', '2', 'It is very good product', 'positive', 8, 1),
(402, 'purchased', '1', 'it is good\r', 'positive', 5, 1),
(403, 'purchased', '2', 'good', 'positive', 8, 1),
(404, 'purchased', '5', 'It is worst', 'neutral', 10, 1),
(405, 'purchased', '4', 'poor product i have ever seen', 'negative', 10, 1),
(406, 'purchased', '3', 'worst product I have ever purchased', 'negative', 7, 1),
(407, 'purchased', '2', 'not good', 'negative', 10, 1),
(408, 'purchased', '2', 'poor purchase', 'negative', 3, 1),
(409, 'not purchased', '4', 'great purchase', 'positive', 2, 1),
(410, 'purchased', '1', 'super', 'positive', 3, 1),
(411, 'not purchased', '5', 'It is very good product', 'positive', 7, 1),
(412, 'purchased', '3', 'it is good\r', 'positive', 10, 1),
(413, 'purchased', '3', 'good', 'positive', 9, 1),
(414, 'purchased', '2', 'It is worst', 'negative', 5, 1),
(415, 'purchased', '5', 'poor product i have ever seen', 'neutral', 7, 1),
(416, 'purchased', '2', 'worst product I have ever purchased', 'neutral', 1, 1),
(417, 'not purchased', '1', 'not good', 'neutral', 4, 1),
(418, 'not purchased', '2', 'poor purchase', 'positive', 5, 1),
(419, 'purchased', '5', 'great purchase', 'positive', 5, 1),
(420, 'not purchased', '4', 'super', 'positive', 7, 1),
(421, 'not purchased', '3', 'It is very good product', 'positive', 7, 1),
(422, 'not purchased', '2', 'it is good\r', 'neutral', 7, 1),
(423, 'purchased', '2', 'good', 'negative', 1, 1),
(424, 'not purchased', '4', 'It is worst', 'negative', 7, 1),
(425, 'purchased', '1', 'poor product i have ever seen', 'negative', 2, 1),
(426, 'purchased', '5', 'worst product I have ever purchased', 'negative', 3, 1),
(427, 'purchased', '3', 'not good', 'positive', 6, 1),
(428, 'purchased', '3', 'poor purchase', 'positive', 7, 1),
(429, 'purchased', '2', 'great purchase', 'positive', 8, 1),
(430, 'purchased', '5', 'super', 'positive', 5, 1),
(431, 'purchased', '2', 'It is very good product', 'positive', 6, 1),
(432, 'not purchased', '1', 'it is good\r', 'negative', 10, 1),
(433, 'not purchased', '2', 'good', 'neutral', 5, 1),
(434, 'not purchased', '5', 'It is worst', 'neutral', 4, 1),
(435, 'not purchased', '4', 'poor product i have ever seen', 'neutral', 1, 1),
(436, 'purchased', '3', 'worst product I have ever purchased', 'positive', 9, 1),
(437, 'purchased', '2', 'not good', 'positive', 1, 1),
(438, 'purchased', '2', 'poor purchase', 'positive', 8, 1),
(439, 'purchased', '4', 'great purchase', 'positive', 1, 1),
(440, 'purchased', '1', 'super', 'neutral', 4, 1),
(441, 'purchased', '5', 'It is very good product', 'positive', 7, 1),
(442, 'purchased', '3', 'it is good\r', 'positive', 10, 1),
(443, 'not purchased', '3', 'good', 'positive', 5, 1),
(444, 'purchased', '2', 'It is worst', 'neutral', 9, 1),
(445, 'not purchased', '5', 'poor product i have ever seen', 'negative', 2, 1),
(446, 'not purchased', '2', 'worst product I have ever purchased', 'negative', 6, 1),
(447, 'purchased', '1', 'not good', 'negative', 3, 1),
(448, 'purchased', '2', 'poor purchase', 'negative', 2, 1),
(449, 'purchased', '5', 'great purchase', 'positive', 5, 1),
(450, 'not purchased', '4', 'super', 'positive', 7, 1),
(451, 'purchased', '3', 'It is very good product', 'positive', 2, 1),
(452, 'not purchased', '2', 'it is good\r', 'positive', 10, 1),
(453, 'purchased', '2', 'good', 'positive', 3, 1),
(454, 'purchased', '4', 'It is worst', 'negative', 10, 1),
(455, 'purchased', '1', 'poor product i have ever seen', 'neutral', 1, 1),
(456, 'purchased', '5', 'worst product I have ever purchased', 'neutral', 5, 1),
(457, 'purchased', '3', 'not good', 'neutral', 7, 1),
(458, 'purchased', '3', 'poor purchase', 'positive', 6, 1),
(459, 'purchased', '2', 'great purchase', 'positive', 3, 1),
(460, 'purchased', '5', 'super', 'positive', 1, 1),
(461, 'purchased', '2', 'It is very good product', 'positive', 10, 1),
(462, 'purchased', '1', 'it is good\r', 'neutral', 6, 1),
(463, 'purchased', '2', 'good', 'negative', 10, 1),
(464, 'purchased', '5', 'It is worst', 'negative', 7, 1),
(465, 'purchased', '4', 'poor product i have ever seen', 'negative', 7, 1),
(466, 'purchased', '3', 'worst product I have ever purchased', 'negative', 9, 1),
(467, 'purchased', '2', 'not good', 'positive', 6, 1),
(468, 'purchased', '2', 'poor purchase', 'positive', 10, 1),
(469, 'not purchased', '4', 'great purchase', 'positive', 10, 1),
(470, 'purchased', '1', 'super', 'positive', 7, 1),
(471, 'not purchased', '5', 'It is very good product', 'positive', 1, 1),
(472, 'purchased', '3', 'it is good\r', 'negative', 5, 1),
(473, 'purchased', '3', 'good', 'neutral', 5, 1),
(474, 'purchased', '2', 'It is worst', 'neutral', 10, 1),
(475, 'purchased', '5', 'poor product i have ever seen', 'neutral', 10, 1),
(476, 'purchased', '2', 'worst product I have ever purchased', 'positive', 1, 1),
(477, 'not purchased', '1', 'not good', 'positive', 3, 1),
(478, 'not purchased', '2', 'poor purchase', 'positive', 10, 1),
(479, 'purchased', '5', 'great purchase', 'positive', 7, 1),
(480, 'not purchased', '4', 'super', 'neutral', 5, 1),
(481, 'not purchased', '3', 'It is very good product', 'positive', 3, 1),
(482, 'not purchased', '2', 'it is good\r', 'positive', 1, 1),
(483, 'purchased', '2', 'good', 'positive', 8, 1),
(484, 'not purchased', '4', 'It is worst', 'neutral', 2, 1),
(485, 'purchased', '1', 'poor product i have ever seen', 'negative', 5, 1),
(486, 'purchased', '5', 'worst product I have ever purchased', 'negative', 4, 1),
(487, 'purchased', '3', 'not good', 'negative', 1, 1),
(488, 'purchased', '3', 'poor purchase', 'negative', 1, 1),
(489, 'purchased', '2', 'great purchase', 'positive', 9, 1),
(490, 'purchased', '5', 'super', 'positive', 5, 1),
(491, 'purchased', '2', 'It is very good product', 'positive', 10, 1),
(492, 'not purchased', '1', 'it is good\r', 'positive', 10, 1),
(493, 'not purchased', '2', 'good', 'positive', 3, 1),
(494, 'not purchased', '5', 'It is worst', 'negative', 4, 1),
(495, 'not purchased', '4', 'poor product i have ever seen', 'neutral', 7, 1),
(496, 'purchased', '3', 'worst product I have ever purchased', 'neutral', 1, 1),
(497, 'purchased', '2', 'not good', 'neutral', 8, 1),
(498, 'purchased', '2', 'poor purchase', 'positive', 9, 1),
(499, 'purchased', '4', 'great purchase', 'positive', 5, 1),
(500, 'purchased', '1', 'super', 'positive', 8, 1),
(501, 'purchased', '5', 'It is very good product', 'positive', 2, 1),
(502, 'purchased', '3', 'it is good\r', 'neutral', 5, 1),
(503, 'not purchased', '3', 'good', 'negative', 2, 1),
(504, 'purchased', '2', 'It is worst', 'negative', 10, 1),
(505, 'not purchased', '5', 'poor product i have ever seen', 'negative', 7, 1),
(506, 'not purchased', '2', 'worst product I have ever purchased', 'negative', 8, 1),
(507, 'purchased', '1', 'not good', 'positive', 4, 1),
(508, 'purchased', '2', 'poor purchase', 'positive', 5, 1),
(509, 'purchased', '5', 'great purchase', 'positive', 6, 1),
(510, 'not purchased', '4', 'super', 'positive', 9, 1),
(511, 'purchased', '3', 'It is very good product', 'positive', 2, 1),
(512, 'not purchased', '2', 'it is good\r', 'negative', 6, 1),
(513, 'purchased', '2', 'good', 'neutral', 10, 1),
(514, 'purchased', '4', 'It is worst', 'neutral', 9, 1),
(515, 'purchased', '1', 'poor product i have ever seen', 'neutral', 1, 1),
(516, 'purchased', '5', 'worst product I have ever purchased', 'positive', 4, 1),
(517, 'purchased', '3', 'not good', 'positive', 1, 1),
(518, 'purchased', '3', 'poor purchase', 'positive', 9, 1),
(519, 'purchased', '2', 'great purchase', 'positive', 6, 1),
(520, 'purchased', '5', 'super', 'neutral', 8, 1),
(521, 'purchased', '2', 'It is very good product', 'positive', 4, 1),
(522, 'purchased', '1', 'it is good\r', 'positive', 10, 1),
(523, 'purchased', '2', 'good', 'positive', 2, 1),
(524, 'purchased', '5', 'It is worst', 'neutral', 7, 1),
(525, 'purchased', '4', 'poor product i have ever seen', 'negative', 2, 1),
(526, 'purchased', '3', 'worst product I have ever purchased', 'negative', 2, 1),
(527, 'purchased', '2', 'not good', 'negative', 6, 1),
(528, 'purchased', '2', 'poor purchase', 'negative', 8, 1),
(529, 'not purchased', '4', 'great purchase', 'positive', 10, 1),
(530, 'purchased', '1', 'super', 'positive', 8, 1),
(531, 'not purchased', '5', 'It is very good product', 'positive', 1, 1),
(532, 'purchased', '3', 'it is good\r', 'positive', 9, 1),
(533, 'purchased', '3', 'good', 'positive', 4, 1),
(534, 'purchased', '2', 'It is worst', 'negative', 4, 1),
(535, 'purchased', '5', 'poor product i have ever seen', 'neutral', 9, 1),
(536, 'purchased', '2', 'worst product I have ever purchased', 'neutral', 5, 1),
(537, 'not purchased', '1', 'not good', 'neutral', 1, 1),
(538, 'not purchased', '2', 'poor purchase', 'positive', 8, 1),
(539, 'purchased', '5', 'great purchase', 'positive', 5, 1),
(540, 'not purchased', '4', 'super', 'positive', 8, 1),
(541, 'not purchased', '3', 'It is very good product', 'positive', 5, 1),
(542, 'not purchased', '2', 'it is good\r', 'neutral', 1, 1),
(543, 'purchased', '2', 'good', 'negative', 3, 1),
(544, 'not purchased', '4', 'It is worst', 'negative', 3, 1),
(545, 'purchased', '1', 'poor product i have ever seen', 'negative', 3, 1),
(546, 'purchased', '5', 'worst product I have ever purchased', 'negative', 10, 1),
(547, 'purchased', '3', 'not good', 'positive', 2, 1),
(548, 'purchased', '3', 'poor purchase', 'positive', 5, 1),
(549, 'purchased', '2', 'great purchase', 'positive', 3, 1),
(550, 'purchased', '5', 'super', 'positive', 9, 1),
(551, 'purchased', '2', 'It is very good product', 'positive', 4, 1),
(552, 'not purchased', '1', 'it is good\r', 'negative', 9, 1),
(553, 'not purchased', '2', 'good', 'neutral', 10, 1),
(554, 'not purchased', '5', 'It is worst', 'neutral', 2, 1),
(555, 'not purchased', '4', 'poor product i have ever seen', 'neutral', 10, 1),
(556, 'purchased', '3', 'worst product I have ever purchased', 'positive', 9, 1),
(557, 'purchased', '2', 'not good', 'positive', 10, 1),
(558, 'purchased', '2', 'poor purchase', 'positive', 3, 1),
(559, 'purchased', '4', 'great purchase', 'positive', 1, 1),
(560, 'purchased', '1', 'super', 'neutral', 4, 1),
(561, 'purchased', '5', 'It is very good product', 'positive', 1, 1),
(562, 'purchased', '3', 'it is good\r', 'positive', 5, 1),
(563, 'not purchased', '3', 'good', 'positive', 5, 1),
(564, 'purchased', '2', 'It is worst', 'neutral', 3, 1),
(565, 'not purchased', '5', 'poor product i have ever seen', 'negative', 7, 1),
(566, 'not purchased', '2', 'worst product I have ever purchased', 'negative', 3, 1),
(567, 'purchased', '1', 'not good', 'negative', 5, 1),
(568, 'purchased', '2', 'poor purchase', 'negative', 10, 1),
(569, 'purchased', '5', 'great purchase', 'positive', 5, 1),
(570, 'not purchased', '4', 'super', 'positive', 7, 1),
(571, 'purchased', '3', 'It is very good product', 'positive', 1, 1),
(572, 'not purchased', '2', 'it is good\r', 'positive', 7, 1),
(573, 'purchased', '2', 'good', 'positive', 4, 1),
(574, 'purchased', '4', 'It is worst', 'negative', 8, 1),
(575, 'purchased', '1', 'poor product i have ever seen', 'neutral', 10, 1),
(576, 'purchased', '5', 'worst product I have ever purchased', 'neutral', 9, 1),
(577, 'purchased', '3', 'not good', 'neutral', 3, 1),
(578, 'purchased', '3', 'poor purchase', 'positive', 6, 1),
(579, 'purchased', '2', 'great purchase', 'positive', 2, 1),
(580, 'purchased', '5', 'super', 'positive', 5, 1),
(581, 'purchased', '2', 'It is very good product', 'positive', 10, 1),
(582, 'purchased', '1', 'it is good\r', 'neutral', 3, 1),
(583, 'purchased', '2', 'good', 'negative', 2, 1),
(584, 'purchased', '5', 'It is worst', 'negative', 9, 1),
(585, 'purchased', '4', 'poor product i have ever seen', 'negative', 2, 1),
(586, 'purchased', '3', 'worst product I have ever purchased', 'negative', 9, 1),
(587, 'purchased', '2', 'not good', 'positive', 4, 1),
(588, 'purchased', '2', 'poor purchase', 'positive', 6, 1),
(589, 'not purchased', '4', 'great purchase', 'positive', 8, 1),
(590, 'purchased', '1', 'super', 'positive', 6, 1),
(591, 'not purchased', '5', 'It is very good product', 'positive', 8, 1),
(592, 'purchased', '3', 'it is good\r', 'negative', 8, 1),
(593, 'purchased', '3', 'good', 'neutral', 1, 1),
(594, 'purchased', '2', 'It is worst', 'neutral', 1, 1),
(595, 'purchased', '5', 'poor product i have ever seen', 'neutral', 3, 1),
(596, 'purchased', '2', 'worst product I have ever purchased', 'positive', 6, 1),
(597, 'not purchased', '1', 'not good', 'positive', 3, 1),
(598, 'not purchased', '2', 'poor purchase', 'positive', 4, 1),
(599, 'purchased', '5', 'great purchase', 'positive', 5, 1),
(600, 'not purchased', '4', 'super', 'neutral', 2, 1),
(601, 'not purchased', '1', 'it is good', 'positive', 4, 1),
(602, 'not purchased', '1', 'it is good', 'positive', 4, 1),
(603, 'not purchased', '3', 'it is good product', 'positive', 2, 54),
(604, 'not purchased', '3', 'thanks', 'neutral', 1, 2),
(605, 'not purchased', '4', 'good product', 'positive', 11, 2),
(606, 'not purchased', '3', 'thank you', 'neutral', 15, 54),
(607, 'not purchased', '4', 'it is good product\r\n', 'positive', 2, 55);

-- --------------------------------------------------------

--
-- Table structure for table `user_purchase`
--

CREATE TABLE IF NOT EXISTS `user_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `totalprice` double NOT NULL,
  `status` varchar(200) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `purhased_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_purchase_customer_id_d874c240_fk_user_users_id` (`customer_id`),
  KEY `user_purchase_purhased_id_0f782911_fk_admins_prodcuts_id` (`purhased_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_purchase`
--

INSERT INTO `user_purchase` (`id`, `quantity`, `totalprice`, `status`, `customer_id`, `purhased_id`) VALUES
(1, 1, 10000, 'purchased', 1, 3),
(2, 2, 0, 'incart', 55, 3),
(3, 0, 0, 'incart', 55, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_users`
--

CREATE TABLE IF NOT EXISTS `user_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `location` varchar(200) NOT NULL,
  `profession` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `user_users`
--

INSERT INTO `user_users` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `mobile`, `location`, `profession`) VALUES
(1, 'vinay', 'krishnan', 'vinay', '123', 'gokul@gmail.com', '9685741230', 'Chennai', 'Accounting'),
(2, 'rahul', 'kissan', 'gokul', '123', 'gokul@gmail.com', '9685741230', 'Chennai', 'Animation'),
(3, 'siva', 'kumar', 'rahul', '123', 'gokul@gmail.com', '9685741230', 'Chennai', 'IT'),
(4, 'suresh', 'kumar', 'siva', '123', 'gokul@gmail.com', '9685741230', 'Mumbai', 'Dairy'),
(5, 'jaya', 'kumar', 'suresh', '123', 'gokul@gmail.com', '9685741230', 'Mumbai', 'Construction'),
(6, 'shakthi', 'm', 'jaya', '123', 'gokul@gmail.com', '9685741230', 'Mumbai', 'Computer Hardware'),
(7, 'ramya', 's', 'shakthi', '123', 'gokul@gmail.com', '9685741230', 'Mumbai', 'Computer Hardware'),
(8, 'ragu', 's', 'ramya', '123', 'gokul@gmail.com', '9685741230', 'Delhi', 'Consumer Service'),
(9, 'ram', 'g', 'ragu', '123', 'gokul@gmail.com', '9685741230', 'Delhi', 'Farming'),
(10, 'dev', 's', 'ram', '123', 'gokul@gmail.com', '9685741230', 'Cuttack', 'Farming'),
(11, 'diya', 'c', 'dev', '123', 'gokul@gmail.com', '9685741230', 'Pune', 'Fine Arts'),
(12, 'priya', 'g', 'diya', '123', 'gokul@gmail.com', '9685741230', 'Nasik', 'Hospital/Health care'),
(13, 'priyanka', 'g', 'priya', '123', 'gokul@gmail.com', '9685741230', 'Bangalore', 'Hospital/Health care'),
(14, 'sabari', 'e', 'priyanka', '123', 'gokul@gmail.com', '9685741230', 'Bangalore', 'Hospital/Health care'),
(15, 'nathan', 'c', 'sabari', '123', 'gokul@gmail.com', '9685741230', 'Hyderabad', 'IT'),
(16, 'sivaraj', 'e', 'nathan', '123', 'gokul@gmail.com', '9685741230', 'Hyderabad', 'IT'),
(17, 'navaneetha', 'mm', 'sivaraj', '123', 'gokul@gmail.com', '9685741230', 'Tiruvanandapuram', 'IT'),
(18, 'kabilan', 'm', 'navaneetha', '123', 'gokul@gmail.com', '9685741230', 'Tiruvanandapuram', 'Animation'),
(19, 'ashok', 'kumar', 'kabilan', '123', 'gokul@gmail.com', '9685741230', 'Delhi', 'Accounting'),
(20, 'abi', 'v', 'ashok', '123', 'gokul@gmail.com', '9685741230', 'Bhopal', 'Accounting'),
(21, 'anu', 'v', 'abi', '123', 'gokul@gmail.com', '9685741230', 'Patna', 'Animation'),
(22, 'anusha', 'n', 'anu', '123', 'gokul@gmail.com', '9685741230', 'Chennai', 'IT'),
(23, 'dipa', 'karmakar', 'anusha', '123', 'gokul@gmail.com', '9685741230', 'Chennai', 'Hospital/Health care'),
(24, 'deepika', 'j', 'dipa', '123', 'gokul@gmail.com', '9685741230', 'Chennai', 'Farming'),
(25, 'deepak', 'p', 'deepika', '123', 'gokul@gmail.com', '9685741230', 'Mumbai', 'Consumer Service'),
(26, 'mohammed', 'fazi', 'deepak', '123', 'gokul@gmail.com', '9685741230', 'Mumbai', 'Computer Hardware'),
(27, 'yokesh', 'j', 'mohammed', '123', 'gokul@gmail.com', '9685741230', 'Mumbai', 'Computer Hardware'),
(28, 'divya', 'prabha', 'yokesh', '123', 'gokul@gmail.com', '9685741230', 'Mumbai', 'Food Production'),
(29, 'kannan', 'k', 'divya', '123', 'gokul@gmail.com', '9685741230', 'Delhi', 'Food Production'),
(30, 'kamal', 'k', 'kannan', '123', 'gokul@gmail.com', '9685741230', 'Delhi', 'Food Production'),
(31, 'amaresh', 'v', 'kamal', '123', 'gokul@gmail.com', '9685741230', 'Cuttack', 'Food Production'),
(32, 'kesavan', 's', 'amaresh', '123', 'gokul@gmail.com', '9685741230', 'Pune', 'IT'),
(33, 'madhavan', 't', 'kesavan', '123', 'gokul@gmail.com', '9685741230', 'Nasik', 'IT'),
(34, 'komagal', 'e', 'madhavan', '123', 'gokul@gmail.com', '9685741230', 'Bangalore', 'Animation'),
(35, 'kalaimagal', 'g', 'komagal', '123', 'gokul@gmail.com', '9685741230', 'Bangalore', 'Accounting'),
(36, 'deepti', 'j', 'kalaimagal', '123', 'gokul@gmail.com', '9685741230', 'Hyderabad', 'Accounting'),
(37, 'pranav', 'n', 'deepti', '123', 'gokul@gmail.com', '9685741230', 'Hyderabad', 'Accounting'),
(38, 'sumalatha', 'k', 'pranav', '123', 'gokul@gmail.com', '9685741230', 'Tiruvanandapuram', 'Food Production'),
(39, 'latha', 'k', 'sumalatha', '123', 'gokul@gmail.com', '9685741230', 'Tiruvanandapuram', 'Food Production'),
(40, 'roopesh', 'v', 'latha', '123', 'gokul@gmail.com', '9685741230', 'Chennai', 'Hospital/Health care'),
(41, 'rakesh', 's', 'roopesh', '123', 'gokul@gmail.com', '9685741230', 'Chennai', 'Hospital/Health care'),
(42, 'kamalesh', 't', 'rakesh', '123', 'gokul@gmail.com', '9685741230', 'Chennai', 'Hospital/Health care'),
(43, 'kamala', 'e', 'kamalesh', '123', 'gokul@gmail.com', '9685741230', 'Mumbai', 'Dairy'),
(44, 'ranjini', 't', 'kamala', '123', 'gokul@gmail.com', '9685741230', 'Mumbai', 'Accounting'),
(45, 'karthi', 't', 'ranjini', '123', 'gokul@gmail.com', '9685741230', 'Mumbai', 'Dairy'),
(46, 'karthik', 'g', 'karthi', '123', 'gokul@gmail.com', '9685741230', 'Mumbai', 'Food Production'),
(47, 'velan', 'd', 'karthik', '123', 'gokul@gmail.com', '9685741230', 'Delhi', 'Sports'),
(48, 'devan', 'v', 'velan', '123', 'gokul@gmail.com', '9685741230', 'Delhi', 'Sports'),
(49, 'suba', 'n', 'devan', '123', 'gokul@gmail.com', '9685741230', 'Cuttack', 'Food Production'),
(50, 'chitra', 'b', 'suba', '123', 'gokul@gmail.com', '9685741230', 'Pune', 'Sports'),
(53, 'siv', 'raj', 'shiv', '123', 'shiv@gmail.com', '9685741230', 'Chennai', 'Accounting'),
(54, 'sabari', 'nathan', 'sabari', '1997', 'sabarinathan1350@gmail.com', '9789672189', 'Ambala', 'Animation'),
(55, 'santhosh', 'kumar', 'santhosh', '1998', 'santhothosh32@gmail.com', '9789672189', 'Chennai', 'Media Production');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD CONSTRAINT `user_feedback_product_id_fa325b04_fk_admins_prodcuts_id` FOREIGN KEY (`product_id`) REFERENCES `admins_prodcuts` (`id`),
  ADD CONSTRAINT `user_feedback_user_id_5b987fa1_fk_user_users_id` FOREIGN KEY (`user_id`) REFERENCES `user_users` (`id`);

--
-- Constraints for table `user_purchase`
--
ALTER TABLE `user_purchase`
  ADD CONSTRAINT `user_purchase_customer_id_d874c240_fk_user_users_id` FOREIGN KEY (`customer_id`) REFERENCES `user_users` (`id`),
  ADD CONSTRAINT `user_purchase_purhased_id_0f782911_fk_admins_prodcuts_id` FOREIGN KEY (`purhased_id`) REFERENCES `admins_prodcuts` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
