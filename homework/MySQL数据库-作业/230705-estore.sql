/*
 Navicat Premium Data Transfer

 Source Server         : test_mysql
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : 230704-estore

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 06/07/2023 09:17:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for es_address
-- ----------------------------
DROP TABLE IF EXISTS `es_address`;
CREATE TABLE `es_address`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '收货地址ID',
  `receiver_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收件人姓名',
  `urban_addr` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '省市区地址',
  `detail_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '详细地址',
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收件人电话',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '下单客户ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `es_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `es_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of es_address
-- ----------------------------
INSERT INTO `es_address` VALUES (1, '张', '江苏省苏州市金阊区', '山塘街虎丘山门', '13800010001', 1);
INSERT INTO `es_address` VALUES (2, '李小龙', '香港特别行政区九龙城区', '砵兰街363号地下C铺', '13800010002', 1);
INSERT INTO `es_address` VALUES (3, '李若彤', '香港新界西荃湾区', '德海街千色汇G031A室', '13800010003', 4);
INSERT INTO `es_address` VALUES (4, '费俊龙', '江苏省苏州市昆山市', '巴城镇景城路108号', '13800010004', 2);
INSERT INTO `es_address` VALUES (5, '天山童姥', '宁夏省银川市市', '天山缥缈峰灵鹫宫', '13800010005', 5);

-- ----------------------------
-- Table structure for es_book
-- ----------------------------
DROP TABLE IF EXISTS `es_book`;
CREATE TABLE `es_book`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '图书主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图书名称',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图书封面图片',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '图书简介',
  `author` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图书作者',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图书出版社',
  `price` double(8, 2) NULL DEFAULT NULL COMMENT '图书价格',
  `store_num` int(0) NULL DEFAULT 0 COMMENT '库存数量',
  `status` tinyint(0) NULL DEFAULT 0 COMMENT '0: 上架 1：下架',
  `category_id` int(0) NULL DEFAULT NULL COMMENT '图书分类ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE,
  CONSTRAINT `es_book_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `es_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of es_book
-- ----------------------------
INSERT INTO `es_book` VALUES (1, 'mysql从入门到精通', NULL, 'briup推荐，学习mysql必备', 'briup', '机械工业出版社', 28.90, 100, 0, 6);
INSERT INTO `es_book` VALUES (2, 'Spring', NULL, 'Spring学习推荐', 'briup', '机械工业出版社', 28.90, 200, 0, 6);
INSERT INTO `es_book` VALUES (3, 'Python', NULL, 'python基本语法学习', 'briup', '机械工业出版社', 28.90, 200, 0, 7);
INSERT INTO `es_book` VALUES (4, '水浒传', NULL, '四大名著', '施耐庵', '上海文艺出版社', 38.90, 100, 0, 2);
INSERT INTO `es_book` VALUES (5, '海子诗集', NULL, '现代诗', '海子', '北京教育出版社', 15.90, 50, 0, 4);
INSERT INTO `es_book` VALUES (6, '朱自清散文集', NULL, '当代散文', '朱自清', '上海文艺出版社', 20.90, NULL, 0, 3);

-- ----------------------------
-- Table structure for es_category
-- ----------------------------
DROP TABLE IF EXISTS `es_category`;
CREATE TABLE `es_category`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '书籍分类id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍分类名字',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '书籍分类描述',
  `parent_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  CONSTRAINT `es_category_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `es_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of es_category
-- ----------------------------
INSERT INTO `es_category` VALUES (1, '文学', '文学大类', NULL);
INSERT INTO `es_category` VALUES (2, '小说', '文学子类1', 1);
INSERT INTO `es_category` VALUES (3, '散文', '文学子类2', 1);
INSERT INTO `es_category` VALUES (4, '诗歌', '文学子类3', 1);
INSERT INTO `es_category` VALUES (5, '计算机', '计算机大类', NULL);
INSERT INTO `es_category` VALUES (6, 'Java', '计算机子类1', 5);
INSERT INTO `es_category` VALUES (7, '人工智能', '计算机子类2', 5);
INSERT INTO `es_category` VALUES (8, '时政', '时事政治', NULL);

-- ----------------------------
-- Table structure for es_shopcar
-- ----------------------------
DROP TABLE IF EXISTS `es_shopcar`;
CREATE TABLE `es_shopcar`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '购物车ID',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '客户ID',
  `book_id` int(0) NULL DEFAULT NULL COMMENT '书籍ID',
  `num` int(0) UNSIGNED NULL DEFAULT NULL COMMENT '书籍数量',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `customer_id`(`user_id`) USING BTREE,
  INDEX `book_id`(`book_id`) USING BTREE,
  CONSTRAINT `es_shopcar_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `es_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `es_shopcar_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `es_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

alter table es_shopcar add constraint es_shopcar_uid_bid_un unique(`user_id`,`book_id`);

-- ----------------------------
-- Records of es_shopcar
-- ----------------------------
INSERT INTO `es_shopcar` VALUES (1, 1, 1, 1);
INSERT INTO `es_shopcar` VALUES (2, 1, 3, 2);
INSERT INTO `es_shopcar` VALUES (3, 2, 3, 1);
INSERT INTO `es_shopcar` VALUES (4, 2, 4, 2);
INSERT INTO `es_shopcar` VALUES (5, 3, 2, 3);

-- ----------------------------
-- Table structure for es_user
-- ----------------------------
DROP TABLE IF EXISTS `es_user`;
CREATE TABLE `es_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录用户名',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录密码',
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户头像',
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别(0男，1女)',
  `status` tinyint(0) NOT NULL DEFAULT 0 COMMENT '用户状态(0正常，1禁用)',
  `birthday` date NULL DEFAULT NULL COMMENT '用户生日',
  `register_time` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of es_user
-- ----------------------------
INSERT INTO `es_user` VALUES (1, 'tom', '123456', '13700010001', '1.jpg', '0', 0, '2000-12-11', '2023-07-04 15:59:12');
INSERT INTO `es_user` VALUES (2, 'jack', '123456', '13700010002', '2.jpg', '0', 0, '2001-11-11', '2023-07-04 15:59:12');
INSERT INTO `es_user` VALUES (3, '李小龙', '123456', '13700010003', '3.jpg', '0', 0, '2002-10-11', '2023-07-04 15:59:12');
INSERT INTO `es_user` VALUES (4, '李莫愁', '123456', '13700010004', '4.jpg', '1', 0, '2000-11-11', '2023-07-04 16:03:03');
INSERT INTO `es_user` VALUES (5, '李秋水', '123456', '13700010005', '5.jpg', '1', 0, '2002-01-05', '2023-07-04 16:03:03');

SET FOREIGN_KEY_CHECKS = 1;
