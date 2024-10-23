/*
 Navicat Premium Data Transfer

 Source Server         : briup
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33-0ubuntu0.20.04.2)
 Source Host           : server:3306
 Source Schema         : briup

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33-0ubuntu0.20.04.2)
 File Encoding         : 65001

 Date: 05/07/2023 14:23:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for s_customer
-- ----------------------------
DROP TABLE IF EXISTS `s_customer`;
CREATE TABLE `s_customer` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `zip_code` varchar(75) DEFAULT NULL,
  `credit_rating` enum('EXCELLENT','GOOD','POOR') DEFAULT NULL,
  `sales_rep_id` int DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `region_id` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of s_customer
-- ----------------------------
BEGIN;
INSERT INTO `s_customer` (`id`, `name`, `phone`, `address`, `city`, `state`, `country`, `zip_code`, `credit_rating`, `sales_rep_id`, `region_id`, `comments`) VALUES (201, 'Unisprts', '55-2066101', '72 Via Bahia', 'Sao Paolo', NULL, 'Brazil', NULL, 'EXCELLENT', 12, 2, NULL);
INSERT INTO `s_customer` (`id`, `name`, `phone`, `address`, `city`, `state`, `country`, `zip_code`, `credit_rating`, `sales_rep_id`, `region_id`, `comments`) VALUES (202, 'OJ Atheletics', '81-20101', '6764 Takashi Blvd.', 'Osaka', NULL, 'Japan', NULL, 'POOR', 14, 4, NULL);
INSERT INTO `s_customer` (`id`, `name`, `phone`, `address`, `city`, `state`, `country`, `zip_code`, `credit_rating`, `sales_rep_id`, `region_id`, `comments`) VALUES (203, 'Delhi Sports', '91-10351', '11368 Chanakya', 'New Delhi', NULL, 'India', NULL, 'GOOD', 14, 4, NULL);
INSERT INTO `s_customer` (`id`, `name`, `phone`, `address`, `city`, `state`, `country`, `zip_code`, `credit_rating`, `sales_rep_id`, `region_id`, `comments`) VALUES (204, 'Womansport', '1-206-104-0103', '281 King Street', 'Seattle', 'Washington', 'USA', NULL, 'EXCELLENT', 11, 1, NULL);
INSERT INTO `s_customer` (`id`, `name`, `phone`, `address`, `city`, `state`, `country`, `zip_code`, `credit_rating`, `sales_rep_id`, `region_id`, `comments`) VALUES (205, 'Kam\'s Sporting Goods', '852-3692888', '15 Henessey Road', 'Hong Kong', NULL, NULL, NULL, 'EXCELLENT', 15, 4, NULL);
INSERT INTO `s_customer` (`id`, `name`, `phone`, `address`, `city`, `state`, `country`, `zip_code`, `credit_rating`, `sales_rep_id`, `region_id`, `comments`) VALUES (206, 'Sportique', '33-2257201', '172 Rue de Rivoli', 'Cannes', NULL, 'France', NULL, 'EXCELLENT', 15, 5, NULL);
INSERT INTO `s_customer` (`id`, `name`, `phone`, `address`, `city`, `state`, `country`, `zip_code`, `credit_rating`, `sales_rep_id`, `region_id`, `comments`) VALUES (207, 'Sweet Rock Sports', '234-6036201', '6 Saint Antoine', 'Lagos', NULL, 'Nigeria', NULL, 'GOOD', NULL, 3, NULL);
INSERT INTO `s_customer` (`id`, `name`, `phone`, `address`, `city`, `state`, `country`, `zip_code`, `credit_rating`, `sales_rep_id`, `region_id`, `comments`) VALUES (208, 'Muench Sports', '49-527454', '435 Gruenestrasse', 'Stuttgart', NULL, 'Germany', NULL, 'GOOD', 15, 5, NULL);
INSERT INTO `s_customer` (`id`, `name`, `phone`, `address`, `city`, `state`, `country`, `zip_code`, `credit_rating`, `sales_rep_id`, `region_id`, `comments`) VALUES (209, 'Beisbol Si!', '809-352689', '792 Playa Del Mar', 'San Pedro de Macon\'s', NULL, 'Dominican Republic', NULL, 'EXCELLENT', 11, 1, NULL);
INSERT INTO `s_customer` (`id`, `name`, `phone`, `address`, `city`, `state`, `country`, `zip_code`, `credit_rating`, `sales_rep_id`, `region_id`, `comments`) VALUES (210, 'Futbol Sonora', '52-404562', '3 Via Saguaro', 'Nogales', NULL, 'Mexico', NULL, 'EXCELLENT', 12, 2, NULL);
INSERT INTO `s_customer` (`id`, `name`, `phone`, `address`, `city`, `state`, `country`, `zip_code`, `credit_rating`, `sales_rep_id`, `region_id`, `comments`) VALUES (211, 'Kuhn\'s Sports', '42-111292', '7-Modrany', 'Prague', NULL, 'Czechoslovakia', NULL, 'EXCELLENT', 15, 5, NULL);
INSERT INTO `s_customer` (`id`, `name`, `phone`, `address`, `city`, `state`, `country`, `zip_code`, `credit_rating`, `sales_rep_id`, `region_id`, `comments`) VALUES (212, 'Hamada Sport', '20-1209211', '57A Corniche', 'Alexandria', NULL, 'Egypt', NULL, 'EXCELLENT', 13, 3, NULL);
INSERT INTO `s_customer` (`id`, `name`, `phone`, `address`, `city`, `state`, `country`, `zip_code`, `credit_rating`, `sales_rep_id`, `region_id`, `comments`) VALUES (213, 'Big John\'s Sprots Emporium', '1-415-555-6281', '4783 18th Street', 'San Francisco', 'CA', 'USA', NULL, 'EXCELLENT', 11, 1, NULL);
INSERT INTO `s_customer` (`id`, `name`, `phone`, `address`, `city`, `state`, `country`, `zip_code`, `credit_rating`, `sales_rep_id`, `region_id`, `comments`) VALUES (214, 'Ojibway Retail', '1-716-555-7171', '415 Main Street', 'Buffalo', 'NY', 'USA', NULL, 'POOR', 11, 1, NULL);
INSERT INTO `s_customer` (`id`, `name`, `phone`, `address`, `city`, `state`, `country`, `zip_code`, `credit_rating`, `sales_rep_id`, `region_id`, `comments`) VALUES (215, 'Sporta Russia', '7-3892456', '6000 Yekatamina', 'Saint Perersburg', NULL, 'Russia', NULL, 'POOR', 15, 5, NULL);
COMMIT;

-- ----------------------------
-- Table structure for s_dept
-- ----------------------------
DROP TABLE IF EXISTS `s_dept`;
CREATE TABLE `s_dept` (
  `id` int NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`region_id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `s_dept_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `s_region` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of s_dept
-- ----------------------------
BEGIN;
INSERT INTO `s_dept` (`id`, `name`, `region_id`) VALUES (50, 'Administration', 1);
INSERT INTO `s_dept` (`id`, `name`, `region_id`) VALUES (10, 'Finance', 1);
INSERT INTO `s_dept` (`id`, `name`, `region_id`) VALUES (41, 'Operations', 1);
INSERT INTO `s_dept` (`id`, `name`, `region_id`) VALUES (42, 'Operations', 2);
INSERT INTO `s_dept` (`id`, `name`, `region_id`) VALUES (43, 'Operations', 3);
INSERT INTO `s_dept` (`id`, `name`, `region_id`) VALUES (44, 'Operations', 4);
INSERT INTO `s_dept` (`id`, `name`, `region_id`) VALUES (45, 'Operations', 5);
INSERT INTO `s_dept` (`id`, `name`, `region_id`) VALUES (31, 'Sales', 1);
INSERT INTO `s_dept` (`id`, `name`, `region_id`) VALUES (32, 'Sales', 2);
INSERT INTO `s_dept` (`id`, `name`, `region_id`) VALUES (33, 'Sales', 3);
INSERT INTO `s_dept` (`id`, `name`, `region_id`) VALUES (34, 'Sales', 4);
INSERT INTO `s_dept` (`id`, `name`, `region_id`) VALUES (35, 'Sales', 5);
COMMIT;

-- ----------------------------
-- Table structure for s_emp
-- ----------------------------
DROP TABLE IF EXISTS `s_emp`;
CREATE TABLE `s_emp` (
  `id` int NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `userid` varchar(25) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `title` varchar(25) DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  `salary` float(11,2) DEFAULT NULL,
  `commission_pct` enum('10','12.5','15','17.5','20') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `s_emp_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `s_dept` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of s_emp
-- ----------------------------
BEGIN;
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (1, 'Velasquez', 'Carmen', 'cvelasqu', '1990-03-03', NULL, NULL, 'President', 50, 2500.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (2, 'Ngao', 'LaDoris', 'Ingao', '1990-03-08', NULL, 1, 'VP,Operations', 41, 1450.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (3, 'Nagayama', 'Midori', 'mnagayam', '1991-06-17', NULL, 1, 'VP,Sales', 31, 1400.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (4, 'Quick-To-See', 'Mark', 'mquickto', '1990-05-07', NULL, 1, 'VP,Finance', 10, 1450.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (5, 'Ropeburn', 'Audry', 'aropebur', '1990-03-04', NULL, 1, 'VP,Administration', 50, 1550.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (6, 'Urguhart', 'Molly', 'murguhar', '1990-02-18', NULL, 2, 'Warehouse Manager', 41, 1200.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (7, 'Menchu', 'Roberta', 'rmenchu', '1990-05-14', NULL, 2, 'Warehouse Manager', 42, 1250.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (8, 'Biri', 'Ben', 'bbiri', '1990-05-07', NULL, 2, 'Warehouse Manager', 43, 1100.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (9, 'Catchpole', 'Antoinette', 'acatchpo', '1992-02-12', NULL, 2, 'Warehouse Manager', 44, 1300.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (10, 'Havel', 'Marta', 'mhavel', '1991-08-08', NULL, 2, 'Warehouse Manager', 45, 1307.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (11, 'Magee', 'Colin', 'cmagee', '1990-05-14', NULL, 3, 'Sales Representative', 31, 1400.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (12, 'Giljum', 'Henry', 'hgiljum', '1992-02-18', NULL, 3, 'Sales Representative', 32, 1490.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (13, 'Sedeghi', 'Yasmin', 'yesdeghi', '1991-02-18', NULL, 3, 'Sales Representative', 33, 1515.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (14, 'Nguyen', 'Mai', 'mnguyen', '1992-02-22', NULL, 3, 'Sales Representative', 34, 1525.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (15, 'Dumas', 'Andre', 'adumas', '1991-10-19', NULL, 3, 'Sales Representative', 35, 1450.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (16, 'Maduro', 'Elena', 'emaduro', '1992-02-07', NULL, 6, 'Stock Clerk', 41, 1400.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (17, 'Smith', 'George', 'gsmith', '1990-03-08', NULL, 6, 'Stock Clerk', 41, 940.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (18, 'Nozaki', 'Akira', 'anozaki', '1991-02-09', NULL, 7, 'Stock Clerk', 42, 1200.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (19, 'Pater', 'Vikram', 'vpatel', '1991-08-06', NULL, 7, 'Stock Clerk', 42, 795.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (20, 'Newman', 'Chad', 'cnewman', '1991-07-21', NULL, 8, 'Stock Clerk', 43, 750.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (21, 'Markarian', 'Alexander', 'amarkari', '1991-05-07', NULL, 8, 'Stock Clerk', 43, 850.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (22, 'Chang', 'Eddie', 'echang', '1990-11-30', NULL, 9, 'Stock Clerk', 44, 800.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (23, 'Patel', 'Radha', 'rpatel', '1990-10-17', NULL, 9, 'Stock Clerk', 34, 795.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (24, 'Dancs', 'Bela', 'bdances', '1990-10-10', NULL, 10, 'Stock Clerk', 45, 860.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (25, 'Schwartz', 'Sylvie', 'sschwartz', '1991-01-01', NULL, 10, 'Stock Clerk', 45, 1100.00, NULL);
INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES (26, 'Winnie', 'Shen', 'swinnie', '1991-01-01', NULL, 10, 'Stock Clerk', 45, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for s_region
-- ----------------------------
DROP TABLE IF EXISTS `s_region`;
CREATE TABLE `s_region` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of s_region
-- ----------------------------
BEGIN;
INSERT INTO `s_region` (`id`, `name`) VALUES (3, 'Africa / Middle East');
INSERT INTO `s_region` (`id`, `name`) VALUES (4, 'Asia');
INSERT INTO `s_region` (`id`, `name`) VALUES (5, 'Europe');
INSERT INTO `s_region` (`id`, `name`) VALUES (1, 'North America');
INSERT INTO `s_region` (`id`, `name`) VALUES (2, 'South America');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
