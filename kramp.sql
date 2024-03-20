/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : kramp

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 06/03/2024 12:27:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for log_scan
-- ----------------------------
DROP TABLE IF EXISTS `log_scan`;
CREATE TABLE `log_scan`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `tovar_count` int(0) NULL DEFAULT NULL,
  `tovar_del` int(0) NULL DEFAULT NULL,
  `date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_scan
-- ----------------------------
INSERT INTO `log_scan` VALUES (1, 11, 0, '2024-02-26 09:23:31');
INSERT INTO `log_scan` VALUES (2, 11, 0, '2024-02-26 13:35:51');
INSERT INTO `log_scan` VALUES (3, 11, 0, '2024-02-26 21:40:51');
INSERT INTO `log_scan` VALUES (4, 11, 0, '2024-02-27 07:10:48');
INSERT INTO `log_scan` VALUES (5, 11, 0, '2024-02-27 13:35:52');
INSERT INTO `log_scan` VALUES (6, 17, 0, '2024-02-27 21:40:51');
INSERT INTO `log_scan` VALUES (7, 16, 1, '2024-02-28 07:10:44');
INSERT INTO `log_scan` VALUES (8, 16, 0, '2024-02-28 13:35:52');
INSERT INTO `log_scan` VALUES (9, 16, 0, '2024-02-28 21:40:50');
INSERT INTO `log_scan` VALUES (10, 16, 0, '2024-02-29 07:10:48');
INSERT INTO `log_scan` VALUES (11, 17, 0, '2024-02-29 13:35:53');
INSERT INTO `log_scan` VALUES (12, 17, 0, '2024-02-29 21:40:49');
INSERT INTO `log_scan` VALUES (13, 17, 0, '2024-03-01 07:10:46');
INSERT INTO `log_scan` VALUES (14, 15, 2, '2024-03-01 13:35:50');
INSERT INTO `log_scan` VALUES (15, 15, 0, '2024-03-01 21:40:54');
INSERT INTO `log_scan` VALUES (16, 15, 0, '2024-03-02 07:10:46');
INSERT INTO `log_scan` VALUES (17, 15, 0, '2024-03-02 13:35:51');
INSERT INTO `log_scan` VALUES (18, 15, 0, '2024-03-02 21:40:56');
INSERT INTO `log_scan` VALUES (19, 15, 0, '2024-03-03 07:10:46');
INSERT INTO `log_scan` VALUES (20, 15, 0, '2024-03-03 13:35:49');
INSERT INTO `log_scan` VALUES (21, 15, 0, '2024-03-03 21:40:52');
INSERT INTO `log_scan` VALUES (22, 15, 0, '2024-03-04 07:10:48');
INSERT INTO `log_scan` VALUES (23, 17, 0, '2024-03-04 13:35:52');
INSERT INTO `log_scan` VALUES (24, 17, 0, '2024-03-04 21:40:58');
INSERT INTO `log_scan` VALUES (25, 17, 0, '2024-03-05 07:10:45');
INSERT INTO `log_scan` VALUES (26, 17, 0, '2024-03-05 13:35:50');
INSERT INTO `log_scan` VALUES (27, 17, 0, '2024-03-05 21:40:53');
INSERT INTO `log_scan` VALUES (28, 17, 0, '2024-03-06 07:10:47');

-- ----------------------------
-- Table structure for log_tovars_link
-- ----------------------------
DROP TABLE IF EXISTS `log_tovars_link`;
CREATE TABLE `log_tovars_link`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `id_kramp` int(0) UNSIGNED NULL DEFAULT NULL,
  `val` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_kramp`(`id_kramp`) USING BTREE,
  CONSTRAINT `log_tovars_link_ibfk_1` FOREIGN KEY (`id_kramp`) REFERENCES `tovars` (`id_kramp`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_tovars_link
-- ----------------------------
INSERT INTO `log_tovars_link` VALUES (1, 305649, 'https://kramp.ru/catalog/item-305649-SHAB28120-amortizator-28x120/', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_link` VALUES (2, 305652, 'https://kramp.ru/catalog/item-305652-SHAB30190-amortizator-30x190/', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_link` VALUES (3, 305653, 'https://kramp.ru/catalog/item-305653-SHAB35210-amortizator-35x210/', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_link` VALUES (4, 305656, 'https://kramp.ru/catalog/item-305656-SHAB40220-amortizator-40x220/', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_link` VALUES (5, 305657, 'https://kramp.ru/catalog/item-305657-SHAB40400-amortizator-40x390/', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_link` VALUES (6, 305659, 'https://kramp.ru/catalog/item-305659-SHAB42220-amortizator-42-x/', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_link` VALUES (7, 305661, 'https://kramp.ru/catalog/item-305661-SHAB44220-amortizator-44x220/', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_link` VALUES (8, 447005, 'https://kramp.ru/catalog/item-447005-SHAB38125-amortizator-38x125/', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_link` VALUES (9, 447011, 'https://kramp.ru/catalog/item-447011-SHAB44370-amortizator-44x370/', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_link` VALUES (10, 447013, 'https://kramp.ru/catalog/item-447013-SHAB28240-amortizator-28x240/', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_link` VALUES (11, 447098, 'https://kramp.ru/catalog/item-447098-SHAB32200-shock-absorber-32x200/', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_link` VALUES (12, 305650, 'https://kramp.ru/catalog/item-305650-SHAB2890-amortizator-28x90/', '2024-02-27 21:40:51');
INSERT INTO `log_tovars_link` VALUES (13, 305654, 'https://kramp.ru/catalog/item-305654-SHAB38215-amortizator-38x215/', '2024-02-27 21:40:51');
INSERT INTO `log_tovars_link` VALUES (14, 305655, 'https://kramp.ru/catalog/item-305655-SHAB40150-amortizator-40x150/', '2024-02-27 21:40:51');
INSERT INTO `log_tovars_link` VALUES (15, 320373, 'https://kramp.ru/catalog/item-320373-SHAB40230-amortizator-40x230/', '2024-02-27 21:40:51');
INSERT INTO `log_tovars_link` VALUES (16, 438774, 'https://kramp.ru/catalog/item-438774-SHAB40180-amortizator-40x180/', '2024-02-27 21:40:51');
INSERT INTO `log_tovars_link` VALUES (17, 447010, 'https://kramp.ru/catalog/item-447010-SHAB38095-amortizator-38x95/', '2024-02-27 21:40:51');

-- ----------------------------
-- Table structure for log_tovars_name
-- ----------------------------
DROP TABLE IF EXISTS `log_tovars_name`;
CREATE TABLE `log_tovars_name`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `id_kramp` int(0) UNSIGNED NULL DEFAULT NULL,
  `val` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_kramp`(`id_kramp`) USING BTREE,
  CONSTRAINT `log_tovars_name_ibfk_1` FOREIGN KEY (`id_kramp`) REFERENCES `tovars` (`id_kramp`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_tovars_name
-- ----------------------------
INSERT INTO `log_tovars_name` VALUES (1, 305649, 'Амортизатор 28x120', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_name` VALUES (2, 305652, 'Амортизатор 30x190', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_name` VALUES (3, 305653, 'Амортизатор 35x210', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_name` VALUES (4, 305656, 'Амортизатор 40x220', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_name` VALUES (5, 305657, 'Амортизатор 40x390', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_name` VALUES (6, 305659, 'Амортизатор 42x220', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_name` VALUES (7, 305661, 'Амортизатор 44x220', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_name` VALUES (8, 447005, 'Амортизатор 38x125', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_name` VALUES (9, 447011, 'Амортизатор 44x370', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_name` VALUES (10, 447013, 'Амортизатор 28x240', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_name` VALUES (11, 447098, 'Демпфер 32x200', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_name` VALUES (12, 305650, 'Амортизатор 28x90', '2024-02-27 21:40:51');
INSERT INTO `log_tovars_name` VALUES (13, 305654, 'Амортизатор 38x215', '2024-02-27 21:40:51');
INSERT INTO `log_tovars_name` VALUES (14, 305655, 'Амортизатор 40x150', '2024-02-27 21:40:51');
INSERT INTO `log_tovars_name` VALUES (15, 320373, 'Амортизатор 40x230', '2024-02-27 21:40:51');
INSERT INTO `log_tovars_name` VALUES (16, 438774, 'Амортизатор 40x180', '2024-02-27 21:40:51');
INSERT INTO `log_tovars_name` VALUES (17, 447010, 'Амортизатор 38x95', '2024-02-27 21:40:51');

-- ----------------------------
-- Table structure for log_tovars_price
-- ----------------------------
DROP TABLE IF EXISTS `log_tovars_price`;
CREATE TABLE `log_tovars_price`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `id_kramp` int(0) UNSIGNED NULL DEFAULT NULL,
  `val` decimal(10, 2) NULL DEFAULT NULL,
  `date` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_kramp`(`id_kramp`) USING BTREE,
  CONSTRAINT `log_tovars_price_ibfk_1` FOREIGN KEY (`id_kramp`) REFERENCES `tovars` (`id_kramp`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_tovars_price
-- ----------------------------
INSERT INTO `log_tovars_price` VALUES (1, 305649, 138.50, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price` VALUES (2, 305652, 204.57, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price` VALUES (3, 305653, 218.54, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price` VALUES (4, 305656, 310.03, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price` VALUES (5, 305657, 668.34, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price` VALUES (6, 305659, 456.15, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price` VALUES (7, 305661, 379.91, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price` VALUES (8, 447005, 276.99, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price` VALUES (9, 447011, 115.16, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price` VALUES (10, 447013, 240.14, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price` VALUES (11, 447098, 428.19, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price` VALUES (12, 305650, 125.79, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_price` VALUES (13, 305654, 254.12, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_price` VALUES (14, 305655, 273.18, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_price` VALUES (15, 320373, 346.88, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_price` VALUES (16, 438774, 198.21, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_price` VALUES (17, 447010, 368.48, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_price` VALUES (18, 305649, 141.19, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_price` VALUES (19, 305650, 128.23, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_price` VALUES (20, 305652, 208.54, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_price` VALUES (21, 305653, 222.79, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_price` VALUES (22, 305654, 259.06, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_price` VALUES (23, 305655, 278.49, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_price` VALUES (24, 305656, 316.05, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_price` VALUES (25, 305657, 681.32, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_price` VALUES (26, 305659, 465.01, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_price` VALUES (27, 305661, 387.29, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_price` VALUES (28, 320373, 353.61, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_price` VALUES (29, 438774, 202.06, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_price` VALUES (30, 447005, 282.37, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_price` VALUES (31, 447010, 375.63, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_price` VALUES (32, 447011, 117.39, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_price` VALUES (33, 447013, 244.81, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_price` VALUES (34, 447098, 436.51, '2024-02-29 21:40:49');

-- ----------------------------
-- Table structure for log_tovars_price_base
-- ----------------------------
DROP TABLE IF EXISTS `log_tovars_price_base`;
CREATE TABLE `log_tovars_price_base`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `id_kramp` int(0) UNSIGNED NULL DEFAULT NULL,
  `val` decimal(10, 3) NULL DEFAULT NULL,
  `date` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_kramp`(`id_kramp`) USING BTREE,
  CONSTRAINT `log_tovars_price_base_ibfk_1` FOREIGN KEY (`id_kramp`) REFERENCES `tovars` (`id_kramp`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_tovars_price_base
-- ----------------------------
INSERT INTO `log_tovars_price_base` VALUES (1, 305649, 1.308, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price_base` VALUES (2, 305652, 1.932, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price_base` VALUES (3, 305653, 2.064, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price_base` VALUES (4, 305656, 2.928, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price_base` VALUES (5, 305657, 6.312, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price_base` VALUES (6, 305659, 4.308, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price_base` VALUES (7, 305661, 3.588, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price_base` VALUES (8, 447005, 2.616, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price_base` VALUES (9, 447011, 5.724, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price_base` VALUES (10, 447013, 2.268, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price_base` VALUES (11, 447098, 4.044, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_price_base` VALUES (12, 305650, 1.188, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_price_base` VALUES (13, 305654, 2.400, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_price_base` VALUES (14, 305655, 2.580, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_price_base` VALUES (15, 320373, 3.276, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_price_base` VALUES (16, 438774, 1.872, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_price_base` VALUES (17, 447010, 3.480, '2024-02-27 21:40:51');

-- ----------------------------
-- Table structure for log_tovars_sale
-- ----------------------------
DROP TABLE IF EXISTS `log_tovars_sale`;
CREATE TABLE `log_tovars_sale`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `id_kramp` int(0) UNSIGNED NULL DEFAULT NULL,
  `val` tinyint(0) NULL DEFAULT NULL,
  `date` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_kramp`(`id_kramp`) USING BTREE,
  CONSTRAINT `log_tovars_sale_ibfk_1` FOREIGN KEY (`id_kramp`) REFERENCES `tovars` (`id_kramp`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_tovars_sale
-- ----------------------------
INSERT INTO `log_tovars_sale` VALUES (1, 305649, 0, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_sale` VALUES (2, 305652, 0, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_sale` VALUES (3, 305653, 0, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_sale` VALUES (4, 305656, 0, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_sale` VALUES (5, 305657, 0, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_sale` VALUES (6, 305659, 0, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_sale` VALUES (7, 305661, 0, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_sale` VALUES (8, 447005, 0, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_sale` VALUES (9, 447011, 1, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_sale` VALUES (10, 447013, 0, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_sale` VALUES (11, 447098, 0, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_sale` VALUES (12, 305650, 0, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_sale` VALUES (13, 305654, 0, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_sale` VALUES (14, 305655, 0, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_sale` VALUES (15, 320373, 0, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_sale` VALUES (16, 438774, 0, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_sale` VALUES (17, 447010, 0, '2024-02-27 21:40:51');

-- ----------------------------
-- Table structure for log_tovars_site
-- ----------------------------
DROP TABLE IF EXISTS `log_tovars_site`;
CREATE TABLE `log_tovars_site`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `id_kramp` int(0) UNSIGNED NULL DEFAULT NULL,
  `val` tinyint(0) NULL DEFAULT NULL,
  `date` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_kramp`(`id_kramp`) USING BTREE,
  CONSTRAINT `log_tovars_site_ibfk_1` FOREIGN KEY (`id_kramp`) REFERENCES `tovars` (`id_kramp`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_tovars_site
-- ----------------------------
INSERT INTO `log_tovars_site` VALUES (1, 305649, 1, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_site` VALUES (2, 305652, 1, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_site` VALUES (3, 305653, 1, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_site` VALUES (4, 305656, 1, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_site` VALUES (5, 305657, 1, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_site` VALUES (6, 305659, 1, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_site` VALUES (7, 305661, 1, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_site` VALUES (8, 447005, 1, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_site` VALUES (9, 447011, 1, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_site` VALUES (10, 447013, 1, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_site` VALUES (11, 447098, 1, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_site` VALUES (12, 305650, 1, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_site` VALUES (13, 305654, 1, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_site` VALUES (14, 305655, 1, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_site` VALUES (15, 320373, 1, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_site` VALUES (16, 438774, 1, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_site` VALUES (17, 447010, 1, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_site` VALUES (18, 305657, 0, '2024-02-28 07:10:44');
INSERT INTO `log_tovars_site` VALUES (19, 305657, 1, '2024-02-29 13:35:53');
INSERT INTO `log_tovars_site` VALUES (20, 447005, 0, '2024-03-01 13:35:50');
INSERT INTO `log_tovars_site` VALUES (21, 447010, 0, '2024-03-01 13:35:50');
INSERT INTO `log_tovars_site` VALUES (22, 447005, 1, '2024-03-04 13:35:52');
INSERT INTO `log_tovars_site` VALUES (23, 447010, 1, '2024-03-04 13:35:52');

-- ----------------------------
-- Table structure for log_tovars_tovar_count
-- ----------------------------
DROP TABLE IF EXISTS `log_tovars_tovar_count`;
CREATE TABLE `log_tovars_tovar_count`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `id_kramp` int(0) UNSIGNED NULL DEFAULT NULL,
  `val` int(0) NULL DEFAULT NULL,
  `date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_kramp`(`id_kramp`) USING BTREE,
  CONSTRAINT `id_kramp` FOREIGN KEY (`id_kramp`) REFERENCES `tovars` (`id_kramp`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_tovars_tovar_count
-- ----------------------------
INSERT INTO `log_tovars_tovar_count` VALUES (1, 305649, 668, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_tovar_count` VALUES (2, 305652, 1808, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_tovar_count` VALUES (3, 305653, 230, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_tovar_count` VALUES (4, 305656, 4369, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_tovar_count` VALUES (5, 305657, 320, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_tovar_count` VALUES (6, 305659, 908, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_tovar_count` VALUES (7, 305661, 245, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_tovar_count` VALUES (8, 447005, 176, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_tovar_count` VALUES (9, 447011, 4, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_tovar_count` VALUES (10, 447013, 296, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_tovar_count` VALUES (11, 447098, 96, '2024-02-20 19:07:47');
INSERT INTO `log_tovars_tovar_count` VALUES (12, 305652, 2362, '2024-02-21 08:33:49');
INSERT INTO `log_tovars_tovar_count` VALUES (13, 305659, 888, '2024-02-21 14:51:28');
INSERT INTO `log_tovars_tovar_count` VALUES (14, 305659, 856, '2024-02-21 14:55:32');
INSERT INTO `log_tovars_tovar_count` VALUES (15, 447013, 396, '2024-02-21 14:55:32');
INSERT INTO `log_tovars_tovar_count` VALUES (16, 305653, 160, '2024-02-22 13:35:55');
INSERT INTO `log_tovars_tovar_count` VALUES (17, 305656, 4335, '2024-02-22 13:35:55');
INSERT INTO `log_tovars_tovar_count` VALUES (18, 305656, 4355, '2024-02-26 09:23:31');
INSERT INTO `log_tovars_tovar_count` VALUES (19, 305659, 844, '2024-02-26 21:40:51');
INSERT INTO `log_tovars_tovar_count` VALUES (20, 305661, 145, '2024-02-26 21:40:51');
INSERT INTO `log_tovars_tovar_count` VALUES (21, 305652, 3362, '2024-02-27 13:35:52');
INSERT INTO `log_tovars_tovar_count` VALUES (22, 305653, 1960, '2024-02-27 13:35:52');
INSERT INTO `log_tovars_tovar_count` VALUES (23, 305657, 300, '2024-02-27 13:35:52');
INSERT INTO `log_tovars_tovar_count` VALUES (24, 305659, 1744, '2024-02-27 13:35:52');
INSERT INTO `log_tovars_tovar_count` VALUES (25, 305661, 433, '2024-02-27 13:35:52');
INSERT INTO `log_tovars_tovar_count` VALUES (26, 447013, 988, '2024-02-27 13:35:52');
INSERT INTO `log_tovars_tovar_count` VALUES (27, 305650, 1000, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_tovar_count` VALUES (28, 305652, 3112, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_tovar_count` VALUES (29, 305654, 956, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_tovar_count` VALUES (30, 305655, 1000, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_tovar_count` VALUES (31, 305659, 1743, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_tovar_count` VALUES (32, 320373, 1000, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_tovar_count` VALUES (33, 438774, 115, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_tovar_count` VALUES (34, 447010, 100, '2024-02-27 21:40:51');
INSERT INTO `log_tovars_tovar_count` VALUES (35, 447005, 46, '2024-02-28 21:40:50');
INSERT INTO `log_tovars_tovar_count` VALUES (36, 447010, 20, '2024-02-28 21:40:50');
INSERT INTO `log_tovars_tovar_count` VALUES (37, 305657, 20, '2024-02-29 13:35:53');
INSERT INTO `log_tovars_tovar_count` VALUES (38, 305652, 3212, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_tovar_count` VALUES (39, 320373, 948, '2024-02-29 21:40:49');
INSERT INTO `log_tovars_tovar_count` VALUES (40, 305649, 588, '2024-03-01 13:35:50');
INSERT INTO `log_tovars_tovar_count` VALUES (41, 305657, 290, '2024-03-01 13:35:50');
INSERT INTO `log_tovars_tovar_count` VALUES (42, 305656, 4305, '2024-03-02 13:35:51');
INSERT INTO `log_tovars_tovar_count` VALUES (43, 447005, 130, '2024-03-04 13:35:52');
INSERT INTO `log_tovars_tovar_count` VALUES (44, 447010, 80, '2024-03-04 13:35:52');
INSERT INTO `log_tovars_tovar_count` VALUES (45, 305657, 230, '2024-03-04 21:40:58');
INSERT INTO `log_tovars_tovar_count` VALUES (46, 305659, 1636, '2024-03-04 21:40:58');
INSERT INTO `log_tovars_tovar_count` VALUES (47, 447005, 176, '2024-03-05 13:35:50');
INSERT INTO `log_tovars_tovar_count` VALUES (48, 447010, 100, '2024-03-05 13:35:50');
INSERT INTO `log_tovars_tovar_count` VALUES (49, 305649, 534, '2024-03-05 21:40:53');
INSERT INTO `log_tovars_tovar_count` VALUES (50, 305650, 950, '2024-03-05 21:40:53');
INSERT INTO `log_tovars_tovar_count` VALUES (51, 305652, 3062, '2024-03-05 21:40:53');
INSERT INTO `log_tovars_tovar_count` VALUES (52, 305656, 4265, '2024-03-05 21:40:53');

-- ----------------------------
-- Table structure for log_tovars_vendor_code
-- ----------------------------
DROP TABLE IF EXISTS `log_tovars_vendor_code`;
CREATE TABLE `log_tovars_vendor_code`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `id_kramp` int(0) UNSIGNED NULL DEFAULT NULL,
  `val` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_kramp`(`id_kramp`) USING BTREE,
  CONSTRAINT `log_tovars_vendor_code_ibfk_1` FOREIGN KEY (`id_kramp`) REFERENCES `tovars` (`id_kramp`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_tovars_vendor_code
-- ----------------------------
INSERT INTO `log_tovars_vendor_code` VALUES (1, 305649, 'SHAB28120', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_vendor_code` VALUES (2, 305652, 'SHAB30190', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_vendor_code` VALUES (3, 305653, 'SHAB35210', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_vendor_code` VALUES (4, 305656, 'SHAB40220', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_vendor_code` VALUES (5, 305657, 'SHAB40400', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_vendor_code` VALUES (6, 305659, 'SHAB42220', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_vendor_code` VALUES (7, 305661, 'SHAB44220', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_vendor_code` VALUES (8, 447005, 'SHAB38125', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_vendor_code` VALUES (9, 447011, 'SHAB44370', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_vendor_code` VALUES (10, 447013, 'SHAB28240', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_vendor_code` VALUES (11, 447098, 'SHAB32200', '2024-02-20 19:07:47');
INSERT INTO `log_tovars_vendor_code` VALUES (12, 305650, 'SHAB2890', '2024-02-27 21:40:51');
INSERT INTO `log_tovars_vendor_code` VALUES (13, 305654, 'SHAB38215', '2024-02-27 21:40:51');
INSERT INTO `log_tovars_vendor_code` VALUES (14, 305655, 'SHAB40150', '2024-02-27 21:40:51');
INSERT INTO `log_tovars_vendor_code` VALUES (15, 320373, 'SHAB40230', '2024-02-27 21:40:51');
INSERT INTO `log_tovars_vendor_code` VALUES (16, 438774, 'SHAB40180', '2024-02-27 21:40:51');
INSERT INTO `log_tovars_vendor_code` VALUES (17, 447010, 'SHAB38095', '2024-02-27 21:40:51');

-- ----------------------------
-- Table structure for tovars
-- ----------------------------
DROP TABLE IF EXISTS `tovars`;
CREATE TABLE `tovars`  (
  `id_kramp` int(0) UNSIGNED NOT NULL COMMENT 'ID крампа уникальный',
  `vendor_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Артикул крампа',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Название товара',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ссылка на товар',
  `sale` tinyint(0) NULL DEFAULT 0 COMMENT 'Распродажа',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT 'Цена',
  `price_base` decimal(10, 3) NULL DEFAULT NULL COMMENT 'Базовая цена',
  `tovar_count` int(0) UNSIGNED NULL DEFAULT NULL COMMENT 'Количество товара',
  `site` tinyint(0) NULL DEFAULT 0 COMMENT 'Есть на сайте',
  `date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT 'Дата',
  PRIMARY KEY (`id_kramp`) USING BTREE,
  UNIQUE INDEX `id_kramp`(`id_kramp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tovars
-- ----------------------------
INSERT INTO `tovars` VALUES (305649, 'SHAB28120', 'Амортизатор 28x120', 'https://kramp.ru/catalog/item-305649-SHAB28120-amortizator-28x120/', 0, 141.19, 1.308, 534, 1, '2024-03-05 21:40:53');
INSERT INTO `tovars` VALUES (305650, 'SHAB2890', 'Амортизатор 28x90', 'https://kramp.ru/catalog/item-305650-SHAB2890-amortizator-28x90/', 0, 128.23, 1.188, 950, 1, '2024-03-05 21:40:53');
INSERT INTO `tovars` VALUES (305652, 'SHAB30190', 'Амортизатор 30x190', 'https://kramp.ru/catalog/item-305652-SHAB30190-amortizator-30x190/', 0, 208.54, 1.932, 3062, 1, '2024-03-05 21:40:53');
INSERT INTO `tovars` VALUES (305653, 'SHAB35210', 'Амортизатор 35x210', 'https://kramp.ru/catalog/item-305653-SHAB35210-amortizator-35x210/', 0, 222.79, 2.064, 1960, 1, '2024-02-29 21:40:49');
INSERT INTO `tovars` VALUES (305654, 'SHAB38215', 'Амортизатор 38x215', 'https://kramp.ru/catalog/item-305654-SHAB38215-amortizator-38x215/', 0, 259.06, 2.400, 956, 1, '2024-02-29 21:40:49');
INSERT INTO `tovars` VALUES (305655, 'SHAB40150', 'Амортизатор 40x150', 'https://kramp.ru/catalog/item-305655-SHAB40150-amortizator-40x150/', 0, 278.49, 2.580, 1000, 1, '2024-02-29 21:40:49');
INSERT INTO `tovars` VALUES (305656, 'SHAB40220', 'Амортизатор 40x220', 'https://kramp.ru/catalog/item-305656-SHAB40220-amortizator-40x220/', 0, 316.05, 2.928, 4265, 1, '2024-03-05 21:40:53');
INSERT INTO `tovars` VALUES (305657, 'SHAB40400', 'Амортизатор 40x390', 'https://kramp.ru/catalog/item-305657-SHAB40400-amortizator-40x390/', 0, 681.32, 6.312, 230, 1, '2024-03-04 21:40:58');
INSERT INTO `tovars` VALUES (305659, 'SHAB42220', 'Амортизатор 42x220', 'https://kramp.ru/catalog/item-305659-SHAB42220-amortizator-42-x/', 0, 465.01, 4.308, 1636, 1, '2024-03-04 21:40:58');
INSERT INTO `tovars` VALUES (305661, 'SHAB44220', 'Амортизатор 44x220', 'https://kramp.ru/catalog/item-305661-SHAB44220-amortizator-44x220/', 0, 387.29, 3.588, 433, 1, '2024-02-29 21:40:49');
INSERT INTO `tovars` VALUES (320373, 'SHAB40230', 'Амортизатор 40x230', 'https://kramp.ru/catalog/item-320373-SHAB40230-amortizator-40x230/', 0, 353.61, 3.276, 948, 1, '2024-02-29 21:40:49');
INSERT INTO `tovars` VALUES (438774, 'SHAB40180', 'Амортизатор 40x180', 'https://kramp.ru/catalog/item-438774-SHAB40180-amortizator-40x180/', 0, 202.06, 1.872, 115, 1, '2024-02-29 21:40:49');
INSERT INTO `tovars` VALUES (447005, 'SHAB38125', 'Амортизатор 38x125', 'https://kramp.ru/catalog/item-447005-SHAB38125-amortizator-38x125/', 0, 282.37, 2.616, 176, 1, '2024-03-05 13:35:50');
INSERT INTO `tovars` VALUES (447010, 'SHAB38095', 'Амортизатор 38x95', 'https://kramp.ru/catalog/item-447010-SHAB38095-amortizator-38x95/', 0, 375.63, 3.480, 100, 1, '2024-03-05 13:35:50');
INSERT INTO `tovars` VALUES (447011, 'SHAB44370', 'Амортизатор 44x370', 'https://kramp.ru/catalog/item-447011-SHAB44370-amortizator-44x370/', 1, 117.39, 5.724, 4, 1, '2024-02-29 21:40:49');
INSERT INTO `tovars` VALUES (447013, 'SHAB28240', 'Амортизатор 28x240', 'https://kramp.ru/catalog/item-447013-SHAB28240-amortizator-28x240/', 0, 244.81, 2.268, 988, 1, '2024-02-29 21:40:49');
INSERT INTO `tovars` VALUES (447098, 'SHAB32200', 'Демпфер 32x200', 'https://kramp.ru/catalog/item-447098-SHAB32200-shock-absorber-32x200/', 0, 436.51, 4.044, 96, 1, '2024-02-29 21:40:49');

-- ----------------------------
-- View structure for test
-- ----------------------------
DROP VIEW IF EXISTS `test`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `test` AS select `tovars`.`vendor_code` AS `vendor_code`,`tovars`.`sale` AS `sale`,`tovars`.`price` AS `price`,`tovars`.`price_base` AS `price_base`,`tovars`.`tovar_count` AS `tovar_count`,`tovars`.`site` AS `site`,`tovars`.`date` AS `date`,(`tovars`.`price` / `tovars`.`price_base`) AS `kurs`,(select `log_tovars_tovar_count`.`val` from `log_tovars_tovar_count` where (`tovars`.`id_kramp` = `log_tovars_tovar_count`.`id_kramp`) order by `log_tovars_tovar_count`.`date` desc limit 1) AS `before_count`,`tst`(`tovars`.`id_kramp`) AS `tst` from `tovars`;

-- ----------------------------
-- View structure for test01
-- ----------------------------
DROP VIEW IF EXISTS `test01`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `test01` AS select `tovars`.`id_kramp` AS `id_kramp`,`tovars`.`vendor_code` AS `vendor_code`,`tovars`.`name` AS `name`,`tovars`.`price` AS `price`,`tovars`.`price_base` AS `price_base`,`tovars`.`tovar_count` AS `tovar_count`,(select lead(`log_tovars_tovar_count`.`date`) OVER (ORDER BY `log_tovars_tovar_count`.`date` desc )  from `log_tovars_tovar_count` where (`tovars`.`id_kramp` = `log_tovars_tovar_count`.`id_kramp`) limit 1) AS `tovar_count_date_old` from `tovars`;

-- ----------------------------
-- View structure for tovar_count_last
-- ----------------------------
DROP VIEW IF EXISTS `tovar_count_last`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `tovar_count_last` AS select `t`.`id_kramp` AS `id_kramp`,(select lead(`t_par`.`val`) OVER (ORDER BY `t_par`.`date` desc )  from `log_tovars_tovar_count` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) limit 1) AS `tovar_count_old`,`t`.`tovar_count` AS `tovar_count`,(select lead(`t_par`.`date`) OVER (ORDER BY `t_par`.`date` desc )  from `log_tovars_tovar_count` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) limit 1) AS `tovar_count_date_old`,(select `t_par`.`date` from `log_tovars_tovar_count` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) order by `t_par`.`date` desc limit 1) AS `tovar_count_date`,(select count(`t_par`.`id`) from `log_tovars_tovar_count` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`)) AS `tovar_count_upd`,(select lead(`t_par`.`val`) OVER (ORDER BY `t_par`.`date` desc )  from `log_tovars_price` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) limit 1) AS `price_old`,`t`.`price` AS `price`,(select lead(`t_par`.`date`) OVER (ORDER BY `t_par`.`date` desc )  from `log_tovars_price` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) limit 1) AS `price_date_old`,(select `t_par`.`date` from `log_tovars_price` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) order by `t_par`.`date` desc limit 1) AS `price_date`,(select count(`t_par`.`id`) from `log_tovars_price` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`)) AS `price_upd`,(select lead(`t_par`.`val`) OVER (ORDER BY `t_par`.`date` desc )  from `log_tovars_price_base` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) limit 1) AS `price_base_old`,`t`.`price_base` AS `price_base`,(select lead(`t_par`.`date`) OVER (ORDER BY `t_par`.`date` desc )  from `log_tovars_price_base` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) limit 1) AS `price_base_date_old`,(select `t_par`.`date` from `log_tovars_price_base` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) order by `t_par`.`date` desc limit 1) AS `price_base_date`,(select count(`t_par`.`id`) from `log_tovars_price_base` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`)) AS `price_base_upd`,(select lead(`t_par`.`val`) OVER (ORDER BY `t_par`.`date` desc )  from `log_tovars_site` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) limit 1) AS `site_old`,`t`.`site` AS `site`,(select lead(`t_par`.`date`) OVER (ORDER BY `t_par`.`date` desc )  from `log_tovars_site` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) limit 1) AS `site_date_old`,(select `t_par`.`date` from `log_tovars_site` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) order by `t_par`.`date` desc limit 1) AS `site_date`,(select count(`t_par`.`id`) from `log_tovars_site` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`)) AS `site_upd` from `tovars` `t`;

-- ----------------------------
-- View structure for tovars_upd
-- ----------------------------
DROP VIEW IF EXISTS `tovars_upd`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `tovars_upd` AS select `t`.`id_kramp` AS `id_kramp`,`t`.`vendor_code` AS `vendor_code`,`t`.`name` AS `name`,`t`.`sale` AS `sale`,(select lead(`t_par`.`val`) OVER (ORDER BY `t_par`.`date` desc )  from `log_tovars_tovar_count` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) limit 1) AS `tovar_count_old`,`t`.`tovar_count` AS `tovar_count`,(select lead(`t_par`.`date`) OVER (ORDER BY `t_par`.`date` desc )  from `log_tovars_tovar_count` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) limit 1) AS `tovar_count_date_old`,(select `t_par`.`date` from `log_tovars_tovar_count` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) order by `t_par`.`date` desc limit 1) AS `tovar_count_date`,(select count(`t_par`.`id`) from `log_tovars_tovar_count` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`)) AS `tovar_count_upd`,(select lead(`t_par`.`val`) OVER (ORDER BY `t_par`.`date` desc )  from `log_tovars_price` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) limit 1) AS `price_old`,`t`.`price` AS `price`,(select lead(`t_par`.`date`) OVER (ORDER BY `t_par`.`date` desc )  from `log_tovars_price` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) limit 1) AS `price_date_old`,(select `t_par`.`date` from `log_tovars_price` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) order by `t_par`.`date` desc limit 1) AS `price_date`,(select count(`t_par`.`id`) from `log_tovars_price` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`)) AS `price_upd`,(select lead(`t_par`.`val`) OVER (ORDER BY `t_par`.`date` desc )  from `log_tovars_price_base` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) limit 1) AS `price_base_old`,`t`.`price_base` AS `price_base`,(select lead(`t_par`.`date`) OVER (ORDER BY `t_par`.`date` desc )  from `log_tovars_price_base` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) limit 1) AS `price_base_date_old`,(select `t_par`.`date` from `log_tovars_price_base` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) order by `t_par`.`date` desc limit 1) AS `price_base_date`,(select count(`t_par`.`id`) from `log_tovars_price_base` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`)) AS `price_base_upd`,(select lead(`t_par`.`val`) OVER (ORDER BY `t_par`.`date` desc )  from `log_tovars_site` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) limit 1) AS `site_old`,`t`.`site` AS `site`,(select lead(`t_par`.`date`) OVER (ORDER BY `t_par`.`date` desc )  from `log_tovars_site` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) limit 1) AS `site_date_old`,(select `t_par`.`date` from `log_tovars_site` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`) order by `t_par`.`date` desc limit 1) AS `site_date`,(select count(`t_par`.`id`) from `log_tovars_site` `t_par` where (`t`.`id_kramp` = `t_par`.`id_kramp`)) AS `site_upd` from `tovars` `t`;

-- ----------------------------
-- Function structure for flog_date_old
-- ----------------------------
DROP FUNCTION IF EXISTS `flog_date_old`;
delimiter ;;
CREATE FUNCTION `flog_date_old`(`table_name` VARCHAR(50),`id_kramp` int)
 RETURNS timestamp
BEGIN
	DECLARE date_old TIMESTAMP;
	set date_old = NOW();
#	CALL log_date_old1(`table_name`, `id_kramp`, date_old);

	RETURN date_old;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for last_log
-- ----------------------------
DROP FUNCTION IF EXISTS `last_log`;
delimiter ;;
CREATE FUNCTION `last_log`(`table_name` VARCHAR(50),`id_kramp` int)
 RETURNS timestamp
BEGIN
	DECLARE tmp TIMESTAMP;
#	set tmp = CONCAT(str1,str2,...)
#	set tmp = select table_name.`val` from table_name where (table_name.`id_kramp` = id_kramp) order by table_name.`date` desc limit 1;
#	set tmp = select table_name.val from table_name desc limit 1;
#	set tmp = table_name;

	RETURN tmp;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for log_date_old
-- ----------------------------
DROP PROCEDURE IF EXISTS `log_date_old`;
delimiter ;;
CREATE PROCEDURE `log_date_old`(IN table_name varchar(200),IN id_kramp int)
BEGIN
	#Routine body goes here...
	set @s := CONCAT('SELECT LEAD(`',table_name,'`.`date`) OVER (ORDER BY `',table_name,'`.`date` DESC) FROM `',table_name,'` WHERE (`',table_name,'`.`id_kramp` = ',id_kramp,') LIMIT 1');
	PREPARE QUERY FROM @s;
	EXECUTE QUERY;
	DEALLOCATE PREPARE QUERY;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for log_date_old1
-- ----------------------------
DROP PROCEDURE IF EXISTS `log_date_old1`;
delimiter ;;
CREATE PROCEDURE `log_date_old1`(IN table_name varchar(200),IN id_kramp int, OUT old_date TIMESTAMP)
BEGIN
	#Routine body goes here...
#	set @s := CONCAT('SELECT LEAD(`t`.`date`) OVER (ORDER BY `t`.`date` DESC) INTO @var1 FROM `',table_name,'` AS t WHERE (`t`.`id_kramp` = ',id_kramp,') LIMIT 1');
	set @s := CONCAT('SELECT LEAD(`t`.`date`) OVER (ORDER BY `t`.`date` DESC) INTO @var1 FROM `',table_name,'` AS t WHERE (`t`.`id_kramp` = ',id_kramp,') LIMIT 1');
	PREPARE QUERY FROM @s;
	EXECUTE QUERY;
	set old_date = @var1;
	DEALLOCATE PREPARE QUERY;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for tst
-- ----------------------------
DROP FUNCTION IF EXISTS `tst`;
delimiter ;;
CREATE FUNCTION `tst`(`a` int)
 RETURNS int
BEGIN
	#Routine body goes here...

	RETURN a;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for tst1
-- ----------------------------
DROP FUNCTION IF EXISTS `tst1`;
delimiter ;;
CREATE FUNCTION `tst1`(`a` VARCHAR(50),`b` VARCHAR(50))
 RETURNS varchar(50) CHARSET utf8
BEGIN
	#Routine body goes here...

	RETURN a + b;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table tovars
-- ----------------------------
DROP TRIGGER IF EXISTS `log_update`;
delimiter ;;
CREATE TRIGGER `log_update` AFTER UPDATE ON `tovars` FOR EACH ROW BEGIN
IF(NEW.vendor_code != OLD.vendor_code) THEN
INSERT INTO log_tovars_vendor_code SET id_kramp = NEW.id_kramp, val = NEW.vendor_code, date = NOW();
END IF;
IF(NEW.`name` != OLD.`name`) THEN
INSERT INTO log_tovars_name SET id_kramp = NEW.id_kramp, val = NEW.`name`, date = NOW();
END IF;
IF(NEW.link != OLD.link) THEN
INSERT INTO log_tovars_link SET id_kramp = NEW.id_kramp, val = NEW.link, date = NOW();
END IF;
IF(NEW.sale != OLD.sale) THEN
INSERT INTO log_tovars_sale SET id_kramp = NEW.id_kramp, val = NEW.sale, date = NOW();
END IF;
IF(NEW.price != OLD.price) THEN
INSERT INTO log_tovars_price SET id_kramp = NEW.id_kramp, val = NEW.price, date = NOW();
END IF;
IF(NEW.price_base != OLD.price_base) THEN
INSERT INTO log_tovars_price_base SET id_kramp = NEW.id_kramp, val = NEW.price_base, date = NOW();
END IF;
IF(NEW.tovar_count != OLD.tovar_count) THEN
INSERT INTO log_tovars_tovar_count SET id_kramp = NEW.id_kramp, val = NEW.tovar_count, date = NOW();
END IF;
IF(NEW.site != OLD.site) THEN
INSERT INTO log_tovars_site SET id_kramp = NEW.id_kramp, val = NEW.site, date = NOW();
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table tovars
-- ----------------------------
DROP TRIGGER IF EXISTS `log_insert`;
delimiter ;;
CREATE TRIGGER `log_insert` AFTER INSERT ON `tovars` FOR EACH ROW BEGIN
INSERT INTO log_tovars_vendor_code SET id_kramp = NEW.id_kramp, val = NEW.vendor_code, date = NOW();
INSERT INTO log_tovars_name SET id_kramp = NEW.id_kramp, val = NEW.`name`, date = NOW();
INSERT INTO log_tovars_link SET id_kramp = NEW.id_kramp, val = NEW.link, date = NOW();
INSERT INTO log_tovars_sale SET id_kramp = NEW.id_kramp, val = NEW.sale, date = NOW();
INSERT INTO log_tovars_price SET id_kramp = NEW.id_kramp, val = NEW.price, date = NOW();
INSERT INTO log_tovars_price_base SET id_kramp = NEW.id_kramp, val = NEW.price_base, date = NOW();
INSERT INTO log_tovars_tovar_count SET id_kramp = NEW.id_kramp, val = NEW.tovar_count, date = NOW();
INSERT INTO log_tovars_site SET id_kramp = NEW.id_kramp, val = NEW.site, date = NOW();
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
