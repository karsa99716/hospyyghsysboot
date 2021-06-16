/*
 Navicat Premium Data Transfer

 Source Server         : yyghxt
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : hospyyghsysboot_db

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 17/06/2021 07:57:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, 'ff9e660b-69be-4bc3-a0ca-e79a2453bfd2.jpg');
INSERT INTO `banner` VALUES (2, 'd374d5b1-4bd6-47cd-82a8-b8ecc2f4c483.jpg');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (3, '西药', '0');
INSERT INTO `category` VALUES (4, '中药', '0');
INSERT INTO `category` VALUES (5, '中成药', '0');
INSERT INTO `category` VALUES (6, '测试133', '1');

-- ----------------------------
-- Table structure for consult
-- ----------------------------
DROP TABLE IF EXISTS `consult`;
CREATE TABLE `consult`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `sid` int(0) NULL DEFAULT NULL,
  `diseaseid` int(0) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of consult
-- ----------------------------
INSERT INTO `consult` VALUES (11, 10, 8, '你还是来医院看一下', '2021-03-21 22:48:17');
INSERT INTO `consult` VALUES (12, 12, 8, '赵医生说的对，听他的没有错', '2021-03-21 22:48:17');
INSERT INTO `consult` VALUES (14, 15, 8, '好的吧，我明天去', '2021-03-21 22:48:17');
INSERT INTO `consult` VALUES (15, 12, 13, '222', '2021-03-21 22:48:17');

-- ----------------------------
-- Table structure for disease
-- ----------------------------
DROP TABLE IF EXISTS `disease`;
CREATE TABLE `disease`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `hzid` int(0) NULL DEFAULT NULL,
  `part` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sctime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disease
-- ----------------------------
INSERT INTO `disease` VALUES (8, 15, '头部', '头痛，还有头晕等症状', '2', '0', '2021-03-21 22:48:26');
INSERT INTO `disease` VALUES (13, 14, '胸部', '2', '2', '0', '2021-03-21 22:48:26');

-- ----------------------------
-- Table structure for doctorpb
-- ----------------------------
DROP TABLE IF EXISTS `doctorpb`;
CREATE TABLE `doctorpb`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `doctorid` int(0) NULL DEFAULT NULL,
  `pbdate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL,
  `fee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20079 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doctorpb
-- ----------------------------
INSERT INTO `doctorpb` VALUES (687, 25, '2021-01-21', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (688, 25, '2021-01-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (689, 25, '2021-01-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (690, 25, '2021-01-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (691, 25, '2021-01-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (692, 25, '2021-01-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (693, 25, '2021-01-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (694, 25, '2021-01-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (695, 25, '2021-01-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (696, 25, '2021-01-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (697, 25, '2021-01-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (698, 25, '2021-01-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (699, 25, '2021-01-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (700, 25, '2021-01-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (701, 25, '2021-01-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (702, 25, '2021-01-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (703, 25, '2021-01-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (704, 25, '2021-01-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (705, 25, '2021-01-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (706, 25, '2021-01-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (707, 25, '2021-01-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (708, 25, '2021-01-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (709, 25, '2021-01-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (710, 25, '2021-01-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (711, 25, '2021-01-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (712, 25, '2021-01-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (713, 25, '2021-01-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (714, 25, '2021-01-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (715, 25, '2021-01-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (716, 25, '2021-01-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (717, 41, '2021-01-26', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (718, 41, '2021-01-26', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (719, 41, '2021-01-26', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (720, 41, '2021-01-26', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (721, 41, '2021-01-26', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (722, 41, '2021-01-26', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (723, 41, '2021-01-26', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (724, 41, '2021-01-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (725, 41, '2021-01-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (726, 41, '2021-01-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (727, 41, '2021-01-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (728, 41, '2021-01-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (729, 41, '2021-01-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (730, 41, '2021-01-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (731, 41, '2021-01-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (732, 41, '2021-01-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (733, 41, '2021-01-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (734, 41, '2021-01-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (735, 41, '2021-01-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (736, 41, '2021-01-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (737, 41, '2021-01-28', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (738, 41, '2021-01-28', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (739, 41, '2021-01-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (740, 41, '2021-01-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (741, 41, '2021-01-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (742, 41, '2021-01-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (743, 41, '2021-01-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (744, 41, '2021-01-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (745, 41, '2021-01-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (746, 41, '2021-01-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (747, 41, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (748, 41, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (749, 41, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (750, 41, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (751, 41, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (752, 41, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (753, 41, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (754, 41, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (755, 41, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (756, 41, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (757, 41, '2021-01-30', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (758, 41, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (759, 41, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (760, 41, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (761, 41, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (762, 41, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (763, 41, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (764, 41, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (765, 41, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (766, 41, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (767, 40, '2021-01-28', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (768, 40, '2021-01-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (769, 40, '2021-01-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (770, 40, '2021-01-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (771, 40, '2021-01-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (772, 40, '2021-01-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (773, 40, '2021-01-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (774, 40, '2021-01-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (775, 40, '2021-01-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (776, 40, '2021-01-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (777, 40, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (778, 40, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (779, 40, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (780, 40, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (781, 40, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (782, 40, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (783, 40, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (784, 40, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (785, 40, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (786, 40, '2021-01-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (787, 40, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (788, 40, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (789, 40, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (790, 40, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (791, 40, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (792, 40, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (793, 40, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (794, 40, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (795, 40, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (796, 40, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (797, 40, '2021-01-31', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (798, 40, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (799, 40, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (800, 40, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (801, 40, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (802, 40, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (803, 40, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (804, 40, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (805, 40, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (806, 40, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (807, 40, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (808, 40, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (809, 40, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (810, 40, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (811, 40, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (812, 40, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (813, 40, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (814, 40, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (815, 40, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (816, 40, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (817, 40, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (818, 40, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (819, 40, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (820, 40, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (821, 40, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (822, 40, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (823, 40, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (824, 40, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (825, 40, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (826, 40, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (827, 40, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (828, 40, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (829, 40, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (830, 40, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (831, 40, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (832, 40, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (833, 40, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (834, 40, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (835, 40, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (836, 40, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (837, 40, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (838, 40, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (839, 40, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (840, 40, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (841, 40, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (842, 40, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (843, 40, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (844, 40, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (845, 40, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (846, 40, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (847, 40, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (848, 40, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (849, 40, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (850, 40, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (851, 40, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (852, 40, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (853, 40, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (854, 40, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (855, 40, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (856, 40, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (857, 40, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (858, 40, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (859, 40, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (860, 40, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (861, 40, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (862, 40, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (863, 40, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (864, 40, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (865, 40, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (866, 40, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (867, 38, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (868, 38, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (869, 38, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (870, 38, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (871, 38, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (872, 38, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (873, 38, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (874, 38, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (875, 38, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (876, 38, '2021-01-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (877, 38, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (878, 38, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (879, 38, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (880, 38, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (881, 38, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (882, 38, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (883, 38, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (884, 38, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (885, 38, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (886, 38, '2021-01-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (887, 38, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (888, 38, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (889, 38, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (890, 38, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (891, 38, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (892, 38, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (893, 38, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (894, 38, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (895, 38, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (896, 38, '2021-02-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (897, 38, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (898, 38, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (899, 38, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (900, 38, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (901, 38, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (902, 38, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (903, 38, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (904, 38, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (905, 38, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (906, 38, '2021-02-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (907, 38, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (908, 38, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (909, 38, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (910, 38, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (911, 38, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (912, 38, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (913, 38, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (914, 38, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (915, 38, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (916, 38, '2021-02-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (917, 38, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (918, 38, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (919, 38, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (920, 38, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (921, 38, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (922, 38, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (923, 38, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (924, 38, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (925, 38, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (926, 38, '2021-02-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (927, 38, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (928, 38, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (929, 38, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (930, 38, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (931, 38, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (932, 38, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (933, 38, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (934, 38, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (935, 38, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (936, 38, '2021-02-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (937, 38, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (938, 38, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (939, 38, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (940, 38, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (941, 38, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (942, 38, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (943, 38, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (944, 38, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (945, 38, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (946, 38, '2021-02-06', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (947, 38, '2021-02-07', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (948, 38, '2021-02-07', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (949, 38, '2021-02-07', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (950, 38, '2021-02-07', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (951, 38, '2021-02-07', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (952, 38, '2021-02-07', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (953, 38, '2021-02-07', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (954, 38, '2021-02-07', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (955, 38, '2021-02-07', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (956, 38, '2021-02-07', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (957, 38, '2021-02-08', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (958, 38, '2021-02-08', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (959, 38, '2021-02-08', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (960, 38, '2021-02-08', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (961, 38, '2021-02-08', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (962, 38, '2021-02-08', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (963, 38, '2021-02-08', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (964, 38, '2021-02-08', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (965, 38, '2021-02-08', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (966, 38, '2021-02-08', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (967, 38, '2021-02-09', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (968, 38, '2021-02-09', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (969, 38, '2021-02-09', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (970, 38, '2021-02-09', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (971, 38, '2021-02-09', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (972, 38, '2021-02-09', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (973, 38, '2021-02-09', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (974, 38, '2021-02-09', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (975, 38, '2021-02-09', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (976, 38, '2021-02-09', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (977, 38, '2021-02-10', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (978, 38, '2021-02-10', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (979, 38, '2021-02-10', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (980, 38, '2021-02-10', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (981, 38, '2021-02-10', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (982, 38, '2021-02-10', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (983, 38, '2021-02-10', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (984, 38, '2021-02-10', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (985, 38, '2021-02-10', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (986, 38, '2021-02-10', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (987, 38, '2021-02-11', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (988, 38, '2021-02-11', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (989, 38, '2021-02-11', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (990, 38, '2021-02-11', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (991, 38, '2021-02-11', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (992, 38, '2021-02-11', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (993, 38, '2021-02-11', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (994, 38, '2021-02-11', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (995, 38, '2021-02-11', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (996, 38, '2021-02-11', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (997, 38, '2021-02-12', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (998, 38, '2021-02-12', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (999, 38, '2021-02-12', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1000, 38, '2021-02-12', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1001, 38, '2021-02-12', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1002, 38, '2021-02-12', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1003, 38, '2021-02-12', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1004, 38, '2021-02-12', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1005, 38, '2021-02-12', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1006, 38, '2021-02-12', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1007, 38, '2021-02-13', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1008, 38, '2021-02-13', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1009, 38, '2021-02-13', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1010, 38, '2021-02-13', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1011, 38, '2021-02-13', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1012, 38, '2021-02-13', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1013, 38, '2021-02-13', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1014, 38, '2021-02-13', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1015, 38, '2021-02-13', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1016, 38, '2021-02-13', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1017, 41, '2021-03-15', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1018, 41, '2021-03-15', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1019, 41, '2021-03-15', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1020, 41, '2021-03-15', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1021, 41, '2021-03-15', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1022, 41, '2021-03-15', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1023, 41, '2021-03-15', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1024, 41, '2021-03-15', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1025, 41, '2021-03-15', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1026, 41, '2021-03-15', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1027, 41, '2021-03-16', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (1028, 41, '2021-03-16', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1029, 41, '2021-03-16', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1030, 41, '2021-03-16', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1031, 41, '2021-03-16', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1032, 41, '2021-03-16', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1033, 41, '2021-03-16', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1034, 41, '2021-03-16', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1035, 41, '2021-03-16', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1036, 41, '2021-03-16', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1037, 41, '2021-03-17', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (1038, 41, '2021-03-17', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1039, 41, '2021-03-17', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1040, 41, '2021-03-17', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1041, 41, '2021-03-17', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1042, 41, '2021-03-17', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1043, 41, '2021-03-17', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1044, 41, '2021-03-17', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1045, 41, '2021-03-17', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1046, 41, '2021-03-17', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1047, 41, '2021-03-18', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1048, 41, '2021-03-18', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1049, 41, '2021-03-18', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1050, 41, '2021-03-18', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1051, 41, '2021-03-18', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1052, 41, '2021-03-18', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1053, 41, '2021-03-18', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1054, 41, '2021-03-18', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1055, 41, '2021-03-18', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1056, 41, '2021-03-18', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1057, 41, '2021-03-19', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1058, 41, '2021-03-19', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1059, 41, '2021-03-19', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1060, 41, '2021-03-19', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1061, 41, '2021-03-19', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1062, 41, '2021-03-19', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1063, 41, '2021-03-19', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1064, 41, '2021-03-19', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1065, 41, '2021-03-19', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1066, 41, '2021-03-19', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1067, 41, '2021-03-20', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1068, 41, '2021-03-20', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1069, 41, '2021-03-20', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1070, 41, '2021-03-20', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1071, 41, '2021-03-20', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1072, 41, '2021-03-20', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1073, 41, '2021-03-20', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1074, 41, '2021-03-20', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1075, 41, '2021-03-20', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1076, 41, '2021-03-20', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1077, 41, '2021-03-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1078, 41, '2021-03-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1079, 41, '2021-03-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1080, 41, '2021-03-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1081, 41, '2021-03-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1082, 41, '2021-03-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1083, 41, '2021-03-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1084, 41, '2021-03-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1085, 41, '2021-03-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1086, 41, '2021-03-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1087, 41, '2021-03-22', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (1088, 41, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1089, 41, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1090, 41, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1091, 41, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1092, 41, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1093, 41, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1094, 41, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1095, 41, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1096, 41, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1097, 41, '2021-03-23', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (1098, 41, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1099, 41, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1100, 41, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1101, 41, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1102, 41, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1103, 41, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1104, 41, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1105, 41, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1106, 41, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1107, 41, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1108, 41, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1109, 41, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1110, 41, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1111, 41, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1112, 41, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1113, 41, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1114, 41, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1115, 41, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1116, 41, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1117, 41, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1118, 41, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1119, 41, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1120, 41, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1121, 41, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1122, 41, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1123, 41, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1124, 41, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1125, 41, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1126, 41, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1127, 41, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1128, 41, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1129, 41, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1130, 41, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1131, 41, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1132, 41, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1133, 41, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1134, 41, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1135, 41, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1136, 41, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1137, 41, '2021-03-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1138, 41, '2021-03-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1139, 41, '2021-03-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1140, 41, '2021-03-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1141, 41, '2021-03-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1142, 41, '2021-03-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1143, 41, '2021-03-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1144, 41, '2021-03-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1145, 41, '2021-03-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1146, 41, '2021-03-27', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1147, 41, '2021-03-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1148, 41, '2021-03-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1149, 41, '2021-03-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1150, 41, '2021-03-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1151, 41, '2021-03-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1152, 41, '2021-03-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1153, 41, '2021-03-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1154, 41, '2021-03-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1155, 41, '2021-03-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1156, 41, '2021-03-28', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1157, 41, '2021-03-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1158, 41, '2021-03-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1159, 41, '2021-03-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1160, 41, '2021-03-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1161, 41, '2021-03-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1162, 41, '2021-03-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1163, 41, '2021-03-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1164, 41, '2021-03-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1165, 41, '2021-03-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1166, 41, '2021-03-29', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1167, 41, '2021-03-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1168, 41, '2021-03-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1169, 41, '2021-03-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1170, 41, '2021-03-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1171, 41, '2021-03-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1172, 41, '2021-03-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1173, 41, '2021-03-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1174, 41, '2021-03-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1175, 41, '2021-03-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1176, 41, '2021-03-30', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1177, 41, '2021-03-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1178, 41, '2021-03-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1179, 41, '2021-03-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1180, 41, '2021-03-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1181, 41, '2021-03-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1182, 41, '2021-03-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1183, 41, '2021-03-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1184, 41, '2021-03-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1185, 41, '2021-03-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1186, 41, '2021-03-31', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1187, 40, '2021-03-22', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (1188, 40, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1189, 40, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1190, 40, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1191, 40, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1192, 40, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1193, 40, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1194, 40, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1195, 40, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1196, 40, '2021-03-22', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1197, 40, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1198, 40, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1199, 40, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1200, 40, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1201, 40, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1202, 40, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1203, 40, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1204, 40, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1205, 40, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1206, 40, '2021-03-23', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1207, 40, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1208, 40, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1209, 40, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1210, 40, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1211, 40, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1212, 40, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1213, 40, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1214, 40, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1215, 40, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1216, 40, '2021-03-24', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1217, 40, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1218, 40, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1219, 40, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1220, 40, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1221, 40, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1222, 40, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1223, 40, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1224, 40, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1225, 40, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1226, 40, '2021-03-25', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1227, 40, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1228, 40, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1229, 40, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1230, 40, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1231, 40, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1232, 40, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1233, 40, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1234, 40, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1235, 40, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1236, 40, '2021-03-26', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1237, 40, '2021-03-22', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1238, 40, '2021-03-22', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1239, 40, '2021-03-22', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1240, 40, '2021-03-22', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1241, 40, '2021-03-22', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1242, 40, '2021-03-22', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1243, 40, '2021-03-22', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1244, 40, '2021-03-22', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1245, 40, '2021-03-22', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1246, 40, '2021-03-22', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1247, 40, '2021-03-22', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1248, 40, '2021-03-22', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1249, 40, '2021-03-22', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1250, 40, '2021-03-22', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1251, 40, '2021-03-22', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1252, 40, '2021-03-23', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1253, 40, '2021-03-23', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1254, 40, '2021-03-23', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1255, 40, '2021-03-23', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1256, 40, '2021-03-23', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1257, 40, '2021-03-23', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1258, 40, '2021-03-23', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1259, 40, '2021-03-23', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1260, 40, '2021-03-23', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1261, 40, '2021-03-23', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1262, 40, '2021-03-23', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1263, 40, '2021-03-23', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1264, 40, '2021-03-23', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1265, 40, '2021-03-23', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1266, 40, '2021-03-23', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1267, 40, '2021-03-24', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1268, 40, '2021-03-24', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1269, 40, '2021-03-24', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1270, 40, '2021-03-24', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1271, 40, '2021-03-24', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1272, 40, '2021-03-24', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1273, 40, '2021-03-24', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1274, 40, '2021-03-24', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1275, 40, '2021-03-24', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1276, 40, '2021-03-24', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1277, 40, '2021-03-24', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1278, 40, '2021-03-24', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1279, 40, '2021-03-24', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1280, 40, '2021-03-24', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1281, 40, '2021-03-24', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1282, 40, '2021-03-25', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1283, 40, '2021-03-25', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1284, 40, '2021-03-25', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1285, 40, '2021-03-25', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1286, 40, '2021-03-25', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1287, 40, '2021-03-25', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1288, 40, '2021-03-25', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1289, 40, '2021-03-25', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1290, 40, '2021-03-25', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1291, 40, '2021-03-25', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1292, 40, '2021-03-25', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1293, 40, '2021-03-25', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1294, 40, '2021-03-25', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1295, 40, '2021-03-25', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1296, 40, '2021-03-25', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1297, 40, '2021-03-26', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1298, 40, '2021-03-26', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1299, 40, '2021-03-26', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1300, 40, '2021-03-26', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1301, 40, '2021-03-26', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1302, 40, '2021-03-26', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1303, 40, '2021-03-26', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1304, 40, '2021-03-26', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1305, 40, '2021-03-26', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1306, 40, '2021-03-26', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1307, 40, '2021-03-26', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1308, 40, '2021-03-26', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1309, 40, '2021-03-26', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1310, 40, '2021-03-26', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (1311, 40, '2021-03-26', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19932, 49, '2021-04-01', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (19933, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19934, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19935, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19936, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19937, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19938, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19939, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19940, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19941, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19942, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19943, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19944, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19945, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19946, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19947, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19948, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19949, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19950, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19951, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19952, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19953, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19954, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19955, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19956, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19957, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19958, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19959, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19960, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19961, 49, '2021-04-01', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19962, 49, '2021-04-02', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (19963, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19964, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19965, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19966, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19967, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19968, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19969, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19970, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19971, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19972, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19973, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19974, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19975, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19976, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19977, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19978, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19979, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19980, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19981, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19982, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19983, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19984, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19985, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19986, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19987, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19988, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19989, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19990, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19991, 49, '2021-04-02', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19992, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19993, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19994, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19995, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19996, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19997, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19998, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (19999, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20000, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20001, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20002, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20003, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20004, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20005, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20006, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20007, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20008, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20009, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20010, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20011, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20012, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20013, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20014, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20015, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20016, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20017, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20018, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20019, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20020, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20021, 49, '2021-04-03', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20022, 52, '2021-04-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20023, 52, '2021-04-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20024, 52, '2021-04-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20025, 52, '2021-04-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20026, 52, '2021-04-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20027, 52, '2021-04-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20028, 52, '2021-04-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20029, 52, '2021-04-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20030, 52, '2021-04-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20031, 52, '2021-04-04', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20032, 52, '2021-04-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20033, 52, '2021-04-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20034, 52, '2021-04-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20035, 52, '2021-04-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20036, 52, '2021-04-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20037, 52, '2021-04-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20038, 52, '2021-04-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20039, 52, '2021-04-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20040, 52, '2021-04-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20041, 52, '2021-04-05', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20042, 52, '2021-04-17', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (20043, 52, '2021-04-17', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (20044, 52, '2021-04-17', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (20045, 52, '2021-04-17', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (20046, 52, '2021-04-17', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (20047, 52, '2021-04-17', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (20048, 52, '2021-04-17', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (20049, 52, '2021-04-17', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (20050, 52, '2021-04-17', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (20051, 52, '2021-04-17', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (20052, 52, '2021-04-18', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (20053, 52, '2021-04-18', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (20054, 52, '2021-04-18', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (20055, 52, '2021-04-18', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (20056, 52, '2021-04-18', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20057, 52, '2021-04-18', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20058, 52, '2021-04-18', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20059, 52, '2021-04-18', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20060, 52, '2021-04-18', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20061, 52, '2021-04-18', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20062, 49, '2021-05-15', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20063, 49, '2021-05-15', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20064, 49, '2021-05-15', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20065, 49, '2021-05-16', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20066, 49, '2021-05-16', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20067, 49, '2021-05-16', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20068, 49, '2021-05-17', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20069, 49, '2021-05-17', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20070, 49, '2021-05-17', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20071, 49, '2021-05-20', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (20072, 49, '2021-05-20', 'a', 1, '1.5');
INSERT INTO `doctorpb` VALUES (20073, 49, '2021-05-20', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20074, 49, '2021-05-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20075, 49, '2021-05-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20076, 49, '2021-05-21', 'a', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20077, 49, '2021-05-30', 'p', 1, '1.5');
INSERT INTO `doctorpb` VALUES (20078, 49, '2021-05-30', 'p', 0, '1.5');
INSERT INTO `doctorpb` VALUES (20079, 49, '2021-05-30', 'p', 0, '1.5');

-- ----------------------------
-- Table structure for doctorpj
-- ----------------------------
DROP TABLE IF EXISTS `doctorpj`;
CREATE TABLE `doctorpj`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `regid` int(0) NULL DEFAULT NULL,
  `doctorid` int(0) NULL DEFAULT NULL,
  `memberid` int(0) NULL DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `star` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of doctorpj
-- ----------------------------
INSERT INTO `doctorpj` VALUES (5, 74, 41, 45, '医术精湛', '2021-03-21 22:48:43', 5);
INSERT INTO `doctorpj` VALUES (6, 76, 41, 31, '再世华佗', '2021-03-21 22:48:43', 4);
INSERT INTO `doctorpj` VALUES (7, 78, 41, 33, '还行吧', '2021-03-21 22:48:43', 4);
INSERT INTO `doctorpj` VALUES (8, 80, 40, 46, '医者仁心', '2021-03-21 22:48:43', 5);
INSERT INTO `doctorpj` VALUES (9, 82, 40, 46, '好医生', '2021-03-21 22:48:43', 5);
INSERT INTO `doctorpj` VALUES (10, 83, 40, 46, '6666', '2021-03-21 22:48:43', 4);
INSERT INTO `doctorpj` VALUES (11, 86, 41, 47, '妙手回春', '2021-03-21 22:48:43', 5);
INSERT INTO `doctorpj` VALUES (12, 88, 41, 48, '技术非常好哦', '2021-03-22 23:23:53', 5);
INSERT INTO `doctorpj` VALUES (13, 89, 41, 48, '服务态度很好，很不错', '2021-03-22 23:28:40', 5);
INSERT INTO `doctorpj` VALUES (14, 90, 49, 51, '非常好', '2021-04-01 23:24:13', 5);
INSERT INTO `doctorpj` VALUES (16, 92, 52, 51, '123', '2021-04-14 16:19:56', 5);
INSERT INTO `doctorpj` VALUES (17, 104, 52, 51, '123', '2021-04-14 16:45:02', 5);

-- ----------------------------
-- Table structure for hospital
-- ----------------------------
DROP TABLE IF EXISTS `hospital`;
CREATE TABLE `hospital`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hospital
-- ----------------------------
INSERT INTO `hospital` VALUES (1, '<p style=\"color:#333333;font-family:&quot;font-size:16px;background-color:#FFFFFF;text-indent:2em;\">\n	<span>\n	<ul class=\"news_content\" id=\"divNewsContent\" style=\"font-size:16px;text-align:justify;font-family:微软雅黑;color:#222222;background-color:#F7F7F7;\">\n		<p style=\"text-indent:43px;\">\n			<span style=\"font-size:21px;font-family:仿宋_GB2312;\">郑州市中心医院始建于1954年，是一所集医疗、教学、科研、预防保健为一体的综合性三级甲等医院。其前身是由中央纺织工业部抽调上海华东纺织管理局所属医院优秀专家组建的河南纺织管理局联合医院，1996年获批成为三级甲等综合医院，2011年挂牌郑州大学附属郑州中心医院，2016年成立郑州市中心医院医疗集团。集团现拥有高级职称</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">453</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">人，博士硕士1</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">3</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">00余人。 &nbsp;</span>\n		</p>\n		<p style=\"text-indent:43px;\">\n			<span style=\"font-size:21px;font-family:仿宋_GB2312;\">医疗集团以桐柏路院区为核心，拥有高新院区、康复院区、豫欣院区、文化宫路院区（郑州市盆底功能障碍性疾病中心）</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">、</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">托管的郑州市中心医院新郑分院（新郑市公立人民医院）</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">及建设中的郑州市中心医院高新双湖院区</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">，绿东村社区卫生服务中心、郑州市五棉社区卫生服务站2家社区卫生服务中心（站），与郑州市骨科医院、河南电力医院、二七区马寨镇卫生院、中原区须水镇卫生院合作建设急救站，形成了集团化发展的分级诊疗体系。</span>\n		</p>\n		<p style=\"text-indent:43px;\">\n			<span style=\"font-size:21px;font-family:仿宋_GB2312;\">集团致力于传统医院管理模式的变革，以创新领跑“互联网</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">+医疗</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">”模式，实现</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">全流程“指尖上的医院”，构建起智慧医疗服务新模式。以技术为引领，</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">打造急危重症快速救治中心、日间手术中心、多学科诊疗模式、加速康复外科等特色医疗</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">服务，</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">持续提升患者就医获得感。</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">医院</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">胸痛中心荣获</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">“</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">中国胸痛中心年度质控金奖</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">”</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">；卒中中心荣获全国“示范高级卒中中心”、“五星高级卒中中心”荣誉，心衰中心成功通过认证成为中国心衰中心</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">，</span><span style=\"font-size:21px;font-family:仿宋_GB2312;background:#FFFFFF;\">牵头</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">成立</span><span style=\"font-size:21px;font-family:仿宋_GB2312;background:#FFFFFF;\">“中国心衰中心联盟河南省心衰中心联盟”</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">。</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">2019年，医院荣获国家卫健委首批加速康复外科骨科试点医院，被河南省卫健委授予“河南省创伤医学中心”。</span>\n		</p>\n		<p style=\"text-indent:43px;\">\n			<span style=\"font-size:21px;font-family:仿宋_GB2312;\">医疗集团是国家级药物临床试验机构，20个GCP临床专业通过资格认定；</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">拥有胸痛、卒中、心衰、高血压、房颤、心脏康复6个国家级诊疗中心；</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">；河南省医学重点学科4个：康复医学、重症医学、皮肤病学、心血管病学；河南省医学重点培育学科6个：产科学、耳鼻咽喉科学、普通外科学（乳腺外科）、呼吸病学、内分泌学、急诊医学；郑州市医学重点学科4个：骨外科学、妇科学、麻醉药理学、消化病学；郑州市医学重点培育学科9个：神经病学、口腔颌面外科学、心脏康复、老年医学、实验诊断学、肝胆胰外科学、生殖内分泌与遗传医学、超声诊断学、口腔修复；第五批河南省重点中医专科1个：中医康复科；郑州市第四批中医重点（特色）专科2个：中医老年病专科、康复科；</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">荣获创伤救治、危重孕产妇救治、肺结节诊疗、盆底功能障碍性疾病诊疗4个市级中心，郑州市日间手术管理质量控制中心、郑州市麻醉质量控制中心等9个医疗质量控制中心。</span>\n		</p>\n		<p style=\"text-indent:43px;\">\n			<span style=\"font-size:21px;font-family:仿宋_GB2312;\">医院</span><span style=\"font-size:21px;font-family:仿宋_GB2312;\">在“2019届省单医院100强”榜单中位列第13名，荣获2019届中国医院竞争力智慧院HIC300强。先后荣获“全国百姓放心示范医院”、 “全国人文爱心医院”、“全国最佳志愿服务组织”、“全国改善医疗服务示范医院”、“全国巾帼文明岗”、“中国最佳医院管理团队奖”、“中国医疗机构最佳雇主锐意进取奖”、“全国医院后勤保障与建设先进单位”、“河南省文明单位”、“河南省人民满意医院”、“河南省中原健康先锋岗”、“河南省文明服务先锋岗”、“河南省医院创新管理先进单位”等荣誉称号。</span>\n		</p>\n	</ul>\n</span>\n</p>\n<p style=\"text-indent:2em;\">\n	<br />\n</p>');

-- ----------------------------
-- Table structure for hospitalized
-- ----------------------------
DROP TABLE IF EXISTS `hospitalized`;
CREATE TABLE `hospitalized`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `registid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bednum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total` decimal(10, 2) NULL DEFAULT NULL,
  `yytotal` decimal(10, 2) NULL DEFAULT NULL,
  `projecttotal` decimal(10, 2) NULL DEFAULT NULL,
  `iscy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cysavetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tktotal` decimal(10, 2) NULL DEFAULT NULL,
  `bjtotal` decimal(10, 2) NULL DEFAULT NULL,
  `userid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hospitalized
-- ----------------------------

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `productid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` int(0) NULL DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES (27, '2', 3, 'in', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (28, '1', 2, 'in', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (29, '1', 1, 'in', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (30, '1', 3, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (31, '2', 2, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (32, '3', 10, 'in', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (33, '2', 10, 'in', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (34, '1', 10, 'in', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (35, '2', 2, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (36, '1', 1, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (37, '2', 2, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (38, '2', 2, 'in', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (39, '3', 5, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (40, '2', 2, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (41, '2', 2, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (42, '1', 2, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (43, '3', 1, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (44, '1', 1, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (45, '2', 2, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (46, '1', 2, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (47, '2', 1, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (48, '2', 1, 'out', '2021-03-21 22:48:53', '25', '0');
INSERT INTO `inventory` VALUES (49, '3', 1, 'out', '2021-03-21 22:48:53', '25', '0');
INSERT INTO `inventory` VALUES (50, '1', 1, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (51, '3', 1, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (52, '3', 1, 'out', '2021-03-21 22:48:53', '41', '0');
INSERT INTO `inventory` VALUES (53, '3', 1, 'out', '2021-03-21 22:48:53', '41', '0');
INSERT INTO `inventory` VALUES (54, '3', 10, 'in', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (55, '2', 100, 'in', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (56, '1', 100, 'in', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (57, '1', 2, 'out', '2021-03-21 22:48:53', '41', '0');
INSERT INTO `inventory` VALUES (58, '6', 100, 'in', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (59, '3', 100, 'in', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (60, '6', 1, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (61, '1', 2, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (62, '3', 2, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (63, '3', 1, 'out', '2021-03-21 22:48:53', '40', '0');
INSERT INTO `inventory` VALUES (64, '6', 1, 'out', '2021-03-21 22:48:53', '40', '0');
INSERT INTO `inventory` VALUES (65, '7', 1000, 'in', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (66, '7', 5, 'out', '2021-03-21 22:48:53', '16', '0');
INSERT INTO `inventory` VALUES (67, '7', 10, 'in', '2021-03-22 23:03:14', '16', '0');
INSERT INTO `inventory` VALUES (68, '7', 5, 'in', '2021-03-22 23:03:18', '16', '0');
INSERT INTO `inventory` VALUES (69, '6', 1, 'out', '2021-03-22 23:26:00', '41', '0');
INSERT INTO `inventory` VALUES (70, '7', 1, 'out', '2021-03-22 23:26:00', '41', '0');
INSERT INTO `inventory` VALUES (71, '2', 1, 'out', '2021-04-01 23:23:41', '49', '0');
INSERT INTO `inventory` VALUES (72, '1', 1, 'out', '2021-04-05 21:20:07', '49', '0');
INSERT INTO `inventory` VALUES (73, '7', 1, 'out', '2021-04-14 16:05:51', '52', '0');
INSERT INTO `inventory` VALUES (74, '7', 1, 'out', '2021-04-14 16:44:49', '52', '0');
INSERT INTO `inventory` VALUES (75, '6', 1, 'out', '2021-05-20 15:01:57', '49', '0');

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `memberid` int(0) NULL DEFAULT NULL,
  `doctorid` int(0) NULL DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `hfnote` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hftime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES (6, 28, 40, '2222222222222222', '没事放心没事放心没事放心', '2021-02-25 15:11:56', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (8, 28, 40, '234234', '没事放心', '2021-02-25 15:12:29', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (9, 28, 35, 'ffffffffffffff', '', '2021-02-25 15:12:46', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (10, 28, 40, 'aaaaaaaaaaaaa', '777777777777777', '2021-02-25 16:12:45', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (11, 28, 40, 'asdfasdf', '66666666', '2021-02-25 16:12:52', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (12, 28, 41, '你好美女医生', '哈哈', '2021-02-25 21:54:02', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (13, 28, 41, '真6', '3456345764578', '2021-02-25 21:55:33', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (14, 28, 41, '工工aaaa', '34563456', '2021-02-25 21:56:19', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (15, 28, 41, '111111111', '', '2021-02-25 22:05:23', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (16, 28, 41, '1231231', '45785678', '2021-02-25 22:05:40', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (17, 28, 41, '123123123', '43563456', '2021-02-25 22:05:42', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (18, 28, 41, '123123', '', '2021-02-25 22:05:57', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (19, 28, 41, 'werwerw', '523423', '2021-02-25 22:05:59', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (20, 28, 41, 'asdfasdf', '234', '2021-02-25 22:06:25', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (21, 28, 41, 'asdfasdf', '123', '2021-02-25 22:06:27', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (22, 28, 41, 'qqqqqqqqqqq', '', '2021-02-25 22:09:57', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (23, 28, 41, '123123', '', '2021-02-25 22:11:42', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (24, 28, 41, 'qeqweqweqwe', '', '2021-02-25 22:11:47', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (25, 28, 41, 'werwerwer', '', '2021-02-25 22:11:50', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (26, 28, 41, '123123', '', '2021-02-25 22:13:17', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (27, 28, 41, 'aaaaaaaaaa', '', '2021-02-25 22:13:38', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (28, 28, 41, 'dfasdf', '', '2021-02-25 22:13:40', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (29, 28, 41, 'aaaaaaaaaaaaaa', '', '2021-02-25 22:14:37', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (30, 28, 41, 'asdasda', '', '2021-02-25 22:23:23', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (31, 28, 41, 'asdasd', '', '2021-02-25 22:23:25', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (32, 28, 41, 'aaaaaaaaaaaaaaaaaaaa', '', '2021-02-25 22:23:53', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (33, 28, 41, 'asdfasdf', '', '2021-02-25 22:24:33', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (34, 28, 41, 'asdfasdf', '', '2021-02-25 22:24:37', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (35, 28, 41, 'asfasdf', '', '2021-02-25 22:24:40', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (36, 28, 41, 'asdfasdf', '', '2021-02-25 22:24:43', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (37, 28, 41, 'asdfaffffffffffffffff', '', '2021-02-25 22:24:46', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (38, 28, 41, 'aaaaaaaaaaaaaaaaaaaaa', '', '2021-02-25 22:24:48', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (39, 28, 41, 'asdfartw345t34t', '', '2021-02-25 22:24:50', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (40, 28, 41, 'sdfgdfgdfg', '', '2021-02-25 22:24:55', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (41, 28, 41, 'ggggggggggggggggggggggg', '45674567', '2021-02-25 22:24:59', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (42, 28, 41, 'ggggggggggggggggggggggggggggg', '36453456', '2021-02-25 22:25:02', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (43, 28, 41, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '54674567', '2021-02-25 22:25:05', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (44, 28, 41, 'aaaaaaaaaaaaa', '345345', '2021-02-25 22:25:57', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (45, 28, 41, 'aaaaaaaaaaaaaaaaaaaaaaaaaaa', '456456', '2021-02-25 22:25:59', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (46, 28, 41, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '23423', '2021-02-25 22:26:02', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (47, 28, 41, 'asdfasd', '12312', '2021-02-25 22:30:31', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (48, 28, 41, 'asdfasdf', '123', '2021-02-25 22:30:36', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (49, 28, 41, 'bbbbbbbbbb', '123', '2021-02-25 22:31:11', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (50, 28, 41, 'bbbbbbbbb', '123123', '2021-02-25 22:31:30', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (54, 28, 40, 'aaaaaaa', '', '2021-02-25 22:35:31', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (55, 28, 40, '111111111111', '', '2021-02-25 22:36:09', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (56, 28, 40, 'werwerw', '', '2021-02-25 22:36:12', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (57, 28, 39, 'qqqqqqq', '', '2021-02-25 22:36:21', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (58, 33, 41, 'ggggggggg', 'ertr', '2021-02-26 11:30:16', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (59, 46, 40, '你好美女', '有事说事', '2021-02-26 15:51:38', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (60, 47, 41, '你好，我找你有点事', '你说', '2021-03-13 23:08:06', '2021-03-21 22:49:00');
INSERT INTO `msg` VALUES (61, 48, 41, '为什么经常感觉肚子饿', '可能运动量太大了吧', '2021-03-22 22:54:30', '2021-03-22 22:55:54');
INSERT INTO `msg` VALUES (62, 51, 49, '你好', '132132312', '2021-04-01 23:06:31', '2021-04-14 16:07:30');
INSERT INTO `msg` VALUES (63, 51, 41, '12312', '', '2021-05-13 10:13:08', NULL);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '“119、120”携手，让您与平安相伴', '20210224164405674.jpg', '<ul class=\"news_content\" id=\"divNewsContent\" style=\"font-size:16px;text-align:justify;font-family:微软雅黑;color:#222222;background-color:#F7F7F7;\">\n	<p style=\"text-indent:50px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">202</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">1</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">年</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">2</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">月</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">24</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">日，在市卫健委、市紧急医疗救援中心</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">组织安排</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">下</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">，由郑州市中心医院急诊科承办的</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">第</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">154</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">期“全民急救技能培训</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">班”在</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">郑州市中原区消防救援大队</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">会议室开班，是</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">郑州市中心医院</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">急诊科</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">（</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">4号急救站</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">）新春牛年</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">举办的第</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">一</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">期</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">全民急救技能</span><span style=\"font-family:仿宋_GB2312;font-size:21px;background:#FFFFFF;\">培训。</span>\n	</p>\n	<p style=\"text-indent:49px;background:#FFFFFF;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">说起“</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">119</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">”，他们与“</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">120</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">”有着共同的使命与责任：救人于危，救患于急，同样都是生命的守护者，此次培训，急诊科高度重视，认真挑选</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">4位临床经验丰富的医护人员为消防战士带来了精心准备的急救课程，重点讲解了成人</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">心肺复苏</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">、</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">AED的使用、创伤急救等</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">相关知识</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">。理论授课部分，孙捷主任用通俗易懂的语言，对各个知识点深入浅出的剖析，结合实际操作，与大家积极互动，现场气氛活跃。</span>\n	</p>\n	<p style=\"text-indent:49px;background:#FFFFFF;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">理论授课后，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">学员们在</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">老师</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">的指导下</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，结合刚才所讲的知识进行心肺复苏实际操作，模拟胸外心脏按压和人工通气。老师认真教，学员认真学，“按压深度</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">5-6cm，频率100-120次/分……</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">”现场的消防战士用高于常人的素质很快就掌握了心肺复苏的要点。</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">整个过程大家情绪高涨，互动热烈，配合默契，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">态度</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">认真</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">达到了最佳的培训效果。</span>\n	</p>\n	<p style=\"text-indent:47px;background:#FFFFFF;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">最后，五位老师</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">按照考核标准对</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">所有</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">学员进行考核。</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">学员们沉着冷静，有条不紊，配合默契，最终以优异的成</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">绩取得</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">“郑州急救志愿者”</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">证书</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">。学员们表示会将今天的学习成果普及到实际生活和工作中，通过自己带动他人，使更多的人了解急救知识和技能。</span>\n	</p>\n	<p style=\"text-indent:49px;background:#FFFFFF;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">本次急救知识</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">普及</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">活动，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">使广大消防战士</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">提高了基本急救能力，增强了安全救助意识</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，在火场救援中为人民群众又多增添一份保障</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">。</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">“</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">119、120</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">”你我携手，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">科学有效施救，让生命</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">延续，</span><span style=\"font-family:仿宋_GB2312;color:#333333;font-size:21px;\">尽</span><span style=\"font-family:仿宋_GB2312;color:#333333;font-size:21px;\">我</span><span style=\"font-family:仿宋_GB2312;color:#333333;font-size:21px;\">所能,全力</span><span style=\"font-family:仿宋_GB2312;color:#333333;font-size:21px;\">救助他人！</span>\n	</p>\n</ul>', '2021-02-24 21:13:14', '1');
INSERT INTO `news` VALUES (2, '我院被评为2020年度郑州市卫生健康系统先进集体', '20210301152414317.png', '<ul class=\"news_content\" id=\"divNewsContent\" style=\"font-size:16px;text-align:justify;font-family:微软雅黑;color:#222222;background-color:#F7F7F7;\">\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-size:21px;font-family:仿宋_GB2312;\">2月26日，郑州市卫生健康工作会议顺利召开。会议回顾总结了2020年和“十三五”卫生健康工作，谋划“十四五”卫生健康事业改革发展，部署2021年重点工作。会前，河南省委常委、郑州市委书记徐立毅同志专门听取汇报，并对全市卫生健康工作作出重要批示。市卫生健康委党组书记、主任付桂荣在会上作工作报告。</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-size:21px;font-family:仿宋_GB2312;\">会议表彰了2020年度郑州市卫生健康系统先进集体及先进个人。我院荣获“2020年度郑州市卫生健康系统先进集体”，王雅莉、井海云、李学民被评为先进个人。党委副书记、院长连鸿凯代表医院作“智慧医疗”主题典型发言。</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-size:21px;font-family:仿宋_GB2312;\">付桂荣要求，2021年是“十四五”规划开局之年，是全面推进健康郑州建设、促进卫生健康事业高质量发展关键之年，要突出重点，精准发力，确保“十四五”规划顺利开局。要在疫情防控上发力，营造健康生活新环境；在公卫保障上发力，筑牢健康安全新防线；在健康促进上发力，打开健康郑州新局面；在深化医改上发力，打造便民惠民新优势；在优质高效上发力，推动医疗服务新提升；在基础建设上发力，夯实基层服务新底板；在传承创新上发力，促进中医药事业新发展；在完善体系上发力，迈出家庭发展新步伐；在综合治理上发力，展现卫健行业新面貌；在党的建设上发力，塑造忠诚担当新形象。要统筹力量，狠抓落实，推进卫生健康事业高质量发展。</span>\n	</p>\n</ul>', '2021-03-01 21:10:59', '1');
INSERT INTO `news` VALUES (3, '我院医联体郑州阳城医院签约及揭牌仪式顺利举行', '20210301152212502.jpg', '<ul class=\"news_content\" id=\"divNewsContent\" style=\"font-size:16px;text-align:justify;font-family:微软雅黑;color:#222222;background-color:#F7F7F7;\">\n	<p style=\"text-indent:43px;background:#FFFFFF;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">2月27日，郑州市中心医院医联体郑州阳城医院（原郑州市第十六人民医院）签约及揭牌仪式顺利举行。</span>\n	</p>\n	<p style=\"text-indent:43px;background:#FFFFFF;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">副院长李敏在致辞中表示</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">我院将秉承“共生、共管、共享、共荣”的医联体理念，为郑州阳城医院的高质量发展提供多渠道的学习交流平台，协助人才梯队培养，实施医疗资源下沉等全方位的支持。同时，我院将根据郑州阳城医院发展需求，选派优秀的专科团队，进行技术扶持和管理指导，提升郑州阳城医院诊疗服务能力和急危重症救治能力，指导医学中心建设和等级医院评审。希望帮扶专家团队发扬孺子牛、拓荒牛、老黄牛精神，脚踏实地的协助郑州阳城医院实现跨越式发展，更好的服务登封百姓！</span>\n	</p>\n	<p style=\"text-indent:43px;background:#FFFFFF;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">我院急诊科、重症医学科、妇产科、泌尿科等8个学科主任被聘为执行主任和特聘专家。</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">揭牌仪式后，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">我院专家团队为阳城医院医务人员及村医进行专题讲座。&nbsp;</span>\n	</p>\n</ul>', '2021-03-01 21:11:36', '1');
INSERT INTO `news` VALUES (4, '好消息！又一惠民政策落地，河南首位受益患者手术费用减少远超预期！还能报销！', '20210301085357680.jpg', '<ul class=\"news_content\" id=\"divNewsContent\" style=\"font-size:16px;text-align:justify;font-family:微软雅黑;color:#222222;background-color:#F7F7F7;\">\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">自从冠脉支架大幅降价之后</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">,</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">今天起又一项惠民措施&nbsp;落地——心梗患者使用的冠脉扩张球囊也大幅降价！河南首位受益患者节省费用近2万元</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">!</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">3月1日凌晨</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">,</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">郑州市中心医院急诊科接到一位胸痛患者。这位患者56岁，平时在家只要吃饱饭就会胸口疼，这次晚上吃的有点多，晚上睡觉时突然感觉胸部疼痛难忍、大汗淋漓，随即被家人送往郑州市中心医院急诊科。心电图显示为急性非ST段抬高型心肌梗死！</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">这种心梗发病急、致死率高，非常容易出现心脏破裂，必须争分夺秒进行冠脉介入治疗，打通闭塞血管！胸痛中心立即启动绿色通道，急行相关检查。介入二线值班主任医师刘新叶和副主任医师王瑾3分钟抵达导管室，立即进行介入手术！</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">造影显示患者右冠近段血管次全闭塞（几乎99%全部闭塞），必须先恢复血流，刘新叶和王瑾先用普通球囊将狭窄血管充分预扩张，但效果欠佳；又用双导丝球囊切割，帮助血管恢复血流，最后施行右冠闭塞病变药物球囊扩张成形术，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">整个过程非常顺利。从患者抵达医院到开通血管总共用时</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">34分钟！</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">术后造影显示，患者堵塞的血管瞬间通畅，胸痛症状也明显好转。</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">这次手术让患者和家人万万没想到的是，手术使用的冠脉扩张球囊的价格竟然低的远超预期！</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">按照降价前价格，使用的普通扩张球囊和药物扩张球囊</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">分别要支付</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">3480元/个和2.5万元/个，并且超出医保限价两万后，多出来的钱都需要患者自己支付。现在，患者仅需支付217元/个和1.2万元/个，完全进入医保统筹报销，省了近两万块！大大降低了患者经济负担，更让他们没想到的是自己竟然是河南省首位享受冠脉扩张球囊降价惠民政策的患者！</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">患者家属表示，真没想到，国家的惠民政策真是越来越好，老百姓看病不仅越来越方便，还越来越便宜，真好！</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">副院长赵智琛说，这次降价，冠脉扩张球囊的质量并没有因为价格而受到影响，生产厂家都是国内外的知名企业质量和原来一样杠杠滴！放心使用吧！</span>\n	</p>\n</ul>', '2021-03-01 21:12:05', '1');
INSERT INTO `news` VALUES (5, '我院医联体中牟分中心正式成立', '20210306114447716.jpg', '<ul class=\"news_content\" id=\"divNewsContent\" style=\"font-size:16px;text-align:justify;font-family:微软雅黑;color:#222222;background-color:#F7F7F7;\">\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">3月5日上午，郑州市中心医院医联体中牟分中心正式成立，中牟县人民医院总医院、中牟县雁鸣湖镇中心卫生院正式成为郑州市中心医院医联体成员单位。郑州市中心医院党委副书记、院长连鸿凯，副院长李敏；中牟县人民政府副县长屈连武；中牟县卫健委党组书记、主任姚国森；雁鸣湖镇镇长梁全峰；中牟县卫健委副主任魏国赋，副主任张富德；中牟县人民医院总医院院长白金娥等领导出席签约及揭牌仪式。</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">签约仪式上，郑州市中心医院党委副书记、院长连鸿凯表示，今天，在中牟县政府的大力支持下，中牟县卫健委与郑州市中心医院签署共建区域医疗联合体分中心协议，将进一步推进“健康郑州、健康中牟”建设，全面开启中心医院与中牟县医疗卫生事业的合作新局面，进一步探索“市联县，县带乡”的区域协同发展机制。下一步，我们将围绕资源共享、人才培养、诊疗技术、专科能力等领域开展深入交流合作；将协助医联体中牟分中心建设急危重症快速救治体系，实现分级诊疗，切实提升基层基本医疗服务水平和急危重症救治能力。</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">中牟县人民政府副县长屈连武表示，郑州市中心医院无论是医疗技术还是综合服务能力都走在全省前列。希望县人民医院、雁鸣湖镇中心卫生院成为郑州市中心医院的协作医院后，充分运用郑州市中心医院的教学、科研技术优势，不断提升自己的医疗技术水平和综合服务能力，为人民群众提供更加优质的医疗服务，带动全县基层卫生健康工作再上新台阶。</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">郑州市中心医院党委副书记、院长连鸿凯，中牟县人民政府副县长屈连武，中牟县卫健委党组书记、主任姚国森，雁鸣湖镇镇长梁全峰，中牟县人民医院总医院院长白金娥等领导共同为“郑州市中心医院区域医疗联合体中牟分中心”“郑州市中心医院区域医疗联合体成员单位”“郑州市中心医院医联体雁鸣湖医院”揭牌</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">。</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">郑州市中心医院妇产科主任王雅莉、肛肠外科主任侯超峰、疼痛科主任宋俊岭、神经内科二病区副主任徐国卫为中牟县雁鸣湖镇中心卫生院患者义诊。</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">今后，郑州市中心医院将继续坚持“基层首诊、双向转诊、上下联动、急慢分治”的原则，充分发挥公立医院的服务优势、技术优势、信誉优势，为推动全省卫生健康事业发展、健康中原做出更大的贡献。</span>\n	</p>\n</ul>', '2021-03-06 21:10:30', '1');
INSERT INTO `news` VALUES (6, '喜报！郑州市中心医院被确定为“国家级节约型公共机构示范单位”！', '20210311154411438.png', '<ul class=\"news_content\" id=\"divNewsContent\" style=\"font-size:16px;text-align:justify;font-family:微软雅黑;color:#222222;background-color:#F7F7F7;\">\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">近日，国家机关事务管理局、国家发展和改革委员会、财政部联合印发《关于公布2019-2020年节约型公共机构示范单位和能效领跑者名单的通知》（国管节能〔2020〕400号），确定郑州市中心医院为国家级节约型公共机构示范单位。河南省发布通报，对郑州市中心医院等单位进行通报表扬。</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\"></span>\n	</p>\n	<p style=\"text-align:center;\">\n		<img src=\"http://www.zzszxyy.com/upload_files/2021-03/20210311154532972.png\" title=\"QQ截图20210311152723.png\" alt=\"QQ截图20210311152723.png\" width=\"459\" height=\"296\" />\n	</p>\n	<p style=\"text-indent:44px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">近年来，郑州市中心医院高度重视节能降耗工作，院党委结合医疗诊疗实际情况，陆续开展了合同能源管理等一系列具有特色的节能工作。国家、省市节能降耗领导小组曾多次莅临郑州市中心医院医院参观指导，对医院的节能降耗工作给予了充分肯定。</span>\n	</p>\n	<p style=\"text-indent:44px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\"></span>\n	</p>\n	<p style=\"text-align:center;\">\n		<img src=\"http://www.zzszxyy.com/upload_files/2021-03/20210311154631379.png\" title=\"QQ截图20210311154401.png\" alt=\"QQ截图20210311154401.png\" />\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">医院在节约用电方面，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">主要通过三种方式进行：</span><strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">一是建设能耗监测系统</span></strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，通过医院信息化系统的能耗监测模块可以实时清晰地了解到各建筑能源资源的消耗情况，及时对能耗监测数据进行汇总、统计、对比、分析；</span><strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">二是照明系统节能改造</span></strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，统一更换LED灯具、声光双控雷达灯具等，耗电量小，光源稳定，又是“绿色照明光源”，潜移默化地改善了患者就医环境；</span><strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">三是分体空调集中管控</span></strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，集中管控系统由调控制器、集中控制器、监控中心三部分组成。采用电力线载波及微功率无线的双模技术实现对空调的统一配置,合理设置空调温度，科学管理空调运行。</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">在节约用水方面，主要通过两种方式进行：</span><strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">一是</span></strong><strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">中水回收利用，</span></strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">通过对医疗废水进行污水处理、中水处理等一系列处理后生成中水，用于医院内楼宇冲厕、院区景观喷泉；</span><strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">二是应用节水型器具，</span></strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">通过安装感应式、延时式、刷卡式等器具，既提供适合的稳定水流，又高效节水并提高用水舒适度。</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">在节约用热方面，</span><span style=\"font-family:楷体_GB2312;font-size:21px;\">主要通过三种方式进行：</span><strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">一是楼栋控制器实现热量按需的PLC自动化调控</span></strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，可同时对急诊楼、门诊楼、住院部等不同性质的楼栋进行分时分温控制，解决连续供热与分时供热共存的矛盾；</span><strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">二是平台远程监控</span></strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，换热站分布距离远近不一，热网平衡调控存在较大困难。通过远程集中调控，各楼栋热量按需求平衡调整,管理人员可在监控中心接监控、调节；</span><strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">三是用热终端通过室内温度实时监控热计量调控实现节能，</span></strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">室内温度无线采集器能有效检测供暖区域楼宇内的实时室温，为调整供暖负荷提供依据。</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<strong><span style=\"font-family:仿宋_GB2312;font-size:21px;\">通过2017年开始连续四年的数据对比，郑州市中心医院综合能耗下降了10.6%；人均能耗下降了12.8%；万元收入能耗支出占比为下降了20%，较好地达到了“开源节流、控制成本”的效果。</span></strong>\n	</p>\n	<p style=\"text-indent:44px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">今后，郑州市中心医院将会充分发挥示范作用，积极投身公共机构能源资源节约和环保活动，以生态文明建设为统领，以降耗</span><span style=\"font-family:宋体;font-size:21px;\">増</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">效为目标，持续提高节能管理规范化、标准化、精细化、信息化水平，积极为生态郑州贡献新的力量。</span>\n	</p>\n</ul>', '2021-03-11 21:08:37', '1');
INSERT INTO `news` VALUES (7, '月经为什么会提前 6招调理月经不调', '2eb7bee3-f0c6-4a3e-ad99-3710570a0bb7.jpg', '<p style=\"text-indent:2em;\">\n	女性如何调理月经不调？\n</p>\n<p style=\"text-indent:2em;\">\n	&emsp;&emsp;1、缓解精神压力\n</p>\n<p style=\"text-indent:2em;\">\n	&emsp;&emsp;缓解精神压力，可从事一些全身运动，如游泳，跑步，每周进行一至二次，每次30分钟。\n</p>\n<p style=\"text-indent:2em;\">\n	&emsp;&emsp;2、保持良好的生活习惯\n</p>\n<p style=\"text-indent:2em;\">\n	&emsp;&emsp;女性朋友要避免熬夜、过度劳累、生活不规律等，这些问题都会导致月经不调。因此，保持一个良好的生活习惯同样也很重要。\n</p>\n<p style=\"text-indent:2em;\">\n	&emsp;&emsp;3、注意卫生\n</p>\n<p style=\"text-indent:2em;\">\n	&emsp;&emsp;预防感染特别要注意外生殖器的卫生清洁，同时月经期绝对不能性交，注意保暖，避免寒冷刺激、避免过劳等，都可从一定程度上调理自身的健康。\n</p>\n<p style=\"text-indent:2em;\">\n	&emsp;&emsp;4、注意营养\n</p>\n<p style=\"text-indent:2em;\">\n	&emsp;&emsp;女性月经不调该怎么调理？多吃些营养丰富、容易消化的食物，以利于营养物质的补充，多饮水、多吃蔬菜，可以保持大便通畅，这样可有效调理女性的自身健康。\n</p>\n<p style=\"text-indent:2em;\">\n	&emsp;&emsp;5、保持精神愉快\n</p>\n<p style=\"text-indent:2em;\">\n	&emsp;&emsp;避免精神刺激和情绪波动，这也是月经不调的一种调理方法，部分女性在经期容易出现下腹发胀、腰酸、乳房胀痛、轻度腹泻、容易疲倦、嗜睡、情绪不稳定、易怒或易忧郁等症状，这只是精神紧张的表现。\n</p>\n<div>\n</div>\n<p style=\"text-indent:2em;\">\n	&emsp;&emsp;6、做好饮食调理\n</p>\n<p style=\"text-indent:2em;\">\n	&emsp;&emsp;月经来潮的前一周的饮食宜清淡，易消化，富营养，可以多吃豆类，鱼类等高蛋白食物，从而可缓解月经不调的病症。\n</p>\n<p style=\"text-indent:2em;\">\n	&emsp;&emsp;由于女性在月经期会损失一部分血液，因此要多补充一些含蛋白及铁钾钠钙镁的食物，如肉、动物肝、蛋、奶等。除食物补充外，也可以通过口服补铁制剂进行补铁补血，不仅对于女性贫血有作用，对女性气色等方面也有很好的改善。\n</p>', '2021-03-21 22:49:10', '2');
INSERT INTO `news` VALUES (8, '第四届郑州市盆底疾病研修班暨女性盆腔疼痛研讨会圆满举行', '20210331152013419.png', '<p>\n	<ul class=\"news_content\" id=\"divNewsContent\" style=\"font-size:16px;text-align:justify;font-family:微软雅黑;color:#222222;background-color:#F7F7F7;\">\n		<p style=\"text-indent:32px;\">\n			<span style=\"font-family:宋体;line-height:24px;\"><span style=\"font-family:Calibri;\">2021</span>年<span style=\"font-family:Calibri;\">3</span>月<span style=\"font-family:Calibri;\">27</span>日</span><span style=\"font-family:宋体;line-height:24px;\">，</span><span style=\"font-family:宋体;line-height:24px;\">由郑州大学附属郑州中心医院主办的商都医学论坛<span style=\"font-family:Calibri;\">--</span>第四届郑州市盆底疾病研修班暨女性盆腔疼痛研讨会圆满落下帷幕。本次会议以“多学科跨界整合、全方位整体康复”为主题，聚焦盆底疾病，融合多个学科，线上线下同时进行。此次培训班分为理论课、手术视频演示、实操培训<span style=\"font-family:Calibri;\">3</span>部分，内容涉及妇产科、肛肠科、泌尿科、等多个盆底亚专业，多维度探讨盆腔疼痛，不仅有专家现场手术视频演示，更有盆底、骨盆手法评估，特色技术肌筋膜手法，骨盆手法矫正<span style=\"font-family:Calibri;\">+</span>运动悬吊等实操培训。精彩的授课吸引线上观看人员达<span style=\"font-family:Calibri;\">8.62</span>万人。</span>\n		</p>\n		<p style=\"text-indent:32px;\">\n			<span style=\"font-family:宋体;line-height:24px;\">本次会议不仅有我院肛肠科、妇科、泌尿科等多位专家现场授课，还荣幸的邀请到了暨南大学附属第一医院罗新教授、暨南大学附属第一医院季菲教授以及欧洲生物反馈协会王芳教授等，为大家带来精彩的演讲及手术展示。</span>\n		</p>\n		<p style=\"text-indent:32px;\">\n			<span style=\"font-family:宋体;line-height:24px;\">会议聚焦盆底疾病，融合多个学科，</span><span style=\"font-family:宋体;line-height:24px;\">专家教授们带来了国内外临床和科研的前沿成果，独特的临床见解，特殊疑难的病例分析，完美绝伦的手术技巧，</span><span style=\"font-family:宋体;line-height:24px;\">学术内容丰富、学术氛围浓厚，不同学术观点碰撞，涉及到盆底功能障碍性疾病的多个方面，给我们呈现了一场精彩绝伦的饕餮盛宴，</span><span style=\"font-family:宋体;line-height:24px;\">让参会的人员目不转睛，大呼过瘾。</span>\n		</p>\n		<p style=\"text-indent:32px;\">\n			<span style=\"font-family:宋体;line-height:24px;\">郑州市中心医院作为郑州市盆底功能障碍性疾病诊疗中心，致力于解决男性、女性盆底疾病。文化宫路院区，身先士卒，以“多学科融合为理念，保守与手术相结合为特色”全方位、一站式为您解决盆底困扰。</span>\n		</p>\n		<p style=\"text-indent:48px;\">\n			<span style=\"font-family:宋体;line-height:24px;\">打破女性传统思维，塑造完美女性，我们一直在路上！</span>\n		</p>\n	</ul>\n</p>\n<p style=\"text-indent:2em;\">\n	<br />\n</p>', '2021-03-31 22:49:10', '1');
INSERT INTO `news` VALUES (9, '在全国2413家三级公立医院考评中 我院年排名提升120名', '20210402144538368.png', '<p style=\"text-indent:2em;\">\n	<ul class=\"news_content\" id=\"divNewsContent\" style=\"font-size:16px;text-align:justify;font-family:微软雅黑;color:#222222;background-color:#F7F7F7;\">\n		<p style=\"text-indent:43px;background:#FFFFFF;\">\n			<span style=\"font-family:仿宋_GB2312;font-size:21px;\">近</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">日，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">国家卫健委公布了2019年度全国三级公立医院绩效考核国家监测指标考核结果。</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">郑州市中心医院在这次“国考”中表现优异排名跃升120名</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">。其中，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">科研经费总额全国排名176</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">跃升122名</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">；</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">四级手术全国排名203名</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">跃升24名</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">；</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">26项监测指标指标中</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，我</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">院有11项满分</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">！</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">这份成绩单来之不易</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">是医院综合实力的新跨越！</span>\n		</p>\n		<p style=\"text-indent:43px;background:#FFFFFF;\">\n			<span style=\"font-family:仿宋_GB2312;font-size:21px;\">此次考核从医疗质量、运营效率、持续发展、满意度评价四个维度，对全国2413家三级公立医院进行分类考核评价。可谓是一张权威性极高、综合型极强的“全国卷”。全国三级公立医院绩效考核是国家深化医改、推进医院高质量发展的一项重要制度安排，是检验区域医疗综合能力和水平的“金标准”“指挥棒”和“风向标”。</span>\n		</p>\n		<p style=\"text-indent:43px;background:#FFFFFF;\">\n			<span style=\"font-family:仿宋_GB2312;font-size:21px;\">近年来，郑州市中心医院以改革创新促发展提升，以务实重干开创佳绩，形成了持续向好的稳固发展态势，驶入高质量发展新阶段。船到中流</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">惟有奋楫争先才不惧风高浪急</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">；</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">人到半山</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">惟有激扬精神才能再攀高峰</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">。</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">我们将以坚如磐石的信心</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">只争朝夕的劲头</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">坚韧不拔的毅力</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">一步一个脚印把中心医院的事业推向前进</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">！</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">努力交出一份无愧于党</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">、</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">无愧于历史</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">、</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">无愧于时代</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">、</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">无愧于中心医院的出新出彩的“中心医院答卷”</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">！</span>\n		</p>\n	</ul>\n</p>\n<p style=\"text-indent:2em;\">\n	<br />\n</p>', '2021-04-02 22:49:10', '1');
INSERT INTO `news` VALUES (10, '再获殊荣！又一次成为您的“最满意医院”！', '20210403105918323.png', '<ul class=\"news_content\" id=\"divNewsContent\" style=\"font-size:16px;text-align:justify;font-family:微软雅黑;color:#222222;background-color:#F7F7F7;\">\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">4月2日，河南省卫健委召开2021年全省卫生健康系统党风廉政暨行风建设工作会。</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">本次会议，郑州大学附属郑州中心医院被授予&nbsp;“2019-2020年度河南省群众满意医院”</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">党委副书记、院长连鸿凯代表医院上台领奖</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">。</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">高新院区院长刘寒松被评为“第二届医德医风模范”。中心医院连续多年获此殊荣，这个奖牌包含着老百姓对我们的认可，鞭策着医院要时刻为百姓做事，做“郑州市民自己的医院”！</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">郑州大学附属郑州中心医院以保障人民健康为出发点，以提高群众就医获得感为宗旨，以“简便廉验”为准则，强化医德医风建设和行业自律，致力于建设全国优质医院、全国价值医疗典范医院、研究型大学附属医院。</span>\n	</p>\n	<p style=\"text-indent:43px;\">\n		<span style=\"font-family:仿宋_GB2312;font-size:21px;\">郑州大学附属郑州中心医院始终秉承“病人的需要是第一位的”服务理念</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">不断探索以患者为中心的医疗服务新模式</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">为患者量身打造更舒适的互联网就医体验</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">，</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">做真正“郑州市民自己的医院”</span><span style=\"font-family:仿宋_GB2312;font-size:21px;\">！</span>\n	</p>\n</ul>', '2021-04-03 21:03:45', '1');

-- ----------------------------
-- Table structure for office
-- ----------------------------
DROP TABLE IF EXISTS `office`;
CREATE TABLE `office`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `delstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of office
-- ----------------------------
INSERT INTO `office` VALUES (2, '妇产科', '妇科开放床位20张，拥有美国进口的宫腔镜、超声刀、德国进口腹腔镜两台、英国进口的等离子手术刀、彩色B超、具有混切混凝电凝多功能的LEEP刀、绿光过滤的阴道镜、海扶刀(高强度聚焦超声)、法国进口盆底功能障碍治疗仪等世界一流的设备仪器。拥有主任医师3人，副主任医师5人，硕士4人。妇科下设4个专科：妇科生殖健康与计划生育专科、妇科感染专科、生殖内分泌与不孕不育专科、妇科肿瘤专科，更年期门诊。\n	产科病区现有床位15张，目前产科病区设生理产科及病理产科两个专科，拥有一支专业化的医疗团队，其中主任医师4人，副主任医师6人，硕士4人，临床经验丰富，医术精湛，开展孕早期致畸病原检查、孕中晚期三維彩超监测胎儿生长发育、产前常规筛查及无创DNA筛查、妊娠期糖尿病高血压筛查、胎膜早破筛查、设有高危妊娠门诊及一对一助产士咨询门诊、定期举办孕妇学校，开展分娩镇痛、同时购进导乐分娩仪，为分娩的产妇降低疼痛提供选择。\n	门诊位置：门诊二楼\n	病房位置：诚信楼5楼', '0', '分娩、产检');
INSERT INTO `office` VALUES (3, '普外科', '普外科一病区(肝胆胰胃肠外科)为院级重点专科，现有床位55张，即将扩张为75张，现有医师17人，其中主任医师3人，副主任医师4人，特聘武汉大学医学院、湖北中医药大学、武汉科技大学教授、副教授多人，硕士学历医师15人。多人在省市级医学会任职常委及委员。\n	该科现分5个专业组，能开展普外科各种复杂的高难度手术:\n	1.肝胆胰专业组：擅长肝脏、胆道、胰腺良恶性肿瘤以及胆石症、胰腺炎的外科诊治，已经成熟开展腹腔镜下肝切除术、腹腔镜下胆总管切开取石术、腹腔镜下脾脏切除术、腹腔镜下胰腺以及脾脏联合切除术、腹腔镜下胆囊切除。可开展三镜联合治疗胆石症，在复杂的胆道结石的手术治疗、胆道镜治疗、胰十二指肠切除术等高难度手术，以及对于肝脏肿瘤和胃肠道肿瘤的一期联合切除方面有丰富临床经验，且已经达到国内领先水平，对门脉高压断流，脾脏切除手术也有独到之处。\n	2.胃肠专业组：擅长胃肠道良恶性肿瘤的微创治疗，已经成熟开展腹腔镜下全胃或部分胃切除术、腹腔镜下结直肠癌根治术，是省内率先开展无切口的完全腹腔镜下胃肠手术的胃肠外科之一。我科开展腹腔镜袖状胃减重手术多例，取得了很好的控制血糖、减轻体重的效果。\n	3.腹壁疝专业组：擅长各种腹壁疝的外科诊治，成熟开展腹部疝的各种手术方式，包括传统开放式手术方式以及腹腔镜下各种疝修补术均已成熟开展，特别是腹腔镜下疝手术，术后的住院时间不超过3天，得到广大患者好评。同时在造口旁疝以及切口疝方面也有丰富临床经验。\n	4.肛肠外科组：擅长内痔、外痔、混合痔、肛周脓肿、复杂型肛瘘的微创治疗，以及藏毛窦的切除，术后复发少，特别是其微创治疗技术已经达到国内领先水平。\n	5.基础外科组：擅长开展腹腔镜下阑尾切除术、静脉曲张手术、各种软组织疾病及皮肤包块、囊肿手术。特别对于上述疾病的微创治疗经验丰富。\n	该科护理单元是医院第一批优质护理服务试点科室，其服务宗旨是：为患者提供如家的温馨服务。科室开展的PICC(经外周静脉穿刺置入中心静脉导管术)、植入式静脉输液港等技术，为肿瘤化疗患者带来便利，改善了治疗问题，提升了就医体验。为住院患者送节日祝福，设计术后病人专用病员服，对输液港、PICC、造口病人进行定期的出院延伸服务等人性化新服务、新举措，得到了患者的一致好评。肝胆胃肠外科具有优良的传统，以大爱无边的中山精神，做到合理治疗合理检查合理用药，让每位患者满意是我们的宗旨。\n	门诊位置：门诊一楼\n	病房位置：诚信楼8楼', '0', '血糖高、咳嗽、流鼻涕');
INSERT INTO `office` VALUES (4, '神经内科', '神经内科一病区是湖北省级重点临床专科，也是医院的重点专科，同时也是湖北省脑卒中筛查及干预基地、湖北省脑卒中诊疗中心、国家高级卒中中心、国家GCP基地、国家住培基地、湖北中医药大学及江汉大学硕士研究生培养点。\n	神经内科一病区包括普通门诊、专家门诊、住院病房、卒中单元、神经功能检查室、眼震图室、脑血管病介入中心及神经康复治疗室、血液稀释治疗室等。病区现开放床位63张，病房宽敞明亮、布局合理，现有医护人员30余名，其中主任医师3名、副主任医师2名、主治医师5名、主管及以上护师6名，其中拥有硕士及以上学位者10人。科室现拥有先进的美国GE核磁共振、美国GE Revolution256排CT、德国西门子及荷兰飞利浦大型C臂血管造影机、视频眼震电图、经颅多普勒(TCD)、24小时脑电监测系统等先进设备，拥有全方位的神经系统运动、语言、吞咽等康复器材。我病区能进行脑血管病、各种头痛头晕、帕金森病、癫痫、睡眠障碍、中枢神经系统感染、痴呆及认知功能障碍等神经系统疾病的诊治，同时外聘武汉协和医院神经内科孙圣刚教授、北京宣武医院神经介入科焦力群教授为我科客座教授，能对神经系统各种疑难杂症进行诊断及治疗。\n	科室以诊治脑血管病为特色，率先在湖北地区开展缺血性脑血管病的动静脉溶栓治疗，有专为急性脑卒中病人开放的绿色通道，秉承“时间就是大脑，时间就是生命”的理念，实行先救治后付费的治疗模式，为广大急性脑卒中患者争取了宝贵的治疗时间，DNT时间(从患者入院至溶栓药物输注体内所需时间)平均20分钟左右，在省内乃至全国名列前茅;我科为最早在省内开展急性大血管闭塞性脑梗死机械取栓治疗单位之一，能熟练掌握各种取栓技术，迄今已成功完成取栓手术数百台;同时我科还能进行各种颅内外血管成形术、血管内支架置入术等神经介入治疗，在缺血性脑血管病的诊断及介入治疗方面达到国内领先水平。\n	科室常年承担医院的临床、科研及教学任务，承办多个国家级及省级继续教育项目，共承担了科技部863重点项目、十一五科技攻关项目及省市级科研课题多项，发病各类论文数百篇。\n	门诊位置：门诊二楼神经内科诊室。\n	病房位置：博爱楼四楼', '0', '头晕、眩晕');
INSERT INTO `office` VALUES (6, '口腔科', '湖北省第三人民医院口腔科成立迄今已有近60年历史，1989年曾被授予“武汉市口腔疾病防治中心”称号，分设口内、口外、口修、口腔正畸、口腔种植等亚专业。全科设高档牙科综合治疗椅20台，并配有各种先进设备，如：全进口CBCT、全景机、牙片机、种植机、根管预备马达、超声根管治疗仪、根管测量仪、牙周治疗仪、牙齿美白仪、多功能洁牙机、热牙胶充填器、牙齿美白仪、高频电刀等，方便开展各类临床操作。\n	科室拥有一支高素质的专业人才队伍，结构及年龄梯队安排合理。科室员工共18人，其中医生14人，护士4人，现有副主任医师3人，主治医师7人，具硕士学位者8人。目前在湖北省及武汉市口腔医学会任理事各一人，在湖北省口腔专科委员会任专委委员2人。科室近5年来在各级专业杂志发表论文十余篇。本科室也是我院首批“国家级住院医师规范化培训基地”之一，目前在培医师20人。\n	本科室医师理论知识全面，临床经验丰富，操作技能熟练，密切关注本专业国内外的发展动态，积极开展并推广各项临床新技术、新业务，临床技术水平在省内处于领先地位，在武汉市内拥有较高声誉。\n	口腔内科特色治疗项目：擅长各类龋病、牙髓炎、根尖周炎、牙周疾病、牙外伤、四环素牙等牙体牙髓疾病的治疗，开设超声洁牙、喷砂洁牙、牙齿美白等项目，开展各种残冠、残根的保守治疗，后牙弯根、扁根的根管治疗、根管堵塞、根内异物的再治疗以及根管壁穿孔修补和各类根尖手术等。同时引进有全球先进的“一根锉”根管预备技术。\n	口腔修复科特色治疗项目：开展牙体缺损、残根、残冠的根管桩、全冠、桩核冠，固定桥以及各种可摘局部义齿、全口义齿修复等。目前重点开展人工种植牙的植入与修复新技术，科内引进多种全球先进种植系统，如韩国Dentium种植系统、法国Axiom种植系统及瑞士Straumann种植系统等，可开展较为复杂的种植病例设计与各类植骨手术，如上颌窦底提升、骨劈开等。配合先进的瓷贴面技术、全瓷修复技术，可为患者达成满意的修复效果。\n	口腔颌面外科特色治疗项目：开展牙槽外科、颌面感染、创伤等疾病的诊治，同时开设微创拔牙、无痛拔牙以及高频电刀手术等。\n	口腔正畸科特色治疗项目：开展各种固定矫治技术、功能矫治技术，以及无托槽隐形矫治技术、舌侧矫治技术等，可进行各类青少年及成人错合矫治、各种疑难错合畸形及睡眠呼吸暂停综合征的治疗等。科内已引进全球领先的“隐适美隐形矫正技术”，以适应人民群众日益增长的爱美需求。\n	门诊时间：日常应诊', '0', '牙疼、坏疼');
INSERT INTO `office` VALUES (7, '新生儿科', '<p style=\"text-indent:2em;\">\n	新生儿科现开放床位30张，设有新生儿重症监护室及独立的生命岛。现有主任医师1人，副主任医师2人，主治医师2人，住院医师5人，硕士以上6人。拥有现代化的医疗设备，如：层流洁净病房、全套德国进口Drager吊塔、小儿CPAP System、常频和高频呼吸机、多参数生命监护仪、远红外辐射抢救台、LED光疗仪、微量输液泵、经皮测胆红素仪、氧浓度监测仪、经皮氧分压二氧化碳分压监测仪，床旁微量血气、CRP、PCT及血糖监测仪等，配备有美国GE核磁共振仪、美国GE Revolution CT、床旁X线、床旁心脏超声及头颅超声等辅助诊疗手段。特设24小时急救转运电话、转运救护车等，为高危新生儿的急救转运开辟了一条快捷、安全、便利的绿色生命通道。&nbsp;\n</p>\n<p style=\"text-indent:2em;\">\n	门诊位置：门诊一楼&nbsp;\n</p>\n<p style=\"text-indent:2em;\">\n	&nbsp;病房位置：博爱楼6楼\n</p>', '0', '黄疸高');
INSERT INTO `office` VALUES (8, '神经康复科', '<p style=\"text-indent:2em;\">\n	神经康复科是将现代康复医学与传统医学治疗相结合的具有中国特色的康复专科，采用PT(物理疗法)、OT(作业疗法)、ST(言语疗法)疗法结合中医针灸、推拿、中草药内服外用等疗法针对脑卒中后遗症、脊髓损伤、颈肩腰腿痛、骨折术后、骨关节功能障碍及各类运动损伤进行科学有效的康复治疗训练。\n	科室坚持“人人有亮点，科室有特色”学科发展规划开展专科建设。以学科带头人为核心，重视人才培养和引进，形成了临床经验丰富的康复医师及康复治疗师队伍，科室现有医务人员14名，其中教授，主任医师1人, 主治医师4人,主管以上技师3人，医师、治疗师共6人，督促科室人员及时了解康复领域的最新进展，提升了科室人员的学术水平，为创建学习型以及研究型科室打下了良好的基础。\n	科室特色与优势\n	对于中风患者，改善住院中风患者的医疗管理模式、提高疗效的系统，由神经、康复科医生和专职PT(运动治疗)师，OT(作业治疗)师，ST(语言治疗)师，心理医师，专业护理人员等组成一个有机整体，对每位患者进行系统的康复评定，制定科学的康复训练计划，再运用国际上先进的各种仪器设备，为中风患者提供肢体运动康复，语言认知康复，药物治疗，心理康复和健康教育，并早期进行康复干预，有效缩短疗程，提高疗效，促使患者早日回归家庭和社会。&nbsp;\n</p>\n<p style=\"text-indent:2em;\">\n	&nbsp;科室特色诊疗项目\n	（1）康复评定：运动功能评定Brunnstrom分期，MMT、ROM步态分析ADL、ASW，认知能力检测，语言交流测定等。\n	(2)现代康复治疗技术：\n	1.物理疗法(PT)：神经发育技术NDP、关节松动术、步态及平 衡功能训练，下肢康复机器人训练。\n	2.作业疗法(OT)：包括手功能训练、心理治疗、职业训练及日 常生活训练等方面的作业疗法，。\n	3.语言吞咽治疗(ST)：对失语、构音吞咽障碍吞咽的患者进行训练，电治疗。\n	4.心理治疗：对心理，精神，情绪和行为有异常患者进行个别或集体心理调整或治疗。\n	5.康复护理：如体位处理、心理支持、膀胱护理、肠道护理。\n	6.康复工程：利用矫形器、假肢及辅助器械等以补偿生活能力。\n	(3)物理因子器械治疗：治疗各种炎症、疼痛、痉挛、瘢痕、伤口及创面处理，疗效显著。\n	(4)传统康复疗法：应用“整体观念，形神一体，调整阴阳，以平为期”的中医理念使用中医治疗。开展项目：针刺、手法、中药熏洗(熏蒸)、药浴、灸疗、刮痧疗法、拔罐疗法、腧穴药物敷贴、针刀、膏摩、穴位注射、牵引、埋线、刺络放血。&nbsp;\n</p>\n<p style=\"text-indent:2em;\">\n	&nbsp;科室医疗服务的范围及主要病种\n	神经康复：脑卒中、颅脑外伤、脊髓损伤、周围神经损伤、面神经炎(面瘫)，颅脑病损的运动障碍、感觉障碍、言语障碍、吞咽障碍、认知障碍、二便障碍、心肺功能障碍、睡眠障碍等。\n	骨科康复：颈椎病、腰椎病、肩周炎、软组织损伤、骨折术后功能障碍及各类运动损伤等。\n	其他：糖尿病康复，运动健康促进等。\n</p>', '0', '中风康复，脑卒中康复');
INSERT INTO `office` VALUES (9, '眼科', '<p style=\"text-indent:2em;\">\n	<span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span>\n</p>\n<p style=\"text-indent:2em;\">\n	<span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><span>眼科简介</span><br />\n</span>\n</p>', '0', '近视眼、斜眼、红眼病');
INSERT INTO `office` VALUES (10, '112', '123', '1', '3123');
INSERT INTO `office` VALUES (11, '测试22', '测试测试测试测试', '1', '测试测试');

-- ----------------------------
-- Table structure for place
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of place
-- ----------------------------
INSERT INTO `place` VALUES (1, '2', '1');
INSERT INTO `place` VALUES (2, '产地一', '0');
INSERT INTO `place` VALUES (3, '产地二', '0');
INSERT INTO `place` VALUES (4, '产地三', '0');

-- ----------------------------
-- Table structure for prescription
-- ----------------------------
DROP TABLE IF EXISTS `prescription`;
CREATE TABLE `prescription`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `ddno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `registid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doctorid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ishj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isqy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prescription
-- ----------------------------
INSERT INTO `prescription` VALUES (1, '348817', '73', '41', '2021-03-21 22:49:21', 'yes', 'no');
INSERT INTO `prescription` VALUES (2, '383922', '74', '41', '2021-03-21 22:49:21', 'yes', 'yes');
INSERT INTO `prescription` VALUES (3, '684062', '75', '41', '2021-03-21 22:49:21', 'yes', 'no');
INSERT INTO `prescription` VALUES (4, '785340', '76', '41', '2021-03-21 22:49:21', 'yes', 'no');
INSERT INTO `prescription` VALUES (5, '414479', '72', '25', '2021-03-21 22:49:21', 'yes', 'no');
INSERT INTO `prescription` VALUES (6, '687209', '77', '41', '2021-03-21 22:49:21', 'yes', 'no');
INSERT INTO `prescription` VALUES (7, '707581', '78', '41', '2021-03-21 22:49:21', 'yes', 'yes');
INSERT INTO `prescription` VALUES (8, '576884', '80', '40', '2021-03-21 22:49:21', 'yes', 'yes');
INSERT INTO `prescription` VALUES (9, '085543', '82', '40', '2021-03-21 22:49:21', 'yes', 'yes');
INSERT INTO `prescription` VALUES (10, '207181', '83', '40', '2021-03-21 22:49:21', 'yes', 'yes');
INSERT INTO `prescription` VALUES (11, '247083', '85', '41', '2021-03-21 22:49:21', 'yes', 'no');
INSERT INTO `prescription` VALUES (12, '545109', '86', '41', '2021-03-21 22:49:21', 'yes', 'yes');
INSERT INTO `prescription` VALUES (13, '521432', '88', '41', '2021-03-22 23:22:22', 'yes', 'yes');
INSERT INTO `prescription` VALUES (14, '953861', '89', '41', '2021-03-22 23:24:40', 'yes', 'no');
INSERT INTO `prescription` VALUES (16, '577845', '94', '52', '2021-04-14 15:53:23', 'yes', 'yes');
INSERT INTO `prescription` VALUES (18, '725449', '106', '49', '2021-05-19 16:10:21', 'yes', 'yes');
INSERT INTO `prescription` VALUES (19, '522424', '107', '49', '2021-05-20 15:05:26', 'yes', 'no');
INSERT INTO `prescription` VALUES (20, '163618', '108', '49', '2021-05-30 12:28:26', 'yes', 'no');

-- ----------------------------
-- Table structure for prescriptionmsg
-- ----------------------------
DROP TABLE IF EXISTS `prescriptionmsg`;
CREATE TABLE `prescriptionmsg`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `ddno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` int(0) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prescriptionmsg
-- ----------------------------
INSERT INTO `prescriptionmsg` VALUES (1, '348817', '3', 1, 15.00);
INSERT INTO `prescriptionmsg` VALUES (2, '383922', '1', 2, 52.00);
INSERT INTO `prescriptionmsg` VALUES (3, '684062', '3', 1, 15.00);
INSERT INTO `prescriptionmsg` VALUES (4, '785340', '3', 1, 15.00);
INSERT INTO `prescriptionmsg` VALUES (5, '414479', '2', 2, 20.00);
INSERT INTO `prescriptionmsg` VALUES (6, '687209', '2', 1, 10.00);
INSERT INTO `prescriptionmsg` VALUES (7, '707581', '1', 1, 26.00);
INSERT INTO `prescriptionmsg` VALUES (8, '576884', '3', 2, 30.00);
INSERT INTO `prescriptionmsg` VALUES (9, '085543', '1', 2, 52.00);
INSERT INTO `prescriptionmsg` VALUES (10, '207181', '6', 1, 30.00);
INSERT INTO `prescriptionmsg` VALUES (11, '247083', '6', 1, 30.00);
INSERT INTO `prescriptionmsg` VALUES (12, '545109', '7', 5, 150.00);
INSERT INTO `prescriptionmsg` VALUES (13, '521432', '7', 1, 30.00);
INSERT INTO `prescriptionmsg` VALUES (14, '521432', '6', 1, 30.00);
INSERT INTO `prescriptionmsg` VALUES (15, '953861', '7', 2, 60.00);
INSERT INTO `prescriptionmsg` VALUES (16, '953861', '6', 2, 60.00);
INSERT INTO `prescriptionmsg` VALUES (17, '953861', '3', 3, 45.00);
INSERT INTO `prescriptionmsg` VALUES (21, '680310', '2', 1, 10.00);
INSERT INTO `prescriptionmsg` VALUES (22, '577845', '7', 1, 30.00);
INSERT INTO `prescriptionmsg` VALUES (23, '094444', '7', 1, 30.00);
INSERT INTO `prescriptionmsg` VALUES (24, '725449', '6', 1, 30.00);
INSERT INTO `prescriptionmsg` VALUES (25, '522424', '7', 1, 30.00);
INSERT INTO `prescriptionmsg` VALUES (26, '163618', '7', 1, 30.00);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `costprice` decimal(10, 2) NULL DEFAULT NULL,
  `saleprice` decimal(10, 2) NULL DEFAULT NULL,
  `supplier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `categoryid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '双黄连口服液', 20.00, 26.00, '哈药集团三精制药有限公司', '中国大陆', '4', '0', '盒');
INSERT INTO `product` VALUES (2, '金嗓子', 9.00, 10.00, '广西金嗓子有限责任公司', '广西金嗓子有限责任公司', '4', '0', '瓶');
INSERT INTO `product` VALUES (3, '三九感冒灵颗粒', 12.00, 15.00, '华润三九医药股份有限公司委托惠州市九惠制药股份有限公司生产', '惠州市', '3', '0', '盒');
INSERT INTO `product` VALUES (4, '1', 1.00, 1.00, '1', '1', '3', '1', '1');
INSERT INTO `product` VALUES (5, '感冒灵颗粒', 11.00, 12.00, '11', '11', '4', '1', '盒');
INSERT INTO `product` VALUES (6, '莲花清瘟颗粒', 20.00, 30.00, '白云山制药厂', '广州', '5', '0', '盒');
INSERT INTO `product` VALUES (7, '妈咪爱', 20.00, 30.00, '妈咪爱公司', '山东', '5', '0', '盒');
INSERT INTO `product` VALUES (8, '测试11333', 300.00, 500.00, '北京共赢', '北京', '5', '1', '11*22');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `delstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES (2, 'CT', '次', 300.00, '0');
INSERT INTO `project` VALUES (3, '螺旋CT', '次', 500.00, '0');
INSERT INTO `project` VALUES (4, '心脏手术', '次', 1000.00, '0');
INSERT INTO `project` VALUES (5, '2', '12', 12.00, '1');
INSERT INTO `project` VALUES (6, '1', '1', 1.00, '1');
INSERT INTO `project` VALUES (7, '核酸检查', '次', 80.00, '0');
INSERT INTO `project` VALUES (8, '胸部正则位', '次', 300.00, '0');
INSERT INTO `project` VALUES (9, '血常规', '次', 58.00, '0');
INSERT INTO `project` VALUES (10, '测试1133', '个', 100.00, '1');

-- ----------------------------
-- Table structure for projectjc
-- ----------------------------
DROP TABLE IF EXISTS `projectjc`;
CREATE TABLE `projectjc`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `ddno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `registid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `doctorid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ishj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of projectjc
-- ----------------------------
INSERT INTO `projectjc` VALUES (1, '348817', '73', '41', '2021-03-21 22:49:37', 'yes');
INSERT INTO `projectjc` VALUES (2, '383922', '74', '41', '2021-03-21 22:49:37', 'yes');
INSERT INTO `projectjc` VALUES (3, '684062', '75', '41', '2021-03-21 22:49:37', 'no');
INSERT INTO `projectjc` VALUES (4, '687209', '77', '41', '2021-03-21 22:49:37', 'yes');
INSERT INTO `projectjc` VALUES (5, '576884', '80', '40', '2021-03-21 22:49:37', 'yes');
INSERT INTO `projectjc` VALUES (6, '085543', '82', '40', '2021-03-21 22:49:37', 'yes');
INSERT INTO `projectjc` VALUES (7, '247083', '85', '41', '2021-03-21 22:49:37', 'yes');
INSERT INTO `projectjc` VALUES (8, '545109', '86', '41', '2021-03-21 22:49:37', 'yes');
INSERT INTO `projectjc` VALUES (9, '953861', '89', '41', '2021-03-22 23:26:50', 'yes');
INSERT INTO `projectjc` VALUES (10, '680310', '90', '49', '2021-04-01 23:22:34', 'yes');
INSERT INTO `projectjc` VALUES (11, '094444', '92', '52', '2021-04-14 16:05:19', 'yes');
INSERT INTO `projectjc` VALUES (12, '577845', '94', '52', '2021-04-14 16:43:24', 'yes');
INSERT INTO `projectjc` VALUES (13, '725449', '106', '49', '2021-05-19 16:10:34', 'no');
INSERT INTO `projectjc` VALUES (14, '522424', '107', '49', '2021-05-20 15:06:35', 'no');
INSERT INTO `projectjc` VALUES (15, '163618', '108', '49', '2021-05-30 12:28:34', 'no');

-- ----------------------------
-- Table structure for projectjcmsg
-- ----------------------------
DROP TABLE IF EXISTS `projectjcmsg`;
CREATE TABLE `projectjcmsg`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `ddno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `projectid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` int(0) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of projectjcmsg
-- ----------------------------
INSERT INTO `projectjcmsg` VALUES (1, '348817', '4', 1, 1000.00, '阴性');
INSERT INTO `projectjcmsg` VALUES (2, '383922', '7', 1, 80.00, '阴性');
INSERT INTO `projectjcmsg` VALUES (4, '687209', '7', 1, 80.00, '阴性');
INSERT INTO `projectjcmsg` VALUES (5, '576884', '7', 1, 80.00, '阴性');
INSERT INTO `projectjcmsg` VALUES (6, '085543', '7', 1, 80.00, '阴性');
INSERT INTO `projectjcmsg` VALUES (7, '085543', '2', 1, 300.00, '没什么事，注意饮食');
INSERT INTO `projectjcmsg` VALUES (8, '247083', '8', 1, 300.00, '没什么事，注意饮食');
INSERT INTO `projectjcmsg` VALUES (9, '545109', '9', 1, 58.00, '正常');
INSERT INTO `projectjcmsg` VALUES (10, '953861', '9', 1, 58.00, '');
INSERT INTO `projectjcmsg` VALUES (11, '953861', '8', 1, 300.00, '');
INSERT INTO `projectjcmsg` VALUES (12, '953861', '7', 1, 80.00, '');
INSERT INTO `projectjcmsg` VALUES (13, '953861', '4', 1, 1000.00, '');
INSERT INTO `projectjcmsg` VALUES (14, '953861', '2', 1, 300.00, '');
INSERT INTO `projectjcmsg` VALUES (15, '680310', '3', 1, 500.00, '');
INSERT INTO `projectjcmsg` VALUES (16, '094444', '9', 1, 58.00, '');
INSERT INTO `projectjcmsg` VALUES (17, '577845', '9', 1, 58.00, '很好');
INSERT INTO `projectjcmsg` VALUES (18, '725449', '9', 1, 58.00, '');
INSERT INTO `projectjcmsg` VALUES (19, '725449', '8', 1, 300.00, '');
INSERT INTO `projectjcmsg` VALUES (20, '522424', '9', 1, 58.00, '');
INSERT INTO `projectjcmsg` VALUES (21, '163618', '9', 1, 58.00, '');

-- ----------------------------
-- Table structure for registration
-- ----------------------------
DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `memberid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `officeid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `delstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ddno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `costtotal` decimal(10, 2) NULL DEFAULT NULL,
  `hyid` int(0) NULL DEFAULT NULL,
  `doctorid` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of registration
-- ----------------------------
INSERT INTO `registration` VALUES (72, '33', '4', 1.50, '1111', '0', '2021-03-21 22:49:48', '414479', NULL, 1.50, 687, 25);
INSERT INTO `registration` VALUES (73, '28', '7', 1.50, '你呵呵了', '0', '2021-03-21 22:49:48', '348817', NULL, 1.50, 717, 41);
INSERT INTO `registration` VALUES (74, '45', '7', 1.50, '主诉:咳嗽三天，高烧一天，新冠待查', '0', '2021-03-21 22:49:48', '383922', '已完成', 1.50, 718, 41);
INSERT INTO `registration` VALUES (75, '31', '7', 1.50, '测试', '0', '2021-03-21 22:49:48', '684062', NULL, 1.50, 719, 41);
INSERT INTO `registration` VALUES (76, '31', '7', 1.50, '123123', '0', '2021-03-21 22:49:48', '785340', NULL, 16.50, 720, 41);
INSERT INTO `registration` VALUES (77, '33', '7', 1.50, '123123', '0', '2021-03-21 22:49:48', '687209', NULL, 1.50, 721, 41);
INSERT INTO `registration` VALUES (78, '33', '7', 1.50, '123123123123', '0', '2021-03-21 22:49:48', '707581', '已完成', 1.50, 722, 41);
INSERT INTO `registration` VALUES (79, '31', '7', 1.50, NULL, '0', '2021-03-21 22:49:48', '371865', NULL, 1.50, 723, 41);
INSERT INTO `registration` VALUES (80, '46', '2', 1.50, '患者主诉：发热一周、无力\n诊断：新冠待查', '0', '2021-03-21 22:49:48', '576884', '已完成', 1.50, 737, 40);
INSERT INTO `registration` VALUES (81, '46', '2', 1.50, NULL, '0', '2021-03-21 22:49:48', '733212', NULL, 1.50, 738, 40);
INSERT INTO `registration` VALUES (82, '46', '2', 1.50, '患者主诉：发烧一周，无力\n诊断：新冠待查', '0', '2021-03-21 22:49:48', '085543', '已完成', 1.50, 767, 40);
INSERT INTO `registration` VALUES (83, '46', '2', 1.50, 'asdf', '0', '2021-03-21 22:49:48', '207181', '已完成', 1.50, 797, 40);
INSERT INTO `registration` VALUES (84, '46', '7', 1.50, NULL, '0', '2021-03-21 22:49:48', '601533', NULL, 1.50, 757, 41);
INSERT INTO `registration` VALUES (85, '28', '7', 1.50, '指定是有精神病', '0', '2021-03-21 22:49:48', '247083', NULL, 1.50, 1027, 41);
INSERT INTO `registration` VALUES (86, '47', '7', 1.50, '主诉：患儿黄疸指数高10天', '0', '2021-03-21 22:49:48', '545109', '已完成', 1.50, 1037, 41);
INSERT INTO `registration` VALUES (87, '48', '2', 1.50, NULL, '0', '2021-03-22 23:21:17', '895163', NULL, 1.50, 1187, 40);
INSERT INTO `registration` VALUES (88, '48', '7', 1.50, '拉肚子', '0', '2021-03-22 23:21:30', '521432', '已完成', 61.50, 1097, 41);
INSERT INTO `registration` VALUES (89, '48', '7', 1.50, '头疼', '0', '2021-03-22 23:24:12', '953861', NULL, 1904.50, 1087, 41);
INSERT INTO `registration` VALUES (90, '51', '9', 1.50, '眼睛有问题', '1', '2021-04-01 23:15:46', '680310', '已完成', 511.50, 19932, 49);
INSERT INTO `registration` VALUES (91, '51', '9', 1.50, NULL, '1', '2021-04-01 23:27:38', '895023', NULL, 1.50, 19962, 49);
INSERT INTO `registration` VALUES (92, '51', '9', 1.50, '123', '0', '2021-04-14 15:25:08', '094444', '已完成', 89.50, 20042, 52);
INSERT INTO `registration` VALUES (93, '51', '9', 1.50, NULL, '0', '2021-04-14 15:45:43', '774924', NULL, 1.50, 20043, 52);
INSERT INTO `registration` VALUES (94, '53', '9', 1.50, '1211', '0', '2021-04-14 15:51:19', '577845', '已完成', 89.50, 20044, 52);
INSERT INTO `registration` VALUES (95, '53', '9', 1.50, NULL, '0', '2021-04-14 16:00:31', '717520', NULL, 1.50, 20045, 52);
INSERT INTO `registration` VALUES (96, '53', '9', 1.50, NULL, '0', '2021-04-14 16:00:38', '663999', NULL, 1.50, 20046, 52);
INSERT INTO `registration` VALUES (97, '53', '9', 1.50, NULL, '0', '2021-04-14 16:01:40', '677944', NULL, 1.50, 20047, 52);
INSERT INTO `registration` VALUES (98, '53', '9', 1.50, NULL, '0', '2021-04-14 16:01:46', '478981', NULL, 1.50, 20048, 52);
INSERT INTO `registration` VALUES (99, '53', '9', 1.50, NULL, '0', '2021-04-14 16:01:50', '969796', NULL, 1.50, 20049, 52);
INSERT INTO `registration` VALUES (100, '53', '9', 1.50, NULL, '0', '2021-04-14 16:01:54', '833156', NULL, 1.50, 20050, 52);
INSERT INTO `registration` VALUES (101, '53', '9', 1.50, NULL, '0', '2021-04-14 16:01:58', '054665', NULL, 1.50, 20051, 52);
INSERT INTO `registration` VALUES (102, '51', '9', 1.50, NULL, '0', '2021-04-14 16:08:23', '958599', NULL, 1.50, 20052, 52);
INSERT INTO `registration` VALUES (103, '51', '9', 1.50, NULL, '0', '2021-04-14 16:19:31', '317205', NULL, 1.50, 20053, 52);
INSERT INTO `registration` VALUES (104, '51', '9', 1.50, NULL, '0', '2021-04-14 16:26:08', '466668', NULL, 1.50, 20054, 52);
INSERT INTO `registration` VALUES (105, '51', '9', 1.50, NULL, '0', '2021-04-14 16:42:48', '883291', NULL, 1.50, 20055, 52);
INSERT INTO `registration` VALUES (106, '51', '9', 1.50, '有病', '1', '2021-05-19 16:09:28', '725449', '已完成', 31.50, 20071, 49);
INSERT INTO `registration` VALUES (107, '51', '9', 1.50, '123', '1', '2021-05-20 15:02:53', '522424', NULL, 31.50, 20072, 49);
INSERT INTO `registration` VALUES (108, '48', '9', 1.50, '眼神不好 ', '0', '2021-05-30 12:26:39', '163618', NULL, 31.50, 20077, 49);

-- ----------------------------
-- Table structure for sysuser
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userpwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `usertype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `officeid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES (10, 'jack', '123', '医生', '赵医生', '男', '25', '', '', '0', '2021-03-21 22:50:00', '1542424540986.jpg', '3', '伤风感冒，咳嗽');
INSERT INTO `sysuser` VALUES (12, 'calivn', '123', '医生', '凯尔文', '女', '24', '', '', '0', '2021-03-21 22:50:00', '1542467548925.jpg', '2', '痛经，不孕不育');
INSERT INTO `sysuser` VALUES (16, 'admin', '123', '管理员', 'admin', '女', '21', '176', '56', '0', '2021-03-21 22:50:00', '1601963599359.jpg', NULL, NULL);
INSERT INTO `sysuser` VALUES (25, 'ding', '123', '医生', '丁国华', '男', '23', NULL, NULL, '0', '2021-03-21 22:50:00', '1601554644742.jpg', '4', '高血压，脑卒中');
INSERT INTO `sysuser` VALUES (28, 'H001', '123', '患者', '王国强', '男', '32', '13188888866', '422001198812125558', '1', '2021-03-21 22:50:00', '72e9a6d8-ee03-4c4b-aaca-41d735d006f7.jpg', NULL, NULL);
INSERT INTO `sysuser` VALUES (31, 'H002', '123', '患者', '刘小丽', '女', '21', '13766551122', '422429198502013212', '0', '2021-03-21 22:50:00', '1602160034684.jpg', NULL, NULL);
INSERT INTO `sysuser` VALUES (32, 'H003', '123', '患者', '周华', '男', '45', '13600998811', '422429198502013211', '0', '2021-03-21 22:50:00', '1602160069716.jpg', NULL, NULL);
INSERT INTO `sysuser` VALUES (33, 'H004', '123', '患者', '肖华', '男', '33', '13588777331', '422429198502013211', '0', '2021-03-21 22:50:00', '1602160099330.jpg', NULL, NULL);
INSERT INTO `sysuser` VALUES (34, 'D001', '123', '医生', '胡医生', '男', '35', NULL, NULL, '0', '2021-03-21 22:50:00', '1611555070130.jpg', '8', '术后康复');
INSERT INTO `sysuser` VALUES (35, 'D002', '123', '医生', '刘医生', '女', '30', NULL, NULL, '0', '2021-03-21 22:50:00', '1611555117014.tiankong.com_0w_v0_QJ6891792272.jpg&refer=http___dpic.tiankong.jpg', '7', '接生');
INSERT INTO `sysuser` VALUES (36, 'D003', '123', '医生', 'JACK医生', '男', '32', NULL, NULL, '0', '2021-03-21 22:50:00', '1611555167099.jpg', '6', '各种牙齿问题');
INSERT INTO `sysuser` VALUES (37, 'D004', '123', '医生', '徐医生', '男', '40', NULL, NULL, '0', '2021-03-21 22:50:00', '1611555214130.juimg.com_tuku_yulantu_110404_1305-11040404164969.jpg&refer=http___img.juimg.jpg', '3', '各种普外科的病');
INSERT INTO `sysuser` VALUES (38, 'D005', '123', '医生', '陈医生', '男', '33', NULL, NULL, '0', '2021-03-21 22:50:00', '1611555307424.prnasia.com_media_files_static_2019_03_201903211731_283b604d.jpg&refer=http___photos.prnasia.jpg', '4', '专科各种慢病');
INSERT INTO `sysuser` VALUES (39, 'D006', '123', '医生', '詹姆斯', '男', '45', NULL, NULL, '0', '2021-03-21 22:50:00', '1611555417862.tiankong.com_50_99_QJ8592708120.jpg&refer=http___dpic.tiankong.jpg', '9', '飞秒手术');
INSERT INTO `sysuser` VALUES (40, 'D007', '123', '医生', '刘小苗', '女', '28', NULL, NULL, '0', '2021-03-21 22:50:00', '1611555479940.pclady.com.cn_pclady_1510_09_1371365_yuyang.jpg&refer=http___img0.pclady.com.jpg', '2', '月经不调');
INSERT INTO `sysuser` VALUES (41, 'D008', '123', '医生', '张小菲', '女', '29', NULL, NULL, '0', '2021-03-21 22:50:00', '1611555524816.jpg', '7', '新生儿各种病');
INSERT INTO `sysuser` VALUES (45, 'xiaomi', '123', '患者', '小米', '男', '28', '15985423698', '400222199910109874', '0', '2021-03-21 22:50:00', 'c1621ea9-88f2-49b9-8019-e17ce955ffe1.jpg', NULL, NULL);
INSERT INTO `sysuser` VALUES (46, 'dy', '123', '患者', '丁爷', '男', '35', '13598542111', '400185198810107894', '0', '2021-03-21 22:50:00', 'bcf0dc76-4bc3-4332-b708-5f14e5988059.jpg', NULL, NULL);
INSERT INTO `sysuser` VALUES (47, 'H005', '123', '患者', '刘美丽', '女', '21', '15598541259', '521001200001012598', '0', '2021-03-21 22:50:00', 'd2c87cb9-4ece-4424-99e2-52f36c1d0f94.jpg', NULL, NULL);
INSERT INTO `sysuser` VALUES (48, 'st0322', '111111', '患者', '张三', '男', '21', '13211111111', '350512878898988', '0', '2021-03-22 22:53:47', '2b77bf7e-5159-47e0-98e5-4cdd991f530c.jpg', NULL, NULL);
INSERT INTO `sysuser` VALUES (49, 'D0322', '123', '医生', '石头', '男', '38', NULL, NULL, '0', '2021-03-22 22:58:42', '1616425109477.jpg', '9', '手术');
INSERT INTO `sysuser` VALUES (50, 'test0322', '111111', '患者', '陈三', '男', '22', '13555555555', '350521657576566756', '0', '2021-03-22 22:59:38', '1616425162637.jpg', NULL, NULL);
INSERT INTO `sysuser` VALUES (51, 'jiong312857', 'q123456', '患者', '耿嘉程', '男', '21', '15690660506', '410302199907161010', '0', '2021-04-01 23:05:05', 'cf3fde8e-f863-4f8c-b979-2bc1df68c3bd.jpg', NULL, NULL);
INSERT INTO `sysuser` VALUES (52, 'gjc', '123', '医生', '耿嘉程', '男', '22', NULL, NULL, '1', '2021-04-14 15:23:57', '1618385022082.jpg', '9', '眼科手术');
INSERT INTO `sysuser` VALUES (53, '123333', '123', '患者', 'gjc', '男', '21', '15690660506', '410302199907111111', '0', '2021-04-14 15:50:40', '98dcf0e9-3d3e-46a1-ab53-f2b83ed05330.jpg', NULL, NULL);
INSERT INTO `sysuser` VALUES (54, '123331', '123', '患者', '111', '男', '21', '15690660506', '410302199907161010', '0', '2021-04-14 16:35:55', '7dc75676-b911-431c-8e7e-bc7119111455.jpg', NULL, NULL);
INSERT INTO `sysuser` VALUES (55, '11111', '111', '患者', '123', '男', '11', '1', '1', '1', '2021-05-21 08:09:18', '1621555752828.jpg', NULL, NULL);

-- ----------------------------
-- Table structure for userdrug
-- ----------------------------
DROP TABLE IF EXISTS `userdrug`;
CREATE TABLE `userdrug`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `hospitalizedid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` int(0) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userdrug
-- ----------------------------
INSERT INTO `userdrug` VALUES (32, '10', '2', 2, 20.40, '2021-03-21 22:50:09');
INSERT INTO `userdrug` VALUES (33, '10', '1', 3, 79.50, '2021-03-21 22:50:09');
INSERT INTO `userdrug` VALUES (34, '11', '2', 2, 20.40, '2021-03-21 22:50:09');
INSERT INTO `userdrug` VALUES (35, '11', '1', 3, 79.50, '2021-03-21 22:50:09');
INSERT INTO `userdrug` VALUES (36, '12', '2', 2, 20.40, '2021-03-21 22:50:09');
INSERT INTO `userdrug` VALUES (37, '15', '2', 2, 20.00, '2021-03-21 22:50:09');
INSERT INTO `userdrug` VALUES (39, '15', '3', 5, 75.00, '2021-03-21 22:50:09');
INSERT INTO `userdrug` VALUES (43, '17', '2', 2, 20.00, '2021-03-21 22:50:09');
INSERT INTO `userdrug` VALUES (44, '20', '2', 1, 10.00, '2021-03-21 22:50:09');
INSERT INTO `userdrug` VALUES (45, '20', '1', 2, 52.00, '2021-03-21 22:50:09');
INSERT INTO `userdrug` VALUES (46, '21', '3', 1, 15.00, '2021-03-21 22:50:09');
INSERT INTO `userdrug` VALUES (47, '21', '3', 1, 15.00, '2021-03-21 22:50:09');
INSERT INTO `userdrug` VALUES (48, '22', '6', 1, 30.00, '2021-03-21 22:50:09');
INSERT INTO `userdrug` VALUES (49, '22', '3', 1, 15.00, '2021-03-21 22:50:09');

-- ----------------------------
-- Table structure for userproject
-- ----------------------------
DROP TABLE IF EXISTS `userproject`;
CREATE TABLE `userproject`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `hospitalizedid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `projectid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `savetime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userproject
-- ----------------------------
INSERT INTO `userproject` VALUES (31, '7', '2', 300.00, '2021-03-21 22:50:14');
INSERT INTO `userproject` VALUES (32, '7', '3', 500.00, '2021-03-21 22:50:14');
INSERT INTO `userproject` VALUES (34, '12', '3', 500.00, '2021-03-21 22:50:14');
INSERT INTO `userproject` VALUES (35, '15', '4', 1000.00, '2021-03-21 22:50:14');
INSERT INTO `userproject` VALUES (36, '15', '2', 300.00, '2021-03-21 22:50:14');
INSERT INTO `userproject` VALUES (38, '16', '3', 500.00, '2021-03-21 22:50:14');
INSERT INTO `userproject` VALUES (39, '20', '2', 300.00, '2021-03-21 22:50:14');
INSERT INTO `userproject` VALUES (40, '21', '4', 1000.00, '2021-03-21 22:50:14');
INSERT INTO `userproject` VALUES (41, '21', '3', 500.00, '2021-03-21 22:50:14');
INSERT INTO `userproject` VALUES (42, '21', '2', 300.00, '2021-03-21 22:50:14');
INSERT INTO `userproject` VALUES (43, '22', '8', 300.00, '2021-03-21 22:50:14');
INSERT INTO `userproject` VALUES (44, '22', '3', 500.00, '2021-03-21 22:50:14');
INSERT INTO `userproject` VALUES (45, '22', '2', 300.00, '2021-03-21 22:50:14');

-- ----------------------------
-- Table structure for work
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `doctorid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mondaystr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tuesdaystr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wednesdaystr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thursdaystr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fridaystr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `saturdaystr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sundaystr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of work
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
