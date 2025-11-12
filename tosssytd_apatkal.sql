-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 12, 2025 at 11:31 AM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tosssytd_apatkal`
--

-- --------------------------------------------------------

--
-- Table structure for table `accidents`
--

CREATE TABLE `accidents` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `vehicle` varchar(50) NOT NULL,
  `accident_date` date NOT NULL,
  `location` text NOT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `description` text NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) DEFAULT 'pending',
  `driver_status` varchar(20) DEFAULT NULL,
  `driver_details` text,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `completion_confirmed` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accidents`
--

INSERT INTO `accidents` (`id`, `fullname`, `phone`, `vehicle`, `accident_date`, `location`, `latitude`, `longitude`, `description`, `photo`, `created_at`, `status`, `driver_status`, `driver_details`, `accepted_at`, `completed_at`, `completion_confirmed`) VALUES
(1, 'Test User', '9876543210', 'MP20ZE3605', '2025-10-04', 'Test Location', 22.71700000, 75.83370000, 'Test accident description', '', '2025-10-04 10:23:19', 'pending', NULL, NULL, NULL, NULL, 0),
(2, 'geetanjali', '7694975579', 'MP20PH2265', '2025-10-04', '8C2C+FRP, Peoples Campus, Bhanpur, Bhopal, Madhya Pradesh 462037, India (Lat: 23.301000, Lng: 77.421600)', 23.30100000, 77.42160000, 'ertyrd', '1759573448_screencapture-localhost-apatkal-2-apatkal-client-dashboard-php-2025-09-25-17_18_47.png', '2025-10-04 10:24:08', 'pending', NULL, NULL, NULL, NULL, 0),
(3, 'siddharth', '9508570649', 'MP20KJ0005', '2025-10-04', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154842, Lng: 79.926019)', 23.15484200, 79.92601923, 'testttttttt', '', '2025-10-04 10:39:36', 'pending', NULL, NULL, NULL, NULL, 0),
(4, 'siddharth', '9508570649', 'MP20KJ0005', '2025-10-04', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154840, Lng: 79.926030)', 23.15483966, 79.92603031, 'Mental Patient', '', '2025-10-04 10:45:53', 'pending', NULL, NULL, NULL, NULL, 0),
(5, 'siddharth', '9508570649', 'MP20KJ0005', '2025-10-04', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154839, Lng: 79.926032)', 23.15483918, 79.92603159, 'Ancle damaged', '', '2025-10-04 10:46:41', 'pending', NULL, NULL, NULL, NULL, 0),
(6, 'Raj', '7771076100', 'mp20ac3893', '2025-10-04', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154839, Lng: 79.926032)', 23.15483918, 79.92603159, 'Testing no 2', '', '2025-10-04 10:47:27', 'pending', NULL, NULL, NULL, NULL, 0),
(8, 'Krishna Vishwakarma', '8959176446', 'mp20ab2010', '2025-10-04', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154831, Lng: 79.926038)', 23.15483134, 79.92603816, 'Hand damaged', '', '2025-10-04 11:31:25', 'resolved', 'completed', 'Driver: Rajesh Sharma | Vehicle: DL01AB1234', '2025-10-27 09:02:26', '2025-10-27 09:02:48', 1),
(9, 'siddharth', '9508570649', 'MP20KJ0005', '2025-10-04', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154840, Lng: 79.926024)', 23.15484042, 79.92602427, 'Testing 7', '', '2025-10-04 11:44:15', 'pending', NULL, NULL, NULL, NULL, 0),
(10, 'siddharth', '9508570649', 'MP20KJ0005', '2025-10-06', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155037, Lng: 79.925987)', 23.15503750, 79.92598680, 'Full mental patient', '', '2025-10-06 08:37:50', 'pending', NULL, NULL, NULL, NULL, 0),
(37, 'shivam kumar', '7694975579', 'MP20PH2985', '2025-10-24', '82RX+87C, Railway Colony Main Rd, Ratlam Railway Colony, Railway Colony, Ratlam, Madhya Pradesh 457001, India (Lat: 23.340646, Lng: 75.048550)', 23.34064640, 75.04855040, 'gsa', '', '2025-10-24 07:00:52', 'pending', NULL, NULL, NULL, NULL, 0),
(38, 'Shreyash', '9755833563', 'mp20ch8790', '2025-10-24', '82RX+87C, Railway Colony Main Rd, Ratlam Railway Colony, Railway Colony, Ratlam, Madhya Pradesh 457001, India (Lat: 23.340646, Lng: 75.048550)', 23.34064640, 75.04855040, 'dsf', '', '2025-10-24 07:29:01', 'pending', NULL, NULL, NULL, NULL, 0),
(39, 'Shreyash', '9755833563', 'mp20ch8790', '2025-10-24', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154835, Lng: 79.926040)', 23.15483519, 79.92603965, 'nnnnnnnnn', '', '2025-10-24 07:30:56', 'pending', NULL, NULL, NULL, NULL, 0),
(40, 'Shreyash', '9755833563', 'mp20ch8790', '2025-10-24', '82RX+87C, Railway Colony Main Rd, Ratlam Railway Colony, Railway Colony, Ratlam, Madhya Pradesh 457001, India (Lat: 23.340646, Lng: 75.048550)', 23.34064640, 75.04855040, 'saddf', '', '2025-10-24 07:43:53', 'pending', NULL, NULL, NULL, NULL, 0),
(41, 'sid', '9508578649', 'MP20PH2652', '2025-10-24', 'Khandelwal Complex, 1, Nagpur Rd, near gulzar Hotel, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155042, Lng: 79.926017)', 23.15504240, 79.92601740, 'swqdde', '', '2025-10-24 08:28:56', 'resolved', 'completed', 'Driver: Dhaneshwari Patel | Vehicle: mp20mz4528', '2025-10-24 08:36:49', '2025-10-24 08:37:58', 1),
(42, 'Shreyash', '9755833563', 'mp20ch8790', '2025-10-24', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154826, Lng: 79.926054)', 23.15482596, 79.92605394, 'yo', '', '2025-10-24 08:54:40', 'pending', NULL, NULL, NULL, NULL, 0),
(43, 'Shreyash', '9755833563', 'mp20ch8790', '2025-10-24', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154836, Lng: 79.926040)', 23.15483599, 79.92603998, 'gttt', '', '2025-10-24 09:00:59', 'resolved', 'completed', 'Driver: Rajesh Sharma | Vehicle: DL01AB1234', '2025-10-24 09:07:25', '2025-10-24 09:08:00', 1),
(44, 'Shreyash', '9755833563', 'mp20ch8790', '2025-10-24', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154835, Lng: 79.926044)', 23.15483536, 79.92604382, 'grgr', '', '2025-10-24 09:15:17', 'pending', NULL, NULL, NULL, NULL, 0),
(45, 'Shreyash', '9755833563', 'mp20ch8790', '2025-10-24', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154833, Lng: 79.926047)', 23.15483339, 79.92604663, 'dg', '', '2025-10-24 11:09:14', 'pending', NULL, NULL, NULL, NULL, 0),
(46, 'Krishna Vishwakarma', '8959176446', 'mp20ab2010', '2025-10-25', '5/1301/53, Padmadhar Colony, Rewa, Madhya Pradesh 486001, India (Lat: 24.546509, Lng: 81.281024)', 24.54650880, 81.28102400, 'testing mode on', '', '2025-10-25 05:10:29', 'pending', NULL, NULL, NULL, NULL, 0),
(47, 'wsffdg', '7897565363', 'MP20PH2652', '2025-10-25', '298M+HCP, Beohari, Madhya Pradesh 484774, India (Lat: 24.016701, Lng: 81.383584)', 24.01670071, 81.38358403, 'test', '', '2025-10-25 07:02:22', 'investigating', 'assigned', 'Driver: Rajesh Sharma | Vehicle: DL01AB1234', '2025-10-25 08:13:22', NULL, 0),
(48, 'sid', '9508578649', 'MP20PH2652', '2025-10-25', 'H4PX+2MW, Ashok Nagar, Lohia Nagar, Patna, Bihar 800020, India (Lat: 25.584600, Lng: 85.149100)', 25.58460000, 85.14910000, 'i am toss user', '', '2025-10-25 09:04:38', 'pending', NULL, NULL, NULL, NULL, 0),
(49, 'sid', '9508578649', 'MP20PH2652', '2025-10-25', 'H4PX+2MW, Ashok Nagar, Lohia Nagar, Patna, Bihar 800020, India (Lat: 25.584600, Lng: 85.149100)', 25.58460000, 85.14910000, ' i am toss user', '', '2025-10-25 09:05:44', 'pending', NULL, NULL, NULL, NULL, 0),
(50, 'Geetanjali', '7694975579', 'mp20ch8732', '2025-10-25', '5/1301/53, Padmadhar Colony, Rewa, Madhya Pradesh 486001, India (Lat: 24.546509, Lng: 81.281024)', 24.54650880, 81.28102400, 'tres', '', '2025-10-25 09:10:17', 'pending', NULL, NULL, NULL, NULL, 0),
(51, 'sid', '9508578649', 'MP20PH2652', '2025-10-25', '5/1301/53, Padmadhar Colony, Rewa, Madhya Pradesh 486001, India (Lat: 24.546509, Lng: 81.281024)', 24.54650880, 81.28102400, 'asfefdvdf', '', '2025-10-25 09:11:19', 'pending', NULL, NULL, NULL, NULL, 0),
(52, 'Geetanjali', '7694975579', 'MP20CH8732', '2025-10-25', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155026, Lng: 79.925989)', 23.15502570, 79.92598910, 'Shhsvvvsv', '', '2025-10-25 09:13:52', 'resolved', 'completed', 'Driver: Rajesh Sharma | Vehicle: DL01AB1234', '2025-10-25 16:19:20', '2025-10-25 16:19:47', 1),
(53, 'sid', '9508578649', 'MP20PH2652', '2025-10-25', 'M6Q6+2WF, Pokhra Muhalla, Hajipur, Bihar 844101, India (Lat: 25.687300, Lng: 85.212100)', 25.68730000, 85.21210000, 'vxg jh,jh hfhv ,j,h,', '', '2025-10-25 09:31:25', 'resolved', 'completed', 'Driver: shivam kumar | Vehicle: 374vrjdj4', '2025-10-25 09:31:53', '2025-10-25 09:32:49', 1),
(54, 'Geetanjali', '7694975579', 'MP20CH8732', '2025-10-25', 'Area, 41, Kanchanpur, Jabalpur, Vehicle Fac. Jabalpur, Madhya Pradesh 482004, India (Lat: 23.201575, Lng: 79.968701)', 23.20157480, 79.96870060, 'Gwhwjj', '', '2025-10-25 16:22:13', 'pending', NULL, NULL, NULL, NULL, 0),
(55, 'Geetanjali', '7694975579', 'MP20CH8732', '2025-10-26', '155082, Kanchanpur, Jabalpur, Vehicle Fac. Jabalpur, Madhya Pradesh 482004, India (Lat: 23.201115, Lng: 79.968404)', 23.20111510, 79.96840400, 'Dfghb', '', '2025-10-26 15:28:56', 'pending', NULL, NULL, NULL, NULL, 0),
(56, 'sid', '9508578649', 'mp20ph2652', '2025-10-29', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155120, Lng: 79.926031)', 23.15512010, 79.92603070, 'ffguf', '', '2025-10-29 05:37:02', 'pending', NULL, NULL, NULL, NULL, 0),
(57, 'Geetanjali', '7694975579', 'mp20ch8732', '2025-10-29', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155103, Lng: 79.926042)', 23.15510330, 79.92604190, 'jhg', '', '2025-10-29 05:39:20', 'resolved', 'completed', 'Driver: Dhaneshwari Patel | Vehicle: mp20mz4528', '2025-11-01 07:07:10', '2025-11-01 07:07:22', 1),
(58, 'sid', '7654891234', 'mp20ph2652', '2025-10-29', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155134, Lng: 79.926037)', 23.15513360, 79.92603670, 'test', '', '2025-10-29 05:45:08', 'resolved', 'completed', 'Driver: Mohit Chavhan | Vehicle: mh12pk7894', '2025-10-29 11:47:59', '2025-10-29 11:48:35', 1),
(59, 'sid', '8596871020', 'MP20PH2285', '2025-10-31', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155108, Lng: 79.926032)', 23.15510810, 79.92603230, 'dsff', '', '2025-10-31 09:49:54', 'pending', NULL, NULL, NULL, NULL, 0),
(60, 'Geetanjali', '7694975579', 'mp20ch8732', '2025-10-31', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155072, Lng: 79.926026)', 23.15507210, 79.92602620, 'wdWFED', '', '2025-10-31 09:50:41', 'investigating', 'assigned', 'Driver: siddharth | Vehicle: mp20cb8765', '2025-10-31 09:59:04', NULL, 0),
(61, 'Geetanjali', '7694975579', 'mp20ch8732', '2025-10-31', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155072, Lng: 79.926026)', 23.15507210, 79.92602620, 'ASDCXz', '', '2025-10-31 09:51:20', 'resolved', 'completed', 'Driver: siddharth | Vehicle: mp20cb8765', '2025-10-31 09:52:04', '2025-10-31 09:52:45', 1),
(62, 'Krishna Vishwakarma', '8959176446', 'mp20ab2010', '2025-11-01', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155082, Lng: 79.926028)', 23.15508250, 79.92602780, 'ffhgfhjg', '', '2025-11-01 06:26:53', 'resolved', 'completed', 'Driver: siddharth | Vehicle: mp20cb8765', '2025-11-01 06:28:39', '2025-11-01 06:29:36', 1),
(63, 'Krishna Vishwakarma', '8959176446', 'mp20ab2010', '2025-11-01', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155083, Lng: 79.926035)', 23.15508260, 79.92603500, 'sadsad', '', '2025-11-01 07:01:17', 'resolved', 'completed', 'Driver: siddharth | Vehicle: mp20cb8765', '2025-11-01 07:01:55', '2025-11-01 07:04:03', 1),
(64, 'Krishna Vishwakarma', '8959176446', 'mp20ab2010', '2025-11-01', 'FV59+768 Unique Complex, near Mubaraka Complex, Bohra Bazar, Saifee Mohalla, Neemuch, Madhya Pradesh 458441, India (Lat: 24.458035, Lng: 74.868326)', 24.45803520, 74.86832640, 'fvhil', '', '2025-11-01 09:21:42', 'pending', NULL, NULL, NULL, NULL, 0),
(65, 'Krishna Vishwakarma', '8959176446', 'mp20ab2010', '2025-11-01', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155130, Lng: 79.926036)', 23.15513030, 79.92603610, 'erwqrwaf', '', '2025-11-01 09:24:15', 'resolved', 'completed', 'Driver: siddharth | Vehicle: mp20cb8765', '2025-11-01 09:25:17', '2025-11-01 09:26:01', 1),
(66, 'Yadav', '', 'Mp20ja6567', '2025-11-03', '220, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155193, Lng: 79.926109)', 23.15519350, 79.92610860, '', '', '2025-11-03 09:11:32', 'pending', NULL, NULL, NULL, NULL, 0),
(67, 'sid', '9508578649', 'MP20PH2652', '2025-11-03', '4WVJ+575, Cantt, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.142784, Lng: 79.930452)', 23.14278440, 79.93045240, 'sghs', '', '2025-11-03 09:13:17', 'pending', NULL, NULL, NULL, NULL, 0),
(68, 'sid', '9508578649', 'Mp20ph2652', '2025-11-03', '220, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155194, Lng: 79.926115)', 23.15519420, 79.92611490, 'Hi', '', '2025-11-03 09:15:47', 'resolved', 'completed', 'Driver: Rajesh Sharma | Vehicle: DL01AB1234', '2025-11-03 09:16:01', '2025-11-03 09:19:15', 1),
(69, 'Krishna Vishwakarma', '8959176446', 'mp20ab2010', '2025-11-05', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155117, Lng: 79.926028)', 23.15511660, 79.92602800, 'cdgsfd', '', '2025-11-05 12:26:08', 'pending', NULL, NULL, NULL, NULL, 0),
(70, 'Krishna Vishwakarma', '8959176446', 'mp20ab2010', '2025-11-06', '6CQ6+CH6, Birla Mandir Rd, Bhim Nagar Slums, Arera Hills, Bhopal, Madhya Pradesh 462003, India (Lat: 23.239066, Lng: 77.411123)', 23.23906560, 77.41112320, 'testing first Time ', '', '2025-11-06 05:20:16', 'pending', NULL, NULL, NULL, NULL, 0);

--
-- Triggers `accidents`
--
DELIMITER $$
CREATE TRIGGER `update_driver_details` BEFORE UPDATE ON `accidents` FOR EACH ROW BEGIN
    -- If driver_details is being set and it wasn't set before, update accepted_at
    IF NEW.driver_details IS NOT NULL AND OLD.driver_details IS NULL THEN
        SET NEW.accepted_at = NOW();
        SET NEW.driver_status = 'assigned';
    END IF;

    -- If driver_status is being updated to 'completed', set completed_at
    IF NEW.driver_status = 'completed' AND OLD.driver_status != 'completed' THEN
        SET NEW.completed_at = NOW();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `accident_photos`
--

CREATE TABLE `accident_photos` (
  `id` int(11) NOT NULL,
  `accident_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accident_photos`
--

INSERT INTO `accident_photos` (`id`, `accident_id`, `photo`) VALUES
(1, 4, '1757398421_screencapture-localhost-8080-apatkal-adminn-website-manager-php-2025-09-08-17_25_26.png'),
(2, 5, '1757398777_notify police.jpeg'),
(3, 6, '1757398995_Accident Report Icon Illustration.png'),
(5, 8, '1757400460_ss.png'),
(8, 11, '1757486832_1.jpeg'),
(9, 12, '1757497444_screencapture-localhost-8080-admin-about-php-2025-09-03-17_27_55 (1).png'),
(10, 13, '1757505286_screencapture-localhost-8080-apatkal-adminn-admin-dashboard-php-2025-09-08-17_24_22.png'),
(13, 16, '1757655333_screencapture-localhost-8080-apatkal-adminn-accidents-php-2025-09-08-17_26_14.png'),
(17, 23, '1758626019_Generated Image September 23, 2025 - 11_49AM.png'),
(20, 31, '1758964097_main-banner1 (1).jpg'),
(21, 32, '1758965091_image3.png'),
(22, 33, '1758971930_About US - The TOSS Journey.png'),
(23, 34, '1758974007_image5.png'),
(24, 35, '1758974469_image4.png'),
(25, 37, '1759128490_mlogo1.png'),
(26, 38, '1759146052_apatkal advertiser.png'),
(27, 39, '1759473061_screencapture-localhost-apatkal-2-apatkal-apatkal-adminn-client-list-php-2025-09-25-18_44_02.png'),
(37, 3, '1759573920_screencapture-localhost-apatkal-2-apatkal-client-dashboard-php-2025-09-25-17_18_47.png'),
(43, 10, '1759739870_screencapture-apatkal-in-2025-09-05-10_02_48.png'),
(47, 14, '1759740950_WhatsApp Image 2025-09-04 at 12.36.55 PM.jpeg'),
(48, 15, '1759740988_WhatsApp Image 2025-09-04 at 12.22.02 PM.jpeg'),
(50, 17, '1759742939_screencapture-103-14-120-163-8083-projects-2025-09-22-16_24_48.png'),
(52, 19, '1759831037_screencapture-localhost-apatkal-2-apatkal-client-dashboard-php-2025-09-25-17_18_47.png'),
(53, 20, '1759831977_screencapture-localhost-apatkal-2-apatkal-apatkal-adminn-accidents-php-2025-09-25-15_49_17.png'),
(54, 21, '1759832070_screencapture-localhost-apatkal-2-apatkal-client-family-php-2025-09-25-17_19_17.png'),
(57, 24, '1759835752_5df2c806-dc2b-4a25-bec2-454253e361ad (1).jpeg'),
(58, 25, '1759835838_5df2c806-dc2b-4a25-bec2-454253e361ad (1).jpeg'),
(59, 26, '1759905910_16781488-f740-49fd-94cd-c7f2e2fb0af4.jpeg'),
(60, 27, '1759922441_Arora.jpg'),
(61, 29, '1759953977_17599539450423967749380024610447.jpg'),
(62, 30, '1759984344_Arora.jpg'),
(66, 36, '1760166828_Vally.jpeg'),
(70, 40, '1761295973_360_F_310162798_6hWbaSFgDtWp4AhhaKPlTgAZUDL1c4UY.jpg'),
(71, 41, '1761296010_krishnaImage.webp'),
(72, 42, '1761296296_Logo - Web Development and App Development.png'),
(73, 43, '1761296459_Arora.jpg'),
(74, 44, '1761297317_aadhar_rajash.jpg'),
(75, 45, '1761304154_Unconfirmed 966022.crdownload.jpeg'),
(76, 46, '1761369029_apatkal_qr_1001.png'),
(77, 47, '1761375742_Screenshot 2025-10-25 123145.png'),
(78, 48, '1761383078_3.gif'),
(79, 49, '1761383144_WIN_20240404_11_05_06_Pro.png'),
(80, 50, '1761383417_giff.gif'),
(81, 51, '1761383479_apatkal_qr_1001.png'),
(82, 52, '1761383632_17613836257922329578442644097909.jpg'),
(83, 53, '1761384685_ChatGPT Image Jul 28, 2025, 05_42_32 PM.png'),
(84, 54, '1761409333_17614093209136885746503473734869.jpg'),
(85, 55, '1761492536_17614925202224115268090521918822.jpg'),
(86, 56, '1761716222_Black and Orange Professional Turn Ideas Into Impact LinkedIn Carousel.png'),
(87, 57, '1761716360_Screenshot 2025-10-25 164050.png'),
(88, 58, '1761716708_Black and Orange Professional Turn Ideas Into Impact LinkedIn Carousel.png'),
(89, 59, '1761904194_Snapchat-472251267.jpg'),
(90, 61, '1761904280_Snapchat-472251267.jpg'),
(91, 62, '1761978413_Screenshot_2023-06-07-01-08-48-146_com.whatsapp.jpg'),
(92, 63, '1761980477_WhatsApp Image 2025-10-01 at 01.03.18.jpeg'),
(93, 64, '1761988902_Black and Orange Professional Turn Ideas Into Impact LinkedIn Carousel.png'),
(94, 65, '1761989055_WhatsApp Image 2025-10-01 at 01.03.17.jpeg'),
(95, 69, '1762345568_Screenshot 2025-09-12 134809.png'),
(96, 70, '1762406416_Logo - Manpower & Third-Party Payroll.png');

-- --------------------------------------------------------

--
-- Table structure for table `accident_remarks`
--

CREATE TABLE `accident_remarks` (
  `id` int(11) NOT NULL,
  `accident_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accident_remarks`
--

INSERT INTO `accident_remarks` (`id`, `accident_id`, `user_id`, `user_name`, `user_role`, `remark`, `created_at`, `updated_at`) VALUES
(6, 30, 1, 'Admin ', 'admin', 'done', '2025-10-11 12:21:48', '2025-10-11 12:21:48'),
(0, 68, 1, 'Admin ', 'admin', 'case done', '2025-11-03 14:58:37', '2025-11-03 14:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `accident_reports`
--

CREATE TABLE `accident_reports` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `location` varchar(255) NOT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `accident_date` date NOT NULL,
  `vehicle_number` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `active_emergencies`
--

CREATE TABLE `active_emergencies` (
  `incident_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `incident_type` enum('accident','breakdown','medical','other') DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `status` enum('reported','dispatched','in_progress','resolved','cancelled') DEFAULT NULL,
  `priority` enum('low','medium','high','critical') DEFAULT NULL,
  `reported_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `active_pages_content`
--

CREATE TABLE `active_pages_content` (
  `page_id` int(11) DEFAULT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_description` text,
  `section_id` int(11) DEFAULT NULL,
  `section_name` varchar(100) DEFAULT NULL,
  `section_order` int(11) DEFAULT NULL,
  `component_id` int(11) DEFAULT NULL,
  `component_type` enum('text','image','video','button','form','link','html_block','icon','card','list') DEFAULT NULL,
  `content` longtext,
  `extra_settings` longtext,
  `component_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_profiles`
--

CREATE TABLE `admin_profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_profiles`
--

INSERT INTO `admin_profiles` (`id`, `user_id`, `first_name`, `last_name`, `email`, `phone`, `bio`, `profile_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'User', 'admin@apatkal.com', '', 'Administrator', 'admin_profile_1_1758795302.jpeg', '2025-09-25 14:38:18', '2025-09-25 15:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `vehicle_no` varchar(50) DEFAULT NULL,
  `vehicle_type` enum('two-wheeler','three-wheeler','four-wheeler') DEFAULT 'four-wheeler',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `house_no` varchar(100) DEFAULT NULL,
  `address` text,
  `landmark` varchar(200) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `assigned_staff` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` enum('paid','unpaid') DEFAULT 'unpaid',
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_method` enum('phonepe','upi','card','netbanking','wallet','cash','cheque') DEFAULT 'cash',
  `transaction_id` varchar(100) DEFAULT NULL,
  `gateway_transaction_id` varchar(100) DEFAULT NULL,
  `gateway_response` json DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `refund_date` datetime DEFAULT NULL,
  `refund_amount` decimal(10,2) DEFAULT NULL,
  `refund_reason` text,
  `notes` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `full_name`, `mobile_no`, `email`, `vehicle_no`, `vehicle_type`, `created_date`, `house_no`, `address`, `landmark`, `state`, `district`, `city`, `pincode`, `added_by`, `assigned_staff`, `photo`, `status`, `amount`, `payment_method`, `transaction_id`, `gateway_transaction_id`, `gateway_response`, `payment_date`, `refund_date`, `refund_amount`, `refund_reason`, `notes`, `created_at`, `updated_at`) VALUES
(26, 'Krishna Vishwakarma', '8959176446', 'Krishna.vishwakarma@tosssolution.in', 'mp20ab2010', 'four-wheeler', '2025-09-27 00:00:00', NULL, 'Toss solution Jabalpur', NULL, '', '', '', '482001', 1, NULL, NULL, 'paid', 999.00, 'phonepe', 'TXN_1760698191_26', 'PHONEPE_1760698192', '{\"state\": \"COMPLETED\", \"amount\": 99900, \"currency\": \"INR\", \"transactionId\": \"PHONEPE_1760698192\"}', '2025-10-17 16:19:52', NULL, NULL, NULL, NULL, '2025-09-27 13:37:09', '2025-10-17 16:19:52'),
(31, 'Shreyash', '9755833563', 'toss125training@gmail.com', 'mp20ch8790', 'two-wheeler', '2025-10-04 00:00:00', '', 'Shastri nagar', '', 'Madhya Pradesh', 'Jabalpur', 'Jabalpur', '482001', 1, NULL, 'uploads/clients/client_1759819263_68e4b5ff86706.jpeg', 'paid', 999.00, 'phonepe', 'TXN_1760701130_31', 'PHONEPE_1760701130', '{\"state\": \"COMPLETED\", \"amount\": 99900, \"currency\": \"INR\", \"responseCode\": \"PAYMENT_SUCCESS\", \"transactionId\": \"PHONEPE_1760701130\"}', '2025-10-17 17:08:50', NULL, NULL, NULL, NULL, '2025-10-04 16:26:11', '2025-10-17 17:08:50'),
(32, 'Ansh', '7806062421', 'admin@company.com', 'mp20ch8799', 'two-wheeler', '2025-10-04 00:00:00', '', 'ssd', '', 'Madhya Pradesh', 'Narsinghpur', 'NA', '487118', 1, NULL, 'uploads/clients/client_1759821423_68e4be6f4adcf.jpeg', 'unpaid', 999.00, 'phonepe', 'TXN_FAILED_1760701130_32', NULL, '{\"error\": \"Payment failed due to insufficient funds\", \"state\": \"FAILED\", \"amount\": 99900, \"currency\": \"INR\"}', '2025-10-17 17:08:50', NULL, NULL, NULL, NULL, '2025-10-04 16:53:06', '2025-10-29 12:56:29'),
(40, 'Geetanjali', '7694975570', 'geetanjali.tosscs@gmail.com', 'mp20ch8732', 'four-wheeler', '2025-10-06 00:00:00', '', 'jabalpur mm', '', 'Madhya Pradesh', 'Shahdol', 'Beohari', '484774', 1, NULL, NULL, 'paid', NULL, 'phonepe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-06 13:40:48', '2025-11-07 12:56:50'),
(42, 'sid', '8596871020', 'siddharth.toss.cs@gmail.com', 'MP20PH2285', 'four-wheeler', '2025-10-09 00:00:00', '0255', 'sss', 'sd', 'Madhya Pradesh', 'Jabalpur', 'Jabalpur', '482001', 13, NULL, NULL, 'unpaid', NULL, 'phonepe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 's', '2025-10-09 11:47:00', '2025-10-17 12:01:55'),
(44, 'sid', '9508578649', 'siddharth.toss.cs@gmail.com', 'MP20PH2652', 'three-wheeler', '2025-10-10 00:00:00', '0255', 'ewf', 'sd', 'Madhya Pradesh', 'Jabalpur', 'Jabalpur', '482004', 13, NULL, NULL, 'paid', NULL, 'phonepe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ed', '2025-10-10 17:35:16', '2025-10-16 12:39:31'),
(56, 'Gaus', '8770658824', 'admin@apatkal.com', 'Mp20nm2755', 'two-wheeler', '2025-10-25 00:00:00', NULL, 'Jabalpur', NULL, 'Madhya Pradesh', 'Jabalpur', 'Jabalpur', '482001', 1, NULL, NULL, 'unpaid', NULL, 'phonepe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-25 18:49:53', '2025-10-25 18:49:53'),
(58, 'dhaneshwari', '7489288334', 'dhaneshwari.tosscs@gmail.com', 'mp20ch8798', 'two-wheeler', '2025-10-29 00:00:00', NULL, 'jabalpur mm', NULL, 'Madhya Pradesh', 'Shahdol', 'Beohari', '484774', 1, NULL, NULL, 'unpaid', NULL, 'phonepe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-29 13:02:48', '2025-10-29 13:02:48'),
(81, 'lily', '7694975579', 'Krishna.vishwakarma@tosssolution.in', 'MP20sj2939', 'four-wheeler', '2025-11-07 00:00:00', NULL, 'gde', NULL, 'Madhya Pradesh', 'Jabalpur', 'Jabalpur', '482004', 1, NULL, NULL, 'unpaid', NULL, 'phonepe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-07 16:42:39', '2025-11-07 16:42:39'),
(82, 'Kritika', '7898140799', 'admin@apatkal.com', 'mp20ch8797', 'three-wheeler', '2025-11-08 00:00:00', NULL, 'vgx', NULL, 'Madhya Pradesh', 'Jabalpur', 'Jabalpur', '482001', 1, NULL, NULL, 'unpaid', NULL, 'phonepe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-11-08 10:48:30', '2025-11-08 10:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `client_family_members`
--

CREATE TABLE `client_family_members` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `full_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relationship` enum('spouse','son','daughter','father','mother','brother','sister','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_emergency_contact` tinyint(1) DEFAULT '0',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_family_members`
--

INSERT INTO `client_family_members` (`id`, `client_id`, `full_name`, `mobile_no`, `email`, `relationship`, `date_of_birth`, `address`, `photo`, `is_emergency_contact`, `notes`, `created_at`, `updated_at`) VALUES
(20, 26, 'Krishna Vishwakarma', '7869722272', 'toss125training@gmail.com', 'son', '2025-10-01', 'Toss solution Jabalpur', NULL, 1, NULL, '2025-09-27 13:59:40', '2025-09-27 13:59:40'),
(21, 33, 'siddharth', '9555363996', 'sid@gmail.com', 'brother', '2003-02-21', 'few', NULL, 1, NULL, '2025-10-03 13:21:57', '2025-10-03 13:21:57'),
(23, 40, 'siddharth', '7898140780', 'shreyash.toss.cs@gmail.com', 'brother', NULL, 'rrfff', NULL, 1, 'siish', '2025-10-07 13:03:26', '2025-10-07 13:07:55'),
(25, 44, 'amay', '7869722272', 'efw@gmail.com', 'brother', NULL, 'qwsa', NULL, 1, 'des', '2025-10-25 14:29:06', '2025-10-25 14:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `client_logins`
--

CREATE TABLE `client_logins` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `mobile_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive','suspended') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_logins`
--

INSERT INTO `client_logins` (`id`, `client_id`, `mobile_no`, `password`, `status`, `last_login`, `created_at`, `updated_at`) VALUES
(16, 26, '8959176446', '$2y$10$w/J.IYdmt.IKe/0CDWrsTOpe5l.OhICXUNQ548yrpDdjCkedVAg66', 'active', NULL, '2025-09-27 13:37:09', '2025-09-27 13:37:09'),
(25, 31, '9755833563', '$2y$10$v7SIFFRWL5O165iUIHfm0OaD8ieOk8PNtMWt88eApdIwEvHzLEjIS', 'active', NULL, '2025-10-04 16:26:11', '2025-10-06 13:29:57'),
(26, 32, '7806062421', '$2y$10$gJb.iYHYuiQLIYISVxvVL.WiHpDn15bMq199vwbA.Ix0N9YqnUN9S', 'active', NULL, '2025-10-04 16:53:06', '2025-10-06 13:29:22'),
(28, 40, '7694975579', '$2y$10$a2glOoM/bamJkcP12om.ruoUyMJaD70BK7T4Xt8J5DoWwi1pmFH2C', 'active', NULL, '2025-10-06 13:40:48', '2025-10-06 13:40:48'),
(30, 42, '8596871020', '$2y$10$UwVCb81RuDX1GqlUkyl51OGrycgHGpTSecSfR/w01sw8uay5UYbK6', 'active', NULL, '2025-10-09 11:47:00', '2025-10-09 11:47:00'),
(32, 44, '9508578649', '$2y$10$PNKO5FE.m.4OE9NXtTFexev0m4nF8Oco7iz9dQ/WV2UHiczce.ROi', 'active', NULL, '2025-10-10 17:35:16', '2025-10-10 17:35:16'),
(39, 56, '8770658824', '$2y$10$ZDdP0decuYMQsx56zsOkTekOrFXlRfNzaD6IOj/U9kwqWF0ucpZaq', 'active', NULL, '2025-10-25 18:49:54', '2025-10-25 18:49:54'),
(41, 58, '7489288334', '$2y$10$ZGWRusSuJZMAzs2Xv8XwU.ERfvMxjGNRay9C/.7nmNZsJjaQIc.jm', 'active', NULL, '2025-10-29 13:02:48', '2025-10-29 13:02:48'),
(44, 61, '7694975579', '$2y$10$hcSDXQM/opgH5JGmX4mFneiB6S73Qr5LqGdwjU6MuY/JDAJixL2ya', 'active', NULL, '2025-11-07 13:01:44', '2025-11-07 13:01:44'),
(45, 62, '7694975579', '$2y$10$JiECgY20T1e9XPJHWype9ezLjMU8FpajLX98ievtvYl9vJyRzD6QG', 'active', NULL, '2025-11-07 13:14:10', '2025-11-07 13:14:10'),
(46, 63, '7694975579', '$2y$10$KvYAh1l9AN3708wUCH1jj.s.0nZbzZ1mDeqUbojARF2NIuenSvkQK', 'active', NULL, '2025-11-07 13:19:11', '2025-11-07 13:19:11'),
(47, 64, '7694975579', '$2y$10$tCUQuQAScf1R7yu/yranPOkMxddmEx6Bs8iFApQhEVwjzo1QZSLqm', 'active', NULL, '2025-11-07 13:31:34', '2025-11-07 13:31:34'),
(48, 65, '7694975579', '$2y$10$3Dk3HVZCbBP4MyMJZaM5TOTwYTk6TNVqm7rnT33R8XU6GKj9O1nQW', 'active', NULL, '2025-11-07 13:35:42', '2025-11-07 13:35:42'),
(49, 66, '7694975579', '$2y$10$JYplESTJLt90BnFR3AH.V.zMi20VmpCOZxFBZ7hk7nyl9FyrRdZI6', 'active', NULL, '2025-11-07 13:38:28', '2025-11-07 13:38:28'),
(50, 67, '7694975579', '$2y$10$EjbaKn9hP.whnP/sXKhkH.p/z5nG30lE0OA5/p.VLdOWB.bPm4WNa', 'active', NULL, '2025-11-07 13:43:06', '2025-11-07 13:43:06'),
(51, 68, '7694975579', '$2y$10$qMPPt5Z4BcS6fgcnA009iefD6/h9Ziwah8IlvI4cLENkMB7uG9Np6', 'active', NULL, '2025-11-07 13:48:37', '2025-11-07 13:48:37'),
(52, 69, '7694975579', '$2y$10$72DnTL2OEvF2W4hOc3diYeS6ymzPkq8OO7j5bMOolzGKZk3RJ1UAS', 'active', NULL, '2025-11-07 13:54:04', '2025-11-07 13:54:04'),
(53, 70, '7694975579', '$2y$10$kFRsWmjLWgCHnRTXe3I2UeAxv/60pSjM8v4fXrrry4IBZfLfxYYu.', 'active', NULL, '2025-11-07 14:05:09', '2025-11-07 14:05:09'),
(54, 71, '7694975579', '$2y$10$jhuoIQmNIx9zEVMWco2iKeoFV1svHkM0UAZp7i4P71zLZIpQMOFy.', 'active', NULL, '2025-11-07 14:07:36', '2025-11-07 14:07:36'),
(55, 72, '7694975579', '$2y$10$A8tzmMi1GRUGw5VV6ow8wOjvt0ujJFLtEL9uz/Iak89pdEzxqdwEe', 'active', NULL, '2025-11-07 14:24:46', '2025-11-07 14:24:46'),
(56, 73, '7694975579', '$2y$10$H9hbdU0ZlKq5TnKcuju.9OjUHqcoOkNQQZHte1noMwxULRHBgRWc6', 'active', NULL, '2025-11-07 14:31:21', '2025-11-07 14:31:21'),
(57, 74, '7694975579', '$2y$10$9drDJ2ZTzzl9DKnC0gnlrOmLrQSIVqwjKDIwSo7b0sVbwC0StYAfy', 'active', NULL, '2025-11-07 15:52:33', '2025-11-07 15:52:33'),
(58, 75, '7694975579', '$2y$10$uZxQlWFfGYz/xuLW2bqRa.jm0Fr1Jel12/tlb0a7VKhbonQnX7nCK', 'active', NULL, '2025-11-07 15:57:09', '2025-11-07 15:57:09'),
(59, 76, '7694975579', '$2y$10$ei6w6To77LbqBwf5th3OneWxQmbh.T5akxf4cZlrWWztwR0INftie', 'active', NULL, '2025-11-07 16:05:53', '2025-11-07 16:05:53'),
(60, 77, '7694975579', '$2y$10$6IJvV0EPbq6cIJyj1j9twOvS0vRWR/2plZF4gC0DLZMryZCOGz/W.', 'active', NULL, '2025-11-07 16:07:26', '2025-11-07 16:07:26'),
(61, 78, '7694975579', '$2y$10$nbdgVAmAEVM84hK0nkrfVOrNjKIkiXviPopDfPM1Zd1Rk.RVxXCdy', 'active', NULL, '2025-11-07 16:15:23', '2025-11-07 16:15:23'),
(62, 79, '7694975579', '$2y$10$IDXN2U7WU2XSt5EM.5vFYO91wwNTMYP3IQNAueFdN27sO1j.eBTti', 'active', NULL, '2025-11-07 16:18:37', '2025-11-07 16:18:37'),
(63, 80, '7694975579', '$2y$10$AQQ/od8KHx3gikgoACQBk.WVz73hh3ZRTuGV9.rdhHlLLObo.0yJK', 'active', NULL, '2025-11-07 16:38:22', '2025-11-07 16:38:22'),
(64, 81, '7694975579', '$2y$10$C1OqdCippkR13clQ1C0iVuBQk3LOJ0nGm1Ixd/YaROG4ZCIz6q91C', 'active', NULL, '2025-11-07 16:42:39', '2025-11-07 16:42:39'),
(65, 82, '7898140799', '$2y$10$z4jGYf5r4wG1F0DSRqlgAOJGFMW6euTMTe88EABD5pYdbrNuuWD1m', 'active', NULL, '2025-11-08 10:48:30', '2025-11-08 10:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `components`
--

CREATE TABLE `components` (
  `id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `type` enum('text','image','video','button','form','link','html_block','icon','card','list') COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `extra_settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `order_number` int(11) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `components`
--

INSERT INTO `components` (`id`, `section_id`, `type`, `content`, `extra_settings`, `order_number`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'image', 'images/mlogo1.png', '{\"alt\": \"Apatkal Logo\", \"width\": \"150\", \"height\": \"50\"}', 1, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(2, 1, 'text', 'APATKAL', '{\"tag\": \"h1\", \"class\": \"logo-text\", \"style\": \"font-size: 24px; font-weight: bold;\"}', 2, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(3, 1, 'text', 'EMERGENCY SERVICES', '{\"tag\": \"span\", \"class\": \"emergency-badge\", \"style\": \"background: #ff4444; color: white; padding: 5px 10px; border-radius: 5px;\"}', 3, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(4, 2, 'text', 'APATKAL EMERGENCY SERVICES', '{\"tag\": \"h1\", \"class\": \"hero-title\", \"style\": \"font-size: 48px; font-weight: bold; color: #333;\"}', 1, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(5, 2, 'text', 'When every second counts, we\'re here for you. Professional emergency response services available 24/7 to protect what matters most.', '{\"tag\": \"p\", \"class\": \"hero-subtitle\", \"style\": \"font-size: 18px; color: #666; margin: 20px 0;\"}', 2, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(6, 2, 'image', 'images/apatkal advertiser.png', '{\"alt\": \"Emergency Services\", \"class\": \"hero-image\", \"style\": \"max-width: 100%; height: auto;\"}', 3, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(7, 2, 'button', 'Get Started', '{\"link\": \"resister.php\", \"class\": \"btn btn-primary\", \"style\": \"background: #007bff; color: white; padding: 12px 30px; border: none; border-radius: 5px; font-size: 16px;\"}', 4, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(8, 3, 'text', 'Our Services', '{\"tag\": \"h2\", \"class\": \"section-title\", \"style\": \"font-size: 36px; text-align: center; margin-bottom: 40px;\"}', 1, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(9, 3, 'card', '24/7 AVAILABILITY', '{\"icon\": \"⏰\", \"description\": \"Round-the-clock emergency medical services ready to respond to your call anytime, anywhere.\", \"class\": \"service-card\"}', 2, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(10, 3, 'card', 'AMBULANCE DISPATCH', '{\"icon\": \"🚑\", \"description\": \"Fast and efficient ambulance dispatch system with trained medical professionals on board.\", \"class\": \"service-card\"}', 3, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(11, 3, 'card', 'FAMILY ALERT', '{\"icon\": \"👨‍👩‍👧‍👦\", \"description\": \"Automatic notification system to keep your loved ones informed during emergency situations.\", \"class\": \"service-card\"}', 4, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(12, 3, 'card', 'CUSTOMER CARE', '{\"icon\": \"🎧\", \"description\": \"Dedicated customer support team providing guidance and assistance throughout your emergency.\", \"class\": \"service-card\"}', 5, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(13, 4, 'text', 'How Apatkal Works', '{\"tag\": \"h2\", \"class\": \"section-title\", \"style\": \"font-size: 36px; text-align: center; margin-bottom: 40px;\"}', 1, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(14, 4, 'text', 'Simple 3-Step Process to Save Lives', '{\"tag\": \"p\", \"class\": \"section-subtitle\", \"style\": \"font-size: 18px; text-align: center; color: #666; margin-bottom: 40px;\"}', 2, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(15, 4, 'list', '1. Quick Registration - Register your details, vehicle information, and emergency contacts.\n2. QR Code Activation - In case of emergency, simply scan the QR code.\n3. Emergency Response - Ambulance is dispatched immediately, family members are notified.', '{\"type\": \"ordered\", \"class\": \"process-steps\", \"style\": \"font-size: 16px; line-height: 1.6;\"}', 3, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(16, 5, 'text', 'Our Impact', '{\"tag\": \"h2\", \"class\": \"section-title\", \"style\": \"font-size: 36px; text-align: center; margin-bottom: 40px;\"}', 1, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(17, 5, 'card', 'Under 5 Minutes', '{\"icon\": \"fas fa-clock\", \"title\": \"Emergency Response Time\", \"description\": \"Average response time\", \"class\": \"stat-card\"}', 2, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(18, 5, 'card', '10,000+', '{\"icon\": \"fas fa-users\", \"title\": \"Active Users\", \"description\": \"Registered users\", \"class\": \"stat-card\"}', 3, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(19, 5, 'card', '5,000+', '{\"icon\": \"fas fa-ambulance\", \"title\": \"Emergency Incidents\", \"description\": \"Successfully handled\", \"class\": \"stat-card\"}', 4, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(20, 5, 'card', 'Pan India', '{\"icon\": \"fas fa-map-marker-alt\", \"title\": \"Coverage Area\", \"description\": \"Service coverage\", \"class\": \"stat-card\"}', 5, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(21, 8, 'text', 'About Apatkal', '{\"tag\": \"h1\", \"class\": \"page-title\", \"style\": \"font-size: 48px; font-weight: bold; color: #333; text-align: center;\"}', 1, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(22, 9, 'text', 'Your trusted partner in emergency response and accident management', '{\"tag\": \"p\", \"class\": \"page-subtitle\", \"style\": \"font-size: 18px; color: #666; text-align: center; margin: 20px 0;\"}', 2, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(23, 10, 'text', 'Our Mission', '{\"tag\": \"h2\", \"class\": \"section-title\", \"style\": \"font-size: 36px; margin-bottom: 20px;\"}', 1, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(24, 10, 'text', 'Apatkal is dedicated to providing immediate emergency response services to individuals and families across India. We understand that accidents can happen anywhere, anytime, and our mission is to ensure that help arrives when you need it most.', '{\"tag\": \"p\", \"class\": \"mission-text\", \"style\": \"font-size: 16px; line-height: 1.6; margin-bottom: 20px;\"}', 2, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(25, 10, 'text', 'Emergency Response Time: Our average response time is under 5 minutes, ensuring that help reaches you quickly when every second counts.', '{\"tag\": \"p\", \"class\": \"highlight-text\", \"style\": \"font-size: 18px; font-weight: bold; color: #ff4444; background: #fff3cd; padding: 15px; border-radius: 5px;\"}', 3, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `component_stats`
--

CREATE TABLE `component_stats` (
  `type` enum('text','image','video','button','form','link','html_block','icon','card','list') DEFAULT NULL,
  `total_components` bigint(21) DEFAULT NULL,
  `active_components` bigint(21) DEFAULT NULL,
  `inactive_components` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'new',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `mobile`, `email`, `message`, `status`, `created_at`, `remark`) VALUES
(1, 'test', '8959176446', 'test@test.com', 'test', 'resolved', '2025-09-13 18:40:52', NULL),
(3, 'siddharth', '7888886523', 'siddharth.toss.cs@gmail.com', 'dffffffffffffff', 'resolved', '2025-09-17 08:07:31', NULL),
(4, 'siddharth', '7888886523', 'sidhusingh7898thakur@gmail.com', 'q', 'resolved', '2025-09-24 09:51:53', NULL),
(5, 'new', '9876543210', 'Toss125training@gmail.com', 'dwsasfsdf', 'resolved', '2025-09-29 08:25:44', NULL),
(6, 'image', '9876543210', 'saddfs@gmail.com', 'testing processsss', 'pending', '2025-09-29 09:12:52', NULL),
(7, 'ensurekar', '8952023654', 'krishna.vish9329@gmail.com', 'tttest', 'resolved', '2025-09-29 09:13:59', 'complete'),
(10, 'new', '9876543210', 'toss125training@gmail.com', 'teeeest', 'resolved', '2025-09-29 09:20:35', 'donne'),
(12, 'rgram', '9876543210', 'Toss125training@gmail.com', 'edwatfvxcvz', 'resolved', '2025-09-29 09:28:08', 'doone'),
(14, 'toss', '9876543210', 'toss125training@gmail.com', 'testttting', 'resolved', '2025-09-29 09:42:54', 'reemark'),
(16, 'siddharth', '7778888520', 'shreyas.toss.cs@gmail.com', 'TEstingg', 'pending', '2025-10-17 05:49:10', NULL),
(17, 'siddharth', '7888886523', 'shreyash.toss.cs@gmail.com', 'tesrtststs', 'resolved', '2025-10-17 05:49:38', NULL),
(18, 'dfdzf', '7723065844', 'shreyas.toss.cs@gmail.com', 'ssssicd test', 'resolved', '2025-10-17 05:51:21', NULL),
(19, 'fgfg', '7778888520', 'shreyash.toss.cs@gmail.com', 'aass', 'resolved', '2025-10-17 05:51:52', NULL),
(20, 'apatkal', '7778888520', 'shreyash.toss.cs@gmail.com', 'apatkal form testing', 'pending', '2025-10-17 05:57:37', NULL),
(21, 'apatkal', '7723065844', 'siddharth.toss.cs@gmail.com', 'aaaa tess', 'Pending', '2025-10-17 05:58:26', 'sssdone'),
(22, 'siddharth', '7888886523', 'siddharth.toss.cs@gmail.com', 'ssdfff', 'Pending', '2025-10-17 06:02:09', NULL),
(23, 'siddharth', '7888886523', 'shreyash.toss.cs@gmail.com', 'ssdf', 'pending', '2025-10-17 06:02:32', 'wsbscg'),
(24, 'Siddharth Singh', '7778888520', 'shreyas.toss.cs@gmail.com', 'ssfdd', 'resolved', '2025-10-17 06:06:17', 'ddione e'),
(25, 'krishna', '7694975579', 'tosssolution.it@gmail.com', 'hello testing', 'Pending', '2025-10-18 11:34:19', NULL),
(26, 'krishna', '7694975579', 'tosssolution.it@gmail.com', 'hellopsadh hsuh', 'Pending', '2025-10-18 11:34:54', NULL),
(27, 'krishna kkm', '7723065844', 'admin@apatkal.com', 'dsdz', 'Pending', '2025-10-18 11:35:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_submissions`
--

CREATE TABLE `contact_submissions` (
  `id` int(11) NOT NULL,
  `full_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('new','read','replied','closed') COLLATE utf8mb4_unicode_ci DEFAULT 'new',
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `device_sessions`
--

CREATE TABLE `device_sessions` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) DEFAULT '1',
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(11) NOT NULL,
  `driver_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `number` varchar(15) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `vehicle_type` varchar(50) DEFAULT NULL,
  `vehicle_number` varchar(20) DEFAULT NULL,
  `model_rating` decimal(2,1) DEFAULT NULL,
  `aadhar_photo` varchar(255) NOT NULL,
  `licence_photo` varchar(255) NOT NULL,
  `rc_photo` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `kyc_status` enum('pending','approved','rejected') DEFAULT 'pending',
  `account_number` varchar(20) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(15) DEFAULT NULL,
  `account_holder_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `driver_name`, `email`, `password`, `number`, `address`, `vehicle_type`, `vehicle_number`, `model_rating`, `aadhar_photo`, `licence_photo`, `rc_photo`, `created_at`, `updated_at`, `kyc_status`, `account_number`, `bank_name`, `ifsc_code`, `account_holder_name`) VALUES
(1, 'Rajesh Sharma', 'rajesh.sharma90@gmail.com', '$2y$10$X7jMStqD5ERzpsgYXhu.Mejq1YKUHLbtN9GpWmj/tbrpZSRf9be5i', '7898140793', 'Shastri bridge jabalpur', 'Ambulance', 'DL01AB1234', NULL, 'aadhar_rajesh.jpg', 'licence_rajesh.jpg', 'rc_rajesh.jpg', '2025-09-24 05:52:18', '2025-11-08 10:16:36', 'approved', '87848468544', 'State Bank of India', 'SBIN0001235', 'Rajesh Sharma'),
(2, 'Dhaneshwari Patel', 'dhaneshwari17@gmail.com', '$2y$10$FmHuB6iiE1YqLNBb4hRfjOR2WQfFIR7EcOspYG7FJJqItOK0IRu9q', '7945681255', 'Beohari shahdol', 'Ambulance', 'mp20mz4528', NULL, 'Moon.jpg', 'Flower.jpg', 'Blue Flower.jpg', '2025-09-25 04:20:15', '2025-11-11 12:55:02', 'approved', '94634646313161613', 'sbi', 'SBIN0007178', 'D'),
(3, 'amit', 'kalmaliindia@gmail.com', '$2y$10$5umnfnk.EgxwjelKFomLLekkdsYdHe6FKGVNkGWILLhim6j1lgvna', '8770658824', 'jabalpur', 'ambulance', 'mp20ja6365', NULL, 'JPEG_20250927_235821_3502812970878090506.jpg', 'JPEG_20250927_235827_7286715491207715510.jpg', 'default_rc.jpg', '2025-09-27 18:28:45', '2025-10-17 06:45:21', 'rejected', NULL, NULL, NULL, NULL),
(13, 'siddharth', 'sid@gmail.com', '$2y$10$.DvSwW3Tt2klj9j2vadnCuuZ18sWRXFKJyeLHEMW/WhdvW2iWs6t2', '8956231479', 'adhartal', 'Ambulance', 'mp20cb8765', NULL, '13_aadhar_1759989104_68e74d70cdc33.jpeg', '13_licence_1759989104_68e74d70ce280.jpeg', '13_rc_1759989104_68e74d70ce5fa.jpeg', '2025-10-09 05:51:44', '2025-10-31 09:51:23', 'approved', '9668854533358', 'huuj', 'SBIN0004466', 'Guookg'),
(23, 'Ansh', 'sahuansh286@gmail.com', '$2y$10$RbbleKEBuKfcI5Fe8z7TE.mntE39qcIErMaU5mVOI8dgeKrU5LtGa', '7806062428', 'jbp', 'Ambulance', '2222222222', NULL, '23_aadhar_1761297212_68fb433caea5d.jpeg', '23_licence_1761297212_68fb433caf4d2.jpeg', '23_rc_1761297212_68fb433cafa8b.jpeg', '2025-10-24 09:13:32', '2025-10-29 09:02:24', 'approved', '25555555555', 'ddddddddd', 'FFFVVVVVVVF', 'sasssasss'),
(25, 'komal', 'komal@gmail.com', '$2y$10$gjf61pvWMGyYjk5vVz4xjOl8nUGwD1Hbg9wGbcvCyNjq0bZ5K4.2u', '9433431313', 'jbp', 'Ambulance', 'mp20kj8899', NULL, '25_aadhar_1761375154_68fc73b2ce20b.jpeg', '25_licence_1761375154_68fc73b2ce8a1.jpeg', '25_rc_1761375154_68fc73b2cf14a.jpeg', '2025-10-25 06:52:34', '2025-10-25 06:52:34', 'pending', '64313131694643', 'sbi', 'SBIN0001199', 'komal'),
(26, 'shivam kumar', 'shivam@gmail.com', '$2y$10$WqiaYklF2P2ymWokNnw8keL.ydDLRyKd/k0XL1NzKQgF83yP0pis.', '9565864945', 'shre eirbdiebje', 'Van', '374vrjdj4', NULL, '26_aadhar_1761384517_68fc984545fd4.jpeg', '26_licence_1761384517_68fc98454733f.jpeg', '26_rc_1761384517_68fc984547a3e.jpeg', '2025-10-25 09:28:37', '2025-11-03 09:20:41', 'rejected', 'SBIN0005241', 'sbi', 'SBIN0005241', 'shivam'),
(27, 'Mohit Chavhan', 'mohit@gmail.com', '$2y$10$4e/Z4xzoOM08DHjaXg2zi.EbExCXsGgLOFfhz55EPZVFpKtBI4NpW', '8463431315', 'Pune Maharashtra', 'Van', 'mh12pk7894', NULL, '27_aadhar_1761719444_6901b4948e3c6.jpeg', '27_licence_1761719445_6901b495adca6.jpeg', '27_rc_1761719447_6901b4974f855.jpeg', '2025-10-29 06:30:44', '2025-10-29 08:39:27', 'approved', '346436494646643', 'Panjab National Bank', 'SBIN0001228', 'Mohit Chavhan'),
(28, 'tdhyfu', 'ugef@gmail.com', '$2y$10$Zk.w3eqpjPS9tyqUp41jH.PD.yz7FMu3nxjxs7qN/3RBGnlJi48AK', '8563214569', 'yjhkiuhk', 'Van', 'jgyhhugk', NULL, '28_aadhar_1761725569_6901cc81a34f4.png', '28_licence_1761725569_6901cc81a372e.png', '28_rc_1761725569_6901cc81a3d95.jpeg', '2025-10-29 08:12:49', '2025-11-03 10:20:15', 'approved', '626254546544', 'gjngjng', 'SBIN0001264', 'jygjghj'),
(29, 'esrgrfthy', 'thfh@gmail.com', '$2y$10$avXvdh.m0JFJoD.t0jtpzOhMjT3N5tTN4sr3f8j8xBf58LHmV2/x2', '8123123126', 'ukjfwsuie sedgfro', 'Ambulance', 'gjirfjglkrjg', NULL, '29_aadhar_1761728599_6901d8574fa0b.png', '29_licence_1761728599_6901d85758113.png', '29_rc_1761728600_6901d8581840b.png', '2025-10-29 09:03:19', '2025-11-12 05:14:08', 'approved', 'h78979970', 'kljhlkjklj', 'SBIN0003283', 'hjkkhlkl'),
(32, 'ajay', 'apatkal.india@gmail.com', '$2y$10$CEJCp/0BNzZk/BgI7tuW8O4z.8Nqf3FxRQ/vH3GNeka4vGIOWGNfe', '9294571987', 'jabalpur', 'Ambulance', 'mp20ab1230', NULL, '32_aadhar_1762774072_6911cc38599a4.jpeg', '32_licence_1762774072_6911cc385a4a0.jpeg', '32_rc_1762774072_6911cc385ae6a.jpeg', '2025-11-10 11:27:52', '2025-11-10 11:27:52', 'pending', '3085628653', 'state bank of india', 'SBIN0118520', 'ajay'),
(33, 'jv', 'dfg@gmail.com', '$2y$10$rtxfytH3uNMFuqGiozw2xeeYKyoFwHSmWqe8Uc5OXf05aYrSoJol.', '7694975579', 'dcsx v', 'Van', 'fgbfcbg', NULL, '33_aadhar_1762926929_691421519e5ec.png', '33_licence_1762926929_691421519ea32.jpeg', '33_rc_1762926929_69142151a072b.png', '2025-11-12 05:55:29', '2025-11-12 05:58:29', 'approved', '864654545162', 'bgfch', 'SBIN0002938', 'vfdxfg');

-- --------------------------------------------------------

--
-- Table structure for table `driver_assignments`
--

CREATE TABLE `driver_assignments` (
  `id` int(11) NOT NULL,
  `accident_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `assigned_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` enum('pending','accepted','rejected','cancelled') DEFAULT 'pending',
  `rejection_reason` text,
  `attempt_count` int(11) DEFAULT '1',
  `last_attempt_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `radius_km` decimal(10,3) DEFAULT '5.000',
  `distance_meters` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `driver_locations`
--

CREATE TABLE `driver_locations` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_locations`
--

INSERT INTO `driver_locations` (`id`, `driver_id`, `latitude`, `longitude`, `updated_at`) VALUES
(1, 1, 23.15503280, 79.92599570, '2025-11-08 10:29:27'),
(11, 2, 23.15483167, 79.92606664, '2025-11-01 07:00:23'),
(108, 27, 23.15483605, 79.92602315, '2025-10-29 11:47:47'),
(127, 28, 23.15482860, 79.92605828, '2025-10-29 10:34:52'),
(189, 13, 23.15514520, 79.92601930, '2025-10-31 10:07:33'),
(0, 2, 23.15483241, 79.92605824, '2025-11-11 12:51:54'),
(0, 1, 23.15509060, 79.92603410, '2025-11-11 13:11:46'),
(0, 1, 23.15505630, 79.92599640, '2025-11-11 13:12:03'),
(0, 1, 23.15505630, 79.92599640, '2025-11-11 13:12:03'),
(0, 1, 23.15505630, 79.92599640, '2025-11-11 13:12:04'),
(0, 1, 23.15500550, 79.92599140, '2025-11-11 13:12:09'),
(0, 1, 23.15500550, 79.92599140, '2025-11-11 13:12:09'),
(0, 1, 23.15500550, 79.92599140, '2025-11-11 13:12:09'),
(0, 1, 23.15519240, 79.92604760, '2025-11-11 13:12:21'),
(0, 1, 23.15519240, 79.92604760, '2025-11-11 13:12:21'),
(0, 1, 23.15519240, 79.92604760, '2025-11-11 13:12:22'),
(0, 1, 23.15504930, 79.92614620, '2025-11-11 13:12:27'),
(0, 1, 23.15504930, 79.92614620, '2025-11-11 13:12:27'),
(0, 1, 23.15504930, 79.92614620, '2025-11-11 13:12:28'),
(0, 1, 23.15498310, 79.92605740, '2025-11-11 13:12:37'),
(0, 1, 23.15498310, 79.92605740, '2025-11-11 13:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `trip_id` int(11) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL,
  `earning_date` date NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `driver_id`, `trip_id`, `amount`, `earning_date`, `created_time`) VALUES
(1, 1, 1, 1800.00, '2025-09-20', '2025-09-20 09:50:00'),
(2, 1, 2, 2200.00, '2025-09-27', '2025-09-27 04:50:00'),
(3, 1, 3, 1950.00, '2025-10-01', '2025-10-01 12:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contacts`
--

CREATE TABLE `emergency_contacts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relationship` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emergency_dispatch`
--

CREATE TABLE `emergency_dispatch` (
  `id` int(11) NOT NULL,
  `incident_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `dispatched_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `arrived_at` datetime DEFAULT NULL,
  `status` enum('dispatched','en_route','arrived','completed') COLLATE utf8mb4_unicode_ci DEFAULT 'dispatched',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emergency_incidents`
--

CREATE TABLE `emergency_incidents` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `incident_type` enum('accident','breakdown','medical','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `status` enum('reported','dispatched','in_progress','resolved','cancelled') COLLATE utf8mb4_unicode_ci DEFAULT 'reported',
  `priority` enum('low','medium','high','critical') COLLATE utf8mb4_unicode_ci DEFAULT 'medium',
  `reported_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `resolved_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emergency_team`
--

CREATE TABLE `emergency_team` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialization` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emergency_team`
--

INSERT INTO `emergency_team` (`id`, `name`, `phone`, `email`, `specialization`, `location`, `is_available`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Emergency Response Team 1', '18005709696', 'team1@apatkal.com', 'Medical Emergency', 'Jabalpur', 1, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(2, 'Emergency Response Team 2', '18005709697', 'team2@apatkal.com', 'Accident Response', 'Jabalpur', 1, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(3, 'Emergency Response Team 3', '18005709698', 'team3@apatkal.com', 'General Emergency', 'Jabalpur', 1, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `family_members`
--

CREATE TABLE `family_members` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relationship` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `family_members`
--

INSERT INTO `family_members` (`id`, `client_id`, `full_name`, `relationship`, `mobile_no`, `email`, `date_of_birth`, `address`, `created_at`, `updated_at`) VALUES
(2, 10, 'shivam kumar', 'brother', '7723065844', 'siddharth.toss.cs@gmail.com', '2025-09-24', 'efwat', '2025-09-25 18:02:10', '2025-09-25 18:02:10');

-- --------------------------------------------------------

--
-- Table structure for table `header_config`
--

CREATE TABLE `header_config` (
  `id` int(11) NOT NULL,
  `config_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header_config`
--

INSERT INTO `header_config` (`id`, `config_key`, `config_value`, `description`, `created_at`, `updated_at`) VALUES
(1, 'site_title', 'Apatkal Emergency Services', 'Main site title displayed in header', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(2, 'header_phone', '18005709696', 'Main contact phone number', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(3, 'header_email', 'apatkalindia@gmail.com', 'Main contact email', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(4, 'emergency_phone', '18005709696', 'Emergency contact phone number', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(5, 'emergency_text', '24/7 Emergency Service', 'Emergency service text', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(6, 'facebook_url', 'https://www.facebook.com/people/Apatkal-India/61573752802887/', 'Facebook page URL', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(7, 'youtube_url', 'https://www.youtube.com/channel/UC_9OYRqF_1NiEC3_06ZPSXQ', 'YouTube channel URL', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(8, 'linkedin_url', 'https://www.linkedin.com/company/mgaus-information-technology/', 'LinkedIn company URL', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(9, 'instagram_url', 'https://www.instagram.com/apatkal.india/', 'Instagram page URL', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(10, 'logo_image', 'images/mlogo1.png', 'Path to logo image', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(11, 'logo_alt', 'Apatkal Logo', 'Alt text for logo image', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(12, 'logo_height', '45px', 'Logo height in CSS units', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(13, 'top_bar_enabled', '1', 'Enable/disable top bar (1=enabled, 0=disabled)', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(14, 'social_links_enabled', '1', 'Enable/disable social links (1=enabled, 0=disabled)', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(15, 'emergency_pulse_enabled', '1', 'Enable/disable emergency pulse animation (1=enabled, 0=disabled)', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(16, 'floating_call_enabled', '1', 'Enable/disable floating call button on mobile (1=enabled, 0=disabled)', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(17, 'mobile_menu_enabled', '1', 'Enable/disable mobile menu (1=enabled, 0=disabled)', '2025-10-04 07:37:14', '2025-10-04 07:37:14'),
(18, 'particles_enabled', '1', 'Enable/disable background particles (1=enabled, 0=disabled)', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(19, 'floating_elements_enabled', '1', 'Enable/disable floating background elements (1=enabled, 0=disabled)', '2025-10-04 07:37:14', '2025-10-04 09:01:53'),
(182, 'nav_home_text', 'HOME', 'Navigation Home text', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(183, 'nav_home_icon', 'fas fa-home', 'Navigation Home icon class', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(184, 'nav_home_url', 'index.php', 'Navigation Home URL', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(185, 'nav_about_text', 'ABOUT', 'Navigation About text', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(186, 'nav_about_icon', 'fas fa-info-circle', 'Navigation About icon class', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(187, 'nav_about_url', 'about.php', 'Navigation About URL', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(188, 'nav_plans_text', 'PLANS', 'Navigation Plans text', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(189, 'nav_plans_icon', 'fas fa-clipboard-list', 'Navigation Plans icon class', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(190, 'nav_plans_url', 'plan.php', 'Navigation Plans URL', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(191, 'nav_accident_text', 'SUBMIT ACCIDENT INFO', 'Navigation Accident text', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(192, 'nav_accident_icon', 'fas fa-exclamation-triangle', 'Navigation Accident icon class', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(193, 'nav_accident_url', 'submitaccident.php', 'Navigation Accident URL', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(194, 'nav_contact_text', 'CONTACT', 'Navigation Contact text', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(195, 'nav_contact_icon', 'fas fa-phone-alt', 'Navigation Contact icon class', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(196, 'nav_contact_url', 'contact.php', 'Navigation Contact URL', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(197, 'login_button_text', 'LOGIN', 'Login button text', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(198, 'login_button_icon', 'fas fa-sign-in-alt', 'Login button icon class', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(199, 'login_button_url', 'client_login.php', 'Login button URL', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(200, 'register_button_text', 'REGISTER', 'Register button text', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(201, 'register_button_icon', 'fas fa-user-plus', 'Register button icon class', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(202, 'register_button_url', 'client_register.php', 'Register button URL', '2025-10-04 08:35:46', '2025-10-04 09:01:53'),
(203, 'logo_upload_enabled', '1', 'Enable logo upload functionality (1=enabled, 0=disabled)', '2025-10-04 08:35:46', '2025-10-04 08:35:46'),
(247, 'logo_upload', '', NULL, '2025-10-04 08:36:16', '2025-10-04 09:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `file_path` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) DEFAULT NULL,
  `mime_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('image','video','document','audio') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `navigation_menus`
--

CREATE TABLE `navigation_menus` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order_number` int(11) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `meta_title`, `meta_description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'index', 'Apatkal - Emergency Services | 24/7 Emergency Response', 'Professional emergency response services available 24/7. Get immediate help during accidents with our innovative QR code system.', 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(2, 'About', 'about', 'About Apatkal - Emergency Response Services', 'Learn about Apatkal emergency response services and how we help save lives during critical situations.', 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(3, 'Contact', 'contact', 'Contact Apatkal - Emergency Services', 'Contact Apatkal for emergency services. Available 24/7 for immediate assistance.', 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(4, 'Plans', 'plan', 'Emergency Service Plans - Apatkal', 'Choose the perfect emergency service plan for your needs. Flexible options for individuals and families.', 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(5, 'FAQ', 'faq', 'Frequently Asked Questions - Apatkal', 'Find answers to common questions about Apatkal emergency services and how our system works.', 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(6, 'Submit Accident', 'submitaccident', 'Submit Accident Information - Apatkal', 'Report accident information to Apatkal emergency services for immediate assistance.', 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` enum('phonepe','upi','card','netbanking','wallet','cash','cheque') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'phonepe',
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway_transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_response` text COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','completed','failed','cancelled','refunded') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_date` datetime DEFAULT NULL,
  `refund_date` datetime DEFAULT NULL,
  `refund_amount` decimal(10,2) DEFAULT NULL,
  `refund_reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_transactions`
--

INSERT INTO `payment_transactions` (`id`, `client_id`, `amount`, `payment_method`, `transaction_id`, `gateway_transaction_id`, `gateway_response`, `status`, `payment_date`, `refund_date`, `refund_amount`, `refund_reason`, `created_at`, `updated_at`) VALUES
(6, 26, 1000.00, 'phonepe', 'TXN_1758960451_26', NULL, NULL, 'pending', NULL, NULL, NULL, NULL, '2025-09-27 13:37:32', '2025-09-27 13:37:32');

-- --------------------------------------------------------

--
-- Table structure for table `qr_codes`
--

CREATE TABLE `qr_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `qr_number` int(10) UNSIGNED NOT NULL,
  `qr_url` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vehicle_number` varchar(10) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `last_used_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rejected_reports`
--

CREATE TABLE `rejected_reports` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `driver_name` varchar(100) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `accident_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `vehicle` varchar(50) NOT NULL,
  `accident_date` date NOT NULL,
  `location` text NOT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `rejected_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rejected_reports`
--

INSERT INTO `rejected_reports` (`id`, `driver_id`, `driver_name`, `client_id`, `accident_id`, `fullname`, `phone`, `vehicle`, `accident_date`, `location`, `latitude`, `longitude`, `description`, `created_at`, `rejected_at`) VALUES
(1, 2, 'Dhaneshwari Patel', 26, 69, 'Krishna Vishwakarma', '8959176446', 'mp20ab2010', '2025-11-05', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155117, Lng: 79.926028)', 23.15511660, 79.92602800, 'cdgsfd', '2025-11-05 12:26:08', '2025-11-11 12:52:07'),
(2, 33, 'jv', 26, 70, 'Krishna Vishwakarma', '8959176446', 'mp20ab2010', '2025-11-06', '6CQ6+CH6, Birla Mandir Rd, Bhim Nagar Slums, Arera Hills, Bhopal, Madhya Pradesh 462003, India (Lat: 23.239066, Lng: 77.411123)', 23.23906560, 77.41112320, 'testing first Time ', '2025-11-06 05:20:16', '2025-11-12 05:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_number` int(11) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `page_id`, `name`, `order_number`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Header', 1, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(2, 1, 'Hero Banner', 2, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(3, 1, 'Services Overview', 3, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(4, 1, 'How It Works', 4, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(5, 1, 'Statistics', 5, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(6, 1, 'Footer', 6, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(7, 2, 'Header', 1, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(8, 2, 'Page Banner', 2, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(9, 2, 'Mission Statement', 3, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(10, 2, 'What We Do', 4, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(11, 2, 'Process Steps', 5, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(12, 2, 'Why Choose Us', 6, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(13, 2, 'Footer', 7, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `service_plans`
--

CREATE TABLE `service_plans` (
  `id` int(11) NOT NULL,
  `plan_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,2) NOT NULL,
  `duration_months` int(11) NOT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_popular` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_plans`
--

INSERT INTO `service_plans` (`id`, `plan_name`, `description`, `price`, `duration_months`, `features`, `is_popular`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Emergency Response Plan', 'Complete emergency response service with 24/7 support', 999.00, 12, '[\"24/7 Emergency Response\", \"GPS Location Tracking\", \"Immediate Alert System\", \"Emergency Contact Notifications\", \"Accident Report Management\", \"24/7 Customer Support\"]', 1, 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8mb4_unicode_ci,
  `setting_type` enum('text','number','boolean','json','file') COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `setting_key`, `setting_value`, `setting_type`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'site_title', 'Apatkal - Emergency Services', 'text', 'Main website title', 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(2, 'site_description', 'Professional emergency response services available 24/7', 'text', 'Website meta description', 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(3, 'emergency_phone', '18005709696', 'text', 'Emergency contact phone number', 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(4, 'contact_email', 'apatkalindia@gmail.com', 'text', 'Main contact email', 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(5, 'company_address', 'Highcourt road, beoharbagh ghamapur, opposite pandey hospital jabalpur, madhyapradesh 482002', 'text', 'Company address', 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(6, 'maintenance_mode', '0', 'boolean', 'Enable/disable maintenance mode', 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(7, 'google_analytics', '', 'text', 'Google Analytics tracking ID', 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19'),
(8, 'social_media', '{\"facebook\":\"https://www.facebook.com/people/Apatkal-India/61573752802887/\",\"youtube\":\"https://www.youtube.com/channel/UC_9OYRqF_1NiEC3_06ZPSXQ\",\"linkedin\":\"https://www.linkedin.com/company/mgaus-information-technology/\",\"instagram\":\"https://www.instagram.com/apatkal.india/\"}', 'json', 'Social media links', 1, '2025-09-13 08:01:19', '2025-09-13 08:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `sms_logs`
--

CREATE TABLE `sms_logs` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `family_member_id` int(11) DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('sent','failed','error') COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_response` text COLLATE utf8mb4_unicode_ci,
  `sent_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_logs`
--

INSERT INTO `sms_logs` (`id`, `client_id`, `family_member_id`, `phone_number`, `message`, `status`, `api_response`, `sent_at`) VALUES
(1, 5, 1, '8959176446', '🚨 APATKAL EMERGENCY 🚨\n\nAccident Location: Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154991, Lng: 79.926007)\nCoordinates: 23.1549906,79.9260072\nMap Link: https://www.google.com/maps?q=23.1549906,79.9260072\n\nEmergency Contact: 18005709696\nWebsite: https://apatkal.com', 'failed', 'S.313965 S.848908 S.892029  \r\n', '2025-09-27 16:28:52'),
(2, 5, 2, '8989898989', '🚨 APATKAL EMERGENCY 🚨\n\nAccident Location: Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154991, Lng: 79.926007)\nCoordinates: 23.1549906,79.9260072\nMap Link: https://www.google.com/maps?q=23.1549906,79.9260072\n\nEmergency Contact: 18005709696\nWebsite: https://apatkal.com', 'failed', 'S.639130 S.182496 S.331208  \r\n', '2025-09-27 16:28:54'),
(3, 5, 1, '8959176446', '🚨 APATKAL EMERGENCY 🚨\n\nAccident Location: Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154991, Lng: 79.926007)\nCoordinates: 23.1549906,79.9260072\nMap Link: https://www.google.com/maps?q=23.1549906,79.9260072\n\nEmergency Contact: 18005709696\nWebsite: https://apatkal.com', 'failed', 'S.653595 S.602967 S.131318  \r\n', '2025-09-27 16:36:22'),
(4, 5, 2, '8989898989', '🚨 APATKAL EMERGENCY 🚨\n\nAccident Location: Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154991, Lng: 79.926007)\nCoordinates: 23.1549906,79.9260072\nMap Link: https://www.google.com/maps?q=23.1549906,79.9260072\n\nEmergency Contact: 18005709696\nWebsite: https://apatkal.com', 'failed', 'S.612244 S.392548 S.555054  \r\n', '2025-09-27 16:36:24'),
(5, 5, 1, '8959176446', '🚨 APATKAL EMERGENCY 🚨\n\nAccident Location: Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154991, Lng: 79.926007)\nCoordinates: 23.1549906,79.9260072\nMap Link: https://www.google.com/maps?q=23.1549906,79.9260072\n\nEmergency Contact: 18005709696\nWebsite: https://apatkal.com', 'failed', 'S.943970 S.456940 S.355042 ', '2025-09-27 16:36:36'),
(6, 5, 2, '8989898989', '🚨 APATKAL EMERGENCY 🚨\n\nAccident Location: Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154991, Lng: 79.926007)\nCoordinates: 23.1549906,79.9260072\nMap Link: https://www.google.com/maps?q=23.1549906,79.9260072\n\nEmergency Contact: 18005709696\nWebsite: https://apatkal.com', 'failed', 'S.401215 S.562256 S.787629  \r\n', '2025-09-27 16:36:40'),
(7, 5, 1, '8959176446', '🚨 APATKAL EMERGENCY 🚨\n\nAccident Location: Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154991, Lng: 79.926007)\nCoordinates: 23.1549906,79.9260072\nMap Link: https://www.google.com/maps?q=23.1549906,79.9260072\n\nEmergency Contact: 18005709696\nWebsite: https://apatkal.com', 'failed', 'S.92042 S.284211 S.465027  \r\n', '2025-09-27 16:36:50'),
(8, 5, 2, '8989898989', '🚨 APATKAL EMERGENCY 🚨\n\nAccident Location: Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154991, Lng: 79.926007)\nCoordinates: 23.1549906,79.9260072\nMap Link: https://www.google.com/maps?q=23.1549906,79.9260072\n\nEmergency Contact: 18005709696\nWebsite: https://apatkal.com', 'failed', 'S.15107 S.663941 S.308747  \r\n', '2025-09-27 16:36:51'),
(9, 10, 15, '9508570649', '🚨 APATKAL EMERGENCY 🚨\n\nAccident Location: 1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155051, Lng: 79.926004)\nCoordinates: 23.1550505,79.9260037\nMap Link: https://www.google.com/maps?q=23.1550505,79.9260037\n\nEmergency Contact: 18005709696\nWebsite: https://apatkal.com', 'failed', 'S.263825 S.180481 S.892914  \r\n', '2025-09-27 17:10:04'),
(10, 10, 15, '9508570649', '🚨 APATKAL EMERGENCY 🚨\n\nAccident Location: 1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155051, Lng: 79.926004)\nCoordinates: 23.1550505,79.9260037\nMap Link: https://www.google.com/maps?q=23.1550505,79.9260037\n\nEmergency Contact: 18005709696\nWebsite: https://apatkal.com', 'failed', 'S.742310 S.725983 S.930726  \r\n', '2025-09-27 17:10:05'),
(11, 11, 16, '7898140799', '🚨 ACCIDENT ALERT 🚨\n\nVehicle: MP20KJ0005\nDriver: siddharth\nLocation: XGWG+8J Pathar Kansiya, Madhya Pradesh, India (Lat: 22.995800, Lng: 77.526600)\nTime: 2025-10-03 09:08:40\n\nPlease contact immediately!\nEmergency: Contact Apatkal Support', 'failed', 'S.8698 S.996644  \r\n', '2025-10-03 12:38:43'),
(12, 10, 15, '9508570649', '🚨 ACCIDENT ALERT 🚨\n\nVehicle: MP20PH2265\nDriver: geetanjali\nLocation: XGWG+8J Pathar Kansiya, Madhya Pradesh, India (Lat: 22.995800, Lng: 77.526600)\nTime: 2025-10-03 09:09:53\n\nPlease contact immediately!\nEmergency: Contact Apatkal Support', 'failed', 'S.785584 S.536591  \r\n', '2025-10-03 12:39:55'),
(13, 10, 15, '9508570649', '🚨 ACCIDENT ALERT 🚨\n\nVehicle: MP20PH2265\nDriver: geetanjali\nLocation: XGWG+8J Pathar Kansiya, Madhya Pradesh, India (Lat: 22.995800, Lng: 77.526600)\nTime: 2025-10-03 09:12:21\n\nPlease contact immediately!\nEmergency: Contact Apatkal Support', 'failed', 'S.745148 S.707215  \r\n', '2025-10-03 12:42:23'),
(14, 10, 15, '9508570649', '🚨 ACCIDENT ALERT 🚨\n\nVehicle: MP20PH2265\nDriver: geetanjali\nLocation: XGWG+8J Pathar Kansiya, Madhya Pradesh, India (Lat: 22.995800, Lng: 77.526600)\nTime: 2025-10-03 09:18:30\n\nPlease contact immediately!\nEmergency: Contact Apatkal Support', 'failed', 'S.373993 S.32593  \r\n', '2025-10-03 12:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `history_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `client_name` varchar(100) NOT NULL,
  `location` text NOT NULL,
  `timing` timestamp NULL DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `distance` decimal(10,2) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `start_latitude` decimal(10,8) DEFAULT NULL,
  `start_longitude` decimal(11,8) DEFAULT NULL,
  `end_latitude` decimal(10,8) DEFAULT NULL,
  `end_longitude` decimal(11,8) DEFAULT NULL,
  `from_location` text,
  `to_location` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`history_id`, `driver_id`, `client_id`, `client_name`, `location`, `timing`, `duration`, `distance`, `start_time`, `end_time`, `created_at`, `start_latitude`, `start_longitude`, `end_latitude`, `end_longitude`, `from_location`, `to_location`) VALUES
(0, 1, NULL, '', 'XGWG+8J Pathar Kansiya, Madhya Pradesh, India (Lat: 22.995800, Lng: 77.526600)', '2025-10-04 03:41:59', 1, NULL, '2025-10-04 03:41:59', '2025-10-03 22:12:16', '2025-10-04 03:42:16', NULL, NULL, NULL, NULL, NULL, NULL),
(1, 1, NULL, 'Priya Sharma', 'Apollo Hospital, Indore', '2025-09-20 03:30:00', 45, NULL, '2025-09-20 03:35:00', '2025-09-20 04:20:00', '2025-09-20 03:30:00', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, NULL, 'Rajesh Kumar', 'Fortis Hospital, Bhopal', '2025-09-26 22:15:00', 60, NULL, '2025-09-26 22:20:00', '2025-09-26 23:20:00', '2025-09-26 22:15:00', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, NULL, 'Meera Patel', 'Manipal Hospital, Jabalpur', '2025-10-01 05:45:00', 50, NULL, '2025-10-01 05:50:00', '2025-10-01 06:40:00', '2025-10-01 05:45:00', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, NULL, 'Vikram Singh', 'AIIMS Hospital, Delhi', '2025-10-02 00:30:00', 75, NULL, '2025-10-02 00:35:00', '2025-10-02 00:45:00', '2025-10-02 00:30:00', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, NULL, 'Krishna Vishwakarma', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154831, Lng: 79.926038)', '2025-10-27 03:32:26', 22, NULL, '2025-10-27 03:32:26', '2025-10-27 03:32:48', '2025-10-27 03:32:48', 23.15483134, 79.92603816, 23.15501690, 79.92600940, NULL, NULL),
(14, 1, NULL, 'Shreyash', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155089, Lng: 79.926035)', '2025-10-16 05:49:38', 93, NULL, '2025-10-16 05:49:38', '2025-10-16 05:51:11', '2025-10-16 05:51:11', 23.15508940, 79.92603490, 23.15511290, 79.92601890, NULL, NULL),
(30, 1, NULL, 'Krishna Vishwakarma', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154841, Lng: 79.926022)', '2025-10-15 01:12:00', 38, NULL, '2025-10-15 01:12:00', '2025-10-15 01:12:38', '2025-10-15 01:12:38', 23.15484058, 79.92602221, 23.15500100, 79.92600770, NULL, NULL),
(32, 1, NULL, 'siddharth', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154842, Lng: 79.926027)', '2025-10-16 00:33:48', 29, NULL, '2025-10-16 00:33:48', '2025-10-16 00:34:17', '2025-10-16 00:34:17', 23.15484178, 79.92602680, 23.15484556, 79.92601821, NULL, NULL),
(34, 1, NULL, 'Krishna Vishwakarma', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154841, Lng: 79.926038)', '2025-10-15 00:46:25', 57, NULL, '2025-10-15 00:46:25', '2025-10-15 00:47:22', '2025-10-15 00:47:22', 23.15484074, 79.92603774, 23.15484729, 79.92602640, NULL, NULL),
(35, 1, NULL, 'Krishna Vishwakarma', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154845, Lng: 79.926035)', '2025-10-15 00:45:59', 12, NULL, '2025-10-15 00:45:59', '2025-10-15 00:46:11', '2025-10-15 00:46:11', 23.15484466, 79.92603483, 23.15484729, 79.92602640, NULL, NULL),
(41, 2, NULL, 'sid', 'Khandelwal Complex, 1, Nagpur Rd, near gulzar Hotel, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155042, Lng: 79.926017)', '2025-10-24 03:06:49', 69, NULL, '2025-10-24 03:06:49', '2025-10-24 03:07:58', '2025-10-24 03:07:58', 23.15504240, 79.92601740, 23.15483176, 79.92604691, NULL, NULL),
(43, 1, NULL, 'Shreyash', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.154836, Lng: 79.926040)', '2025-10-24 03:37:25', 35, NULL, '2025-10-24 03:37:25', '2025-10-24 03:38:00', '2025-10-24 03:38:00', 23.15483599, 79.92603998, 23.15483528, 79.92603756, NULL, NULL),
(52, 1, NULL, 'Geetanjali', 'Shop no 2 First Floor Shivhari Complex Besides Gulzar Hotel Mahanadda, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155026, Lng: 79.925989)', '2025-10-25 10:49:20', 27, NULL, '2025-10-25 10:49:20', '2025-10-25 10:49:47', '2025-10-25 10:49:47', 23.15502570, 79.92598910, 23.20157480, 79.96870060, NULL, NULL),
(53, 26, NULL, 'sid', 'M6Q6+2WF, Pokhra Muhalla, Hajipur, Bihar 844101, India (Lat: 25.687300, Lng: 85.212100)', '2025-10-25 04:01:53', 56, NULL, '2025-10-25 04:01:53', '2025-10-25 04:02:49', '2025-10-25 04:02:49', 25.68730000, 85.21210000, 26.61261261, 85.18727243, NULL, NULL),
(57, 2, 40, 'Geetanjali', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155103, Lng: 79.926042)', '2025-11-01 01:37:10', 12, 0.03, '2025-11-01 01:37:10', '2025-11-01 01:37:22', '2025-11-01 01:37:22', 23.15510330, 79.92604190, 23.15482993, 79.92607617, '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155103, Lng: 79.926042)', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155103, Lng: 79.926042)'),
(58, 27, NULL, 'sid', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155134, Lng: 79.926037)', '2025-10-29 06:17:59', 36, NULL, '2025-10-29 06:17:59', '2025-10-29 06:18:35', '2025-10-29 06:18:35', 23.15513360, 79.92603670, 23.15483082, 79.92603070, NULL, NULL),
(61, 13, NULL, 'Geetanjali', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155072, Lng: 79.926026)', '2025-10-31 04:22:04', 41, NULL, '2025-10-31 04:22:04', '2025-10-31 04:22:45', '2025-10-31 04:22:45', 23.15507210, 79.92602620, 23.15516690, 79.92609280, NULL, NULL),
(62, 13, NULL, 'Krishna Vishwakarma', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155082, Lng: 79.926028)', '2025-11-01 00:58:39', 57, NULL, '2025-11-01 00:58:39', '2025-11-01 00:59:36', '2025-11-01 00:59:36', 23.15508250, 79.92602780, 23.15505400, 79.92600470, NULL, NULL),
(63, 13, 26, 'Krishna Vishwakarma', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155083, Lng: 79.926035)', '2025-11-01 01:31:55', 128, 0.01, '2025-11-01 01:31:55', '2025-11-01 01:34:03', '2025-11-01 01:34:03', 23.15508260, 79.92603500, 23.15504080, 79.92601310, '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155083, Lng: 79.926035)', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155083, Lng: 79.926035)'),
(65, 13, 26, 'Krishna Vishwakarma', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155130, Lng: 79.926036)', '2025-11-01 03:55:17', 44, 0.01, '2025-11-01 03:55:17', '2025-11-01 03:56:01', '2025-11-01 03:56:01', 23.15513030, 79.92603610, 23.15506450, 79.92601670, '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155130, Lng: 79.926036)', '1724, 1724, Nagpur Rd, near Hotel Gulzar, Madan Mahal, Area, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155130, Lng: 79.926036)'),
(68, 1, 44, 'sid', '220, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155194, Lng: 79.926115)', '2025-11-03 03:46:01', 194, 0.00, '2025-11-03 03:46:01', '2025-11-03 03:49:15', '2025-11-03 03:49:15', 23.15519420, 79.92611490, 23.15518540, 79.92610470, '220, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155194, Lng: 79.926115)', '220, Cheevani Phamad Nagar, Jabalpur, Madhya Pradesh 482001, India (Lat: 23.155194, Lng: 79.926115)');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','hr','sales','office_staff','manager','supervisor','user') COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `is_verified` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `username`, `date_of_birth`, `gender`, `address`, `city`, `state`, `pincode`, `profile_image`, `role`, `is_verified`, `is_active`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'Gulam', 'Gaus', 'admin@apatkal.com', '7521369779', '$2y$10$MwM62gNOKcbw5RIxp2LpHOumiuD.i7vqxupBpir9no7Uv0/Hz6/Fy', 'admin', '2004-02-10', 'male', 'ranjhi jbp', 'Jabalpur', 'madhya pradesh', '482004', NULL, 'admin', 0, 1, '2025-11-08 10:43:44', '2025-09-13 08:01:19', '2025-11-08 10:43:44'),
(2, 'Krishna', 'Vish', 'Toss125traininag@gmai.com', '7723065844', '$2y$10$pZ8DQ4CufH1drx2OF5qMnuPXgpPuWCT.Z5.wnHc38Oy7.HR036jVq', 'sales', NULL, NULL, '', NULL, NULL, NULL, NULL, 'sales', 0, 1, NULL, '2025-09-13 15:46:08', '2025-09-13 17:02:04'),
(3, 'Sarah', 'Johnson', 'hr@apatkal.com', '9876543210', '$2y$10$wDNv.mYbXpnet7re8If.keP.NPDOHoLOXgsqJBK1YBITQi2aWKn6u', 'hr_manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hr', 0, 1, NULL, '2025-09-13 16:58:30', '2025-09-13 16:59:37'),
(4, 'Mike', 'Davis', 'sales@apatkal.com', '9876543211', '$2y$10$4AYUzkUaaGtu5nnXGguB4.aPA.DgfCprSC5hnBGj4Mm7H1wkt4sti', 'sales_rep', NULL, NULL, '', NULL, NULL, NULL, NULL, 'sales', 0, 1, '2025-10-08 11:01:15', '2025-09-13 16:58:30', '2025-10-08 11:01:15'),
(5, 'Lisa', 'Wilson', 'office@apatkal.com', '9876543212', '$2y$10$w2eAWT7oUdswd6KDvTw0muJv4zVRsU35o10vMxLj/kBkyfnbv5nPC', 'office_staff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'office_staff', 0, 1, NULL, '2025-09-13 16:58:30', '2025-09-13 16:59:37'),
(6, 'David', 'Brown', 'manager@apatkal.com', '9876543213', '$2y$10$jV9jn2GjPqA7XJUP1p35ieUQNDbirBOZDRPE6pYsbpBq5zsGtwXAK', 'manager1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'manager', 0, 1, NULL, '2025-09-13 16:58:30', '2025-09-13 16:59:37'),
(7, 'Emma', 'Garcia', 'supervisor@apatkal.com', '9876543214', '$2y$10$oSF8KFXrI.lOk.puE8igeOE5yeY/jNNSYaETcEHdqEhgVXqZVR3EC', 'supervisor1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'supervisor', 0, 1, NULL, '2025-09-13 16:58:30', '2025-09-13 16:59:37'),
(8, 'Gulam', 'Gous', 'kalmaliindia@gmail.com', '8770658824', '$2y$10$FonFNbtwhX7uKdjK2J4rD.dXZ6L3O3GKUUfYhQBJ2/Mpsuyw4BIGK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', 0, 1, '2025-09-14 00:10:22', '2025-09-14 00:07:43', '2025-09-14 00:10:22'),
(9, 'shivam', 'kumar', 'siddharth.toss.cs@gmail.com', '7723065844', '$2y$10$aUm.zWoadt.sD/2z8NfTCeUGGUwfSy8seH7ofmtoQ81xauAaM.RPS', 'shivam', NULL, NULL, 'frfre', NULL, NULL, NULL, NULL, 'supervisor', 0, 1, NULL, '2025-09-17 13:15:35', '2025-09-17 13:16:06'),
(10, 'siddharth', 'singh', 'shreyash.toss.cs@gmail.com', '7898140799', '$2y$10$WxVsjnomImnEgZyqMhz9XeI6JB9BTUL02Q2KhqgNNa3OlYa.WssyS', 'siddharth', NULL, NULL, 'jbp', NULL, NULL, NULL, NULL, 'hr', 0, 1, NULL, '2025-09-23 15:10:59', '2025-09-24 11:25:17'),
(11, 'aavi', 'thakur', 'sidhusingh7898thakur@gmail.com', '7898140799', '$2y$10$sN9jAh2LzTWxwcfT1s0NGuRnkAmvempf2LH0keRV54rN13hMC/xHW', 'aaavi', NULL, NULL, 'dsffsd', NULL, NULL, NULL, NULL, 'sales', 0, 0, NULL, '2025-09-24 11:27:41', '2025-09-24 15:31:43'),
(12, 'Krishna', 'Vishwakarma', 'Toss125training@gmail.com', '7723065844', '$2y$10$ImdXHAGbRAbMY8GGOP3xE.zfwXSJYusqVUZeGkIaOVljqqaNX2Aq2', 'krishnaToss', NULL, NULL, '', NULL, NULL, NULL, NULL, 'hr', 0, 1, '2025-09-26 11:40:00', '2025-09-26 11:39:03', '2025-09-26 11:40:00'),
(13, 'ankush', 'val', 'shreyas.toss.cs@gmail.com', '8520122520', '$2y$10$nWlgxIdoPvj3GPX861lQY.zPCidGRxRj.4SUnrCJCc5aVbZ52jSCa', 'akuu bal', '0000-00-00', '', 'mp', '', '', '', NULL, 'office_staff', 0, 1, '2025-11-03 14:52:14', '2025-10-06 13:59:48', '2025-11-03 22:20:40'),
(14, 'shivam', 'sah', 'siddarth.toss.cs@gmail.com', '8520122536', '$2y$10$2J7tOA5xfU4hSEYU.Z8BqeqE0uEde8/l2PU.KEzWLjJLCJSwnp4tq', 'shivammm', NULL, NULL, 'bajnamath', NULL, NULL, NULL, NULL, 'sales', 0, 1, NULL, '2025-10-17 17:29:18', '2025-10-17 17:29:18'),
(15, 'siddharth', 'singh rajput', 'siddharth@gmail.com', '7898140798', '$2y$10$ir7z0J11NGfySEALhOa.Quk/zkYp3ISpfZIZyMoxNq.sz0hWtOLfe', 'siddharth21', NULL, 'male', 'adhartal', NULL, NULL, NULL, NULL, 'admin', 0, 1, '2025-10-18 17:46:11', '2025-10-18 17:41:54', '2025-10-18 17:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `wallet_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `balance` decimal(10,2) DEFAULT '0.00',
  `total_earned` decimal(10,2) DEFAULT '0.00',
  `total_withdrawn` decimal(10,2) DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`wallet_id`, `driver_id`, `balance`, `total_earned`, `total_withdrawn`, `created_at`, `updated_at`) VALUES
(0, 33, 0.00, 0.00, 0.00, '2025-11-12 05:57:26', '2025-11-12 05:57:26'),
(1, 1, 4600.00, 5950.00, 1350.00, '2025-07-31 23:00:00', '2025-11-03 03:57:21'),
(13, 2, 0.00, 0.00, 0.00, '2025-10-08 05:39:43', '2025-10-29 01:12:50'),
(14, 13, 0.00, 0.00, 0.00, '2025-10-09 00:21:44', '2025-11-01 03:55:15'),
(15, 14, 0.00, 0.00, 0.00, '2025-10-16 03:26:13', '2025-10-16 03:26:13'),
(16, 15, 0.00, 0.00, 0.00, '2025-10-16 04:07:18', '2025-10-16 04:07:18'),
(17, 16, 0.00, 0.00, 0.00, '2025-10-16 04:26:04', '2025-10-16 04:26:04'),
(18, 17, 0.00, 0.00, 0.00, '2025-10-16 04:49:06', '2025-10-16 04:49:06'),
(19, 18, 0.00, 0.00, 0.00, '2025-10-16 04:51:32', '2025-10-16 04:51:32'),
(20, 19, 0.00, 0.00, 0.00, '2025-10-16 05:05:29', '2025-10-16 05:05:29'),
(21, 20, 0.00, 0.00, 0.00, '2025-10-16 05:12:53', '2025-10-16 05:12:53'),
(22, 21, 0.00, 0.00, 0.00, '2025-10-16 05:30:34', '2025-10-16 05:30:34'),
(23, 22, 0.00, 0.00, 0.00, '2025-10-16 05:46:41', '2025-10-16 05:46:41'),
(24, 23, 0.00, 0.00, 0.00, '2025-10-24 03:43:32', '2025-11-02 00:34:53'),
(25, 26, 0.00, 0.00, 0.00, '2025-10-25 04:01:39', '2025-10-25 04:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `website_config`
--

CREATE TABLE `website_config` (
  `id` int(11) NOT NULL,
  `config_key` varchar(100) NOT NULL,
  `config_value` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `website_config`
--

INSERT INTO `website_config` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`) VALUES
(1, 'header_content', 'Apatkal Emergency Services', '2025-10-04 02:03:55', '2025-10-18 00:38:36'),
(2, 'header_phone', '1800', '2025-10-04 02:03:55', '2025-10-18 00:38:36'),
(3, 'header_email', 'contact@apatkal.com', '2025-10-04 02:03:55', '2025-10-18 00:37:22'),
(4, 'emergency_phone', '18005709696', '2025-10-04 02:03:55', '2025-10-18 01:01:27'),
(5, 'emergency_text', '24/7 Emergency Service', '2025-10-04 02:03:55', '2025-10-18 01:01:27'),
(16, 'logo_image', 'images/mlogo1.png', '2025-10-18 00:37:22', '2025-10-24 03:40:18'),
(17, 'logo_alt_text', 'Apatkal Logo', '2025-10-18 00:37:22', '2025-10-18 00:37:22'),
(18, 'facebook_url', 'https://www.facebook.com/people/Apatkal-India/61573752802887/', '2025-10-18 00:37:22', '2025-10-18 00:37:22'),
(19, 'youtube_url', 'https://www.youtube.com/channel/UC_9OYRqF_1NiEC3_06ZPSXQ', '2025-10-18 00:37:22', '2025-10-18 00:53:07'),
(20, 'linkedin_url', 'https://www.linkedin.com/company/mgaus-information-technology/', '2025-10-18 00:37:22', '2025-10-18 00:37:22'),
(21, 'instagram_url', 'https://www.instagram.com/apatkal.india/', '2025-10-18 00:37:22', '2025-10-18 00:37:22'),
(22, 'nav_home_text', 'HOME', '2025-10-18 00:37:22', '2025-10-24 03:40:41'),
(23, 'nav_home_url', 'index.php', '2025-10-18 00:37:22', '2025-10-18 00:37:22'),
(24, 'nav_about_text', 'ABOUT', '2025-10-18 00:37:22', '2025-10-18 00:47:57'),
(25, 'nav_about_url', 'about.php', '2025-10-18 00:37:22', '2025-10-18 00:37:22'),
(26, 'nav_plans_text', 'PLANS', '2025-10-18 00:37:22', '2025-10-18 00:47:57'),
(27, 'nav_plans_url', 'plan.php', '2025-10-18 00:37:22', '2025-10-18 00:37:22'),
(28, 'nav_accident_text', 'SUBMIT ACCIDENT INFO', '2025-10-18 00:37:22', '2025-10-18 00:47:57'),
(29, 'nav_accident_url', 'submitaccident.php', '2025-10-18 00:37:22', '2025-10-18 00:37:22'),
(30, 'nav_contact_text', 'CONTACT', '2025-10-18 00:37:22', '2025-10-18 00:47:57'),
(31, 'nav_contact_url', 'contact.php', '2025-10-18 00:37:22', '2025-10-18 00:37:22'),
(32, 'nav_login_text', 'LOGIN', '2025-10-18 00:37:22', '2025-10-18 00:47:57'),
(33, 'nav_login_url', 'client_login.php', '2025-10-18 00:37:22', '2025-10-18 00:37:22'),
(34, 'nav_register_text', 'REGISTER', '2025-10-18 00:37:22', '2025-10-18 01:11:38'),
(35, 'nav_register_url', 'client_register.php', '2025-10-18 00:37:22', '2025-10-18 00:48:17'),
(655, 'footer_content', 'Apatkal Emergency Services - Your trusted partner for emergency assistance and support.', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(656, 'footer_address', 'Highcourt road, beoharbagh ghamapur, opposite pandey hospital jabalpur, madhya pradesh 482002', '2025-10-18 01:22:08', '2025-10-18 01:34:54'),
(657, 'footer_phone', '18005709696', '2025-10-18 01:22:08', '2025-10-18 01:25:42'),
(658, 'footer_email', 'apatkalindia@gmail.com', '2025-10-18 01:22:08', '2025-10-18 01:31:48'),
(659, 'footer_copyright', 'Copyrights © 2025 Mgaus Information Technology Pvt Ltd. All Rights Reserved.', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(660, 'footer_about_text', 'About Us', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(661, 'footer_about_url', 'about.php', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(662, 'footer_services_text', 'Services', '2025-10-18 01:22:08', '2025-10-18 01:22:57'),
(663, 'footer_services_url', 'plan.php', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(664, 'footer_contact_text', 'Contact', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(665, 'footer_contact_url', 'contact.php', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(666, 'footer_faq_text', 'FAQ\'s', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(667, 'footer_faq_url', 'faq.php', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(668, 'footer_privacy_text', 'Privacy Policy', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(669, 'footer_privacy_url', 'privacypolyci.php', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(670, 'footer_terms_text', 'Terms & Conditions', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(671, 'footer_terms_url', 'termandcondi.php', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(672, 'footer_refund_text', 'Refund Policy', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(673, 'footer_refund_url', 'refundpolicy.php', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(674, 'footer_facebook_url', 'https://www.facebook.com/people/Apatkal-India/61573752802887/?rdid=nLB6vBsa24px5Rd7&share_url=https%3A%2F%2Fwww.facebook.com%2Fshare%2F1F67H68Tk2%2F', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(675, 'footer_youtube_url', 'https://www.youtube.com/channel/UC_9OYRqF_1NiEC3_06ZPSXQ', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(676, 'footer_linkedin_url', 'https://www.linkedin.com/company/mgaus-information-technology/', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(677, 'footer_instagram_url', 'https://www.instagram.com/apatkal.india/?igsh=eWRwdWFsNHI0NmQ3#', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(678, 'footer_company_title', 'Our Company', '2025-10-18 01:22:08', '2025-10-18 06:23:26'),
(679, 'footer_links_title', 'Useful Links', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(680, 'footer_connect_title', 'Connect with Us', '2025-10-18 01:22:08', '2025-10-18 01:22:08'),
(994, 'footer_copyright_url', 'index.php', '2025-10-18 01:39:23', '2025-10-18 01:41:00'),
(1120, 'homepage_main_title', 'APATKAL', '2025-10-18 01:58:42', '2025-10-18 01:59:06'),
(1121, 'homepage_emergency_button_text', 'EMERGENCY SERVICES ', '2025-10-18 01:58:42', '2025-11-03 11:16:55'),
(1122, 'homepage_feature1_title', '24/7 AVAILABILITY', '2025-10-18 01:58:42', '2025-10-18 02:03:22'),
(1123, 'homepage_feature1_description', 'Round-the-clock emergency medical services ready to respond to your call anytime, anywhere.', '2025-10-18 01:58:42', '2025-10-18 01:58:42'),
(1124, 'homepage_feature2_title', 'AMBULANCE DISPATCH', '2025-10-18 01:58:42', '2025-10-18 01:58:42'),
(1125, 'homepage_feature2_description', 'Fast and efficient ambulance dispatch system with trained medical professionals on board.', '2025-10-18 01:58:42', '2025-10-18 01:58:42'),
(1126, 'homepage_feature3_title', 'FAMILY ALERT', '2025-10-18 01:58:42', '2025-10-18 01:58:42'),
(1127, 'homepage_feature3_description', 'Automatic notification system to keep your loved ones informed during emergency situations.', '2025-10-18 01:58:42', '2025-10-18 02:04:02'),
(1128, 'homepage_feature4_title', 'CUSTOMER CARE', '2025-10-18 01:58:42', '2025-10-18 02:01:50'),
(1129, 'homepage_feature4_description', 'Dedicated customer support team providing guidance and assistance throughout your emergency.', '2025-10-18 01:58:42', '2025-10-18 01:58:42'),
(1130, 'homepage_main_image_path', 'images/apatkal advertiser.png', '2025-10-18 01:58:42', '2025-10-18 02:01:12'),
(1131, 'homepage_main_image_alt', 'Emergency Services Advertisement', '2025-10-18 01:58:42', '2025-10-18 01:58:42'),
(1288, 'about_section_title', 'What is Apatkal App ?', '2025-10-18 02:31:23', '2025-10-18 03:03:59'),
(1289, 'about_section_paragraph1', 'Our organization developed a unique application named \" Apaatkaal\" which helps many people to save their lives by reaching out to the injured people at the right time. It\'s the simplest and fastest growing way to connect with the family members at the time of an accident. \"Apatkal\" is Managed By MGAUS INFORMATION TECHNOLOGY PRIVATE LIMITED.', '2025-10-18 02:31:23', '2025-10-18 02:31:23'),
(1290, 'about_section_paragraph2', 'We had indulged a team to develop an innovative QR code which will freeze on every registered vehicle.Our purpose is to provide advance services in terms of transport tragedy.', '2025-10-18 02:31:23', '2025-10-18 02:31:23'),
(1291, 'about_section_button_text', 'READ MORE', '2025-10-18 02:31:23', '2025-10-18 02:31:23'),
(1292, 'about_section_button_url', 'about.php', '2025-10-18 02:31:23', '2025-10-18 02:31:48'),
(1293, 'about_section_image_path', 'images/image2.jpg', '2025-10-18 02:31:23', '2025-10-18 02:36:12'),
(1294, 'about_section_image_alt', 'About Apatkal', '2025-10-18 02:31:23', '2025-10-18 02:31:23'),
(1295, 'about_section_social_title', 'Follow Us On Social Media', '2025-10-18 02:31:23', '2025-10-18 02:34:21'),
(1436, 'about_section_facebook_url', 'https://www.facebook.com/people/Apatkal-India/61573752802887/?rdid=nLB6vBsa24px5Rd7&share_url=https%3A%2F%2Fwww.facebook.com%2Fshare%2F1F67H68Tk2%2F', '2025-10-18 02:53:20', '2025-10-18 02:54:40'),
(1437, 'about_section_youtube_url', 'https://www.youtube.com/channel/UC_9OYRqF_1NiEC3_06ZPSXQ', '2025-10-18 02:53:20', '2025-10-18 02:54:05'),
(1438, 'about_section_linkedin_url', 'https://www.linkedin.com/company/mgaus-information-technology/', '2025-10-18 02:53:20', '2025-10-18 02:54:05'),
(1439, 'about_section_instagram_url', 'https://www.instagram.com/apatkal.india/?igsh=eWRwdWFsNHI0NmQ3#', '2025-10-18 02:53:20', '2025-10-18 02:54:05'),
(1584, 'about_page_title', 'About Apatkal', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1585, 'about_page_subtitle', 'Your trusted partner in emergency response and accident management', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1586, 'about_page_mission_title', 'Our Mission', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1587, 'about_page_mission_content', 'Apatkal is dedicated to providing immediate emergency response services to individuals and families across India. We understand that accidents can happen anywhere, anytime, and our mission is to ensure that help arrives when you need it most.', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1588, 'about_page_mission_highlight', 'Emergency Response Time: Our average response time is under 5 minutes, ensuring that help reaches you quickly when every second counts.', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1589, 'about_page_mission_additional', 'With our advanced GPS tracking system and 24/7 monitoring center, we provide peace of mind knowing that emergency assistance is just a call away.', '2025-10-18 03:59:41', '2025-10-18 04:00:39'),
(1590, 'about_page_what_title', 'What We Do', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1591, 'about_page_what_content', 'Apatkal offers comprehensive emergency response services including:', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1592, 'about_page_what_list', 'Immediate accident response and medical assistance|GPS location tracking for quick response|Emergency contact notifications|Accident report management and documentation|24/7 customer support and monitoring|Integration with local emergency services', '2025-10-18 03:59:41', '2025-10-18 04:00:59'),
(1593, 'about_page_how_title', 'How It Works', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1594, 'about_page_step1_title', 'Register', '2025-10-18 03:59:41', '2025-10-18 04:02:43'),
(1595, 'about_page_step1_description', 'Sign up for our service and provide your emergency contact information.', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1596, 'about_page_step1_features', 'Quick registration process|Secure data storage|Multiple contact options', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1597, 'about_page_step2_title', 'Emergency Alert', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1598, 'about_page_step2_description', 'In case of emergency, our system immediately alerts our response team.', '2025-10-18 03:59:41', '2025-10-18 04:03:27'),
(1599, 'about_page_step2_features', 'Instant notification system|GPS location tracking|Real-time monitoring', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1600, 'about_page_step3_title', 'Quick Response', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1601, 'about_page_step3_description', 'Our emergency response team arrives at your location within minutes.', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1602, 'about_page_step3_features', 'Professional emergency personnel|Medical equipment on-site|Coordination with local services', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1603, 'about_page_step4_title', 'Follow-up Support', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1604, 'about_page_step4_description', 'We provide ongoing support and assistance throughout your recovery process.', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1605, 'about_page_step4_features', 'Documentation assistance|Insurance claim support|Recovery guidance', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1606, 'about_page_why_title', 'Why Choose Apatkal?', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1607, 'about_page_why_content', 'We stand out from other emergency services because of our commitment to:', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1608, 'about_page_why_list', 'Speed: Fastest response times in the industry|Reliability: 99.9% uptime and consistent service delivery|Technology: Advanced GPS and communication systems|Experience: Years of emergency response expertise|Coverage: Nationwide service availability', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1609, 'about_page_demo_title', 'Experience Our Service', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1610, 'about_page_demo_content', 'See how Apatkal can protect you and your family in emergency situations', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1611, 'about_page_demo_button_text', 'Get Started Today', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1612, 'about_page_demo_button_url', 'plan.php', '2025-10-18 03:59:41', '2025-10-18 03:59:41'),
(1787, 'plan_page_title', 'Choose Your Plan', '2025-10-18 04:17:09', '2025-10-18 04:17:09'),
(1788, 'plan_page_subtitle', 'Select the perfect plan that fits your emergency service needs', '2025-10-18 04:17:09', '2025-10-18 04:17:09'),
(1789, 'plan_name', 'Emergency Response Plan', '2025-10-18 04:17:09', '2025-10-18 04:17:09'),
(1790, 'plan_price', '₹999', '2025-10-18 04:17:09', '2025-11-03 03:38:56'),
(1791, 'plan_duration', 'per year', '2025-10-18 04:17:09', '2025-10-18 04:17:09'),
(1792, 'plan_features', '24/7 Emergency Response|GPS Location Tracking|Immediate Alert System|Emergency Contact Notifications|Accident Report Management|24/7 Customer Support', '2025-10-18 04:17:09', '2025-11-03 03:38:56'),
(1793, 'plan_button_text', 'Get Started', '2025-10-18 04:17:09', '2025-10-18 04:17:09'),
(1794, 'plan_button_url', 'client_login.php', '2025-10-18 04:17:09', '2025-10-18 04:17:09'),
(1795, 'plan_learn_more_text', 'Learn More', '2025-10-18 04:17:09', '2025-10-18 04:17:58'),
(1796, 'plan_learn_more_url', 'about.php', '2025-10-18 04:17:09', '2025-10-18 04:17:09'),
(1867, 'faq_page_title', 'Frequently Asked Questions', '2025-10-18 05:16:28', '2025-10-18 05:17:53'),
(1868, 'faq_page_subtitle', 'Find answers to common questions about our emergency services', '2025-10-18 05:16:28', '2025-10-18 05:17:12'),
(1869, 'faq_intro_text', 'We\'ve compiled answers to the most frequently asked questions about APATKAAL\'s emergency response services. If you don\'t find the answer you\'re looking for, please don\'t hesitate to contact us.', '2025-10-18 05:16:28', '2025-10-18 05:16:49'),
(1870, 'faq_section1_title', 'Emergency Response Services', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1871, 'faq_section2_title', 'Service Coverage & Insurance', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1872, 'faq_section3_title', 'Service Operations', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1873, 'faq_section4_title', 'Technical Support', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1874, 'faq1_question1', 'Will the company provide an ambulance and notify the family?', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1875, 'faq1_answer1', 'Yes, the company\'s policy is to provide ambulance services and notify the family <strong>only in the case of a fatal road accident.</strong> If a person is involved in an accident and their injuries are confirmed to be fatal, an ambulance will be dispatched if required, and the family will be informed promptly.', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1876, 'faq1_note1', '<strong>Important Note:</strong> This service is specifically designed for life-threatening situations where immediate medical intervention is critical.', '2025-10-18 05:16:28', '2025-10-18 05:19:23'),
(1877, 'faq1_question2', 'What are the things involved in fatal road accident?', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1878, 'faq1_answer2', 'The individuals involved in the road accident sustain <strong>severe injuries</strong>, often to vital areas of the body like the head, chest, or abdomen. Common fatal injuries include traumatic <strong>brain injuries, spinal cord injuries, internal bleeding, broken bones, and organ failure.</strong>', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1879, 'faq1_note2', '<strong>Medical Response:</strong> Our team is trained to handle these critical situations and coordinate with emergency medical services.', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1880, 'faq1_question3', 'Will the ambulance take me to the hospital of my choice?', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1881, 'faq1_answer3', 'Yes, users can choose any hospital or drop-off location. You get to fill in pick-up and drop-off details on our web platform, giving you full control over your destination.', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1882, 'faq2_question1', 'Does Apatkal provide medical insurance?', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1883, 'faq2_answer1', 'No, Apatkal is an emergency service company whose primary motive is to provide ambulance services during fatal injuries and notify family members. We focus on immediate emergency response rather than insurance coverage.', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1884, 'faq2_category1_title', 'What We Do Provide:', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1885, 'faq2_category1_content', 'Emergency response coordination, ambulance dispatch, family notification, and accident management services.', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1886, 'faq2_question2', 'Does Apatkal charge a fee for Ambulance Service?', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1887, 'faq2_answer2', 'No, we do not charge per-use fees for ambulance services. However, you need to pay a subscription fee to access Apatkal\'s emergency response network.', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1888, 'faq2_note2', '<strong>Subscription Benefits:</strong> Our subscription model ensures 24/7 access to emergency services without additional charges per incident.', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1889, 'faq2_question3', 'Will Apatkal pay for the hospital bill?', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1890, 'faq2_answer3', 'No, Apatkal will only cover the ambulance service costs. Hospital bills, medical treatments, and other healthcare expenses are the responsibility of the patient or their insurance provider.', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1891, 'faq3_question1', 'How quickly does Apatkal respond to emergencies?', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1892, 'faq3_answer1', 'Our average response time is under 5 minutes. We maintain a network of strategically located emergency response units to ensure rapid deployment when every second counts.', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1893, 'faq3_question2', 'What areas does Apatkal cover?', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1894, 'faq3_answer2', 'We currently provide services across major cities in India, with plans to expand our coverage. Our service areas include urban centers and major highways where emergency response is most critical.', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1895, 'faq3_question3', 'Is Apatkal available 24/7?', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1896, 'faq3_answer3', 'Yes, our emergency response center operates 24/7, 365 days a year. We understand that accidents can happen at any time, and our team is always ready to respond.', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1897, 'faq4_question1', 'How do I activate my Apatkal service?', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1898, 'faq4_answer1', 'After subscribing, you\'ll receive access credentials to our web platform. Simply log in, complete your profile setup, and you\'ll be ready to use our emergency services.', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1899, 'faq4_question2', 'What information do I need to provide during registration?', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1900, 'faq4_answer2', 'We require basic contact information, emergency contact details, vehicle information, and your preferred service plan. This helps us provide faster and more effective emergency response.', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1901, 'faq4_question3', 'Can I update my information after registration?', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1902, 'faq4_answer3', 'Yes, you can update your information anytime through your online account. Keeping your information current ensures we can provide the best possible emergency response service.', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1903, 'faq_contact_title', 'Still Have Questions?', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1904, 'faq_contact_text', 'If you couldn\'t find the answer you\'re looking for, our support team is here to help.', '2025-10-18 05:16:28', '2025-10-18 05:20:11'),
(1905, 'faq_contact_email', 'apatkalindia@gmail.com', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(1906, 'faq_contact_phone', '18005709696', '2025-10-18 05:16:28', '2025-10-18 05:21:03'),
(1907, 'faq_contact_website', 'https://apatkal.in', '2025-10-18 05:16:28', '2025-10-18 05:16:28'),
(2277, 'privacy_page_title', 'Privacy Policy', '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2278, 'privacy_page_subtitle', 'Your privacy and data security are our top priorities', '2025-10-18 05:21:58', '2025-10-18 05:24:12'),
(2279, 'privacy_intro_title', 'Privacy Policy for APATKAAL', '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2280, 'privacy_intro_content1', 'At APATKAAL, accessible from apatkaal.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by APATKAAL and how we use it.', '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2281, 'privacy_intro_content2', 'If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.', '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2282, 'privacy_intro_content3', 'This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in APATKAAL. This policy is not applicable to any information collected offline or via channels other than this website.', '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2283, 'privacy_consent_title', 'Consent', '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2284, 'privacy_consent_content', 'By using our website, you hereby consent to our Privacy Policy and agree to its terms.', '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2285, 'privacy_info_title', 'Information We Collect', '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2286, 'privacy_info_content1', 'The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.', '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2287, 'privacy_info_content2', 'If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.', '2025-10-18 05:21:58', '2025-10-18 05:24:12'),
(2288, 'privacy_info_content3', 'When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.', '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2289, 'privacy_use_title', 'How We Use Your Information', '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2290, 'privacy_use_content', 'We use the information we collect in various ways, including to:', '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2291, 'privacy_use_list', 'Provide, operate, and maintain our website|Improve, personalize, and expand our website|Understand and analyze how you use our website|Develop new products, services, features, and functionality|Communicate with you, either directly or through one of our partners|Send you emails|Find and prevent fraud', '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2292, 'privacy_log_title', NULL, '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2293, 'privacy_log_content', NULL, '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2294, 'privacy_advertising_title', NULL, '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2295, 'privacy_advertising_content1', NULL, '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2296, 'privacy_advertising_content2', NULL, '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2297, 'privacy_advertising_content3', NULL, '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2298, 'privacy_third_party_title', NULL, '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2299, 'privacy_third_party_content', NULL, '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2300, 'privacy_ccpa_title', NULL, '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2301, 'privacy_ccpa_content', NULL, '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2302, 'privacy_gdpr_title', 'GDPR Data Protection Rights', '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2303, 'privacy_gdpr_rights', 'The right to access – You can request copies of your personal data.|The right to rectification – You can request corrections to inaccurate data.|The right to erasure – You can request deletion of your data.|The right to restrict processing – You can request limits on processing.|The right to object – You can object to processing.|The right to data portability – You can request data transfer to another organization.', '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2304, 'privacy_children_title', NULL, '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2305, 'privacy_children_content', NULL, '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2306, 'privacy_changes_title', NULL, '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2307, 'privacy_changes_content', NULL, '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2308, 'privacy_contact_title', 'Contact Us ', '2025-10-18 05:21:58', '2025-10-18 05:29:45'),
(2309, 'privacy_contact_content', 'If you have any questions or suggestions about our Privacy Policy, please contact us.', '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2310, 'privacy_contact_email', 'apatkalindia@gmail.com', '2025-10-18 05:21:58', '2025-10-18 05:24:24'),
(2311, 'privacy_contact_phone', '18005709696', '2025-10-18 05:21:58', '2025-10-18 05:21:58'),
(2627, 'terms_page_title', 'Terms & Conditions', '2025-10-18 05:42:02', '2025-10-18 05:42:19'),
(2628, 'terms_page_subtitle', 'Please read these terms carefully before using our service', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2629, 'terms_main_title', 'Terms and Conditions', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2630, 'terms_last_updated', 'July 25, 2023', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2631, 'terms_intro_text', 'Please read these terms and conditions carefully before using Our Service. By accessing or using the Service, you agree to be bound by these Terms.', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2632, 'terms_interpretation_title', 'Interpretation and Definitions', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2633, 'terms_interpretation_subtitle', 'Interpretation', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2634, 'terms_interpretation_content', 'The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2635, 'terms_definitions_subtitle', 'Definitions', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2636, 'terms_definitions_content', 'For the purposes of these Terms and Conditions:', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2637, 'terms_definitions_list', 'Affiliate means an entity that controls, is controlled by or is under common control with a party, where \"control\" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.|Country refers to: Madhya Pradesh, India|Company refers to APATKAAL, a company registered under the laws of India.|Website refers to APATKAAL, accessible from apatkal.in|Service refers to the emergency response and accident management services provided by APATKAAL.|User means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2638, 'terms_acknowledgment_title', 'Acknowledgment', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2639, 'terms_acknowledgment_content', 'These are the Terms and Conditions governing the use of this Service and the agreement that operates between You and the Company. These Terms and Conditions set out the rights and obligations of all users regarding the use of the Service.', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2640, 'terms_acknowledgment_highlight', 'Important: Your access to and use of the Service is conditioned on Your acceptance of and compliance with these Terms and Conditions. These Terms and Conditions apply to all visitors, users, and others who access or use the Service.', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2641, 'terms_service_title', 'Service Description', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2642, 'terms_service_content', 'APATKAAL provides emergency response services including but not limited to:', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2643, 'terms_service_list', '24/7 emergency response and medical assistance|GPS location tracking for quick response|Emergency contact notifications|Accident report management and documentation|Integration with local emergency services|Customer support and monitoring services', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2644, 'terms_responsibilities_title', 'User Responsibilities', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2645, 'terms_responsibilities_content', 'As a user of our Service, you agree to:', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2646, 'terms_responsibilities_list', 'Provide accurate and complete information during registration|Maintain the security of your account credentials|Use the Service only for lawful purposes|Not attempt to interfere with or disrupt the Service|Report any security concerns immediately|Comply with all applicable laws and regulations', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2647, 'terms_privacy_title', 'Privacy and Data Protection', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2648, 'terms_privacy_content', 'Your privacy is important to us. Our collection and use of personal information is governed by our Privacy Policy, which is incorporated into these Terms and Conditions by reference.', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2649, 'terms_privacy_highlight', 'Data Security: We implement appropriate technical and organizational measures to protect your personal data against unauthorized access, alteration, disclosure, or destruction.', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2650, 'terms_liability_title', 'Limitation of Liability', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2651, 'terms_liability_content', 'In no event shall APATKAAL, nor its directors, employees, partners, agents, suppliers, or affiliates, be liable for any indirect, incidental, special, consequential, or punitive damages, including without limitation, loss of profits, data, use, goodwill, or other intangible losses, resulting from your use of the Service.', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2652, 'terms_links_title', 'Links to Other Websites', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2653, 'terms_links_content', 'Our Service may contain links to third-party web sites or services that are not owned or controlled by APATKAAL. We have no control over, and assume no responsibility for, the content, privacy policies, or practices of any third-party web sites or services.', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2654, 'terms_links_highlight', 'External Links: We strongly advise you to read the terms and conditions and privacy policies of any third-party web sites or services that you visit.', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2655, 'terms_termination_title', 'Termination', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2656, 'terms_termination_content1', 'We may terminate or suspend Your access immediately, without prior notice or liability, for any reason whatsoever, including without limitation if You breach the Terms and Conditions.', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2657, 'terms_termination_content2', 'Upon termination, Your right to use the Service will cease immediately. If you wish to terminate your account, you may simply discontinue using the Service.', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2658, 'terms_changes_title', 'Changes to These Terms and Conditions', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2659, 'terms_changes_content', 'We reserve the right to modify or replace these Terms at any time. If a revision is material, we will make reasonable efforts to provide at least 30 days notice prior to any new terms taking effect.', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2660, 'terms_changes_highlight', 'Notification: What constitutes a material change will be determined at our sole discretion. We will notify users of any material changes via email or through a notice on our website.', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2661, 'terms_governing_title', 'Governing Law', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2662, 'terms_governing_content', 'The laws of India shall govern these Terms and Conditions and your use of the Service. Your use of the Service may also be subject to other local, state, national, or international laws.', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2663, 'terms_contact_title', 'Contact Us', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2664, 'terms_contact_content', 'If you have any questions about these Terms and Conditions, you can contact us:', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2665, 'terms_contact_website', 'https://apatkal.in', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2666, 'terms_contact_email', 'apatkalindia@gmail.com', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2667, 'terms_contact_phone', '18005709696', '2025-10-18 05:42:02', '2025-10-18 05:42:02'),
(2709, 'refund_page_title', 'Return and Refund Policy', '2025-10-18 05:43:15', '2025-10-18 06:22:09'),
(2710, 'refund_page_subtitle', 'Your satisfaction and trust are our top priorities', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2711, 'refund_main_title', 'Return and Refund Policy', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2712, 'refund_last_updated', 'July 25, 2023', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2713, 'refund_intro_text', 'Thank you for choosing APATKAAL. We are committed to providing you with the best emergency response services. This policy outlines our return and refund procedures for any products or services you may purchase from us.', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2714, 'refund_interpretation_title', 'Interpretation and Definitions', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2715, 'refund_interpretation_subtitle', 'Interpretation', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2716, 'refund_interpretation_content', 'The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2717, 'refund_definitions_subtitle', 'Definitions', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2718, 'refund_definitions_content', 'For the purposes of this Return and Refund Policy:', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2719, 'refund_definitions_list', 'Company (referred to as either \"the Company\", \"We\", \"Us\" or \"Our\") refers to APATKAAL, a company registered under the laws of India.|Goods refer to the items offered for sale on the Service, including emergency response equipment and related products.|Orders mean a request by You to purchase Goods or Services from Us.|Service refers to the emergency response and accident management services provided by APATKAAL.|Website refers to APATKAAL, accessible from apatkal.in|You means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2720, 'refund_cancellation_title', 'Your Order Cancellation Rights', '2025-10-18 05:43:15', '2025-10-18 05:44:12'),
(2721, 'refund_cancellation_content', 'You are entitled to cancel Your Order within 14 days without giving any reason for doing so. This cancellation period applies to both physical goods and service subscriptions.', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2722, 'refund_cancellation_important', 'Important: The deadline for cancelling an Order is 14 days from the date on which You received the Goods or on which a third party you have appointed, who is not the carrier, takes possession of the product delivered.', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2723, 'refund_cancellation_howto', 'In order to exercise Your right of cancellation, You must inform Us of your decision by means of a clear statement. You can inform us of your decision by:', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2724, 'refund_cancellation_methods', 'Contacting our customer support team|Visiting our website at apatkal.in|Sending us an email at apatkalindia@gmail.com|Calling us at 18005709696', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2725, 'refund_cancellation_timeline', 'Refund Timeline: We will reimburse You no later than 14 days from the day on which We receive the returned Goods. We will use the same means of payment as You used for the Order, and You will not incur any fees for such reimbursement.', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2726, 'refund_conditions_title', 'Conditions for Returns', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2727, 'refund_conditions_content', 'In order for the Goods to be eligible for a return, please make sure that:', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2728, 'refund_conditions_list', 'The Goods were purchased in the last 14 days|The Goods are in the original packaging and unused condition|All original tags, labels, and accessories are intact|The Goods are not damaged or defective due to misuse', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2729, 'refund_conditions_warning', 'Non-Returnable Items: The following Goods cannot be returned under any circumstances:', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2730, 'refund_conditions_nonreturnable', 'The supply of Goods made to Your specifications or clearly personalized|The supply of Goods which according to their nature are not suitable to be returned, deteriorate rapidly or where the date of expiry is over|The supply of Goods which are not suitable for return due to health protection or hygiene reasons and were unsealed after delivery|The supply of Goods which are, after delivery, according to their nature, inseparably mixed with other items|Digital products, software, or downloadable content|Gift cards or vouchers', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2731, 'refund_conditions_sale', 'Sale Items: Only regular priced Goods may be refunded. Unfortunately, Goods on sale cannot be refunded. This exclusion may not apply to You if it is not permitted by applicable law.', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2732, 'refund_conditions_disclaimer', 'We reserve the right to refuse returns of any merchandise that does not meet the above return conditions in our sole discretion.', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2733, 'refund_returning_title', 'Returning Goods', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2734, 'refund_returning_content', 'You are responsible for the cost and risk of returning the Goods to Us. You should send the Goods at the following address:', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2735, 'refund_returning_address', 'APATKAAL Headquarters<br>1 Infinite Loop, Cupertino, CA 95014, India', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2736, 'refund_returning_warning', 'Important: We cannot be held responsible for Goods damaged or lost in return shipment. Therefore, We recommend an insured and trackable mail service. We are unable to issue a refund without actual receipt of the Goods or proof of received return delivery.', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2737, 'refund_returning_shipping', 'Return Shipping: For your convenience, we recommend using a trackable shipping service and purchasing insurance for the return shipment. This ensures that your return is properly documented and protected during transit.', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2738, 'refund_subscription_title', 'Service Subscription Cancellations', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2739, 'refund_subscription_content', 'For our emergency response service subscriptions, the following terms apply:', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2740, 'refund_subscription_list', 'Monthly subscriptions can be cancelled at any time with 30 days notice|Annual subscriptions can be cancelled within the first 30 days for a full refund|After 30 days, annual subscriptions are subject to prorated refunds|Emergency services used during the subscription period are non-refundable', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2741, 'refund_subscription_continuity', 'Service Continuity: Cancellation of your subscription will take effect at the end of your current billing period. You will continue to have access to our services until that time.', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2742, 'refund_gifts_title', 'Gifts and Gift Purchases', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2743, 'refund_gifts_content1', 'If the Goods were marked as a gift when purchased and then shipped directly to you, You\'ll receive a gift credit for the value of your return. Once the returned product is received, a gift certificate will be mailed to You.', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2744, 'refund_gifts_content2', 'If the Goods weren\'t marked as a gift when purchased, or the gift giver had the Order shipped to themselves to give it to You later, We will send the refund to the gift giver.', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2745, 'refund_gifts_info', 'Gift Returns: Gift returns are subject to the same return conditions as regular purchases. The gift recipient must provide proof of purchase or gift receipt for returns.', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2746, 'refund_processing_title', 'Refund Processing', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2747, 'refund_processing_content', 'Once we receive your returned items, we will inspect them and notify you of the refund status:', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2748, 'refund_processing_list', 'If approved, your refund will be processed within 5-7 business days|Refunds will be issued to the original payment method used|You will receive an email confirmation when the refund is processed|Bank processing times may vary depending on your financial institution', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2749, 'refund_processing_timeline', 'Refund Timeline: Please allow 5-7 business days for refund processing, plus additional time for your bank or credit card company to post the refund to your account.', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2750, 'refund_contact_title', 'Contact Us', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2751, 'refund_contact_content', 'If you have any questions about our Returns and Refunds Policy, please contact us:', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2752, 'refund_contact_website', 'https://apatkal.in', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2753, 'refund_contact_email', 'apatkalindia@gmail.com', '2025-10-18 05:43:15', '2025-10-18 05:43:15'),
(2754, 'refund_contact_phone', '18005709696', '2025-10-18 05:43:15', '2025-10-18 05:45:02'),
(2939, 'contact_page_title', 'Contact Us', '2025-10-18 06:04:41', '2025-10-18 06:06:47'),
(2940, 'contact_form_name_label', 'Full Name', '2025-10-18 06:04:41', '2025-10-18 06:04:41'),
(2941, 'contact_form_mobile_label', 'Mobile No.', '2025-10-18 06:04:41', '2025-10-18 06:04:41'),
(2942, 'contact_form_email_label', 'Email Address', '2025-10-18 06:04:41', '2025-10-18 06:04:41'),
(2943, 'contact_form_message_label', 'Message', '2025-10-18 06:04:41', '2025-10-18 06:06:56'),
(2944, 'contact_form_button_text', 'Send Message', '2025-10-18 06:04:41', '2025-10-18 06:04:41'),
(2945, 'contact_form_success_message', '✅ Submitted successfully!', '2025-10-18 06:04:41', '2025-10-18 06:05:44'),
(2946, 'contact_phone', '18005709696', '2025-10-18 06:04:41', '2025-10-18 06:05:55'),
(2947, 'contact_email', 'apatkalindia@gmail.com', '2025-10-18 06:04:41', '2025-10-18 06:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `withdrawal_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `bank_account_number` varchar(20) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `ifsc_code` varchar(15) NOT NULL,
  `account_holder_name` varchar(100) NOT NULL,
  `status` enum('pending','approved','rejected','completed') DEFAULT 'pending',
  `requested_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `processed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`withdrawal_id`, `driver_id`, `amount`, `bank_account_number`, `bank_name`, `ifsc_code`, `account_holder_name`, `status`, `requested_at`, `processed_at`, `created_at`) VALUES
(19, 1, 1000.00, '1234567890123456', 'State Bank Of India', 'SBIN0001234', 'Rajesh Sharma', 'completed', '2025-10-08 05:14:03', '2025-10-08 05:14:03', '2025-10-08 05:14:03'),
(20, 1, 100.00, '1234567890123456', 'State Bank Of India', 'SBIN0001234', 'Rajesh Sharma', 'completed', '2025-10-08 05:23:41', '2025-10-08 05:23:41', '2025-10-08 05:23:41'),
(21, 1, 150.00, '1234567890123456', 'State Bank Of India', 'SBIN0001234', 'Rajesh Sharma', 'completed', '2025-10-08 05:28:34', '2025-10-08 05:28:34', '2025-10-08 05:28:34'),
(22, 1, 100.00, '1234567890123456', 'State Bank Of India', 'SBIN0001234', 'Rajesh Sharma', 'completed', '2025-10-11 01:53:51', '2025-10-11 01:53:51', '2025-10-11 01:53:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accidents`
--
ALTER TABLE `accidents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accident_photos`
--
ALTER TABLE `accident_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_family_members`
--
ALTER TABLE `client_family_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_logins`
--
ALTER TABLE `client_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_sessions`
--
ALTER TABLE `device_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_driver_device` (`driver_id`,`device_id`),
  ADD KEY `idx_driver_active_session` (`driver_id`,`is_active`),
  ADD KEY `idx_device_id` (`device_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_assignments`
--
ALTER TABLE `driver_assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_assignment` (`accident_id`,`driver_id`),
  ADD KEY `idx_accident_status` (`accident_id`,`status`),
  ADD KEY `idx_driver_status` (`driver_id`,`status`),
  ADD KEY `idx_radius_time` (`radius_km`,`last_attempt_at`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `emergency_dispatch`
--
ALTER TABLE `emergency_dispatch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incident_id` (`incident_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `emergency_incidents`
--
ALTER TABLE `emergency_incidents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `idx_emergency_incidents_user` (`user_id`),
  ADD KEY `idx_emergency_incidents_status` (`status`),
  ADD KEY `idx_emergency_incidents_reported` (`reported_at`);

--
-- Indexes for table `emergency_team`
--
ALTER TABLE `emergency_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_members`
--
ALTER TABLE `family_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `header_config`
--
ALTER TABLE `header_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `config_key` (`config_key`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_media_type` (`type`);

--
-- Indexes for table `navigation_menus`
--
ALTER TABLE `navigation_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `idx_pages_slug` (`slug`),
  ADD KEY `idx_pages_active` (`is_active`);

--
-- Indexes for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_client` (`client_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_payment_date` (`payment_date`),
  ADD KEY `idx_transaction_id` (`transaction_id`);

--
-- Indexes for table `qr_codes`
--
ALTER TABLE `qr_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_qr_number` (`qr_number`),
  ADD KEY `idx_vehicle_number` (`vehicle_number`);

--
-- Indexes for table `rejected_reports`
--
ALTER TABLE `rejected_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rejected_driver` (`driver_id`),
  ADD KEY `idx_rejected_accident` (`accident_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sections_page` (`page_id`),
  ADD KEY `idx_sections_order` (`order_number`);

--
-- Indexes for table `service_plans`
--
ALTER TABLE `service_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Indexes for table `sms_logs`
--
ALTER TABLE `sms_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `family_member_id` (`family_member_id`),
  ADD KEY `idx_sms_logs_client_id` (`client_id`),
  ADD KEY `idx_sms_logs_phone` (`phone_number`),
  ADD KEY `idx_sms_logs_status` (`status`),
  ADD KEY `idx_sms_logs_sent_at` (`sent_at`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `idx_client_id` (`client_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `idx_users_email` (`email`),
  ADD KEY `idx_users_phone` (`phone`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`wallet_id`);

--
-- Indexes for table `website_config`
--
ALTER TABLE `website_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `config_key` (`config_key`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`withdrawal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accidents`
--
ALTER TABLE `accidents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `accident_photos`
--
ALTER TABLE `accident_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `client_family_members`
--
ALTER TABLE `client_family_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `client_logins`
--
ALTER TABLE `client_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `device_sessions`
--
ALTER TABLE `device_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `driver_assignments`
--
ALTER TABLE `driver_assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emergency_dispatch`
--
ALTER TABLE `emergency_dispatch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rejected_reports`
--
ALTER TABLE `rejected_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
