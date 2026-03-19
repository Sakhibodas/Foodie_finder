-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2025 at 10:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodie_finder`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `comment_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `ingredient_id` int(11) NOT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `ingredient_name` varchar(255) NOT NULL,
  `quantity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`ingredient_id`, `recipe_id`, `ingredient_name`, `quantity`) VALUES
(1, 1, 'besan (gram flour)', '1 cup (92g)'),
(2, 1, 'water', '2 cups (480ml)'),
(3, 1, 'oil', '3 tbsp (45ml)'),
(4, 1, 'cumin seeds', '1 tsp (2g)'),
(5, 1, 'onion, finely chopped', '1 medium (100g)'),
(6, 1, 'green chilies, chopped', '2 (10g)'),
(7, 1, 'ginger paste', '1 tsp (5g)'),
(8, 1, 'turmeric powder', '1/4 tsp (0.5g)'),
(9, 1, 'red chili powder', '1/2 tsp (1g)'),
(10, 1, 'coriander powder', '1 tsp (2g)'),
(11, 1, 'salt', 'to taste (3g)'),
(12, 1, 'coriander leaves, chopped', '2 tbsp (8g)'),
(13, 1, 'jowar (sorghum) flour', '1 cup (120g)'),
(14, 1, 'water for bhakri', 'as needed (80ml)'),
(15, 1, 'salt for bhakri', 'to taste (2g)'),
(16, 2, 'dried chickpeas, soaked overnight', '1 cup (200g)'),
(17, 2, 'onions, finely chopped', '2 medium (200g)'),
(18, 2, 'tomatoes, chopped', '2 medium (200g)'),
(19, 2, 'green chilies, slit', '2 (10g)'),
(20, 2, 'ginger-garlic paste', '1 tbsp (15g)'),
(21, 2, 'cumin seeds', '1 tsp (2g)'),
(22, 2, 'bay leaf', '1 (0.5g)'),
(23, 2, 'cloves', '2 (0.5g)'),
(24, 2, 'cinnamon stick', '1 inch (2g)'),
(25, 2, 'coriander powder', '1 tsp (2g)'),
(26, 2, 'cumin powder', '1/2 tsp (1g)'),
(27, 2, 'garam masala', '1/2 tsp (1g)'),
(28, 2, 'turmeric powder', '1/4 tsp (0.5g)'),
(29, 2, 'red chili powder', '1 tsp (2g)'),
(30, 2, 'dried mango powder (amchur)', '1 tsp (2g)'),
(31, 2, 'oil', '2 tbsp (30ml)'),
(32, 2, 'salt', 'to taste (3g)'),
(33, 2, 'coriander leaves, chopped', '2 tbsp (8g)'),
(34, 2, 'lemon, cut into wedges', '1 (30g)'),
(35, 2, 'all-purpose flour', '1 cup (125g)'),
(36, 2, 'yogurt', '1/4 cup (60g)'),
(37, 2, 'baking powder', '1/2 tsp (2g)'),
(38, 2, 'baking soda', '1/4 tsp (1g)'),
(39, 2, 'oil for kulcha', '1 tbsp (15ml)'),
(40, 2, 'milk', '2 tbsp (30ml)'),
(41, 2, 'salt for kulcha', 'to taste (2g)'),
(42, 2, 'butter for brushing', '1 tbsp (15g)'),
(43, 3, 'kidney beans, soaked overnight', '1 cup (200g)'),
(44, 3, 'onion, finely chopped', '1 large (150g)'),
(45, 3, 'tomatoes, pureed', '2 medium (200g)'),
(46, 3, 'ginger-garlic paste', '1 tbsp (15g)'),
(47, 3, 'green chilies, chopped', '2 (10g)'),
(48, 3, 'cumin seeds', '1 tsp (2g)'),
(49, 3, 'turmeric powder', '1/2 tsp (1g)'),
(50, 3, 'red chili powder', '1 tsp (2g)'),
(51, 3, 'coriander powder', '1 tsp (2g)'),
(52, 3, 'garam masala', '1/2 tsp (1g)'),
(53, 3, 'oil', '2 tbsp (30ml)'),
(54, 3, 'salt', 'to taste (3g)'),
(55, 3, 'coriander leaves, chopped', '2 tbsp (8g)'),
(56, 3, 'basmati rice', '1 cup (200g)'),
(57, 3, 'water for rice', '2 cups (480ml)'),
(58, 3, 'salt for rice', 'to taste (2g)'),
(59, 4, 'basmati rice', '1 cup (200g)'),
(60, 4, 'mixed vegetables (carrots, peas, beans, cauliflower)', '1/2 cup (100g)'),
(61, 4, 'onion, thinly sliced', '1 medium (100g)'),
(62, 4, 'ginger-garlic paste', '1 tbsp (15g)'),
(63, 4, 'green chilies, slit', '2 (10g)'),
(64, 4, 'bay leaf', '1 (0.5g)'),
(65, 4, 'cinnamon stick', '1 inch (2g)'),
(66, 4, 'cloves', '2-3 (0.5g)'),
(67, 4, 'cardamom pods', '2-3 (1g)'),
(68, 4, 'star anise', '1 (1g)'),
(69, 4, 'cumin seeds', '1 tsp (2g)'),
(70, 4, 'ghee or oil', '2 tbsp (30ml)'),
(71, 4, 'water or vegetable stock', '2 cups (480ml)'),
(72, 4, 'salt', 'to taste (3g)'),
(73, 4, 'coriander leaves, chopped', '2 tbsp (8g)'),
(74, 4, 'mint leaves, chopped', '1 tbsp (4g)'),
(75, 5, 'cooked rice (leftover rice works best)', '2 cups (400g)'),
(76, 5, 'water', '4 cups (960ml)'),
(77, 5, 'cumin seeds', '1 tsp (2g)'),
(78, 5, 'mustard seeds', '1/2 tsp (1g)'),
(79, 5, 'curry leaves', 'Few (2g)'),
(80, 5, 'green chilies, chopped', '2 (10g)'),
(81, 5, 'ginger, grated', '1 tbsp (15g)'),
(82, 5, 'yogurt', '2 tbsp (30g)'),
(83, 5, 'ghee', '1 tbsp (15ml)'),
(84, 5, 'salt', 'to taste (3g)'),
(85, 5, 'coriander leaves, chopped', '2 tbsp (8g)'),
(86, 5, 'lemon, cut into wedges', '1 (30g)'),
(87, 6, 'all-purpose flour', '1/2 cup (60g)'),
(88, 6, 'cocoa powder', '1/4 cup (25g)'),
(89, 6, 'sugar', '1/2 cup (100g)'),
(90, 6, 'butter, melted', '1/4 cup (60g)'),
(91, 6, 'egg', '1 large (50g)'),
(92, 6, 'vanilla extract', '1/2 tsp (2ml)'),
(93, 6, 'baking powder', '1/4 tsp (1g)'),
(94, 6, 'salt', 'Pinch (0.5g)'),
(95, 6, 'dark chocolate, chopped', '100g'),
(96, 6, 'heavy cream', '1/4 cup (60ml)'),
(97, 6, 'butter for sauce', '1 tbsp (15g)'),
(98, 6, 'vanilla ice cream', '2 scoops (100g)'),
(99, 6, 'chopped nuts (optional)', '2 tbsp (20g)'),
(100, 7, 'semolina (sooji/rava)', '1/2 cup (85g)'),
(101, 7, 'ghee', '1/4 cup (60ml)'),
(102, 7, 'sugar', '1/4 cup (50g)'),
(103, 7, 'water', '1 cup (240ml)'),
(104, 7, 'cardamom pods, crushed', '2 (1g)'),
(105, 7, 'chopped nuts (almonds, cashews, pistachios)', '1 tbsp (10g)'),
(106, 7, 'raisins', '1 tbsp (10g)'),
(107, 7, 'saffron strands (optional)', 'Pinch (0.2g)'),
(108, 8, 'rice', '1/2 cup (100g)'),
(109, 8, 'split yellow moong dal', '1/4 cup (50g)'),
(110, 8, 'water', '2 1/2 cups (600ml)'),
(111, 8, 'cumin seeds', '1 tsp (2g)'),
(112, 8, 'black pepper, whole', '1/2 tsp (1g)'),
(113, 8, 'asafoetida (hing)', '1/4 tsp (0.5g)'),
(114, 8, 'curry leaves', 'Few (2g)'),
(115, 8, 'ginger, grated', '1 inch (10g)'),
(116, 8, 'green chilies, chopped', '2 (10g)'),
(117, 8, 'ghee', '2 tbsp (30ml)'),
(118, 8, 'cashew nuts', '2 tbsp (20g)'),
(119, 8, 'salt', 'to taste (3g)'),
(120, 8, 'black peppercorns', '1 tsp (2g)'),
(121, 8, 'curry leaves', '10-12 (2g)'),
(122, 8, 'ginger, grated', '1 inch (10g)'),
(123, 8, 'green chilies, chopped', '2-3 (15g)'),
(124, 8, 'asafoetida', '¼ tsp (0.5g)'),
(125, 8, 'cashews', '¼ cup (30g)'),
(126, 8, 'salt', 'to taste (3g)'),
(127, 9, 'vermicelli', '1 cup (100g)'),
(128, 9, 'milk', '4 cups (1L)'),
(129, 9, 'sugar', '½ cup (100g)'),
(130, 9, 'mixed nuts (cashews, almonds, pistachios)', '¼ cup (40g)'),
(131, 9, 'raisins', '2 tbsp (20g)'),
(132, 9, 'ghee', '2 tbsp (30g)'),
(133, 9, 'cardamom powder', '¼ tsp (0.5g)'),
(134, 9, 'saffron strands (optional)', 'Pinch (0.25g)'),
(135, 10, 'all-purpose flour', '1 cup (125g)'),
(136, 10, 'semolina (sooji)', '2 tbsp (20g)'),
(137, 10, 'milk powder', '2 tbsp (20g)'),
(138, 10, 'fennel seeds, crushed', '½ tsp (1g)'),
(139, 10, 'cardamom powder', '¼ tsp (0.5g)'),
(140, 10, 'milk', '1 cup (250ml)'),
(141, 10, 'khoya/mawa (optional)', '2 tbsp (30g)'),
(142, 10, 'oil or ghee for deep frying', '300ml'),
(143, 10, 'sugar (for syrup)', '1 cup (200g)'),
(144, 10, 'water (for syrup)', '½ cup (125ml)'),
(145, 10, 'cardamom powder (for syrup)', '¼ tsp (0.5g)'),
(146, 10, 'saffron strands (optional, for syrup)', 'Pinch (0.25g)'),
(147, 10, 'chopped pistachios (for garnish)', '2 tbsp (20g)'),
(148, 11, 'fresh mint leaves', '10-12 (5g)'),
(149, 11, 'sugar', '2 tbsp (25g)'),
(150, 11, 'lime, juiced', '1 (30ml)'),
(151, 11, 'soda water', '2 cups (500ml)'),
(152, 11, 'ice cubes', '1 cup (200g)'),
(153, 12, 'Milk', '2 cups (500ml)'),
(154, 12, 'Cocoa Powder', '3 tbsp (15g)'),
(155, 12, 'Sugar', '3 tbsp (38g)'),
(156, 12, 'Vanilla Extract', '½ tsp (2.5ml)'),
(157, 12, 'Salt', 'Pinch (0.25g)'),
(158, 12, 'Whipped Cream (optional)', '2 tbsp (30g)'),
(159, 12, 'Chocolate Shavings (optional)', '1 tbsp (5g)'),
(160, 13, 'Fresh Coconut Milk', '1 cup (240ml)'),
(161, 13, 'Kokum Extract', '3 tbsp (45ml)'),
(162, 13, 'Green Chilies (finely chopped)', '2 (10g)'),
(163, 13, 'Ginger (grated)', '1 tbsp (15g)'),
(164, 13, 'Garlic Cloves (crushed)', '2 cloves (6g)'),
(165, 13, 'Coriander Leaves (chopped)', '2 tbsp (10g)'),
(166, 13, 'Cumin Powder', '1/2 tsp (1g)'),
(167, 13, 'Black Pepper Powder', '1/4 tsp (0.5g)'),
(168, 13, 'Salt', 'to taste (2g)'),
(169, 13, 'Water', '1 cup (240ml)'),
(170, 14, 'Water', '2 cups (500ml)'),
(171, 14, 'Tea Bags or Loose Tea Leaves', '2 tea bags or 2 tsp (4g)'),
(172, 14, 'Sugar', '2 tbsp or to taste (25g)'),
(173, 14, 'Fresh Lemon Juice', '2 tbsp (30ml)'),
(174, 14, 'Mint Leaves (optional)', '2-3 leaves (2g)'),
(175, 14, 'Lemon Slices (for garnish)', '2 slices'),
(176, 15, 'Milk', '2 cups (500ml)'),
(177, 15, 'Masala', '2 tbsp (20g)'),
(178, 15, 'Sugar', '3 tbsp (38g)'),
(179, 15, 'Cardamom Powder', '1/4 tsp (0.5g)'),
(180, 15, 'Saffron Strands', 'Pinch (0.25g)'),
(181, 15, 'Rose Water (optional)', '2 tbsp (30ml)'),
(182, 15, 'Chopped Nuts (for garnish)', '2 tbsp (20g)'),
(183, 16, 'Instant Coffee', '2 tbsp (10g)'),
(184, 16, 'Sugar', '2 tbsp (25g)'),
(185, 16, 'Hot Water', '2 tbsp (30ml)'),
(186, 16, 'Cold Milk', '2 cups (500ml)'),
(187, 16, 'Ice Cubes', 'as needed (100g)'),
(188, 16, 'Cocoa Powder for Garnish (optional)', '1 tsp (2g)'),
(189, 17, 'Paneer (cut into cubes)', '250g'),
(190, 17, 'Butter', '2 tbsp (30g)'),
(191, 17, 'Oil', '1 tbsp (15ml)'),
(192, 17, 'Onion (roughly chopped)', '1 medium (100g)'),
(193, 17, 'Tomatoes (roughly chopped)', '2 medium (200g)'),
(194, 17, 'Cashews', '2 tbsp (20g)'),
(195, 17, 'Ginger-Garlic Paste', '1 tbsp (15g)'),
(196, 17, 'Green Chilies (chopped)', '2-3 (15g)'),
(197, 17, 'Red Chili Powder', '1 tsp (2g)'),
(198, 17, 'Coriander Powder', '1 tsp (2g)'),
(199, 17, 'Turmeric Powder', '1/2 tsp (1g)'),
(200, 17, 'Garam Masala', '1 tsp (2g)'),
(201, 17, 'Dried Fenugreek Leaves (Kasuri Methi)', '1/2 tsp (1g)'),
(202, 17, 'Cream', '1/4 cup (60ml)'),
(203, 17, 'Honey or Sugar', '1 tbsp (15g)'),
(204, 17, 'Salt', 'to taste (3g)'),
(205, 17, 'Coriander Leaves (chopped, for garnish)', '2 tbsp (10g)'),
(206, 18, 'Rice', '2 cups (400g)'),
(207, 18, 'Urad Dal (split black gram)', '½ cup (100g)'),
(208, 18, 'Chana Dal (split chickpeas)', '2 tbsp (20g)'),
(209, 18, 'Fenugreek Seeds', '1 tbsp (10g)'),
(210, 18, 'Salt', 'to taste (5g)'),
(211, 18, 'Water', 'for soaking and grinding (500ml)'),
(212, 18, 'Oil', 'for cooking (50ml)'),
(213, 18, 'Potatoes (boiled and mashed)', '4 medium (600g)'),
(214, 18, 'Onion (finely chopped)', '1 medium (100g)'),
(215, 18, 'Green Chili (finely chopped)', '1 (5g)'),
(216, 18, 'Ginger (grated)', '1 inch (10g)'),
(217, 18, 'Curry Leaves', '10-12 leaves (2g)'),
(218, 18, 'Mustard Seeds', '½ tsp (1g)'),
(219, 18, 'Turmeric Powder', '½ tsp (1g)'),
(220, 18, 'Oil', '2 tbsp (30ml)'),
(221, 18, 'Coriander Leaves (chopped)', '2 tbsp (10g)'),
(222, 18, 'Salt', 'to taste (3g)'),
(223, 19, 'Milk Powder', '¾ cup (75g)'),
(224, 19, 'All-Purpose Flour', '¼ cup (30g)'),
(225, 19, 'Ghee', '2 tbsp (30g)'),
(226, 19, 'Baking Soda', '¼ tsp (1g)'),
(227, 19, 'Milk', '2-3 tbsp (45ml)'),
(228, 19, 'Oil or Ghee for Deep Frying', '500ml'),
(229, 19, 'Sugar', '1 cup (200g)'),
(230, 19, 'Water', '1 cup (250ml)'),
(231, 19, 'Cardamom Pods (crushed)', '4-5 pods (2g)'),
(232, 19, 'Rose Water', '1 tsp (5ml)'),
(233, 19, 'Saffron Strands (optional)', '0.25g'),
(234, 20, 'Urad Dal (split black gram)', '1 cup (200g)'),
(235, 20, 'Rice', '2 tbsp (20g)'),
(236, 20, 'Ginger (grated)', '1 inch (10g)'),
(237, 20, 'Green Chilies (finely chopped)', '2-3 (15g)'),
(238, 20, 'Coriander Leaves (chopped)', '2 tbsp (10g)'),
(239, 20, 'Cumin Seeds', '½ tsp (1g)'),
(240, 20, 'Asafoetida', 'Pinch (0.25g)'),
(241, 20, 'Salt', 'to taste (3g)'),
(242, 20, 'Yogurt', '2 cups (500g)'),
(243, 20, 'Tamarind Chutney', '2 tbsp (30g)'),
(244, 20, 'Mint-Coriander Chutney', '2 tbsp (30g)'),
(245, 20, 'Roasted Cumin Powder', '1 tsp (2g)'),
(246, 20, 'Red Chili Powder', '1 tsp (2g)'),
(247, 20, 'Black Salt', '½ tsp (1g)'),
(248, 20, 'Coriander Leaves (chopped, for garnish)', '2 tbsp (10g)'),
(249, 21, 'Semolina (sooji)', '1 cup (170g)'),
(250, 21, 'All-Purpose Flour', '2 tbsp (20g)'),
(251, 21, 'Salt', '½ tsp (2g)'),
(252, 21, 'Water for Kneading', 'approximately 100ml'),
(253, 21, 'Oil for Deep Frying', '500ml'),
(254, 21, 'Mint Leaves', '1 cup (50g)'),
(255, 21, 'Coriander Leaves', '½ cup (25g)'),
(256, 21, 'Green Chilies', '2-3 (15g)'),
(257, 21, 'Ginger', '1 inch piece (10g)'),
(258, 21, 'Tamarind Pulp', '2 tbsp (30g)'),
(259, 21, 'Cumin Powder', '1 tsp (2g)'),
(260, 21, 'Chaat Masala', '1 tsp (2g)'),
(261, 21, 'Black Salt', '1 tsp (2g)'),
(262, 21, 'Regular Salt', '½ tsp (1g)'),
(263, 21, 'Jaggery or Sugar', '2 tbsp (25g)'),
(264, 21, 'Cold Water', '4 cups (1L)'),
(265, 21, 'Potatoes (boiled and diced)', '2 medium (300g)'),
(266, 21, 'Boiled Chickpeas', '½ cup (75g)'),
(267, 21, 'Sprouted Moong', '½ cup (75g)'),
(268, 21, 'Onion (finely chopped)', '1 small (75g)'),
(269, 21, 'Coriander (chopped)', '2 tbsp (10g)'),
(270, 21, 'Chaat Masala', '1 tsp (2g)'),
(271, 21, 'Cumin Powder', '½ tsp (1g)'),
(272, 21, 'Salt', 'to taste (2g)'),
(273, 21, 'Sweet Tamarind Chutney', '2 tbsp (30g)'),
(274, 22, 'Potatoes (boiled and mashed)', '4 medium (600g)'),
(275, 22, '1 cup gram flour (besan)', '(100g)'),
(276, 22, '¼ cup rice flour', '(30g)'),
(277, 22, '1 medium onion, finely chopped', '(100g)'),
(278, 22, '2 green chilies, finely chopped', '(10g)'),
(279, 22, '1 tbsp ginger-garlic paste', '(15g)'),
(280, 22, '2 tbsp chopped coriander leaves', '(10g)'),
(281, 22, '1 tsp mustard seeds', '(2g)'),
(282, 22, '1 tsp cumin seeds', '(2g)'),
(283, 22, '10-12 curry leaves', '(2g)'),
(284, 22, '½ tsp turmeric powder', '(1g)'),
(285, 22, '1 tsp red chili powder', '(2g)'),
(286, 22, '2 tbsp lemon juice', '(30ml)'),
(287, 22, '1 tsp sugar', '(5g)'),
(288, 22, 'Salt to taste', 'a pinch'),
(289, 22, '2 tbsp oil for tempering', '(30ml)'),
(290, 22, 'Oil for deep frying', '(500ml)'),
(291, 22, '½ cup water for batter', '(125ml)'),
(292, 23, 'Paneer (cut into 1-inch cubes)', '250g'),
(293, 23, '1 medium bell pepper, diced', '(150g)'),
(294, 23, '1 medium onion, diced', '(100g)'),
(295, 23, '1 medium onion, finely chopped', '(100g)'),
(296, 23, '100g yogurt', '(100g)'),
(297, 23, '1 tbsp ginger-garlic paste', '(15g)'),
(298, 23, '1 tsp red chili powder', '(2g)'),
(299, 23, '½ tsp turmeric powder', '(1g)'),
(300, 23, '1 tsp coriander powder', '(2g)'),
(301, 23, '1 tsp cumin powder', '(2g)'),
(302, 23, '1 tsp garam masala', '(2g)'),
(303, 23, '1 tsp chaat masala', '(2g)'),
(304, 23, '1 tbsp lemon juice', '(15ml)'),
(305, 23, '2 tbsp gram flour (besan)', '(20g)'),
(306, 23, '2 tbsp oil', '(30ml)'),
(307, 23, 'Salt to taste', '(3g)'),
(308, 23, '1 tbsp chopped coriander for garnish', '(5g)'),
(309, 24, 'fresh coriander leaves, finely chopped', '(2cups)'),
(310, 24, '1 cup besan (gram flour)', '(100g)'),
(311, 24, '2 tbsp rice flour', '(20g)'),
(312, 24, '1 medium onion, finely chopped', '(100g)'),
(313, 24, '2 green chilies, finely chopped', '(10g)'),
(314, 24, '1 inch ginger, grated', '(10g)'),
(315, 24, '1 tsp cumin seeds', '(2g)'),
(316, 24, '½ tsp turmeric powder', '(1g)'),
(317, 24, '1 tsp red chili powder', '(2g)'),
(318, 24, '1 tbsp sesame seeds', '(10g)'),
(319, 24, '2 tbsp lemon juice', '(30ml)'),
(320, 24, 'Salt to taste', '(3g)'),
(321, 24, '¾ cup water', '(180ml)'),
(322, 24, '2 tbsp oil for tempering', '(30ml)'),
(323, 24, 'Oil for shallow frying', '(50ml)'),
(324, 25, '½ cup jowar flour (sorghum)', '(60g)'),
(325, 25, '½ cup bajra flour (pearl millet)', '(60g)'),
(326, 25, '½ cup besan (gram flour)', '(50g)'),
(327, 25, '¼ cup wheat flour', '(30g)'),
(328, 25, '¼ cup rice flour', '(30g)'),
(329, 25, '1 medium onion, finely chopped', '(100g)'),
(330, 25, '2 green chilies, finely chopped', '(10g)'),
(331, 25, '1 inch ginger, grated', '(10g)'),
(332, 25, '2 tbsp chopped coriander leaves', '(10g)'),
(333, 25, '1 tbsp sesame seeds', '(10g)'),
(334, 25, '1 tsp cumin seeds', '(2g)'),
(335, 25, '½ tsp turmeric powder', '(2g)'),
(336, 25, '1 tsp red chili powder', '(2g)'),
(337, 25, '2 tbsp oil', '(30ml)'),
(338, 25, 'Salt to taste', '(3g)'),
(339, 25, 'Warm water for kneading - approximately 150ml', '(150ml)'),
(340, 25, 'Ghee for serving', '(20g)'),
(341, 26, '2 large potatoes, boiled and mashed', '(300g)'),
(342, 26, '½ cup mixed vegetables (carrots, peas, beans), finely chopped and boiled', '(75g)'),
(343, 26, '1 medium onion, finely chopped', '(100g)'),
(344, 26, '2 green chilies, finely chopped', '(10g)'),
(345, 26, '1 tbsp ginger-garlic paste', '(15g)'),
(346, 26, '2 tbsp chopped coriander leaves', '(10g)'),
(347, 26, '1 tsp cumin powder', '(2g)'),
(348, 26, '1 tsp coriander powder', '(2g)'),
(349, 26, '½ tsp garam masala', '(1g)'),
(350, 26, '½ tsp turmeric powder', '(1g)'),
(351, 26, '1 tsp red chili powder', '(2g)'),
(352, 26, '2 tbsp lemon juice', '(30ml)'),
(353, 26, '2 tbsp bread crumbs', '(20g)'),
(354, 26, '2 tbsp all-purpose flour', '(20g)'),
(355, 26, '1 cup breadcrumbs for coating', '(100g)'),
(356, 26, 'Salt to taste', '(3g)'),
(357, 26, 'Oil for shallow frying', '(100ml)'),
(358, 27, '1 ½ cups graham cracker crumbs', '(150g)'),
(359, 27, '⅓ cup granulated sugar', '(65g)'),
(360, 27, '⅓ cup melted butter', '(75g)'),
(361, 27, '3 (8 oz) packages cream cheese, softened', ' (675g)'),
(362, 27, '1 cup granulated sugar', '(200g)'),
(363, 27, '1 tsp vanilla extract', '(5ml)'),
(364, 27, '1 cup sour cream', '(240g)'),
(365, 27, '½ cup heavy cream', '(120ml)'),
(366, 27, '2 tbsp cornstarch', '(25g)'),
(367, 27, '2 tbsp water (for cornstarch mixture)', '(30ml)');

-- --------------------------------------------------------

--
-- Table structure for table `instructions`
--

CREATE TABLE `instructions` (
  `instruction_id` int(11) NOT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `step_number` int(11) NOT NULL,
  `instruction_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructions`
--

INSERT INTO `instructions` (`instruction_id`, `recipe_id`, `step_number`, `instruction_text`) VALUES
(1, 1, 1, 'In a bowl, mix besan with water to make a smooth, lump-free batter.'),
(2, 1, 2, 'Heat oil in a pan, add cumin seeds and let them splutter.'),
(3, 1, 3, 'Add chopped onions and sauté until translucent.'),
(4, 1, 4, 'Add green chilies and ginger paste, sauté for a minute.'),
(5, 1, 5, 'Add turmeric, red chili powder, coriander powder, and salt. Mix well.'),
(6, 1, 6, 'Pour in the besan mixture, stirring continuously to avoid lumps.'),
(7, 1, 7, 'Cook on medium heat for 8-10 minutes until it thickens.'),
(8, 1, 8, 'Garnish with coriander leaves.'),
(9, 1, 9, 'For bhakri, mix jowar flour and salt in a bowl.'),
(10, 1, 10, 'Gradually add water to form a firm dough.'),
(11, 1, 11, 'Divide the dough into 4 equal portions.'),
(12, 1, 12, 'Take one portion, flatten it between your palms, and pat it to form a flat round bread.'),
(13, 1, 13, 'Heat a tawa (flat pan), place the bhakri on it.'),
(14, 1, 14, 'Cook for 2-3 minutes, flip and cook the other side.'),
(15, 1, 15, 'Apply oil on both sides and cook until spots appear.'),
(16, 1, 16, 'Repeat for remaining dough portions.'),
(17, 2, 1, 'Pressure cook soaked chickpeas with 3 cups water and a little salt for 4-5 whistles.'),
(18, 2, 2, 'Heat oil in a pan, add cumin seeds, bay leaf, cloves, and cinnamon.'),
(19, 2, 3, 'Add chopped onions and sauté until golden brown.'),
(20, 2, 4, 'Add ginger-garlic paste and green chilies, sauté for 2 minutes.'),
(21, 2, 5, 'Add chopped tomatoes and cook until oil separates.'),
(22, 2, 6, 'Add all dry spices and salt, mix well.'),
(23, 2, 7, 'Add boiled chickpeas with some of the cooking water.'),
(24, 2, 8, 'Simmer for 15-20 minutes, mashing some chickpeas to thicken the gravy.'),
(25, 2, 9, 'Add dried mango powder and garnish with coriander leaves.'),
(26, 2, 10, 'For kulcha, mix flour, salt, baking powder, and baking soda in a bowl.'),
(27, 2, 11, 'Add yogurt, oil, and milk to form a soft dough.'),
(28, 2, 12, 'Knead for 5 minutes, cover, and rest for 2 hours.'),
(29, 2, 13, 'Divide the dough into 4 equal portions.'),
(30, 2, 14, 'Roll each portion into an oval or round shape.'),
(31, 2, 15, 'Heat a tawa, place the rolled kulcha on it.'),
(32, 2, 16, 'When bubbles appear, flip and cook the other side.'),
(33, 2, 17, 'Brush with butter and serve hot.'),
(34, 3, 1, 'Pressure cook soaked kidney beans with 3 cups water and a little salt for 5-6 whistles.'),
(35, 3, 2, 'Heat oil in a pan, add cumin seeds and let them splutter.'),
(36, 3, 3, 'Add chopped onions and sauté until golden brown.'),
(37, 3, 4, 'Add ginger-garlic paste and green chilies, sauté for 2 minutes.'),
(38, 3, 5, 'Add tomato puree and cook until oil separates.'),
(39, 3, 6, 'Add turmeric, red chili powder, coriander powder, and salt. Mix well.'),
(40, 3, 7, 'Add boiled kidney beans with some of the cooking water.'),
(41, 3, 8, 'Simmer for 15-20 minutes, mashing some beans to thicken the gravy.'),
(42, 3, 9, 'Add garam masala and garnish with coriander leaves.'),
(43, 3, 10, 'For rice, wash rice thoroughly and soak for 30 minutes.'),
(44, 3, 11, 'In a pot, bring water to a boil, add salt and drained rice.'),
(45, 3, 12, 'Cook on medium heat until rice is done and water is absorbed.'),
(46, 3, 13, 'Fluff with a fork.'),
(47, 4, 1, 'Wash rice thoroughly and soak for 30 minutes.'),
(48, 4, 2, 'Heat ghee in a pressure cooker or deep pan.'),
(49, 4, 3, 'Add all whole spices (bay leaf, cinnamon, cloves, cardamom, star anise) and cumin seeds.'),
(50, 4, 4, 'Add sliced onions and sauté until golden brown.'),
(51, 4, 5, 'Add ginger-garlic paste and green chilies, sauté for 2 minutes.'),
(52, 4, 6, 'Add mixed vegetables and sauté for 3-4 minutes.'),
(53, 4, 7, 'Drain the rice and add to the pan. Sauté for 2 minutes.'),
(54, 4, 8, 'Add water or vegetable stock and salt.'),
(55, 4, 9, 'Pressure cook for 1-2 whistles or cook covered on low heat until rice is done.'),
(56, 4, 10, 'Garnish with coriander and mint leaves.'),
(57, 5, 1, 'Take cooked rice in a bowl, add water, and mix gently.'),
(58, 5, 2, 'Add yogurt and salt, mix well.'),
(59, 5, 3, 'Let it rest for at least 2-3 hours or overnight in a cool place.'),
(60, 5, 4, 'For tempering, heat ghee in a small pan.'),
(61, 5, 5, 'Add mustard seeds and let them splutter.'),
(62, 5, 6, 'Add cumin seeds, curry leaves, green chilies, and grated ginger.'),
(63, 5, 7, 'Pour this tempering over the pakhala rice just before serving.'),
(64, 5, 8, 'Garnish with coriander leaves and serve with lemon wedges.'),
(65, 6, 1, 'Preheat oven to 350°F (180°C).'),
(66, 6, 2, 'Grease and line a small baking dish.'),
(67, 6, 3, 'In a bowl, sift flour, cocoa powder, baking powder, and salt.'),
(68, 6, 4, 'In another bowl, whisk together melted butter and sugar.'),
(69, 6, 5, 'Add egg and vanilla extract, mix well.'),
(70, 6, 6, 'Fold in the dry ingredients to form a smooth batter.'),
(71, 6, 7, 'Pour into the prepared dish and bake for 20-25 minutes.'),
(72, 6, 8, 'For the chocolate sauce, heat cream in a saucepan until it begins to simmer.'),
(73, 6, 9, 'Pour over chopped chocolate, add butter, and stir until smooth.'),
(74, 6, 10, 'Heat a sizzler plate until very hot.'),
(75, 6, 11, 'Cut the brownie into squares and place on the hot sizzler plate.'),
(76, 6, 12, 'Pour hot chocolate sauce over the brownie.'),
(77, 6, 13, 'Add a scoop of ice cream on top and sprinkle with chopped nuts.'),
(78, 6, 14, 'Serve immediately while sizzling.'),
(79, 7, 1, 'Heat ghee in a pan on medium heat.'),
(80, 7, 2, 'Add nuts and raisins, sauté until golden brown. Remove and keep aside.'),
(81, 7, 3, 'In the same pan, add semolina and roast on low-medium heat until golden brown and aromatic.'),
(82, 7, 4, 'In another pan, bring water to a boil, add sugar, cardamom, and saffron if using.'),
(83, 7, 5, 'Once the sugar dissolves, slowly pour the hot water into the roasted semolina, stirring continuously.'),
(84, 7, 6, 'Be careful as it might splutter.'),
(85, 7, 7, 'Keep stirring until the semolina absorbs all the water and thickens.'),
(86, 7, 8, 'Add the roasted nuts and raisins, mix well.'),
(87, 7, 9, 'Cover and cook on low heat for 2-3 minutes.'),
(88, 7, 10, 'Serve hot or warm.'),
(89, 8, 1, 'Wash rice and dal together, drain, and keep aside.'),
(90, 8, 2, 'In a pressure cooker, add rice, dal, water, and salt.'),
(91, 8, 3, 'Pressure cook for 4-5 whistles.'),
(92, 8, 4, 'Heat ghee in a small pan for tempering.'),
(93, 8, 5, 'Add cashew nuts and sauté until golden brown.'),
(94, 8, 6, 'Add cumin seeds, black pepper, asafoetida, curry leaves, grated ginger, and green chilies.'),
(95, 8, 7, 'Sauté for a minute and pour this tempering over the cooked rice-dal mixture.'),
(96, 8, 8, 'Mix well, mashing slightly, and serve hot.'),
(97, 9, 1, 'Heat ghee in a pan, add mixed nuts and raisins.'),
(98, 9, 2, 'Sauté until nuts are golden brown and raisins puff up. Remove and keep aside.'),
(99, 9, 3, 'In the same pan, add vermicelli and roast until golden brown.'),
(100, 9, 4, 'Add milk and bring to a boil.'),
(101, 9, 5, 'Reduce heat and simmer for 15-20 minutes, stirring occasionally, until vermicelli is cooked and milk thickens.'),
(102, 9, 6, 'Add sugar, cardamom powder, and saffron (if using).'),
(103, 9, 7, 'Mix well and cook for another 5 minutes.'),
(104, 9, 8, 'Add the roasted nuts and raisins (reserve some for garnish).'),
(105, 9, 9, 'Mix well and remove from heat.'),
(106, 9, 10, 'Serve hot or chilled, garnished with reserved nuts.'),
(107, 10, 1, 'In a pan, add sugar and water, bring to a boil for sugar syrup.'),
(108, 10, 2, 'Simmer for 5-7 minutes until slightly thick.'),
(109, 10, 3, 'Add cardamom powder and saffron, mix well. Keep the syrup warm.'),
(110, 10, 4, 'In a bowl, mix all-purpose flour, semolina, milk powder, fennel seeds, and cardamom powder.'),
(111, 10, 5, 'Gradually add milk and whisk to form a smooth batter (consistency of pancake batter).'),
(112, 10, 6, 'Add khoya/mawa if using and mix well.'),
(113, 10, 7, 'Let the batter rest for 15-20 minutes.'),
(114, 10, 8, 'Heat oil or ghee in a deep pan for frying.'),
(115, 10, 9, 'Pour a small ladle of batter into the hot oil.'),
(116, 10, 10, 'Fry on medium heat until golden brown on both sides.'),
(117, 10, 11, 'Remove and drain excess oil.'),
(118, 10, 12, 'Immediately dip in warm sugar syrup for 30 seconds.'),
(119, 10, 13, 'Remove and place on a serving plate.'),
(120, 10, 14, 'Repeat for the remaining batter.'),
(121, 10, 15, 'Garnish with chopped pistachios.'),
(122, 10, 16, 'Serve warm or at room temperature.'),
(123, 11, 1, 'In a mortar and pestle or using the back of a spoon, muddle mint leaves and sugar together.'),
(124, 11, 2, 'Add lime juice and muddle lightly'),
(125, 11, 3, 'Divide the mixture between two tall glasses.'),
(126, 11, 4, 'Add ice cubes to both glasses.'),
(127, 11, 5, 'Pour soda water over the ice.'),
(128, 11, 6, 'Stir gently to combine.'),
(129, 11, 7, 'Garnish with lime slices and additional mint leaves if desired.'),
(130, 11, 8, 'Serve immediately.'),
(131, 12, 1, 'In a saucepan, heat milk until it begins to simmer (do not boil).'),
(132, 12, 2, 'In a small bowl, mix cocoa powder, sugar, and salt.'),
(133, 12, 3, 'Add a small amount of hot milk to the cocoa mixture and stir to create a smooth paste.'),
(134, 12, 4, 'Pour this paste back into the saucepan with remaining milk.'),
(135, 12, 5, 'Whisk continuously over medium heat until the mixture is smooth and well combined.'),
(136, 12, 6, 'Add vanilla extract and mix well.'),
(137, 12, 7, 'Remove from heat.'),
(138, 12, 8, 'Pour into two mugs.'),
(139, 12, 9, 'Top with whipped cream and chocolate shavings if desired.'),
(140, 12, 10, 'Serve hot.'),
(141, 13, 1, 'Soak kokum in warm water for 30 minutes, then squeeze to extract the juice.'),
(142, 13, 2, 'In a bowl, mix coconut milk and water.'),
(143, 13, 3, 'Add kokum extract, chopped green chilies, grated ginger, crushed garlic, cumin powder, black pepper powder, and salt.'),
(144, 13, 4, 'Mix well and adjust salt and sourness to taste.'),
(145, 13, 5, 'For tempering (optional), heat oil in a small pan.'),
(146, 13, 6, 'Add mustard seeds and let them splutter.'),
(147, 13, 7, 'Add curry leaves and sauté for a few seconds.'),
(148, 13, 8, 'Pour this tempering over the solkadhi.'),
(149, 13, 9, 'Add chopped coriander leaves and mix well.'),
(150, 13, 10, 'Chill in the refrigerator for at least 1 hour.'),
(151, 13, 11, 'Serve cold as a digestive drink after meals.'),
(152, 14, 1, 'In a saucepan, bring water to a boil.'),
(153, 14, 2, 'Add tea bags or loose tea leaves and simmer for 2-3 minutes.'),
(154, 14, 3, 'Remove from heat and strain if using loose tea leaves.'),
(155, 14, 4, 'Add sugar and stir until dissolved.'),
(156, 14, 5, 'Let it cool slightly (to prevent vitamin C loss from lemon juice).'),
(157, 14, 6, 'Add lemon juice and mix well.'),
(158, 14, 7, 'Pour into cups.'),
(159, 14, 8, 'Garnish with lemon slices and mint leaves if using.'),
(160, 14, 9, 'Serve hot or cold over ice.'),
(161, 15, 1, 'For Masala: Soak almonds, cashews, melon seeds, and poppy seeds in water for 2 hours.'),
(162, 15, 2, 'Drain and peel the almonds.'),
(163, 15, 3, 'Grind all the soaked ingredients along with fennel seeds, black peppercorns, cardamoms, and cinnamon to a fine paste.'),
(164, 15, 4, 'In a saucepan, bring milk to a boil.'),
(165, 15, 5, 'Add sugar and saffron, mix well.'),
(166, 15, 6, 'Remove from heat and let it cool completely.'),
(167, 15, 7, 'Add masala paste and cardamom powder.'),
(168, 15, 8, 'Mix well and refrigerate for at least 1 hour.'),
(169, 15, 9, 'Before serving, add rose water if using.'),
(170, 15, 10, 'Strain the mixture through a fine mesh strainer.'),
(171, 15, 11, 'Pour into glasses.'),
(172, 15, 12, 'Garnish with chopped nuts.'),
(173, 15, 13, 'Serve chilled.'),
(174, 16, 1, 'In a bowl, add instant coffee, sugar, and hot water.'),
(175, 16, 2, 'Using a hand mixer or whisk, beat the mixture for 2-3 minutes until it becomes creamy and light in color.'),
(176, 16, 3, 'Continue beating for another 2-3 minutes until soft peaks form.'),
(177, 16, 4, 'Beat for 2 more minutes until stiff peaks form.'),
(178, 16, 5, 'Fill two glasses with ice cubes.'),
(179, 16, 6, 'Pour cold milk over the ice.'),
(180, 16, 7, 'Spoon the whipped coffee mixture on top of the milk.'),
(181, 16, 8, 'Dust with cocoa powder if desired.'),
(182, 16, 9, 'Serve immediately with a straw and spoon.'),
(183, 17, 1, 'In a pan, heat 1 tbsp oil and lightly fry paneer cubes until golden. Remove and keep aside.'),
(184, 17, 2, 'In the same pan, add onions, tomatoes, cashews, and green chilies.'),
(185, 17, 3, 'Sauté for 5-7 minutes until onions are soft and tomatoes are mushy.'),
(186, 17, 4, 'Let it cool slightly, then transfer to a blender and blend to a smooth paste.'),
(187, 17, 5, 'In the same pan, heat butter.'),
(188, 17, 6, 'Add ginger-garlic paste and sauté for a minute.'),
(189, 17, 7, 'Add the blended paste and cook for 5-7 minutes.'),
(190, 17, 8, 'Add red chili powder, coriander powder, turmeric powder, and salt.'),
(191, 17, 9, 'Mix well and cook for another 2-3 minutes.'),
(192, 17, 10, 'Add 1/2 cup water and bring to a boil.'),
(193, 17, 11, 'Add fried paneer cubes and simmer for 5 minutes.'),
(194, 17, 12, 'Add cream, honey/sugar, garam masala, and dried fenugreek leaves.'),
(195, 17, 13, 'Mix well and simmer for 2-3 minutes.'),
(196, 17, 14, 'Garnish with chopped coriander leaves.'),
(197, 17, 15, 'Serve hot with naan or rice.'),
(198, 18, 1, 'Wash and soak rice, urad dal, chana dal, and fenugreek seeds separately for 4-6 hours.'),
(199, 18, 2, 'Drain the water and grind them together to a smooth batter with water.'),
(200, 18, 3, 'The batter should be of pouring consistency.'),
(201, 18, 4, 'Add salt and mix well.'),
(202, 18, 5, 'Cover and let it ferment in a warm place for 8-10 hours or overnight.'),
(203, 18, 6, 'Heat oil in a pan, add mustard seeds and let them splutter.'),
(204, 18, 7, 'Add curry leaves, chopped onions, green chilies, and grated ginger.'),
(205, 18, 8, 'Sauté until onions are golden brown.'),
(206, 18, 9, 'Add turmeric powder and salt, mix well.'),
(207, 18, 10, 'Add mashed potatoes and mix thoroughly.'),
(208, 18, 11, 'Cook for 2-3 minutes.'),
(209, 18, 12, 'Add chopped coriander leaves and mix well.'),
(210, 18, 13, 'Remove from heat and keep aside.'),
(211, 18, 14, 'Heat a non-stick or cast-iron tawa (griddle).'),
(212, 18, 15, 'Once hot, lightly grease it with oil.'),
(213, 18, 16, 'Pour a ladle of batter in the center and spread it in a circular motion to form a thin dosa.'),
(214, 18, 17, 'Drizzle a little oil around the edges.'),
(215, 18, 18, 'Cook on medium heat until golden brown and crisp.'),
(216, 18, 19, 'Place a portion of the potato filling in the center.'),
(217, 18, 20, 'Fold the dosa over the filling.'),
(218, 18, 21, 'Serve hot with coconut chutney and sambar.'),
(219, 19, 1, 'In a saucepan, add sugar and water, bring to a boil.'),
(220, 19, 2, 'Simmer for 5-7 minutes until slightly thick.'),
(221, 19, 3, 'Add cardamom pods, rose water, and saffron strands (if using).'),
(222, 19, 4, 'Keep the syrup warm.'),
(223, 19, 5, 'In a bowl, mix milk powder, all-purpose flour, and baking soda.'),
(224, 19, 6, 'Add ghee and mix well to form a crumbly texture.'),
(225, 19, 7, 'Gradually add milk and knead to form a soft dough.'),
(226, 19, 8, 'Cover and let it rest for 5-10 minutes.'),
(227, 19, 9, 'Divide the dough into 8-10 small portions and roll them into smooth balls.'),
(228, 19, 10, 'Make sure there are no cracks on the surface.'),
(229, 19, 11, 'Heat oil or ghee in a deep pan for frying.'),
(230, 19, 12, 'Fry the balls on low-medium heat, stirring gently for even cooking.'),
(231, 19, 13, 'Fry until they turn golden brown.'),
(232, 19, 14, 'Remove and drain excess oil.'),
(233, 19, 15, 'Immediately drop the hot gulab jamuns into the warm sugar syrup.'),
(234, 19, 16, 'Let them soak for at least 1-2 hours before serving.'),
(235, 19, 17, 'Serve warm or at room temperature.'),
(236, 20, 1, 'Wash and soak urad dal and rice together for 4 hours.'),
(237, 20, 2, 'Drain the water and grind to a smooth paste using minimal water.'),
(238, 20, 3, 'Add grated ginger, green chilies, chopped coriander leaves, cumin seeds, asafoetida, and salt.'),
(239, 20, 4, 'Beat the batter for 2-3 minutes until it becomes light and fluffy.'),
(240, 20, 5, 'Heat oil in a deep pan for frying.'),
(241, 20, 6, 'Wet your palms with water, take a small portion of the batter, and shape it into a flat round disc.'),
(242, 20, 7, 'Carefully slide it into the hot oil.'),
(243, 20, 8, 'Fry on medium heat until golden brown on both sides.'),
(244, 20, 9, 'Remove and place in a bowl of warm water for 2-3 minutes.'),
(245, 20, 10, 'Gently press between your palms to remove excess water.'),
(246, 20, 11, 'In a bowl, whisk yogurt until smooth.'),
(247, 20, 12, 'Add salt, black salt, and a little water if needed to achieve a pouring consistency.'),
(248, 20, 13, 'Place the soaked vadas on a serving plate.'),
(249, 20, 14, 'Pour the whisked yogurt over them.'),
(250, 23, 1, 'In a bowl, whisk yogurt until smooth.'),
(251, 23, 2, 'Add gram flour, ginger-garlic paste, all spice powders, lemon juice, oil, and salt.'),
(252, 23, 3, 'Mix well to form a smooth marinade.'),
(253, 23, 4, 'Add paneer cubes, diced bell pepper, and onion to the marinade.'),
(254, 23, 5, 'Gently mix to coat all pieces evenly.'),
(255, 23, 6, 'Cover and refrigerate for at least 1-2 hours (overnight for best results).'),
(256, 23, 7, 'Preheat oven to 200°C (400°F).'),
(257, 23, 8, 'Thread marinated paneer, bell pepper, and onion alternately onto skewers.'),
(258, 23, 9, 'Brush with oil and place on a baking tray.'),
(259, 23, 10, 'Bake for 10-12 minutes, turning halfway through.'),
(260, 23, 11, 'Alternatively, cook on a grill or tawa until charred spots appear.'),
(261, 23, 12, 'Serve hot, garnished with chopped coriander leaves and a sprinkle of chaat masala, with mint chutney on the side.'),
(262, 24, 1, 'In a large bowl, mix besan, rice flour, turmeric powder, red chili powder, and salt.'),
(263, 24, 2, 'Add chopped coriander leaves, onions, green chilies, grated ginger, cumin seeds, sesame seeds, and lemon juice.'),
(264, 24, 3, 'Mix well and gradually add water to form a thick batter.'),
(265, 24, 4, 'Heat 2 tbsp oil in a small pan, add mustard seeds and let them splutter.'),
(266, 24, 5, 'Add cumin seeds and asafoetida, sauté for a few seconds.'),
(267, 24, 6, 'Pour this tempering into the batter and mix well.'),
(268, 24, 7, 'Grease a steaming plate or thali.'),
(269, 24, 8, 'Pour the batter into the greased plate and spread evenly (about 1 inch thick).'),
(270, 24, 9, 'Steam for 15-20 minutes or until a toothpick inserted comes out clean.'),
(271, 24, 10, 'Allow it to cool completely.'),
(272, 24, 11, 'Cut into diamond or square shaped pieces.'),
(273, 24, 12, 'Heat oil in a pan for shallow frying.'),
(274, 24, 13, 'Fry the vadis on medium heat until golden brown on both sides.'),
(275, 24, 14, 'Drain on paper towels.'),
(276, 24, 15, 'Serve hot with green chutney or ketchup.'),
(277, 25, 1, 'In a large bowl, mix all the flours together.'),
(278, 25, 2, 'Add chopped onions, green chilies, grated ginger, coriander leaves, sesame seeds, cumin seeds, turmeric powder, red chili powder, and salt.'),
(279, 25, 3, 'Add 1 tbsp oil and mix well.'),
(280, 25, 4, 'Gradually add warm water and knead to form a soft dough.'),
(281, 25, 5, 'Divide the dough into 4 equal portions.'),
(282, 25, 6, 'Take a portion of the dough and place it on a greased plastic sheet or banana leaf.'),
(283, 25, 7, 'Pat it with your fingers to form a flat, round disc (about 6-7 inches in diameter).'),
(284, 25, 8, 'Make a small hole in the center.'),
(285, 25, 9, 'Heat a tawa or flat pan and grease it with oil.'),
(286, 25, 10, 'Carefully transfer the thalipeeth from the plastic sheet to the hot tawa.'),
(287, 25, 11, 'Cook on medium heat for 3-4 minutes.'),
(288, 25, 12, 'Flip and cook the other side, applying some oil around the edges.'),
(289, 25, 13, 'Cook until both sides are golden brown and crisp.'),
(290, 25, 14, 'Repeat for the remaining dough portions.'),
(291, 25, 0, 'Serve hot with ghee, yogurt, or pickle.'),
(292, 26, 1, 'Heat 1 tbsp oil in a pan, add chopped onions and sauté until translucent.'),
(293, 26, 2, 'Add green chilies and ginger-garlic paste, sauté for a minute.'),
(294, 26, 3, 'Add all the spice powders and mix well.'),
(295, 26, 4, 'Add boiled and mashed potatoes, boiled mixed vegetables, salt, and lemon juice.'),
(296, 26, 5, 'Mix well and cook for 2-3 minutes.'),
(297, 26, 6, 'Add chopped coriander leaves and mix well.'),
(298, 26, 7, 'Remove from heat and let it cool completely.'),
(299, 26, 8, 'Add 2 tbsp bread crumbs to the mixture to bind it.'),
(300, 26, 9, 'Divide the mixture into 8 equal portions and shape into round or oval patties.'),
(301, 26, 10, 'In a bowl, make a slurry by mixing all-purpose flour with little water.'),
(302, 26, 11, 'Dip each patty in the flour slurry, then coat with breadcrumbs.'),
(303, 26, 12, 'Heat oil in a pan for shallow frying.'),
(304, 26, 13, 'Fry the cutlets on medium heat until golden brown on both sides.'),
(305, 26, 14, 'Drain on paper towels.'),
(306, 26, 15, 'Serve hot with green chutney or ketchup.'),
(307, 27, 1, 'Preheat the oven to 325°F (163°C).'),
(308, 27, 2, 'In a mixing bowl, combine graham cracker crumbs, sugar, and melted butter.'),
(309, 27, 3, 'Press the mixture into the bottom of a 9-inch springform pan to form an even crust.'),
(310, 27, 4, 'Bake for 8-10 minutes until lightly golden. Set aside to cool.'),
(311, 27, 5, 'In a small bowl, mix 2 tbsp cornstarch with 2 tbsp water to create a smooth mixture. Set aside.'),
(312, 27, 6, 'In a large bowl, beat the softened cream cheese until smooth and creamy.'),
(313, 27, 7, 'Add sugar and vanilla extract, and continue beating until well combined.'),
(314, 27, 0, 'Mix in the sour cream and heavy cream until smooth.'),
(315, 27, 9, 'Add the cornstarch mixture and beat until well combined.'),
(316, 27, 10, 'Pour the cream cheese mixture over the cooled crust in the springform pan.'),
(317, 27, 11, 'Smooth the top with a spatula.'),
(318, 27, 12, 'Bake for 45-50 minutes, or until the edges are set and the center is slightly jiggly.'),
(319, 27, 13, 'Turn off the oven and let the cheesecake cool in the oven with the door slightly open for about 1 hour.'),
(320, 27, 14, 'Afterward, refrigerate for at least 4 hours or overnight for best results.'),
(321, 27, 15, 'Once chilled, remove the cheesecake from the springform pan.'),
(322, 27, 16, 'Top with fruit, chocolate sauce, or any toppings of your choice.'),
(323, 27, 17, 'Slice and enjoy!'),
(324, 21, 1, 'Mix semolina, all-purpose flour, and salt in a bowl.'),
(325, 21, 2, 'Gradually add water and knead to form a firm dough.'),
(326, 21, 3, 'Cover and let it rest for 20-30 minutes.'),
(327, 21, 4, 'Divide the dough into small marble-sized balls.'),
(328, 21, 5, 'Roll each ball into a small disc (about 2-3 inches).'),
(329, 21, 6, 'Heat oil in a deep pan and fry the puris until they puff up and turn golden.'),
(330, 21, 7, 'Drain on paper towels.'),
(331, 21, 8, 'Blend mint leaves, coriander leaves, green chilies, and ginger to a smooth paste.'),
(332, 21, 9, 'Mix this paste with tamarind pulp, cumin powder, chaat masala, black salt, regular salt, and jaggery.'),
(333, 21, 10, 'Add cold water and mix well.'),
(334, 21, 11, 'Adjust seasoning to taste.'),
(335, 21, 12, 'Refrigerate for at least 1 hour before serving.'),
(336, 21, 13, 'Mix boiled and diced potatoes, chickpeas, sprouted moong, chopped onions, coriander leaves, chaat masala, cumin powder, and salt.'),
(337, 21, 14, 'Make a small hole in each puri.'),
(338, 21, 15, 'Fill with potato mixture.'),
(339, 21, 16, 'Dip in the flavored water (pani) and eat immediately.'),
(340, 22, 1, 'Heat 2 tbsp oil in a pan, add mustard seeds and let them splutter.'),
(341, 22, 2, 'Add cumin seeds, curry leaves, and sauté for a few seconds.'),
(342, 22, 3, 'Add chopped onions and sauté until translucent.'),
(343, 22, 4, 'Add ginger-garlic paste, green chilies, and sauté for a minute.'),
(344, 22, 5, 'Add turmeric powder, red chili powder, and mix well.'),
(345, 22, 6, 'Add mashed potatoes, salt, sugar, and lemon juice.'),
(346, 22, 7, 'Mix thoroughly and cook for 2-3 minutes.'),
(347, 22, 8, 'Add chopped coriander leaves and mix well.'),
(348, 22, 9, 'Allow the mixture to cool completely.'),
(349, 22, 10, 'In a bowl mix gram flour, rice flour, turmeric powder, red chili powder, and salt.'),
(350, 22, 11, 'Gradually add water and whisk to form a smooth batter (consistency of thick pancake batter).'),
(351, 22, 12, 'Divide the potato mixture into 8 equal portions and shape into rounds.'),
(352, 22, 13, 'Heat oil in a deep pan for frying.'),
(353, 22, 14, 'Dip each potato ball in the gram flour batter, coating it evenly.'),
(354, 22, 15, 'Carefully slide into the hot oil and fry until golden brown.'),
(355, 22, 16, 'Drain on paper towels.'),
(356, 22, 17, 'Serve hot with green chutney, tamarind chutney, or as vada pav.');

-- --------------------------------------------------------

--
-- Table structure for table `nutrition`
--

CREATE TABLE `nutrition` (
  `nutrition_id` int(11) NOT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `calories` int(11) DEFAULT NULL COMMENT 'kcal',
  `protein` float DEFAULT NULL COMMENT 'Grams',
  `carbs` float DEFAULT NULL COMMENT 'Grams',
  `fats` float DEFAULT NULL COMMENT 'Grams'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nutrition`
--

INSERT INTO `nutrition` (`nutrition_id`, `recipe_id`, `calories`, `protein`, `carbs`, `fats`) VALUES
(1, 1, 420, 12, 45, 23),
(2, 2, 590, 19, 82, 24),
(3, 3, 520, 17, 80, 16),
(4, 4, 390, 7, 65, 12),
(5, 5, 280, 5, 52, 7),
(6, 6, 680, 9, 70, 42),
(7, 7, 420, 4, 42, 28),
(8, 8, 380, 10, 54, 15),
(9, 9, 420, 11, 57, 17),
(10, 10, 460, 6, 74, 16),
(11, 11, 65, 0, 16, 0),
(12, 12, 220, 9, 32, 8),
(13, 13, 170, 3, 8, 15),
(14, 14, 65, 0, 17, 0),
(15, 15, 320, 12, 35, 16),
(16, 16, 175, 8, 26, 7),
(17, 17, 510, 22, 19, 40),
(18, 18, 420, 10, 75, 10),
(19, 19, 380, 7, 63, 12),
(20, 20, 380, 25, 41, 10),
(21, 21, 450, 10, 70, 16),
(22, 22, 400, 8, 52, 18),
(23, 23, 380, 22, 12, 28),
(24, 24, 320, 12, 28, 18),
(25, 25, 420, 12, 63, 14),
(26, 26, 340, 6, 48, 14),
(27, 27, 350, 7, 33, 28);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `rating_id` int(11) NOT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`rating_id`, `recipe_id`, `user_id`, `rating`, `created_at`) VALUES
(1, 18, 13, 4, '2025-03-26 19:04:11'),
(2, 17, 13, 5, '2025-03-27 10:49:42'),
(3, 22, 13, 4, '2025-03-28 09:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `recipe_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` enum('Appetizer','Main Course','Dessert','Beverage') NOT NULL,
  `cuisine` varchar(100) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `prep_time` int(11) DEFAULT NULL COMMENT 'Time in minutes',
  `cook_time` int(11) DEFAULT NULL COMMENT 'Time in minutes',
  `servings` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `title`, `category`, `cuisine`, `image_url`, `description`, `prep_time`, `cook_time`, `servings`) VALUES
(1, 'Pithla Bhakri', 'Main Course', 'Maharashtrian', 'uploads/pithlabhakri.jpg', 'A traditional Maharashtrian dish consisting of gram flour curry (pithla) served with millet flatbread (bhakri)', 15, 25, 2),
(2, 'Chole Kulche', 'Main Course', 'North Indian', 'uploads/cholekulche.jpg', 'Spicy chickpea curry served with soft, leavened bread', 140, 40, 2),
(3, 'Rajma Chawal', 'Main Course', 'North Indian', 'uploads/rajmachawal.jpg', 'Kidney bean curry served with steamed rice, a popular comfort food in North India', 480, 40, 2),
(4, 'Veg Pulao', 'Main Course', 'Indian', 'uploads/polav.jpg', 'Aromatic rice dish cooked with mixed vegetables and whole spices', 40, 20, 2),
(5, 'Pakhala Rice', 'Main Course', 'Odia', 'uploads/pakhalarice.jpg', 'A fermented rice dish from Odisha, served cold with seasonings', 180, 5, 2),
(6, 'Sizzling Brownie', 'Dessert', 'International', 'uploads/brownie.jpg', 'Warm chocolate brownie topped with hot chocolate sauce and ice cream, served on a sizzling plate', 15, 25, 2),
(7, 'Sheera', 'Dessert', 'Indian', 'uploads/shira.jpg', 'A sweet semolina pudding flavored with cardamom and garnished with nuts', 5, 15, 2),
(8, 'Pongal', 'Main Course', 'South Indian', 'uploads/pongal.jpg', 'A savory rice and lentil dish tempered with cumin, pepper, and curry leaves', 10, 20, 2),
(9, 'Shevayi Khir', 'Dessert', 'Indian', 'uploads/khir.jpg', 'A sweet vermicelli pudding made with milk and flavored with cardamom and nuts', 5, 25, 2),
(10, 'Malpua', 'Dessert', 'Indian', 'uploads/malpua.jpg', 'Sweet pancakes soaked in sugar syrup, a traditional Indian dessert', 15, 25, 4),
(11, 'Mojito (Non-Alcoholic)', 'Beverage', 'International', 'uploads/mojito.jpg', 'Refreshing mint and lime drink with soda water', 5, 0, 2),
(12, 'Hot Chocolate', 'Beverage', 'International', 'uploads/hotchocolate.jpg', 'Rich and creamy hot chocolate topped with whipped cream', 5, 10, 2),
(13, 'Solkadhi', 'Beverage', 'Maharashtrian', 'uploads/solkadhi.jpg', 'A digestive drink made with coconut milk and kokum, typically served after meals', 15, 5, 2),
(14, 'Lemon Tea', 'Beverage', 'International', 'uploads/lemontea.jpg', 'Refreshing tea flavored with lemon juice', 5, 10, 2),
(15, 'Thandai', 'Beverage', 'Indian', 'uploads/thandai.jpg', 'A cooling spiced milk drink popular during festivals', 15, 10, 2),
(16, 'Dalgona Coffee', 'Beverage', 'International', 'uploads/dalgona.jpg', 'Whipped coffee served over cold milk', 10, 0, 2),
(17, 'Butter Paneer', 'Main Course', 'North Indian', 'uploads/butterpaneer.jpg', 'Paneer cubes in a rich, creamy tomato-based sauce', 15, 30, 4),
(18, 'Masala Dosa', 'Appetizer', 'South Indian', 'uploads/masaladosa.jpg', 'Crispy fermented rice crepe filled with spiced potato mixture', 720, 30, 4),
(19, 'Gulab Jamun', 'Dessert', 'Indian', 'uploads/gulabjamun.jpg', 'Soft milk solids balls soaked in sugar syrup', 20, 30, 8),
(20, 'Dahi Vada', 'Appetizer', 'North Indian', 'uploads/dahivada.jpg', 'Lentil dumplings soaked in yogurt topped with various chutneys and spices', 240, 20, 4),
(21, 'Pani Puri', 'Appetizer', 'Indian', 'uploads/panipuri.jpg', 'Crispy hollow puris filled with spicy, tangy, and flavored water.', 30, 30, 2),
(22, 'Batata Vada', 'Appetizer', 'Maharashtrian ', 'uploads/batatavada.jpg', 'Spiced mashed potato balls coated in gram flour and deep-fried.', 25, 20, 2),
(23, 'Paneer Tikka', 'Appetizer', ' Indian', 'uploads/paneertikka.jpg', 'Marinated paneer cubes grilled to perfection with spices.', 120, 15, 2),
(24, 'Kothimbir Vadi', 'Appetizer', ' Maharashtrian', 'uploads/kothimbirvadi.jpg', 'Spiced multigrain flatbread popular in Maharashtra.', 20, 30, 2),
(25, 'Thalipith', 'Appetizer', ' Maharashtrian', 'uploads/thalipith.jpg', ' Crispy, deep-fried patties made with mashed veggies', 15, 20, 2),
(26, 'Cutlet', 'Appetizer', ' Indian', 'uploads/cutlet.jpg', ' Steamed and fried coriander-flavored gram flour snack', 20, 15, 2),
(27, 'Cheesecake', 'Dessert', 'International', 'uploads/cheesecake.jpg', 'Creamy, rich dessert with a smooth cheese filling on a crumbly crust.', 20, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `saved_recipes`
--

CREATE TABLE `saved_recipes` (
  `save_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved_recipes`
--

INSERT INTO `saved_recipes` (`save_id`, `user_id`, `recipe_id`) VALUES
(1, 13, 17),
(24, 14, 27),
(25, 14, 20),
(26, 14, 18),
(27, 14, 19);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `profile_picture`, `created_at`) VALUES
(1, 'sakhi', 'sakhibodas2005@gmail.com', 'sakhi', NULL, '2025-03-22 02:28:13'),
(2, 'siddhi', 'siddhiombale04@gmail.com', '$2y$10$IKvFeA2jCbBCDASVVhcz9uv2RmOS.Y1TxMH7Uhu87lP94LAd9TkcK', NULL, '2025-03-23 07:07:21'),
(13, 'sakshi', 'sakshi@gmail.com', '$2y$10$OmkqmgcztIKQff6qsyd9muPezjxTBP8g3SUnDI4VEmMQPvgRSzNMq', NULL, '2025-03-23 12:12:22'),
(14, 'siddhiombale', 'siddhiombale02@gmail.com', '$2y$10$ein/Caxxy2QxE.5vu12Op.VuR14JvApXTczZ838/sfylfmNRpkvIa', NULL, '2025-03-23 12:46:23'),
(15, 'ankit', 'yedu@gmail.com', '$2y$10$pUb4qEmwr1Gb49UW1YIuCuA84K4ZnHh.BZ6RNlgD8grIAixYVl.r.', NULL, '2025-03-28 04:28:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instructions`
--
ALTER TABLE `instructions`
  ADD PRIMARY KEY (`instruction_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD PRIMARY KEY (`nutrition_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`recipe_id`);

--
-- Indexes for table `saved_recipes`
--
ALTER TABLE `saved_recipes`
  ADD PRIMARY KEY (`save_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `saved_recipes_ibfk_2` (`recipe_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instructions`
--
ALTER TABLE `instructions`
  MODIFY `instruction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT for table `nutrition`
--
ALTER TABLE `nutrition`
  MODIFY `nutrition_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `saved_recipes`
--
ALTER TABLE `saved_recipes`
  MODIFY `save_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `instructions`
--
ALTER TABLE `instructions`
  ADD CONSTRAINT `instructions_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE CASCADE;

--
-- Constraints for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD CONSTRAINT `nutrition_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`);

--
-- Constraints for table `saved_recipes`
--
ALTER TABLE `saved_recipes`
  ADD CONSTRAINT `saved_recipes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saved_recipes_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
