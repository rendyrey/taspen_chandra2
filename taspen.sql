/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100406
 Source Host           : localhost:3306
 Source Schema         : taspen

 Target Server Type    : MySQL
 Target Server Version : 100406
 File Encoding         : 65001

 Date: 31/12/2019 10:28:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data_slot
-- ----------------------------
DROP TABLE IF EXISTS `data_slot`;
CREATE TABLE `data_slot`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slot` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_slot
-- ----------------------------
INSERT INTO `data_slot` VALUES (1, 'Pelaksana', NULL, NULL, NULL);
INSERT INTO `data_slot` VALUES (2, 'Kepala Seksi', NULL, NULL, NULL);
INSERT INTO `data_slot` VALUES (3, 'Kepala Bidang', NULL, NULL, NULL);
INSERT INTO `data_slot` VALUES (4, 'Wakil Kepala Cabang', NULL, NULL, NULL);
INSERT INTO `data_slot` VALUES (5, 'Kepala Cabang', NULL, NULL, NULL);
INSERT INTO `data_slot` VALUES (6, 'Done', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for log_login
-- ----------------------------
DROP TABLE IF EXISTS `log_login`;
CREATE TABLE `log_login`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(0) NOT NULL,
  `alamat_ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_login
-- ----------------------------
INSERT INTO `log_login` VALUES (1, 'rendyreynaldy@gmail.com', '', '2019-11-25 02:34:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-11-25 02:34:48', '2019-11-25 02:35:37', '2019-11-25 02:35:37');
INSERT INTO `log_login` VALUES (2, 'rendyreynaldy@gmail.com', '', '2019-11-25 02:34:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-11-25 02:35:37', '2019-11-25 03:19:53', '2019-11-25 03:19:53');
INSERT INTO `log_login` VALUES (3, 'rendyreynaldy@gmail.com', '', '2019-11-25 02:35:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-11-25 03:19:53', '2019-11-26 00:47:26', '2019-11-26 00:47:26');
INSERT INTO `log_login` VALUES (4, 'rendyreynaldy@gmail.com', '', '2019-11-25 03:19:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-11-26 00:47:26', '2019-11-26 09:26:39', '2019-11-26 09:26:39');
INSERT INTO `log_login` VALUES (5, 'rendyreynaldy@gmail.com', '', '2019-11-26 00:47:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-26 09:26:39', '2019-11-27 01:08:35', '2019-11-27 01:08:35');
INSERT INTO `log_login` VALUES (7, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:35:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-27 02:35:08', '2019-11-27 02:37:01', '2019-11-27 02:37:01');
INSERT INTO `log_login` VALUES (8, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:35:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-27 02:37:01', '2019-11-27 02:52:52', '2019-11-27 02:52:52');
INSERT INTO `log_login` VALUES (9, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:37:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-27 02:52:52', '2019-11-27 02:53:27', '2019-11-27 02:53:27');
INSERT INTO `log_login` VALUES (10, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:52:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-27 02:53:27', '2019-11-27 02:55:23', '2019-11-27 02:55:23');
INSERT INTO `log_login` VALUES (11, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:53:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-27 02:55:23', '2019-11-27 02:55:27', '2019-11-27 02:55:27');
INSERT INTO `log_login` VALUES (12, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:55:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-27 02:55:27', '2019-11-27 02:55:39', '2019-11-27 02:55:39');
INSERT INTO `log_login` VALUES (13, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:55:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-27 02:55:39', '2019-11-27 02:57:43', '2019-11-27 02:57:43');
INSERT INTO `log_login` VALUES (14, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:55:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-27 02:57:43', '2019-11-27 02:59:30', '2019-11-27 02:59:30');
INSERT INTO `log_login` VALUES (15, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:57:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-27 02:59:30', '2019-11-27 02:59:58', '2019-11-27 02:59:58');
INSERT INTO `log_login` VALUES (16, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:59:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-27 02:59:58', '2019-11-27 03:01:02', '2019-11-27 03:01:02');
INSERT INTO `log_login` VALUES (17, 'rendyreynaldy@gmail.com', '', '2019-11-27 02:59:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-27 03:01:02', '2019-11-27 03:01:54', '2019-11-27 03:01:54');
INSERT INTO `log_login` VALUES (18, 'rendyreynaldy@gmail.com', '', '2019-11-27 03:01:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-27 03:01:54', '2019-11-27 03:02:55', '2019-11-27 03:02:55');
INSERT INTO `log_login` VALUES (19, 'rendyreynaldy@gmail.com', '', '2019-11-27 03:01:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-27 03:02:55', '2019-11-27 03:03:29', '2019-11-27 03:03:29');
INSERT INTO `log_login` VALUES (20, 'rendyreynaldy@gmail.com', '', '2019-11-27 03:02:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-27 03:03:29', '2019-11-27 04:25:34', '2019-11-27 04:25:34');
INSERT INTO `log_login` VALUES (21, 'rendyreynaldy@gmail.com', '', '2019-11-27 03:03:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-27 04:25:35', '2019-11-27 05:52:26', '2019-11-27 05:52:26');
INSERT INTO `log_login` VALUES (22, 'rendyreynaldy@gmail.com', '', '2019-11-27 04:25:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-27 05:52:26', '2019-11-29 01:04:32', '2019-11-29 01:04:32');
INSERT INTO `log_login` VALUES (23, 'kepalacabang@gmail.com', '', '2019-11-27 06:00:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-27 06:00:30', '2019-12-20 07:34:18', '2019-12-20 07:34:18');
INSERT INTO `log_login` VALUES (24, 'rendyreynaldy@gmail.com', '', '2019-11-27 05:52:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-29 01:04:32', '2019-11-29 01:07:18', '2019-11-29 01:07:18');
INSERT INTO `log_login` VALUES (25, 'rendyreynaldy@gmail.com', '', '2019-11-29 01:04:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', '2019-11-29 01:07:18', '2019-12-02 05:41:25', '2019-12-02 05:41:25');
INSERT INTO `log_login` VALUES (26, 'kepalaseksi@gmail.com', '', '2019-12-02 00:47:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-12-02 00:47:50', '2019-12-02 00:47:50', NULL);
INSERT INTO `log_login` VALUES (27, 'kepalabidang@gmail.com', '', '2019-12-02 00:49:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-12-02 00:49:53', '2019-12-02 05:41:41', '2019-12-02 05:41:41');
INSERT INTO `log_login` VALUES (28, 'rendyreynaldy@gmail.com', '', '2019-11-29 01:07:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-12-02 05:41:25', '2019-12-02 05:41:25', NULL);
INSERT INTO `log_login` VALUES (29, 'kepalabidang@gmail.com', '', '2019-12-02 00:49:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-12-02 05:41:42', '2019-12-19 06:18:27', '2019-12-19 06:18:27');
INSERT INTO `log_login` VALUES (30, 'admin@gmail.com', 'administrator', '2019-12-06 06:42:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-12-06 06:42:35', '2019-12-11 00:50:14', '2019-12-11 00:50:14');
INSERT INTO `log_login` VALUES (31, 'admin@gmail.com', 'administrator', '2019-12-06 06:42:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2019-12-11 00:50:14', '2019-12-11 07:34:59', '2019-12-11 07:34:59');
INSERT INTO `log_login` VALUES (32, 'admin@gmail.com', 'administrator', '2019-12-11 00:50:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2019-12-11 07:34:59', '2019-12-11 08:23:17', '2019-12-11 08:23:17');
INSERT INTO `log_login` VALUES (33, 'admin@gmail.com', 'administrator', '2019-12-11 07:34:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2019-12-11 08:23:17', '2019-12-12 03:38:01', '2019-12-12 03:38:01');
INSERT INTO `log_login` VALUES (34, 'admin@gmail.com', 'administrator', '2019-12-11 08:23:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-12 03:38:01', '2019-12-13 00:48:25', '2019-12-13 00:48:25');
INSERT INTO `log_login` VALUES (35, 'admin@gmail.com', 'administrator', '2019-12-12 03:38:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-13 00:48:25', '2019-12-13 00:50:45', '2019-12-13 00:50:45');
INSERT INTO `log_login` VALUES (36, 'admin@gmail.com', 'administrator', '2019-12-13 00:48:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-13 00:50:45', '2019-12-13 04:05:22', '2019-12-13 04:05:22');
INSERT INTO `log_login` VALUES (37, 'admin@gmail.com', 'administrator', '2019-12-13 00:50:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-13 04:05:22', '2019-12-13 09:30:11', '2019-12-13 09:30:11');
INSERT INTO `log_login` VALUES (38, 'admin@gmail.com', 'administrator', '2019-12-13 04:05:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-13 09:30:11', '2019-12-13 09:58:32', '2019-12-13 09:58:32');
INSERT INTO `log_login` VALUES (39, 'admin@gmail.com', 'administrator', '2019-12-13 09:30:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-13 09:58:32', '2019-12-17 13:17:31', '2019-12-17 13:17:31');
INSERT INTO `log_login` VALUES (40, 'admin@gmail.com', 'administrator', '2019-12-13 09:58:32', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-17 13:17:31', '2019-12-17 13:33:06', '2019-12-17 13:33:06');
INSERT INTO `log_login` VALUES (41, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-17 13:29:38', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-17 13:29:38', '2019-12-17 13:35:05', '2019-12-17 13:35:05');
INSERT INTO `log_login` VALUES (42, 'admin@gmail.com', 'administrator', '2019-12-17 13:17:31', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-17 13:33:06', '2019-12-18 11:28:48', '2019-12-18 11:28:48');
INSERT INTO `log_login` VALUES (43, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-17 13:29:38', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-17 13:35:05', '2019-12-18 11:26:24', '2019-12-18 11:26:24');
INSERT INTO `log_login` VALUES (44, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-17 13:35:05', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 11:26:25', '2019-12-18 11:38:17', '2019-12-18 11:38:17');
INSERT INTO `log_login` VALUES (45, 'admin@gmail.com', 'administrator', '2019-12-17 13:33:06', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 11:28:48', '2019-12-18 11:57:28', '2019-12-18 11:57:28');
INSERT INTO `log_login` VALUES (46, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-18 11:26:25', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 11:38:17', '2019-12-19 00:24:16', '2019-12-19 00:24:16');
INSERT INTO `log_login` VALUES (47, 'admin@gmail.com', 'administrator', '2019-12-18 11:28:48', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-18 11:57:28', '2019-12-19 00:23:32', '2019-12-19 00:23:32');
INSERT INTO `log_login` VALUES (48, 'admin@gmail.com', 'administrator', '2019-12-18 11:57:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-19 00:23:32', '2019-12-19 00:54:06', '2019-12-19 00:54:06');
INSERT INTO `log_login` VALUES (49, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-18 11:38:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-19 00:24:16', '2019-12-19 00:56:37', '2019-12-19 00:56:37');
INSERT INTO `log_login` VALUES (50, 'admin@gmail.com', 'administrator', '2019-12-19 00:23:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-19 00:54:06', '2019-12-19 05:22:24', '2019-12-19 05:22:24');
INSERT INTO `log_login` VALUES (51, 'chandrasetya@gmail.com', 'kepala-seksi', '2019-12-19 00:54:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-19 00:54:19', '2019-12-19 01:00:58', '2019-12-19 01:00:58');
INSERT INTO `log_login` VALUES (52, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-19 00:24:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-19 00:56:37', '2019-12-19 02:07:17', '2019-12-19 02:07:17');
INSERT INTO `log_login` VALUES (53, 'chandrasetya@gmail.com', 'kepala-seksi', '2019-12-19 00:54:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-19 01:00:58', '2019-12-19 02:07:35', '2019-12-19 02:07:35');
INSERT INTO `log_login` VALUES (54, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-19 00:56:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-19 02:07:17', '2019-12-19 06:20:53', '2019-12-19 06:20:53');
INSERT INTO `log_login` VALUES (55, 'chandrasetya@gmail.com', 'kepala-seksi', '2019-12-19 01:00:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-19 02:07:35', '2019-12-19 05:59:05', '2019-12-19 05:59:05');
INSERT INTO `log_login` VALUES (56, 'admin@gmail.com', 'administrator', '2019-12-19 00:54:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-19 05:22:24', '2019-12-19 06:14:26', '2019-12-19 06:14:26');
INSERT INTO `log_login` VALUES (57, 'chandrasetya@gmail.com', 'kepala-seksi', '2019-12-19 02:07:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-19 05:59:05', '2019-12-20 07:49:21', '2019-12-20 07:49:21');
INSERT INTO `log_login` VALUES (58, 'admin@gmail.com', 'administrator', '2019-12-19 05:22:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-19 06:14:26', '2019-12-20 02:17:11', '2019-12-20 02:17:11');
INSERT INTO `log_login` VALUES (59, 'kepalabidang@gmail.com', 'kepala-bidang', '2019-12-02 05:41:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-19 06:18:27', '2019-12-20 06:31:06', '2019-12-20 06:31:06');
INSERT INTO `log_login` VALUES (60, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-19 02:07:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2019-12-19 06:20:53', '2019-12-20 07:59:47', '2019-12-20 07:59:47');
INSERT INTO `log_login` VALUES (61, 'admin@gmail.com', 'administrator', '2019-12-19 06:14:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 02:17:11', '2019-12-20 02:48:43', '2019-12-20 02:48:43');
INSERT INTO `log_login` VALUES (62, 'wakilkepalacabang@gmail.com', 'wakil-kepala-cabang', '2019-12-20 02:19:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 02:19:14', '2019-12-20 02:49:13', '2019-12-20 02:49:13');
INSERT INTO `log_login` VALUES (63, 'admin@gmail.com', 'administrator', '2019-12-20 02:17:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 02:48:43', '2019-12-20 02:55:35', '2019-12-20 02:55:35');
INSERT INTO `log_login` VALUES (64, 'wakilkepalacabang@gmail.com', 'wakil-kepala-cabang', '2019-12-20 02:19:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 02:49:13', '2019-12-20 04:20:06', '2019-12-20 04:20:06');
INSERT INTO `log_login` VALUES (65, 'admin@gmail.com', 'administrator', '2019-12-20 02:48:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 02:55:35', '2019-12-20 07:33:24', '2019-12-20 07:33:24');
INSERT INTO `log_login` VALUES (66, 'wakilkepalacabang@gmail.com', 'wakil-kepala-cabang', '2019-12-20 02:49:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 04:20:06', '2019-12-20 07:35:00', '2019-12-20 07:35:00');
INSERT INTO `log_login` VALUES (67, 'kepalabidang@gmail.com', 'kepala-bidang', '2019-12-19 06:18:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 06:31:06', '2019-12-20 07:34:33', '2019-12-20 07:34:33');
INSERT INTO `log_login` VALUES (68, 'admin@gmail.com', 'administrator', '2019-12-20 02:55:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 07:33:24', '2019-12-26 06:22:40', '2019-12-26 06:22:40');
INSERT INTO `log_login` VALUES (69, 'kepalacabang@gmail.com', 'kepala-cabang', '2019-11-27 06:00:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 07:34:18', '2019-12-20 07:48:45', '2019-12-20 07:48:45');
INSERT INTO `log_login` VALUES (70, 'kepalabidang@gmail.com', 'kepala-bidang', '2019-12-20 06:31:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 07:34:33', '2019-12-20 07:48:52', '2019-12-20 07:48:52');
INSERT INTO `log_login` VALUES (71, 'wakilkepalacabang@gmail.com', 'wakil-kepala-cabang', '2019-12-20 04:20:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 07:35:00', '2019-12-20 09:19:01', '2019-12-20 09:19:01');
INSERT INTO `log_login` VALUES (72, 'kepalacabang@gmail.com', 'kepala-cabang', '2019-12-20 07:34:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 07:48:45', '2019-12-20 09:20:37', '2019-12-20 09:20:37');
INSERT INTO `log_login` VALUES (73, 'kepalabidang@gmail.com', 'kepala-bidang', '2019-12-20 07:34:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 07:48:52', '2019-12-20 07:59:29', '2019-12-20 07:59:29');
INSERT INTO `log_login` VALUES (74, 'chandrasetya@gmail.com', 'kepala-seksi', '2019-12-19 05:59:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 07:49:21', '2019-12-20 08:00:49', '2019-12-20 08:00:49');
INSERT INTO `log_login` VALUES (75, 'kepalabidang@gmail.com', 'kepala-bidang', '2019-12-20 07:48:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 07:59:29', '2019-12-20 09:18:37', '2019-12-20 09:18:37');
INSERT INTO `log_login` VALUES (76, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-19 06:20:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 07:59:47', '2019-12-20 08:31:15', '2019-12-20 08:31:15');
INSERT INTO `log_login` VALUES (77, 'chandrasetya@gmail.com', 'kepala-seksi', '2019-12-20 07:49:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 08:00:49', '2019-12-20 09:17:45', '2019-12-20 09:17:45');
INSERT INTO `log_login` VALUES (78, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-20 07:59:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 08:31:15', '2019-12-26 00:48:28', '2019-12-26 00:48:28');
INSERT INTO `log_login` VALUES (79, 'chandrasetya@gmail.com', 'kepala-seksi', '2019-12-20 08:00:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 09:17:45', '2019-12-26 06:20:05', '2019-12-26 06:20:05');
INSERT INTO `log_login` VALUES (80, 'kepalabidang@gmail.com', 'kepala-bidang', '2019-12-20 07:59:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 09:18:37', '2019-12-20 09:18:37', NULL);
INSERT INTO `log_login` VALUES (81, 'wakilkepalacabang@gmail.com', 'wakil-kepala-cabang', '2019-12-20 07:35:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 09:19:01', '2019-12-20 09:19:01', NULL);
INSERT INTO `log_login` VALUES (82, 'kepalacabang@gmail.com', 'kepala-cabang', '2019-12-20 07:48:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-20 09:20:37', '2019-12-26 06:20:48', '2019-12-26 06:20:48');
INSERT INTO `log_login` VALUES (83, 'pelaksana@gmail.com', 'pelaksana', '2019-12-23 05:52:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-23 05:52:02', '2019-12-26 00:48:11', '2019-12-26 00:48:11');
INSERT INTO `log_login` VALUES (84, 'pelaksana@gmail.com', 'pelaksana', '2019-12-23 05:52:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-26 00:48:11', '2019-12-26 00:48:11', NULL);
INSERT INTO `log_login` VALUES (85, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-20 08:31:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-26 00:48:28', '2019-12-26 03:06:39', '2019-12-26 03:06:39');
INSERT INTO `log_login` VALUES (86, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-26 00:48:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2019-12-26 03:06:39', '2019-12-26 05:55:59', '2019-12-26 05:55:59');
INSERT INTO `log_login` VALUES (87, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-26 03:06:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-26 05:55:59', '2019-12-27 01:59:43', '2019-12-27 01:59:43');
INSERT INTO `log_login` VALUES (88, 'chandrasetya@gmail.com', 'kepala-seksi', '2019-12-20 09:17:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-26 06:20:05', '2019-12-26 06:20:05', NULL);
INSERT INTO `log_login` VALUES (89, 'kepalacabang@gmail.com', 'kepala-cabang', '2019-12-20 09:20:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-26 06:20:48', '2019-12-26 06:20:48', NULL);
INSERT INTO `log_login` VALUES (90, 'admin@gmail.com', 'administrator', '2019-12-20 07:33:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-26 06:22:40', '2019-12-27 01:14:26', '2019-12-27 01:14:26');
INSERT INTO `log_login` VALUES (91, 'admin@gmail.com', 'administrator', '2019-12-26 06:22:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-27 01:14:26', '2019-12-27 01:21:34', '2019-12-27 01:21:34');
INSERT INTO `log_login` VALUES (92, 'admin@gmail.com', 'administrator', '2019-12-27 01:14:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-27 01:21:34', '2019-12-27 01:23:11', '2019-12-27 01:23:11');
INSERT INTO `log_login` VALUES (93, 'admin@gmail.com', 'administrator', '2019-12-27 01:21:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-27 01:23:11', '2019-12-27 01:23:18', '2019-12-27 01:23:18');
INSERT INTO `log_login` VALUES (94, 'admin@gmail.com', 'administrator', '2019-12-27 01:23:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-27 01:23:18', '2019-12-27 01:23:22', '2019-12-27 01:23:22');
INSERT INTO `log_login` VALUES (95, 'admin@gmail.com', 'administrator', '2019-12-27 01:23:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-27 01:23:22', '2019-12-27 01:26:06', '2019-12-27 01:26:06');
INSERT INTO `log_login` VALUES (96, 'admin@gmail.com', 'administrator', '2019-12-27 01:23:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-27 01:26:06', '2019-12-27 06:25:37', '2019-12-27 06:25:37');
INSERT INTO `log_login` VALUES (97, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-26 05:55:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-27 01:59:43', '2019-12-31 02:02:03', '2019-12-31 02:02:03');
INSERT INTO `log_login` VALUES (98, 'admin@gmail.com', 'administrator', '2019-12-27 01:26:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-27 06:25:37', '2019-12-31 02:00:28', '2019-12-31 02:00:28');
INSERT INTO `log_login` VALUES (99, 'admin@gmail.com', 'administrator', '2019-12-27 06:25:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-31 02:00:28', '2019-12-31 02:01:59', '2019-12-31 02:01:59');
INSERT INTO `log_login` VALUES (100, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-27 01:59:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-31 02:02:03', '2019-12-31 02:22:30', '2019-12-31 02:22:30');
INSERT INTO `log_login` VALUES (101, 'admin@gmail.com', 'administrator', '2019-12-31 02:29:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-31 02:29:09', '2019-12-31 02:29:11', '2019-12-31 02:29:11');
INSERT INTO `log_login` VALUES (102, 'nindyasofi@gmail.com', 'pelaksana', '2019-12-31 02:45:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-31 02:45:43', '2019-12-31 02:55:26', '2019-12-31 02:55:26');
INSERT INTO `log_login` VALUES (103, 'admin@gmail.com', 'administrator', '2019-12-31 03:27:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '2019-12-31 03:27:53', '2019-12-31 03:27:53', NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_11_20_012447_initial', 1);
INSERT INTO `migrations` VALUES (4, '2019_11_25_022648_log_login', 1);
INSERT INTO `migrations` VALUES (10, '2019_11_27_020254_add_role', 2);
INSERT INTO `migrations` VALUES (11, '2019_12_04_083443_add_iduser', 3);

-- ----------------------------
-- Table structure for mst_bidang
-- ----------------------------
DROP TABLE IF EXISTS `mst_bidang`;
CREATE TABLE `mst_bidang`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bidang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_bidang
-- ----------------------------
INSERT INTO `mst_bidang` VALUES (1, 'Bidang Umum dan SDM', 1, '2019-11-25 11:14:54', '2019-12-17 13:22:00', NULL);
INSERT INTO `mst_bidang` VALUES (6, 'Bidang Keuangan', 1, '2019-12-17 13:22:26', '2019-12-17 13:22:26', NULL);
INSERT INTO `mst_bidang` VALUES (7, 'Bidang Layanan', 1, '2019-12-17 13:22:43', '2019-12-17 13:22:43', NULL);

-- ----------------------------
-- Table structure for mst_cabang
-- ----------------------------
DROP TABLE IF EXISTS `mst_cabang`;
CREATE TABLE `mst_cabang`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cabang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_cabang
-- ----------------------------
INSERT INTO `mst_cabang` VALUES (1, 'Bandung', 1, '2019-11-26 11:15:06', '2019-12-12 09:26:47', NULL);

-- ----------------------------
-- Table structure for mst_employee
-- ----------------------------
DROP TABLE IF EXISTS `mst_employee`;
CREATE TABLE `mst_employee`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `position_id` bigint(20) UNSIGNED NOT NULL,
  `cabang_id` bigint(20) UNSIGNED NOT NULL,
  `kcu_id` bigint(20) UNSIGNED NOT NULL,
  `seksi_id` bigint(20) UNSIGNED NOT NULL,
  `bidang_id` bigint(20) UNSIGNED NOT NULL,
  `employee_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mst_employee_kcu_id_foreign`(`kcu_id`) USING BTREE,
  INDEX `mst_employee_cabang_id_foreign`(`cabang_id`) USING BTREE,
  INDEX `mst_employee_seksi_id_foreign`(`seksi_id`) USING BTREE,
  INDEX `mst_employee_bidang_id_foreign`(`bidang_id`) USING BTREE,
  INDEX `mst_employee_position_id_foreign`(`position_id`) USING BTREE,
  CONSTRAINT `mst_employee_bidang_id_foreign` FOREIGN KEY (`bidang_id`) REFERENCES `mst_bidang` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `mst_employee_cabang_id_foreign` FOREIGN KEY (`cabang_id`) REFERENCES `mst_cabang` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `mst_employee_kcu_id_foreign` FOREIGN KEY (`kcu_id`) REFERENCES `mst_kcu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `mst_employee_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `data_slot` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `mst_employee_seksi_id_foreign` FOREIGN KEY (`seksi_id`) REFERENCES `mst_seksi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_employee
-- ----------------------------
INSERT INTO `mst_employee` VALUES (2, 2, 1, 1, 1, 1, 'Rendys', 1, NULL, '2019-12-13 00:53:01', NULL);
INSERT INTO `mst_employee` VALUES (5, 1, 1, 1, 1, 1, 'Pelaksana', 1, '2019-12-11 08:20:17', '2019-12-11 08:20:17', NULL);
INSERT INTO `mst_employee` VALUES (9, 5, 1, 1, 1, 1, 'Rimaxsxxxxxxx', 1, '2019-12-12 04:10:51', '2019-12-13 09:32:46', NULL);
INSERT INTO `mst_employee` VALUES (10, 1, 1, 1, 4, 6, 'Nindya Sofiana', 1, '2019-12-17 13:28:56', '2019-12-17 13:28:56', NULL);
INSERT INTO `mst_employee` VALUES (11, 2, 1, 1, 4, 6, 'Chandra Setya Wijaya', 1, '2019-12-17 13:34:41', '2019-12-17 13:34:41', NULL);
INSERT INTO `mst_employee` VALUES (13, 3, 1, 1, 4, 6, 'Kepala Bidang', 1, '2019-12-19 06:15:11', '2019-12-19 06:15:11', NULL);
INSERT INTO `mst_employee` VALUES (14, 4, 1, 1, 4, 6, 'Wakil Kepala Cabangsssss', 1, '2019-12-20 02:19:01', '2019-12-27 01:21:20', NULL);
INSERT INTO `mst_employee` VALUES (15, 5, 1, 1, 4, 6, 'Kepala Cabang', 1, '2019-12-20 07:34:09', '2019-12-20 07:34:09', NULL);
INSERT INTO `mst_employee` VALUES (16, 1, 1, 1, 1, 1, 'Karyawan A', 1, '2019-12-31 02:01:08', '2019-12-31 02:01:08', NULL);

-- ----------------------------
-- Table structure for mst_global
-- ----------------------------
DROP TABLE IF EXISTS `mst_global`;
CREATE TABLE `mst_global`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `condition` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_global
-- ----------------------------
INSERT INTO `mst_global` VALUES (1, 1, 'StatusHeader', 'New', 1, '2019-12-18 11:31:27', '2019-12-18 11:31:27', NULL);
INSERT INTO `mst_global` VALUES (2, 2, 'StatusHeader', 'Inprogress', 1, '2019-12-18 11:31:56', '2019-12-18 11:31:56', NULL);
INSERT INTO `mst_global` VALUES (3, 3, 'StatusHeader', 'Approve', 1, '2019-12-18 11:32:26', '2019-12-18 11:32:26', NULL);
INSERT INTO `mst_global` VALUES (4, 4, 'StatusHeader', 'Decline', 1, '2019-12-18 11:33:05', '2019-12-18 11:33:05', NULL);
INSERT INTO `mst_global` VALUES (5, 1, 'StatusDetail', 'Approve', 1, '2019-12-18 11:34:53', '2019-12-18 11:34:53', NULL);
INSERT INTO `mst_global` VALUES (6, 2, 'StatusDetail', 'Decline', 1, '2019-12-18 11:35:31', '2019-12-18 11:35:31', NULL);
INSERT INTO `mst_global` VALUES (7, 1, 'JenisPekerjaan', 'Umum', 1, '2019-12-18 11:35:53', '2019-12-18 11:57:43', NULL);
INSERT INTO `mst_global` VALUES (8, 2, 'JenisPekerjaan', 'Utama', 1, '2019-12-18 11:36:17', '2019-12-18 11:57:53', NULL);
INSERT INTO `mst_global` VALUES (9, 1, 'ProgressDetail', 'Done', 1, '2019-12-18 11:36:41', '2019-12-18 11:58:23', NULL);
INSERT INTO `mst_global` VALUES (10, 2, 'ProgressDetail', 'Pending', 1, '2019-12-18 11:37:04', '2019-12-18 11:58:10', NULL);

-- ----------------------------
-- Table structure for mst_kcu
-- ----------------------------
DROP TABLE IF EXISTS `mst_kcu`;
CREATE TABLE `mst_kcu`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cabang_id` bigint(20) UNSIGNED NOT NULL,
  `kcu` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cabang_id`(`cabang_id`) USING BTREE,
  CONSTRAINT `mst_kcu_ibfk_1` FOREIGN KEY (`cabang_id`) REFERENCES `mst_cabang` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_kcu
-- ----------------------------
INSERT INTO `mst_kcu` VALUES (1, 1, 'KCU Bandungs', 1, '2019-11-25 11:17:06', '2019-12-13 01:17:33', NULL);

-- ----------------------------
-- Table structure for mst_seksi
-- ----------------------------
DROP TABLE IF EXISTS `mst_seksi`;
CREATE TABLE `mst_seksi`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bidang_id` bigint(20) UNSIGNED NOT NULL,
  `seksi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mst_seksi_bidang_id_foreign`(`bidang_id`) USING BTREE,
  CONSTRAINT `mst_seksi_bidang_id_foreign` FOREIGN KEY (`bidang_id`) REFERENCES `mst_bidang` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_seksi
-- ----------------------------
INSERT INTO `mst_seksi` VALUES (1, 1, 'Seksi Umum', 1, '2019-11-25 11:17:31', '2019-12-17 13:21:16', NULL);
INSERT INTO `mst_seksi` VALUES (3, 1, 'Seksi SDM', 1, '2019-12-17 13:23:31', '2019-12-17 13:23:31', NULL);
INSERT INTO `mst_seksi` VALUES (4, 6, 'Seksi Kas dan Verifikasi', 1, '2019-12-17 13:24:19', '2019-12-17 13:24:19', NULL);
INSERT INTO `mst_seksi` VALUES (5, 6, 'Seksi Administrasi Keuangan', 1, '2019-12-17 13:24:50', '2019-12-17 13:24:50', NULL);
INSERT INTO `mst_seksi` VALUES (6, 7, 'Seksi Data', 1, '2019-12-17 13:25:29', '2019-12-17 13:25:29', NULL);
INSERT INTO `mst_seksi` VALUES (7, 7, 'Seksi Layanan dan Manfaat', 1, '2019-12-17 13:25:50', '2019-12-17 13:25:50', NULL);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('nindyasofi@gmail.com', '$2y$10$MNFNgTyyicAxxHVvJGsrA.gQVHYdWIhb8pkC5yYqYj6Vmqnu8yCTq', '2019-12-31 02:22:47');

-- ----------------------------
-- Table structure for sirkulasi
-- ----------------------------
DROP TABLE IF EXISTS `sirkulasi`;
CREATE TABLE `sirkulasi`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `task_header_id` bigint(20) UNSIGNED NOT NULL,
  `slot_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_last_update_id` bigint(20) UNSIGNED NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sirkulasi_task_header_id_foreign`(`task_header_id`) USING BTREE,
  INDEX `sirkulasi_slot_id_foreign`(`slot_id`) USING BTREE,
  INDEX `sirkulasi_user_last_update_id_foreign`(`user_last_update_id`) USING BTREE,
  CONSTRAINT `sirkulasi_slot_id_foreign` FOREIGN KEY (`slot_id`) REFERENCES `data_slot` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sirkulasi_task_header_id_foreign` FOREIGN KEY (`task_header_id`) REFERENCES `trn_task_header` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sirkulasi_user_last_update_id_foreign` FOREIGN KEY (`user_last_update_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sirkulasi
-- ----------------------------
INSERT INTO `sirkulasi` VALUES (1, 9, 2, '', 12, '', NULL, NULL, NULL);
INSERT INTO `sirkulasi` VALUES (2, 9, 3, '', 13, 'a', NULL, NULL, NULL);
INSERT INTO `sirkulasi` VALUES (4, 9, 3, '', 15, 'Teruskan', '2019-12-20 06:38:04', '2019-12-20 06:38:04', NULL);
INSERT INTO `sirkulasi` VALUES (5, 9, 2, 'Declined', 15, 'Terusin', '2019-12-20 07:34:40', '2019-12-20 07:34:40', NULL);
INSERT INTO `sirkulasi` VALUES (6, 9, 2, 'Declined', 13, 'Fafafafa', '2019-12-20 07:58:39', '2019-12-20 07:58:39', NULL);
INSERT INTO `sirkulasi` VALUES (7, 9, 1, 'Declined', 13, 'T', '2019-12-20 08:00:54', '2019-12-20 08:00:54', NULL);
INSERT INTO `sirkulasi` VALUES (8, 9, 2, '', 12, '', '2019-12-20 09:17:37', '2019-12-20 09:17:37', NULL);
INSERT INTO `sirkulasi` VALUES (9, 9, 3, 'Approved', 13, 'FAFAFA', '2019-12-20 09:18:14', '2019-12-20 09:18:14', NULL);
INSERT INTO `sirkulasi` VALUES (10, 9, 4, 'Approved', 15, 'FAFAFA', '2019-12-20 09:18:44', '2019-12-20 09:18:44', NULL);
INSERT INTO `sirkulasi` VALUES (11, 9, 5, 'Approved', 16, 'fafafa', '2019-12-20 09:20:28', '2019-12-20 09:20:28', NULL);
INSERT INTO `sirkulasi` VALUES (13, 9, 5, 'Approved', 17, 'FAFAFA', '2019-12-20 09:22:29', '2019-12-20 09:22:29', NULL);
INSERT INTO `sirkulasi` VALUES (14, 9, 5, 'Approved', 17, 'FAFAFA', '2019-12-20 09:24:37', '2019-12-20 09:24:37', NULL);
INSERT INTO `sirkulasi` VALUES (15, 9, 1, 'Declined', 17, 'DADADADA', '2019-12-20 09:24:45', '2019-12-20 09:24:45', NULL);
INSERT INTO `sirkulasi` VALUES (16, 9, 1, '', 12, '', '2019-12-26 02:06:53', '2019-12-26 02:06:53', NULL);
INSERT INTO `sirkulasi` VALUES (17, 9, 1, '', 12, '', '2019-12-26 02:21:38', '2019-12-26 02:21:38', NULL);
INSERT INTO `sirkulasi` VALUES (18, 9, 1, 'New', 12, '', '2019-12-26 02:24:49', '2019-12-26 02:24:49', NULL);
INSERT INTO `sirkulasi` VALUES (19, 9, 1, 'New', 12, '', '2019-12-26 02:41:57', '2019-12-26 02:41:57', NULL);
INSERT INTO `sirkulasi` VALUES (20, 9, 1, 'New', 12, '', '2019-12-26 02:49:47', '2019-12-26 02:49:47', NULL);
INSERT INTO `sirkulasi` VALUES (21, 9, 1, 'New', 12, '', '2019-12-26 03:05:17', '2019-12-26 03:05:17', NULL);
INSERT INTO `sirkulasi` VALUES (22, 9, 1, 'New', 12, '', '2019-12-26 03:10:20', '2019-12-26 03:10:20', NULL);
INSERT INTO `sirkulasi` VALUES (23, 9, 1, 'New', 12, '', '2019-12-26 03:34:30', '2019-12-26 03:34:30', NULL);
INSERT INTO `sirkulasi` VALUES (24, 9, 2, 'New', 12, '', '2019-12-26 05:57:35', '2019-12-26 05:57:35', NULL);

-- ----------------------------
-- Table structure for trn_task_detail
-- ----------------------------
DROP TABLE IF EXISTS `trn_task_detail`;
CREATE TABLE `trn_task_detail`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `task_header_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `detail_count` int(11) NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_type` int(11) NOT NULL,
  `start_time` time(0) NOT NULL,
  `end_time` time(0) NOT NULL,
  `progress` int(11) NOT NULL,
  `remark` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `trn_task_detail_task_header_id_foreign`(`task_header_id`) USING BTREE,
  CONSTRAINT `trn_task_detail_task_header_id_foreign` FOREIGN KEY (`task_header_id`) REFERENCES `trn_task_header` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trn_task_detail
-- ----------------------------
INSERT INTO `trn_task_detail` VALUES (27, 9, NULL, 1, 'Siapin dana untuk sewa alphard', 1, '05:30:00', '10:15:00', 1, 'aman', 'public/files/9/256px-Logo_of_the_Ministry_of_Research,_Technology,_and_Higher_Education_of_the_Republic_of_Indonesia.png', '2019-12-26 05:57:35', '2019-12-26 05:57:35', NULL);
INSERT INTO `trn_task_detail` VALUES (28, 9, NULL, 2, 'Siapin dana untuk suguhan makanan', 1, '00:45:00', '06:00:00', 1, 'Aman', 'public/files/9/lake.jpg', '2019-12-26 05:57:35', '2019-12-26 05:57:35', NULL);

-- ----------------------------
-- Table structure for trn_task_header
-- ----------------------------
DROP TABLE IF EXISTS `trn_task_header`;
CREATE TABLE `trn_task_header`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `cabang_id` bigint(20) UNSIGNED NOT NULL,
  `user_last_update_id` bigint(20) UNSIGNED NOT NULL,
  `user_approval_id` bigint(20) UNSIGNED NOT NULL,
  `task_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_task` date NOT NULL,
  `status_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `trn_task_header_employee_id_foreign`(`employee_id`) USING BTREE,
  INDEX `trn_task_header_cabang_id_foreign`(`cabang_id`) USING BTREE,
  INDEX `trn_task_header_user_approval_id_foreign`(`user_approval_id`) USING BTREE,
  CONSTRAINT `trn_task_header_cabang_id_foreign` FOREIGN KEY (`cabang_id`) REFERENCES `mst_cabang` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `trn_task_header_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `mst_employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `trn_task_header_user_approval_id_foreign` FOREIGN KEY (`user_approval_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trn_task_header
-- ----------------------------
INSERT INTO `trn_task_header` VALUES (9, 10, 1, 12, 13, 'Menkeu kunjungan ke Bandung', 'Menkeu kunjungan ke Bandung', '2019-12-26', 1, '2019-12-18 13:19:35', '2019-12-26 03:10:20', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pelaksana',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  INDEX `employee`(`employee_id`) USING BTREE,
  CONSTRAINT `employee` FOREIGN KEY (`employee_id`) REFERENCES `mst_employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (6, 'Rendys', 'admin@gmail.com', '$2y$10$BDGDu1qvsdnNgF6xgsazt.qNP5YjieSnTBRaion0zKOQDZ0svhQgK', 'administrator', '6RiTb1oN3xsqePdfbkyZSLoHWz8mTIFEbIMShdudH9OGv95fuptj4RomSAVB', '2019-12-06 06:41:31', '2019-12-13 00:53:01', 1, 2);
INSERT INTO `users` VALUES (7, 'Pelaksana', 'pelaksana@gmail.com', '$2y$10$OsoVtwNEWNPMrp.6xMQOm.lfnhSExPy4mSCvH4RoekklcwZ1xQDMO', 'pelaksana', NULL, '2019-12-11 08:20:17', '2019-12-19 00:23:44', 1, 5);
INSERT INTO `users` VALUES (11, 'Rimaxsxxxxxxx', 'rima@gmail.com', '$2y$10$UtEn9Meq7nQs12HYV5xO3O.GOIcpfz2ZG2DidMA/r8uyh0myf7YfC', 'kepala-cabang', NULL, '2019-12-12 04:10:51', '2019-12-13 09:32:46', 1, 9);
INSERT INTO `users` VALUES (12, 'Nindya Sofiana', 'nindyasofi@gmail.com', '$2y$10$uZRfostfUmi1P6NTzUoze.GiYZlJtOEEBPAwAPkF4APWtsf4R6jza', 'pelaksana', 'IYifMsplPHo9dQnH5cAIkMLrY72t9wYGb4igISu1f58Xo7idRIZnxEndQxtv', '2019-12-17 13:28:57', '2019-12-17 13:28:57', 1, 10);
INSERT INTO `users` VALUES (13, 'Chandra Setya Wijaya', 'chandrasetya@gmail.com', '$2y$10$cUsRqsEglcqoMWtjtiPi2.WOyg8m.5DoXgSK2J63Vnt.cXJSYWU8.', 'kepala-seksi', NULL, '2019-12-17 13:34:41', '2019-12-17 13:34:41', 1, 11);
INSERT INTO `users` VALUES (15, 'Kepala Bidang', 'kepalabidang@gmail.com', '$2y$10$JkrLVlT9EmXAN/3OY1NTzumSnTsNDdaAhVls6ESFtXUiy1mKeCN8C', 'kepala-bidang', NULL, '2019-12-19 06:15:11', '2019-12-19 06:15:11', 1, 13);
INSERT INTO `users` VALUES (16, 'Wakil Kepala Cabangsssss', 'wakilkepalacabang@gmail.com', '$2y$10$G86QOvzxiaS1BYVNqHwpv.A6CG7yXwyBs3YgVtNCcZ.U5ryeMAs8.', 'wakil-kepala-cabang', NULL, '2019-12-20 02:19:01', '2019-12-27 01:21:20', 1, 14);
INSERT INTO `users` VALUES (17, 'Kepala Cabang', 'kepalacabang@gmail.com', '$2y$10$Iko0J0WGCqT3tOaEAwPccOM2lopPjUCFQwzzeczTzJiRSpVNDVeaq', 'kepala-cabang', NULL, '2019-12-20 07:34:09', '2019-12-20 07:34:09', 1, 15);
INSERT INTO `users` VALUES (18, 'Karyawan A', 'karyawana@gmail.com', '$2y$10$elaTe3v/SBeBLG40Q2p5rulghfnqUBwJtqx47oevltNL16d7PtieC', 'pelaksana', NULL, '2019-12-31 02:01:08', '2019-12-31 02:01:08', 1, 16);

SET FOREIGN_KEY_CHECKS = 1;
