/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3307
 Source Schema         : bd_seguimiento

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 04/06/2024 17:56:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for estudiantes
-- ----------------------------
DROP TABLE IF EXISTS `estudiantes`;
CREATE TABLE `estudiantes`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaNacimiento` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of estudiantes
-- ----------------------------
INSERT INTO `estudiantes` VALUES (1, 'Raul', 'Sanchez', 'rsanchez@gmail.com', '2005-02-08');
INSERT INTO `estudiantes` VALUES (2, 'Andrea', 'Alanoca', 'asorces@gmail.com', '2003-05-01');
INSERT INTO `estudiantes` VALUES (4, 'Teresa', 'Mendez', 'tmendez@gmail.com', '2002-03-15');
INSERT INTO `estudiantes` VALUES (5, 'Luis', 'Aroa', 'laroa@gmail.com', '2002-12-10');
INSERT INTO `estudiantes` VALUES (6, 'Claudia', 'Ruiz', 'cruiz@gmail.com', '2004-06-06');

-- ----------------------------
-- Table structure for esudiantes
-- ----------------------------
DROP TABLE IF EXISTS `esudiantes`;
CREATE TABLE `esudiantes`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaNacimineto` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of esudiantes
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
