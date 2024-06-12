-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2024 at 08:50 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fosdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Harsh Desai', 'Chirag', 1234567890, 'jagatiyachirag786@gmail.com', '4297f44b13955235245b2497399d7a93', '2021-03-06 07:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(5) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(19, 'Classic Grill', '2024-01-01 11:56:37'),
(20, 'Premium Grill', '2024-01-01 11:58:08'),
(21, 'Flavors Grill', '2024-01-01 11:58:24'),
(22, 'Square Sandwiches', '2024-01-01 11:59:58'),
(24, 'Garlic Bread', '2024-01-01 12:00:53'),
(25, 'Premium Burger', '2024-01-01 12:01:20'),
(26, 'French Fry', '2024-01-01 12:01:32'),
(27, 'Shots', '2024-01-01 12:01:52'),
(30, 'Unique Mocktails', '2024-01-01 12:02:43'),
(31, 'Fruit Shake', '2024-01-01 12:03:00'),
(32, 'Fruit Juice', '2024-01-01 12:03:15'),
(33, '3 Layer Fruit Drink', '2024-01-01 12:03:35'),
(34, 'Hot', '2024-01-01 12:03:40'),
(35, 'Cold', '2024-01-01 12:03:44'),
(36, 'Beverages', '2024-01-01 12:03:56'),
(37, 'Pizza', '2024-01-11 11:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblfood`
--

CREATE TABLE `tblfood` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `ItemName` varchar(120) DEFAULT NULL,
  `ItemPrice` varchar(120) DEFAULT NULL,
  `ItemDes` varchar(500) DEFAULT NULL,
  `Image` varchar(120) DEFAULT NULL,
  `ItemQty` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfood`
--

INSERT INTO `tblfood` (`ID`, `CategoryName`, `ItemName`, `ItemPrice`, `ItemDes`, `Image`, `ItemQty`) VALUES
(23, 'Classic Grill', 'Veg. Cheese Grill', '199.00', '(3 Layer)                    	', '997cff09ffb3fc26aab9f7f1d7f42b60.jpg', '50'),
(24, 'Classic Grill', 'Sp. Bombay Grill', '199.00', '(3 Layer)                        	', 'a14270c878d935d98c89fe84e34552a2.jpg', '50'),
(25, 'Classic Grill', 'Veg. Paneer Grill', '199.00', '(3 Layer)                        	                  	', '4637acb54d561c988ddbd4cc3ff9f9c6.jpg', '50'),
(26, 'Classic Grill', 'Veg. Club Grill', '199', 'Enjoy Classic Grill                                                 	', 'e73d76f1c3107b472a51cf76d59c8c5fjpeg', '50'),
(27, 'Flavors Grill', 'Paneer Tandoori', '199.00', '(3 Layer)                         	', '69dae48a64976ca7483e1e9d50ee7f13.jpg', '50'),
(28, 'Flavors Grill', 'Paneer Makhni', '199.00', '                                  (3 Layer)               	', '1d5247e8857917622d22ad28d0cefc3ejpeg', '50'),
(29, 'Pizza', 'Margherita(Large)', '450', 'Pizza Margherita is a typical Neapolitan pizza, made with tomatoes, mozzarella cheese, fresh basil, salt, and olive oil.                                                 	', '8033619f63b28d1fc98ff4fd02a2327c.jpg', 'Large'),
(30, 'Pizza', 'Margherita(medium)', '300', 'Pizza Margherita is a typical Neapolitan pizza, made with tomatoes, mozzarella cheese, fresh basil, salt, and olive oil.                                                 	', '8033619f63b28d1fc98ff4fd02a2327c.jpg', 'medium'),
(31, 'Pizza', 'Margherita(regular)', '150', 'Pizza Margherita is a typical Neapolitan pizza, made with tomatoes, mozzarella cheese, fresh basil, salt, and olive oil.                                                 	', '8033619f63b28d1fc98ff4fd02a2327c.jpg', 'regular'),
(32, 'Pizza', '7 Chessey', '250', ' A delicious pizza loaded with full mozzarella cheese, white cheese, orange cheddar cheese, Monterey jack, cheese jalapeno & Colby cheese.                                                 	', '22a4cb5e19a8584d4bf4aa9914845aa9.jpg', 'medium'),
(33, 'Pizza', 'Onion', '100', '  Onion Pizza is simple, delicious, and so comforting. Sweet caramelized onions, fresh thyme, and cheese come together in a delicious recipe.                                                	', 'e738fb7a50857618a1b994cf8feb6a68.jpg', 'medium'),
(34, 'Pizza', 'Capsicum,paneer with Extra Cheese', '350', ' Peppy paneer pizza has some mild bell peppers or capsicum. We have also thrown in some soft paneer making it a very desi pizza.                                                	', 'f14bb2da148c0f372a2dab0d7570deb4.jpg', 'medium'),
(35, 'Square Sandwiches', 'Double Decker Sandwich', '140', '   A classic double-decker club sandwich includes thinly sliced turkey breast, bacon, lettuce, tomato and mayonnaise on white bread                                               	', '127a3437b1504fdcf679c11285fb933f.jpg', 'medium'),
(36, 'Square Sandwiches', 'Open Toast(Cheese)', '140', 'Italian Open Sandwich is a delicious Italian recipe of an open sandwich baked to perfection with a topping of cheese, olives and tomatoes.                                                 	', '6472a459f45093441844eec23f7a46b7.jpg', 'medium'),
(37, 'Square Sandwiches', 'Veg.  Toast Sandwhich', '95', ' Veg Cheese Toast Sandwich Recipe with step by step pictures. This is a easy sandwich toast recipe with goodness of cheesy vegetables.                                                 	', 'd89ec9f7b1fab8031d10e579016d7701.jpg', 'medium'),
(38, 'Square Sandwiches', 'Veg. Sandwhich(Kachi)', '95', 'Bombay sandwich is a popular kind of Sandwich from India. It is made with butterm green chutney, raw veggies and spices                                                 	', '694f1839a831f88a4446194d57376b8d.jpg', 'medium'),
(39, 'Square Sandwiches', 'Aloo Masala Toast', '95', 'Aloo masala sandwich recipe, learn how to make easy tea time snack using a spicy potato filling and toasted bread.                                                 	', '289417dde01fd41915171bb8b004aa90.jpg', 'medium'),
(40, 'Garlic Bread', 'Bruschetta Bread', '130', 'Easy to throw together and made up of simple, classic ingredients, bruschetta was made for chill warm weather snacking                                                 	', '24223274395019fe9ed8057c823118e8.jpg', 'medium'),
(41, 'Garlic Bread', 'Paneer Tikka Garlic Bread', '130', 'High fibre garlic bread stuffed with paneer tikka, onions, capsicum, generous cheese sauce, yummy oregano seasoning and chilli flakes.                                                 	', 'af6b1a4ddb2fd300af1863ffd11dede3.jpg', 'medium'),
(42, 'Garlic Bread', 'Cheese Garlic Bread', '100', ' It has slices of bread topped with cheese (usually Amul cheese) and green chilies for that kick                                                 	', 'cb32fc5c980608f70464233a8dfc7acd.jpg', 'medium'),
(43, 'Flavors Grill', 'Veg.Mayonnaise', '200', 'The Veg Mayo Sandwich recipe is a quick and easy-to-make healthy sandwich made with fresh vegetables, eggless mayonnaise, and spices.                                                 	', '69f34c8d5d75153eb8162839d8c21607.jpg', 'medium'),
(44, 'Flavors Grill', 'Italian', '200', 'Each grilled cheese sandwich is dipped in a savory egg coating and then pan-fried to a crispy golden brown.                                                 	', 'a6faf0ce9b29f75c26c9258e674153aa.jpg', 'medium'),
(45, 'Flavors Grill', 'Cheese Jalapeno', '200', 'Smooth cream cheese with shredded parmesan and sharp cheddar, pickled jalapeño peppers and thick slices of sourdough bread.                                                 	', '6698a40cab4c1f61ffc5e66beeb17308.jpg', 'medium'),
(46, 'Premium Grill', 'Sp. Grill Bar', '250', 'Chef Special                                                 	', 'c70d123196de98edc784068c1117dbc7.jpg', 'medium'),
(47, 'Premium Grill', 'Sp. Rimzim Grill', '220', ' Another very desi sandwich that is worthy of your attention is the Rim Zim Sandwich of Surat                                                 	', '1814abe2925f2f38951ba44edbf979d8.jpg', 'medium'),
(48, '3 Layer Fruit Drink', 'Mango + Kiwi+Gauva', '170', ' Guava Mango Kiwi Ice nic salt by Ohm Boy SLT mixes a trio of tropical fruits with a frosty finish                                             	', 'e95df3d75be60b7815b3dfd6582d0593.jpg', 'medium'),
(49, '3 Layer Fruit Drink', 'Mango + Kiwi + Strawberry', '170', 'The Best Strawberry Kiwi Mango Smoothie Recipes on Yummly | Fresh Fruit Tart, Fresh Fruit Salsa, Fruit Salsa.                                                 	', 'e546ced1f239de681c376ddb3b028406.jpg', 'medium'),
(50, 'Hot', 'coffee', '80', 'In this article today, I am going to share my three all-time favourite cafe style hot coffees at home- Mocha, Cappuccino and Latte.\r\n                                                 	', 'e7364d32c82c0fff3b3fc0b439b7e8d9.jpg', 'medium'),
(51, 'Hot', 'Venilla', '90', 'This warming hot vanilla milk drink is sweetened with sugar and flavored with cinnamon for a nice alternative to hot chocolate                                                 	', '8aca5a36601f7f6c13a9f831ad405b2d.jpg', 'medium'),
(52, 'Hot', 'Bournvita', '100', 'Bournvita is a chocolate powder manufactured by Cadbury which is mixed with milk and made into a drink! It can be relished cold as well as hot.                                                 	', '7cf2954e8178dc1d043eab0862e04925.jpg', 'medium'),
(53, 'Hot', 'Hot chocolate', '120', 'Homemade hot chocolate is a dreamy treat on a cold day. Skip the powdered stuff and make this recipe with real chocolate, whole milk, and vanilla.                                                 	', '35cbbbe55af739be671fdbcfbfaa7f64.jpg', 'medium'),
(54, 'Cold', 'Cold Coffee', '100', 'Enjoy frosty cafe style cold coffee which is a fantastic treat to enjoy. Make this iced cold coffee recipe with step-by-by photos and video.                                                 	', '346eaecbc27a5ef81e3d131b17c96885.jpg', 'medium'),
(55, 'Cold', 'Cappuccino', '120', 'The Iced Cappuccino is so refreshing! Combine espresso and a splash of milk with ice, then top with a layer of fluffy cold foam.                                        	', '2e2e2df1cc7f486924d7e026a7c77a19.jpg', 'medium'),
(56, 'Cold', 'Bournvita', '120', ' Bournvita is a chocolate powder manufactured by Cadbury which is mixed with milk and made into a drink! It can be relished cold as well as hot.                                                	', '40ed7b99fc40f2b2022033a5c0ee66c7.jpg', 'medium'),
(57, 'Beverages', 'Thums Up', '30', '                                                 	', '0d404fe22fd1aa1932aab599ecaf52eb.jpg', 'medium'),
(58, 'Beverages', 'fanta', '30', '                                                 	', '135115825e22c2ead2cc66da124f6a44.jpg', 'medium'),
(59, 'Beverages', 'Sprite', '30', '                                                 	', '1a7f8d19754130d9a25e06fad8e2e7f3.jpg', 'medium'),
(60, 'Beverages', 'Coco Cola', '30', '                                                 	', 'a7c9b13f035e7acbec2fc08958476747.jpg', 'medium'),
(61, 'Beverages', 'Mazza', '30', '                                                 	', '780af3d347276620dea54fa79921bd20.jpg', 'medium'),
(62, 'Unique Mocktails', 'Water Melon Pool', '150', 'Here, I combine fresh watermelon juice with lime, simple syrup, club soda, and loads of fresh mint to make a gorgeous sparkling pink mocktail.                                                 	', '4ce9061f4383c0dd8e2e4455d2d20732.jpg', 'medium'),
(63, 'Unique Mocktails', 'Sp. GB Mocktail', '150', ' Looking to spark some non-alcoholic fun? Explore our Perrier Sparks mocktail recipes, inspired by completely original artists.                                                	', '474464d103b88bd51555e60cedafa674.jpg', 'medium'),
(64, 'Unique Mocktails', 'Indian Flage', '140', 'The drink has fascinating looking three layers of our Indian flag colour – Green, White & Orange.                                                  	', '46c00d359df0bcaeaaee9d8ddae222c6.jpg', 'medium'),
(65, 'Unique Mocktails', 'Love Rose', '130', 'This Floral Ginger Rose Fizz is a gorgeous spicy and floral mocktail made with rose syrup, lemon juice, ginger and club soda!                                                 	', '6e87fc2c4ed01f0573c43e908635e6be.jpg', 'medium'),
(66, 'Beverages', 'Blue Lagoon', '110', ' This refreshing non alcoholic drink is easy to make for kids and adults to enjoy. Savor this blue lagoon mocktail on hot summer days.                                                	', '4d3b667a5491b7e914ff406be62020cc.jpg', 'medium'),
(67, 'Unique Mocktails', 'love of Jump', '110', 'It is fruity and sweet, tangy and flavorful. The love cocktail is just as complex and amazing as real, true love.                                                 	', '5c0d7494e15c6d7f7a0316c617ff186f.jpg', 'medium'),
(68, 'French Fry', 'Salted French Fries', '100', 'This French fries recipe is made using a clever, proven cooking method that guarantees crispy fries - and they STAY crispy for ages!                                                 	', '3f95e74576eed8bac509334387139e37.jpg', 'medium'),
(69, 'French Fry', 'Masala French Fries', '100', 'Crispy Masala French Fries is an spicy Indian style Potato French Fries recipe made by mixing thinly cut potatoes with corn starch,spices.                                                 	', '9ad9671d8cf8aaba874c6cfd19cd3bc1.jpg', 'medium'),
(70, 'French Fry', 'Peri peri French Fries', '110', 'A zesty sauce made with lemon and oregano adds zip and contrast to savory Sysco french fries. Serve these as a starter, side or sharable bar snack                                                 	', '41da06fb2e9026f31cce5470fe816b2a.jpg', 'medium'),
(71, 'Premium Burger', 'American Delight', '190', '  Indulge in the sweet and fruity delight of our strawberry milkshake.                                                	', 'adebf8b2fa0d697b3e048cd60116c2e5.jpg', 'medium'),
(72, 'Premium Burger', 'Classic Cheese Burger', '180', 'Classic All-American Cheeseburger with Cheddar Cheese and topped with burger sauce, lettuce, tomatoes, and onion.                                                 	', '21a69142843b1db2889ea9bcf8345fdc.jpg', 'medium'),
(73, 'Premium Burger', 'Gb Veg. Burger', '180', 'Fast delivery with amazing deals & discounts from your favourite restaurant and store. Whatever you fancy, delivered. Browse our menu and order online                                                 	', 'fb366b75391147d573c5407b5d7f0c2c.jpg', 'medium'),
(74, 'Fruit Shake', 'Strawberry', '140', '                                                 	', 'c07aed824fc620c6e929af185a143743.jpg', 'medium'),
(75, 'Fruit Shake', 'Sitafal', '140', '                                                 	', '083af613305839359e96ac69e72164ce.jpg', 'medium'),
(76, 'Fruit Shake', 'Mango', '140', '                                                 	', 'c01f3ee79d831dc94d028a33d0823aaa.jpg', 'medium'),
(77, 'Fruit Shake', 'Chikoo', '140', '                                                 	', '0005999838da9a55527ddf5b91cdba1f.jpg', 'medium'),
(78, 'Classic Grill', 'Orange', '140', '                                                 	', 'fe4ee8b44bf81f5939eeed015b7709c3.jpg', 'medium'),
(79, 'Fruit Shake', 'Chikoo+Gulkund', '140', '                                                 	', '73f242ec2a285e370e49814687a4ae0b.jpg', 'medium'),
(80, 'Fruit Juice', 'Orange Juice', '140', '                                                 	', '2837c63b1227306b012a751266f47aff.jpg', 'medium'),
(81, 'Fruit Juice', 'Pineapple Juice', '140', '                                                 	', 'cc99a2da6f33b05dc4b5d569c56ba282.jpg', 'medium'),
(82, 'Fruit Juice', 'Mango Juice', '140', '                                                 	', 'dc5470d1dc7d0b013a6e857ff90fbc51.jpg', 'medium'),
(83, 'Fruit Juice', 'Kiwi Juice', '150', '                                                 	', '7374dbaea6ba6635db3f91c2e45a530b.jpg', 'medium'),
(84, 'Fruit Juice', 'Orange +Pineapple ', '150', '                                                 	', '99986c3ced74f7acc1783d88da231286.jpg', 'medium'),
(85, 'Shots', 'Jamun Shot', '150', '                                                 	', 'ec4da8b34653860dc1443b83b3056a67.jpg', 'medium'),
(86, 'Shots', 'Chocolate Shot', '140', '                                                 	', '25721d11e6f9131516104fc9f1a7753a.jpg', 'medium'),
(87, 'Shots', 'Paan Shot', '140', '                                                 	', '3f3fb2d6845eb9839eb0405acb07a9c0.jpg', 'medium'),
(88, 'Shots', 'Sitafal Shot ', '140', '                                                 	', '96139c8900c4eb99e51b5b43dcbc22b8.jpg', 'medium'),
(89, 'Shots', 'Strawberry Shot', '140', '                                                 	', 'e073adb8e0c03824cd9871d998015c18.jpg', 'medium'),
(90, 'Shots', 'Brownie Shot', '140', '                                                 	', 'acda3698eb999541c578dca8b315e129.jpg', 'medium'),
(91, 'Shots', 'Wine Shot', '140', '                                                 	', '57a531440d85409e8b0c6f1213827c2d.jpg', 'medium'),
(92, 'Shots', 'Kiwi Shot', '140', '                                                 	', '7374dbaea6ba6635db3f91c2e45a530b.jpg', 'medium');

-- --------------------------------------------------------

--
-- Table structure for table `tblfoodtracking`
--

CREATE TABLE `tblfoodtracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfoodtracking`
--

INSERT INTO `tblfoodtracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(13, '441555481', 'i am sure, this order is cancal.', 'Order Cancelled', '2021-05-19 19:02:25', 1),
(15, '441555481', '!!', 'Order Cancelled', '2021-05-19 19:03:22', 1),
(21, '173339331', 'test', 'Order Confirmed', '2021-05-22 12:12:08', NULL),
(22, '230967559', 'test', 'Order Confirmed', '2021-05-22 12:15:11', NULL),
(23, '699466969', 'Food Being Prepared', 'Food being Prepared', '2023-12-14 11:12:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

CREATE TABLE `tblorderaddresses` (
  `ID` int(11) NOT NULL,
  `UserId` char(100) DEFAULT NULL,
  `Ordernumber` char(100) DEFAULT NULL,
  `Flatnobuldngno` varchar(255) DEFAULT NULL,
  `StreetName` varchar(255) DEFAULT NULL,
  `Area` varchar(255) DEFAULT NULL,
  `Landmark` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `OrderFinalStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `OrderTime`, `OrderFinalStatus`) VALUES
(5, '6', '441555481', 'B-908,', 'Test App,', 'Old Kosad,', 'near Demo Road,', 'Surat', '2021-05-19 18:58:45', 'Order Cancelled'),
(6, '7', '699466969', '789, demo App,', 'demo,', 'puna,', 'test road,', 'Mumbai', '2021-05-20 14:57:49', 'Food being Prepared'),
(7, '8', '651539244', '654, Mamta', 'Park soc,', 'dharmanagar', 'raod', 'Puna', '2021-05-20 15:07:23', 'Food being Prepared'),
(8, '9', '647546853', '985-demo App,', 'steet-g', 'demotest', '', 'Surat', '2021-05-20 15:53:40', 'Food Pickup'),
(9, '6', '512142442', '987-test App,', 'demo.', 'ring road', '', 'Surat', '2021-05-20 16:41:06', 'Food Delivered'),
(10, '6', '947142953', '987-test App,', 'demo,', 'ring road', '', 'Surat', '2021-05-20 17:12:07', 'Food Pickup'),
(12, '6', '314977436', '654-test', 'demo', 'testdemo', '', 'Surat', '2021-05-22 11:47:23', NULL),
(13, '6', '173339331', '101-test', 'demo', 'test', '', 'surat', '2021-05-22 12:10:19', 'Order Confirmed'),
(14, '6', '230967559', 'test', 'test', 'test', '', 'surat', '2021-05-22 12:14:33', 'Order Confirmed'),
(15, '11', '619237557', 'xyz', 'xyz', 'xyz', 'yx', 'sdv', '2024-01-01 11:42:10', NULL),
(16, '12', '663295413', '123', 'abc', 'abc', 'kamrej', 'surat', '2024-02-06 08:34:39', NULL),
(17, '12', '602414765', '123', 'abc', 'abc', 'kamrej', 'surat', '2024-02-06 13:13:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) DEFAULT NULL,
  `FoodId` char(10) DEFAULT NULL,
  `IsOrderPlaced` int(11) DEFAULT NULL,
  `OrderNumber` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`ID`, `UserId`, `FoodId`, `IsOrderPlaced`, `OrderNumber`) VALUES
(9, '6', '17', 1, '441555481'),
(10, '7', '4', 1, '699466969'),
(11, '8', '21', 1, '651539244'),
(12, '9', '8', 1, '647546853'),
(13, '6', '22', 1, '512142442'),
(14, '6', '7', 1, '512142442'),
(15, '6', '19', 1, '512142442'),
(16, '6', '21', 1, '512142442'),
(17, '6', '13', 1, '512142442'),
(18, '6', '20', 1, '947142953'),
(19, '6', '22', 1, '947142953'),
(20, '6', '1', 1, '227140703'),
(24, '6', '15', 1, '173339331'),
(25, '6', '2', 1, '230967559'),
(26, '11', '21', 1, '619237557'),
(27, '12', '23', 1, '663295413'),
(28, '12', '42', 1, '602414765'),
(29, '12', '47', 1, '602414765'),
(30, '12', '23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(6, 'Test', 'User', 'testuser1@gmail.com', 9876543210, '41da76f0fc3ec62a6939e634bfb6a342', '2021-05-19 16:05:14'),
(7, 'test1', 'user1', 'test1user1@gmail.com', 6549873210, '165b2023b1d710fa52f09675e9e721a4', '2021-05-20 14:55:31'),
(8, 'test2', 'user2', 'test2user2@gmail.com', 9854975132, '05d5be1c4748d10220c7d62a46ac8ea8', '2021-05-20 15:05:50'),
(9, 'test3', 'user3', 'test3user3@gmail.com', 9879561321, 'f3baeae46897699368a3ae8370749132', '2021-05-20 15:31:24'),
(10, 'demo', 'test', 'demotest@gmail.com', 6543219870, '4297f44b13955235245b2497399d7a93', '2021-05-21 14:21:57'),
(11, 'Test', 'Test', 'test@gmail.com', 8787878787, '4297f44b13955235245b2497399d7a93', '2024-01-01 11:23:22'),
(12, 'Nensi', 'Moradiya', 'nensi123@gmail.com', 1234567891, '7d3d4e9487367b05c0d0b5cd547e9c9a', '2024-02-06 08:32:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfood`
--
ALTER TABLE `tblfood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`Ordernumber`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`FoodId`,`OrderNumber`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
