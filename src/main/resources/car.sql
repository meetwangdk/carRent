/*
 Navicat MySQL Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50536
 Source Host           : localhost:3306
 Source Schema         : car

 Target Server Type    : MySQL
 Target Server Version : 50536
 File Encoding         : 65001

 Date: 27/03/2021 23:16:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bus_car
-- ----------------------------
DROP TABLE IF EXISTS `bus_car`;
CREATE TABLE `bus_car`  (
  `carnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cartype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `rentprice` double(10, 2) NULL DEFAULT NULL,
  `deposit` double NULL DEFAULT NULL,
  `isrenting` int(11) NULL DEFAULT NULL COMMENT '车辆出租状态 0表示未出租，1表示已出租',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`carnumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of bus_car
-- ----------------------------
INSERT INTO `bus_car` VALUES ('豫88888', '婚礼头车', '酒红色', 999999.00, 999.00, 9999, 0, '就问酒红色，你上不上瘾。', '2021-03-26/202103261719317633329.jpg', '2021-03-26 17:20:41');
INSERT INTO `bus_car` VALUES ('豫G11111', '礼炮车', '红色', 50000.00, 200.00, 500, 0, '婚礼中的礼炮车，采用12支炮管。', '2021-03-26/202103261707432962972.jpg', '2021-03-26 17:08:35');
INSERT INTO `bus_car` VALUES ('豫G11411', '婚礼头车', '黑色', 90000.00, 600.00, 666, 0, '倍棒的玛莎卡', '2021-03-26/202103261712225133533.jpg', '2021-03-26 17:14:15');
INSERT INTO `bus_car` VALUES ('豫G12121', '礼炮车', '褐色', 60000.00, 500.00, 600, 0, '车辆倍棒，声音倍响', '2021-03-26/202103261710462546520.jpg', '2021-03-26 17:11:29');
INSERT INTO `bus_car` VALUES ('豫G12333', '礼炮车', '红色', 15615.00, 15616.00, 5616, 0, '就问吉普带劲不？听好的', '2021-03-26/202103261717437329581.jpg', '2021-03-26 17:18:17');
INSERT INTO `bus_car` VALUES ('豫G13131', '礼炮车', '黑色', 65000.00, 1000.00, 1500, 0, '倍大气！！！！', '2021-03-26/202103261711369896168.jpg', '2021-03-26 17:12:16');
INSERT INTO `bus_car` VALUES ('豫G22222', '礼炮车', '军绿色', 60000.00, 300.00, 500, 0, '时代的楷模，婚礼的象征。', '2021-03-26/202103261708591028181.jpg', '2021-03-26 17:09:54');
INSERT INTO `bus_car` VALUES ('豫G32131', '大巴', '红色', 100000.00, 500.00, 2000, 1, '大巴能做的人巨多', '2021-03-26/202103261834555026533.jpg', '2021-03-26 18:35:28');
INSERT INTO `bus_car` VALUES ('豫G33333', '礼炮车', '红色', 6000.00, 300.00, 400, 0, '红色礼炮车肯定喜庆啊', '2021-03-26/202103261710153485333.jpg', '2021-03-26 17:10:40');
INSERT INTO `bus_car` VALUES ('豫G45682', '婚礼头车', '黑色', 789456.00, 456.00, 4562, 0, '看着挺舒服的，不知您老怎么看？', '2021-03-26/202103261716000318189.jpg', '2021-03-26 17:16:39');
INSERT INTO `bus_car` VALUES ('豫G57892', '礼炮车', '土豪金', 84561.00, 156.00, 1515, 0, '豪就完事了！！！', '2021-03-26/202103261718264266761.jpg', '2021-03-26 17:19:26');
INSERT INTO `bus_car` VALUES ('豫G75236', '大巴', '土豪金', 7894565.00, 1475.00, 1236, 0, '挺豪', '2021-03-26/202103261837175636836.jpg', '2021-03-26 18:38:28');
INSERT INTO `bus_car` VALUES ('豫G76489', '大巴', '红色', 3212121.00, 2345.00, 1234, 1, '双层挺好O', '2021-03-26/202103261838481179684.jpg', '2021-03-26 18:40:20');
INSERT INTO `bus_car` VALUES ('豫G78987', '礼炮车', '迷彩色', 78978.00, 789.00, 789, 0, '车辆倍棒，看着倍爽。', '2021-03-26/202103261714217973904.jpg', '2021-03-26 17:15:07');
INSERT INTO `bus_car` VALUES ('豫G94638', '大巴', '红色', 798494.00, 5611.00, 5556, 1, '挺好哦', '2021-03-26/202103261836398897148.jpg', '2021-03-26 18:37:13');
INSERT INTO `bus_car` VALUES ('豫G95135', '大巴', '粉色', 80000.00, 1500.00, 16166, 1, '自我感觉挺划算的！！！', '2021-03-26/202103261836047825077.jpg', '2021-03-26 18:36:35');
INSERT INTO `bus_car` VALUES ('豫G98732', '婚礼头车', '褐色', 777777.00, 777.00, 7777, 0, '就两个字大气！！！！完事', '2021-03-26/202103261717083246159.jpg', '2021-03-26 17:17:28');
INSERT INTO `bus_car` VALUES ('豫G98788', '礼炮车', '军绿色', 58997.00, 888.00, 888, 0, '看着就大气，慷慨大度，真男人', '2021-03-26/202103261715126862564.jpg', '2021-03-26 17:15:54');
INSERT INTO `bus_car` VALUES ('豫G99999', '婚礼头车', '黑色', 999999.00, 9999.00, 99999, 0, '太棒了太棒了！！！', '2021-03-26/202103261720457991144.jpg', '2021-03-26 17:21:27');

-- ----------------------------
-- Table structure for bus_check
-- ----------------------------
DROP TABLE IF EXISTS `bus_check`;
CREATE TABLE `bus_check`  (
  `checkid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `checkdate` datetime NULL DEFAULT NULL,
  `checkdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `problem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paymoney` double(255, 0) NULL DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`checkid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of bus_check
-- ----------------------------
INSERT INTO `bus_check` VALUES ('JC_20210327_101655_142_52930', '2021-03-27 10:16:55', '没啥问题昂。。', '没啥问题', 0, '管理员', 'CZ_20210327_100512_132_88809', '2021-03-27 10:17:12');

-- ----------------------------
-- Table structure for bus_customer
-- ----------------------------
DROP TABLE IF EXISTS `bus_customer`;
CREATE TABLE `bus_customer`  (
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
  `custname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` int(255) NULL DEFAULT NULL COMMENT '性别',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `career` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `createtime` datetime NULL DEFAULT NULL,
  `custvalue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`identity`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of bus_customer
-- ----------------------------
INSERT INTO `bus_customer` VALUES ('111', '王道科', 1, '河南新乡', '15236610873', 'java开发', '2021-01-21 11:27:13', '123456');
INSERT INTO `bus_customer` VALUES ('222', '王小宝', 1, '河南驻马店', '14445555555', '前端开发', '2021-02-02 11:27:53', '123456');
INSERT INTO `bus_customer` VALUES ('333', '陈鑫', 1, '河南南阳', '15236610876', 'java开发', '2021-02-03 11:28:22', '123456');
INSERT INTO `bus_customer` VALUES ('410721', 'wdk01', 1, 'heann nadf', '15236601010', '打球', '2021-03-17 19:35:00', '123456');
INSERT INTO `bus_customer` VALUES ('45464465', 'wewrwe', 1, 'werwerwer', '15236610873', '11561616', '2021-03-20 14:54:21', NULL);

-- ----------------------------
-- Table structure for bus_rent
-- ----------------------------
DROP TABLE IF EXISTS `bus_rent`;
CREATE TABLE `bus_rent`  (
  `rentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `begindate` datetime NULL DEFAULT NULL,
  `returndate` datetime NULL DEFAULT NULL,
  `rentflag` int(11) NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`rentid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of bus_rent
-- ----------------------------
INSERT INTO `bus_rent` VALUES ('CZ_20210327_100355_143_66570', 500.00, '2021-03-27 10:03:55', '2021-03-13 00:00:00', 0, '410721', '豫G32131', 'wdk01', '2021-03-27 10:04:22');
INSERT INTO `bus_rent` VALUES ('CZ_20210327_100359_991_90524', 2345.00, '2021-03-27 10:03:59', '2021-03-27 00:00:00', 0, '410721', '豫G76489', 'wdk01', '2021-03-27 10:04:22');
INSERT INTO `bus_rent` VALUES ('CZ_20210327_100404_776_56905', 1500.00, '2021-03-27 10:04:04', '2021-03-20 00:00:00', 0, '410721', '豫G95135', 'wdk01', '2021-03-27 10:04:22');
INSERT INTO `bus_rent` VALUES ('CZ_20210327_100512_132_88809', 1475.00, '2021-03-27 10:05:12', '2021-03-06 00:00:00', 1, '410721', '豫G75236', 'wdk01', '2021-03-27 10:07:47');
INSERT INTO `bus_rent` VALUES ('CZ_20210327_100733_946_87126', 5611.00, '2021-03-27 10:07:33', '2022-03-10 00:00:00', 0, '410721', '豫G94638', 'wdk01', '2021-03-27 10:07:47');

-- ----------------------------
-- Table structure for customer_bus_rent
-- ----------------------------
DROP TABLE IF EXISTS `customer_bus_rent`;
CREATE TABLE `customer_bus_rent`  (
  `rentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `begindate` datetime NULL DEFAULT NULL,
  `returndate` datetime NULL DEFAULT NULL,
  `rentflag` int(11) NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`rentid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of customer_bus_rent
-- ----------------------------

-- ----------------------------
-- Table structure for sys_log_login
-- ----------------------------
DROP TABLE IF EXISTS `sys_log_login`;
CREATE TABLE `sys_log_login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logintime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1066 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_log_login
-- ----------------------------
INSERT INTO `sys_log_login` VALUES (239, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 10:31:26');
INSERT INTO `sys_log_login` VALUES (240, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 10:35:57');
INSERT INTO `sys_log_login` VALUES (241, '王道科-wdk', '0:0:0:0:0:0:0:1', '2021-03-05 11:25:11');
INSERT INTO `sys_log_login` VALUES (242, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 12:41:46');
INSERT INTO `sys_log_login` VALUES (243, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 12:41:54');
INSERT INTO `sys_log_login` VALUES (244, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 12:42:11');
INSERT INTO `sys_log_login` VALUES (245, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 12:43:03');
INSERT INTO `sys_log_login` VALUES (246, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 12:43:54');
INSERT INTO `sys_log_login` VALUES (247, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 13:11:26');
INSERT INTO `sys_log_login` VALUES (248, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 13:44:03');
INSERT INTO `sys_log_login` VALUES (249, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 17:57:12');
INSERT INTO `sys_log_login` VALUES (250, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:11:47');
INSERT INTO `sys_log_login` VALUES (251, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:24:38');
INSERT INTO `sys_log_login` VALUES (252, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:24:53');
INSERT INTO `sys_log_login` VALUES (253, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:24:53');
INSERT INTO `sys_log_login` VALUES (254, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:24:54');
INSERT INTO `sys_log_login` VALUES (255, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:24:54');
INSERT INTO `sys_log_login` VALUES (256, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:24:55');
INSERT INTO `sys_log_login` VALUES (257, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:25:19');
INSERT INTO `sys_log_login` VALUES (258, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:25:20');
INSERT INTO `sys_log_login` VALUES (259, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:25:23');
INSERT INTO `sys_log_login` VALUES (260, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:25:23');
INSERT INTO `sys_log_login` VALUES (261, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:25:24');
INSERT INTO `sys_log_login` VALUES (262, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:25:31');
INSERT INTO `sys_log_login` VALUES (263, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:25:32');
INSERT INTO `sys_log_login` VALUES (264, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:25:33');
INSERT INTO `sys_log_login` VALUES (265, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:25:40');
INSERT INTO `sys_log_login` VALUES (266, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:25:41');
INSERT INTO `sys_log_login` VALUES (267, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:25:41');
INSERT INTO `sys_log_login` VALUES (268, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:27:18');
INSERT INTO `sys_log_login` VALUES (269, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:27:21');
INSERT INTO `sys_log_login` VALUES (270, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:27:21');
INSERT INTO `sys_log_login` VALUES (271, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:27:22');
INSERT INTO `sys_log_login` VALUES (272, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:27:34');
INSERT INTO `sys_log_login` VALUES (273, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:27:34');
INSERT INTO `sys_log_login` VALUES (274, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:27:35');
INSERT INTO `sys_log_login` VALUES (275, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:27:35');
INSERT INTO `sys_log_login` VALUES (276, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:28:46');
INSERT INTO `sys_log_login` VALUES (277, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:28:47');
INSERT INTO `sys_log_login` VALUES (278, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:28:48');
INSERT INTO `sys_log_login` VALUES (279, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:29:09');
INSERT INTO `sys_log_login` VALUES (280, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:29:09');
INSERT INTO `sys_log_login` VALUES (281, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:29:10');
INSERT INTO `sys_log_login` VALUES (282, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:29:50');
INSERT INTO `sys_log_login` VALUES (283, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:29:50');
INSERT INTO `sys_log_login` VALUES (284, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:30:10');
INSERT INTO `sys_log_login` VALUES (285, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:30:33');
INSERT INTO `sys_log_login` VALUES (286, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:30:33');
INSERT INTO `sys_log_login` VALUES (287, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:31:05');
INSERT INTO `sys_log_login` VALUES (288, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:31:26');
INSERT INTO `sys_log_login` VALUES (289, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:31:34');
INSERT INTO `sys_log_login` VALUES (290, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:32:28');
INSERT INTO `sys_log_login` VALUES (291, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:33:24');
INSERT INTO `sys_log_login` VALUES (292, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 18:34:47');
INSERT INTO `sys_log_login` VALUES (293, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 19:42:39');
INSERT INTO `sys_log_login` VALUES (294, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 19:43:52');
INSERT INTO `sys_log_login` VALUES (295, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 19:44:04');
INSERT INTO `sys_log_login` VALUES (296, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 19:44:57');
INSERT INTO `sys_log_login` VALUES (297, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 19:45:17');
INSERT INTO `sys_log_login` VALUES (298, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-05 19:45:36');
INSERT INTO `sys_log_login` VALUES (299, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 19:55:48');
INSERT INTO `sys_log_login` VALUES (300, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:01:45');
INSERT INTO `sys_log_login` VALUES (301, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:12:45');
INSERT INTO `sys_log_login` VALUES (302, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:16:18');
INSERT INTO `sys_log_login` VALUES (303, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:17:47');
INSERT INTO `sys_log_login` VALUES (304, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:17:52');
INSERT INTO `sys_log_login` VALUES (305, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:18:46');
INSERT INTO `sys_log_login` VALUES (306, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:19:58');
INSERT INTO `sys_log_login` VALUES (307, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:20:16');
INSERT INTO `sys_log_login` VALUES (308, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:20:40');
INSERT INTO `sys_log_login` VALUES (309, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:20:53');
INSERT INTO `sys_log_login` VALUES (310, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:22:52');
INSERT INTO `sys_log_login` VALUES (311, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:22:56');
INSERT INTO `sys_log_login` VALUES (312, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:23:19');
INSERT INTO `sys_log_login` VALUES (313, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:23:36');
INSERT INTO `sys_log_login` VALUES (314, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:30:01');
INSERT INTO `sys_log_login` VALUES (315, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:30:25');
INSERT INTO `sys_log_login` VALUES (316, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:30:29');
INSERT INTO `sys_log_login` VALUES (317, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:31:04');
INSERT INTO `sys_log_login` VALUES (318, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:31:15');
INSERT INTO `sys_log_login` VALUES (319, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:34:42');
INSERT INTO `sys_log_login` VALUES (320, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:34:56');
INSERT INTO `sys_log_login` VALUES (321, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:37:32');
INSERT INTO `sys_log_login` VALUES (322, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:37:45');
INSERT INTO `sys_log_login` VALUES (323, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:37:58');
INSERT INTO `sys_log_login` VALUES (324, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:38:02');
INSERT INTO `sys_log_login` VALUES (325, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:38:18');
INSERT INTO `sys_log_login` VALUES (326, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:39:07');
INSERT INTO `sys_log_login` VALUES (327, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:39:12');
INSERT INTO `sys_log_login` VALUES (328, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 20:41:19');
INSERT INTO `sys_log_login` VALUES (329, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 21:42:25');
INSERT INTO `sys_log_login` VALUES (330, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 22:00:59');
INSERT INTO `sys_log_login` VALUES (331, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 22:02:06');
INSERT INTO `sys_log_login` VALUES (332, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 22:02:15');
INSERT INTO `sys_log_login` VALUES (333, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 22:02:28');
INSERT INTO `sys_log_login` VALUES (334, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-07 22:02:41');
INSERT INTO `sys_log_login` VALUES (335, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-10 09:44:30');
INSERT INTO `sys_log_login` VALUES (336, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 12:01:33');
INSERT INTO `sys_log_login` VALUES (337, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 12:04:02');
INSERT INTO `sys_log_login` VALUES (338, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 12:08:05');
INSERT INTO `sys_log_login` VALUES (339, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 12:10:06');
INSERT INTO `sys_log_login` VALUES (340, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 12:17:16');
INSERT INTO `sys_log_login` VALUES (341, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 12:17:16');
INSERT INTO `sys_log_login` VALUES (342, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 12:17:42');
INSERT INTO `sys_log_login` VALUES (343, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 19:58:23');
INSERT INTO `sys_log_login` VALUES (344, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:01:11');
INSERT INTO `sys_log_login` VALUES (345, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:01:47');
INSERT INTO `sys_log_login` VALUES (346, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:03:33');
INSERT INTO `sys_log_login` VALUES (347, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:03:44');
INSERT INTO `sys_log_login` VALUES (348, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:04:12');
INSERT INTO `sys_log_login` VALUES (349, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:04:58');
INSERT INTO `sys_log_login` VALUES (350, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:06:36');
INSERT INTO `sys_log_login` VALUES (351, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:08:33');
INSERT INTO `sys_log_login` VALUES (352, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:10:55');
INSERT INTO `sys_log_login` VALUES (353, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:13:03');
INSERT INTO `sys_log_login` VALUES (354, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:15:11');
INSERT INTO `sys_log_login` VALUES (355, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:15:28');
INSERT INTO `sys_log_login` VALUES (356, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:20:02');
INSERT INTO `sys_log_login` VALUES (357, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:23:28');
INSERT INTO `sys_log_login` VALUES (358, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:23:53');
INSERT INTO `sys_log_login` VALUES (359, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:26:23');
INSERT INTO `sys_log_login` VALUES (360, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:43:45');
INSERT INTO `sys_log_login` VALUES (361, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 20:48:30');
INSERT INTO `sys_log_login` VALUES (362, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 21:12:08');
INSERT INTO `sys_log_login` VALUES (363, '王道科-wdk', '0:0:0:0:0:0:0:1', '2021-03-16 21:19:49');
INSERT INTO `sys_log_login` VALUES (364, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 21:20:10');
INSERT INTO `sys_log_login` VALUES (365, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 22:05:22');
INSERT INTO `sys_log_login` VALUES (366, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 22:12:10');
INSERT INTO `sys_log_login` VALUES (367, '王道科-wdk', '0:0:0:0:0:0:0:1', '2021-03-16 22:15:44');
INSERT INTO `sys_log_login` VALUES (368, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-16 22:59:22');
INSERT INTO `sys_log_login` VALUES (369, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 08:32:26');
INSERT INTO `sys_log_login` VALUES (370, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 18:09:10');
INSERT INTO `sys_log_login` VALUES (371, '王道科-王道科', '0:0:0:0:0:0:0:1', '2021-03-17 18:45:04');
INSERT INTO `sys_log_login` VALUES (372, '王道科-王道科', '0:0:0:0:0:0:0:1', '2021-03-17 18:45:38');
INSERT INTO `sys_log_login` VALUES (373, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 18:51:04');
INSERT INTO `sys_log_login` VALUES (374, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 19:01:25');
INSERT INTO `sys_log_login` VALUES (375, 'adfsadfasdf-adfsadfasdf', '0:0:0:0:0:0:0:1', '2021-03-17 19:27:02');
INSERT INTO `sys_log_login` VALUES (376, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 19:27:58');
INSERT INTO `sys_log_login` VALUES (377, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 19:35:21');
INSERT INTO `sys_log_login` VALUES (378, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 19:46:48');
INSERT INTO `sys_log_login` VALUES (379, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 19:48:59');
INSERT INTO `sys_log_login` VALUES (380, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 19:49:23');
INSERT INTO `sys_log_login` VALUES (381, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 19:51:08');
INSERT INTO `sys_log_login` VALUES (382, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:12:12');
INSERT INTO `sys_log_login` VALUES (383, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:13:47');
INSERT INTO `sys_log_login` VALUES (384, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:13:49');
INSERT INTO `sys_log_login` VALUES (385, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:15:35');
INSERT INTO `sys_log_login` VALUES (386, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:18:13');
INSERT INTO `sys_log_login` VALUES (387, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:18:41');
INSERT INTO `sys_log_login` VALUES (388, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:20:38');
INSERT INTO `sys_log_login` VALUES (389, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:24:05');
INSERT INTO `sys_log_login` VALUES (390, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:24:56');
INSERT INTO `sys_log_login` VALUES (391, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:27:06');
INSERT INTO `sys_log_login` VALUES (392, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:27:26');
INSERT INTO `sys_log_login` VALUES (393, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:32:54');
INSERT INTO `sys_log_login` VALUES (394, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:34:38');
INSERT INTO `sys_log_login` VALUES (395, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:35:09');
INSERT INTO `sys_log_login` VALUES (396, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:35:09');
INSERT INTO `sys_log_login` VALUES (397, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:35:17');
INSERT INTO `sys_log_login` VALUES (398, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:37:00');
INSERT INTO `sys_log_login` VALUES (399, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:38:26');
INSERT INTO `sys_log_login` VALUES (400, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:38:26');
INSERT INTO `sys_log_login` VALUES (401, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:38:35');
INSERT INTO `sys_log_login` VALUES (402, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:39:16');
INSERT INTO `sys_log_login` VALUES (403, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:40:14');
INSERT INTO `sys_log_login` VALUES (404, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 20:41:12');
INSERT INTO `sys_log_login` VALUES (405, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 20:50:53');
INSERT INTO `sys_log_login` VALUES (406, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:53:52');
INSERT INTO `sys_log_login` VALUES (407, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:54:42');
INSERT INTO `sys_log_login` VALUES (408, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:55:40');
INSERT INTO `sys_log_login` VALUES (409, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:56:32');
INSERT INTO `sys_log_login` VALUES (410, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:56:33');
INSERT INTO `sys_log_login` VALUES (411, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:57:30');
INSERT INTO `sys_log_login` VALUES (412, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 20:59:41');
INSERT INTO `sys_log_login` VALUES (413, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:00:34');
INSERT INTO `sys_log_login` VALUES (414, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:04:06');
INSERT INTO `sys_log_login` VALUES (415, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:05:15');
INSERT INTO `sys_log_login` VALUES (416, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:06:36');
INSERT INTO `sys_log_login` VALUES (417, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:06:56');
INSERT INTO `sys_log_login` VALUES (418, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:07:14');
INSERT INTO `sys_log_login` VALUES (419, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:07:43');
INSERT INTO `sys_log_login` VALUES (420, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:11:20');
INSERT INTO `sys_log_login` VALUES (421, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 21:14:36');
INSERT INTO `sys_log_login` VALUES (422, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:18:09');
INSERT INTO `sys_log_login` VALUES (423, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:20:41');
INSERT INTO `sys_log_login` VALUES (424, 'wdk02-wdk02', '0:0:0:0:0:0:0:1', '2021-03-17 21:28:33');
INSERT INTO `sys_log_login` VALUES (425, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:31:14');
INSERT INTO `sys_log_login` VALUES (426, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:33:15');
INSERT INTO `sys_log_login` VALUES (427, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:33:51');
INSERT INTO `sys_log_login` VALUES (428, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:33:53');
INSERT INTO `sys_log_login` VALUES (429, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 21:34:26');
INSERT INTO `sys_log_login` VALUES (430, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:37:25');
INSERT INTO `sys_log_login` VALUES (431, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 21:39:03');
INSERT INTO `sys_log_login` VALUES (432, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:41:33');
INSERT INTO `sys_log_login` VALUES (433, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 21:42:28');
INSERT INTO `sys_log_login` VALUES (434, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 21:43:27');
INSERT INTO `sys_log_login` VALUES (435, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 21:43:29');
INSERT INTO `sys_log_login` VALUES (436, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 21:43:31');
INSERT INTO `sys_log_login` VALUES (437, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 21:43:33');
INSERT INTO `sys_log_login` VALUES (438, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 21:43:34');
INSERT INTO `sys_log_login` VALUES (439, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:46:38');
INSERT INTO `sys_log_login` VALUES (440, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:46:41');
INSERT INTO `sys_log_login` VALUES (441, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 21:48:11');
INSERT INTO `sys_log_login` VALUES (442, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:48:38');
INSERT INTO `sys_log_login` VALUES (443, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 21:48:42');
INSERT INTO `sys_log_login` VALUES (444, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 21:48:44');
INSERT INTO `sys_log_login` VALUES (445, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-17 21:49:58');
INSERT INTO `sys_log_login` VALUES (446, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-17 22:39:52');
INSERT INTO `sys_log_login` VALUES (447, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 09:21:17');
INSERT INTO `sys_log_login` VALUES (448, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 09:28:02');
INSERT INTO `sys_log_login` VALUES (449, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 09:28:53');
INSERT INTO `sys_log_login` VALUES (450, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 09:48:52');
INSERT INTO `sys_log_login` VALUES (451, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 09:55:18');
INSERT INTO `sys_log_login` VALUES (452, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:00:56');
INSERT INTO `sys_log_login` VALUES (453, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:11:15');
INSERT INTO `sys_log_login` VALUES (454, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:15:43');
INSERT INTO `sys_log_login` VALUES (455, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:18:07');
INSERT INTO `sys_log_login` VALUES (456, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:18:13');
INSERT INTO `sys_log_login` VALUES (457, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:19:00');
INSERT INTO `sys_log_login` VALUES (458, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:20:09');
INSERT INTO `sys_log_login` VALUES (459, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:20:10');
INSERT INTO `sys_log_login` VALUES (460, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:25:35');
INSERT INTO `sys_log_login` VALUES (461, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:26:15');
INSERT INTO `sys_log_login` VALUES (462, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:26:16');
INSERT INTO `sys_log_login` VALUES (463, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:27:58');
INSERT INTO `sys_log_login` VALUES (464, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:37:21');
INSERT INTO `sys_log_login` VALUES (465, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:44:12');
INSERT INTO `sys_log_login` VALUES (466, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:44:13');
INSERT INTO `sys_log_login` VALUES (467, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:45:36');
INSERT INTO `sys_log_login` VALUES (468, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:46:25');
INSERT INTO `sys_log_login` VALUES (469, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:47:11');
INSERT INTO `sys_log_login` VALUES (470, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:48:21');
INSERT INTO `sys_log_login` VALUES (471, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:49:10');
INSERT INTO `sys_log_login` VALUES (472, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:51:50');
INSERT INTO `sys_log_login` VALUES (473, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:57:26');
INSERT INTO `sys_log_login` VALUES (474, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 10:57:26');
INSERT INTO `sys_log_login` VALUES (475, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 11:07:04');
INSERT INTO `sys_log_login` VALUES (476, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 11:14:56');
INSERT INTO `sys_log_login` VALUES (477, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 11:39:57');
INSERT INTO `sys_log_login` VALUES (478, 'wdk03-wdk03', '0:0:0:0:0:0:0:1', '2021-03-18 11:43:15');
INSERT INTO `sys_log_login` VALUES (479, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 11:43:40');
INSERT INTO `sys_log_login` VALUES (480, 'wdk03-wdk03', '0:0:0:0:0:0:0:1', '2021-03-18 11:44:36');
INSERT INTO `sys_log_login` VALUES (481, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 11:46:21');
INSERT INTO `sys_log_login` VALUES (482, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 11:46:40');
INSERT INTO `sys_log_login` VALUES (483, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 11:52:31');
INSERT INTO `sys_log_login` VALUES (484, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 11:52:31');
INSERT INTO `sys_log_login` VALUES (485, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 11:52:31');
INSERT INTO `sys_log_login` VALUES (486, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 11:53:18');
INSERT INTO `sys_log_login` VALUES (487, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:00:27');
INSERT INTO `sys_log_login` VALUES (488, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:00:27');
INSERT INTO `sys_log_login` VALUES (489, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:00:57');
INSERT INTO `sys_log_login` VALUES (490, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:00:58');
INSERT INTO `sys_log_login` VALUES (491, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:01:13');
INSERT INTO `sys_log_login` VALUES (492, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:01:13');
INSERT INTO `sys_log_login` VALUES (493, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:01:13');
INSERT INTO `sys_log_login` VALUES (494, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:01:14');
INSERT INTO `sys_log_login` VALUES (495, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:01:14');
INSERT INTO `sys_log_login` VALUES (496, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:31:22');
INSERT INTO `sys_log_login` VALUES (497, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:33:15');
INSERT INTO `sys_log_login` VALUES (498, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:33:29');
INSERT INTO `sys_log_login` VALUES (499, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:33:30');
INSERT INTO `sys_log_login` VALUES (500, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:34:14');
INSERT INTO `sys_log_login` VALUES (501, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:35:18');
INSERT INTO `sys_log_login` VALUES (502, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:35:18');
INSERT INTO `sys_log_login` VALUES (503, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:38:24');
INSERT INTO `sys_log_login` VALUES (504, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:39:24');
INSERT INTO `sys_log_login` VALUES (505, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:39:37');
INSERT INTO `sys_log_login` VALUES (506, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:39:37');
INSERT INTO `sys_log_login` VALUES (507, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:39:37');
INSERT INTO `sys_log_login` VALUES (508, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:41:13');
INSERT INTO `sys_log_login` VALUES (509, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 12:42:14');
INSERT INTO `sys_log_login` VALUES (510, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 15:30:58');
INSERT INTO `sys_log_login` VALUES (511, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 15:31:25');
INSERT INTO `sys_log_login` VALUES (512, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 15:32:33');
INSERT INTO `sys_log_login` VALUES (513, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 17:41:03');
INSERT INTO `sys_log_login` VALUES (514, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 17:49:49');
INSERT INTO `sys_log_login` VALUES (515, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 18:00:02');
INSERT INTO `sys_log_login` VALUES (516, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 18:15:49');
INSERT INTO `sys_log_login` VALUES (517, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 18:16:41');
INSERT INTO `sys_log_login` VALUES (518, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 18:21:55');
INSERT INTO `sys_log_login` VALUES (519, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 18:28:57');
INSERT INTO `sys_log_login` VALUES (520, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 18:29:41');
INSERT INTO `sys_log_login` VALUES (521, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 18:30:50');
INSERT INTO `sys_log_login` VALUES (522, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:06:49');
INSERT INTO `sys_log_login` VALUES (523, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:22:27');
INSERT INTO `sys_log_login` VALUES (524, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:23:03');
INSERT INTO `sys_log_login` VALUES (525, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:24:48');
INSERT INTO `sys_log_login` VALUES (526, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:25:53');
INSERT INTO `sys_log_login` VALUES (527, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:25:53');
INSERT INTO `sys_log_login` VALUES (528, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:26:08');
INSERT INTO `sys_log_login` VALUES (529, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:26:08');
INSERT INTO `sys_log_login` VALUES (530, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:26:09');
INSERT INTO `sys_log_login` VALUES (531, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:28:29');
INSERT INTO `sys_log_login` VALUES (532, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:28:29');
INSERT INTO `sys_log_login` VALUES (533, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:28:30');
INSERT INTO `sys_log_login` VALUES (534, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:28:55');
INSERT INTO `sys_log_login` VALUES (535, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:29:52');
INSERT INTO `sys_log_login` VALUES (536, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:29:53');
INSERT INTO `sys_log_login` VALUES (537, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:29:54');
INSERT INTO `sys_log_login` VALUES (538, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:29:54');
INSERT INTO `sys_log_login` VALUES (539, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:29:55');
INSERT INTO `sys_log_login` VALUES (540, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:29:55');
INSERT INTO `sys_log_login` VALUES (541, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:29:56');
INSERT INTO `sys_log_login` VALUES (542, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:29:56');
INSERT INTO `sys_log_login` VALUES (543, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:32:01');
INSERT INTO `sys_log_login` VALUES (544, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:33:54');
INSERT INTO `sys_log_login` VALUES (545, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:33:55');
INSERT INTO `sys_log_login` VALUES (546, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:33:55');
INSERT INTO `sys_log_login` VALUES (547, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:34:20');
INSERT INTO `sys_log_login` VALUES (548, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:34:21');
INSERT INTO `sys_log_login` VALUES (549, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:34:21');
INSERT INTO `sys_log_login` VALUES (550, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:34:22');
INSERT INTO `sys_log_login` VALUES (551, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:34:22');
INSERT INTO `sys_log_login` VALUES (552, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:34:37');
INSERT INTO `sys_log_login` VALUES (553, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:39:13');
INSERT INTO `sys_log_login` VALUES (554, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:39:54');
INSERT INTO `sys_log_login` VALUES (555, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:40:35');
INSERT INTO `sys_log_login` VALUES (556, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:48:49');
INSERT INTO `sys_log_login` VALUES (557, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:51:10');
INSERT INTO `sys_log_login` VALUES (558, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 19:51:10');
INSERT INTO `sys_log_login` VALUES (559, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 20:01:42');
INSERT INTO `sys_log_login` VALUES (560, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 20:02:29');
INSERT INTO `sys_log_login` VALUES (561, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-18 20:07:11');
INSERT INTO `sys_log_login` VALUES (562, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:01:25');
INSERT INTO `sys_log_login` VALUES (563, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:06:05');
INSERT INTO `sys_log_login` VALUES (564, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:06:07');
INSERT INTO `sys_log_login` VALUES (565, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:06:13');
INSERT INTO `sys_log_login` VALUES (566, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:06:17');
INSERT INTO `sys_log_login` VALUES (567, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:06:45');
INSERT INTO `sys_log_login` VALUES (568, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:06:47');
INSERT INTO `sys_log_login` VALUES (569, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:07:02');
INSERT INTO `sys_log_login` VALUES (570, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:07:04');
INSERT INTO `sys_log_login` VALUES (571, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:07:06');
INSERT INTO `sys_log_login` VALUES (572, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:08:20');
INSERT INTO `sys_log_login` VALUES (573, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:17:07');
INSERT INTO `sys_log_login` VALUES (574, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:18:18');
INSERT INTO `sys_log_login` VALUES (575, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:18:52');
INSERT INTO `sys_log_login` VALUES (576, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:24:03');
INSERT INTO `sys_log_login` VALUES (577, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:24:37');
INSERT INTO `sys_log_login` VALUES (578, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:24:38');
INSERT INTO `sys_log_login` VALUES (579, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:25:09');
INSERT INTO `sys_log_login` VALUES (580, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:27:20');
INSERT INTO `sys_log_login` VALUES (581, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:27:20');
INSERT INTO `sys_log_login` VALUES (582, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:27:21');
INSERT INTO `sys_log_login` VALUES (583, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:28:42');
INSERT INTO `sys_log_login` VALUES (584, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:29:51');
INSERT INTO `sys_log_login` VALUES (585, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:29:53');
INSERT INTO `sys_log_login` VALUES (586, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:30:34');
INSERT INTO `sys_log_login` VALUES (587, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:30:34');
INSERT INTO `sys_log_login` VALUES (588, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:31:36');
INSERT INTO `sys_log_login` VALUES (589, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:33:01');
INSERT INTO `sys_log_login` VALUES (590, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:33:23');
INSERT INTO `sys_log_login` VALUES (591, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:34:19');
INSERT INTO `sys_log_login` VALUES (592, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:35:26');
INSERT INTO `sys_log_login` VALUES (593, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:37:26');
INSERT INTO `sys_log_login` VALUES (594, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:38:41');
INSERT INTO `sys_log_login` VALUES (595, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:38:57');
INSERT INTO `sys_log_login` VALUES (596, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:39:32');
INSERT INTO `sys_log_login` VALUES (597, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:39:32');
INSERT INTO `sys_log_login` VALUES (598, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 21:41:27');
INSERT INTO `sys_log_login` VALUES (599, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:00:34');
INSERT INTO `sys_log_login` VALUES (600, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:02:56');
INSERT INTO `sys_log_login` VALUES (601, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:04:11');
INSERT INTO `sys_log_login` VALUES (602, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:04:49');
INSERT INTO `sys_log_login` VALUES (603, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:07:04');
INSERT INTO `sys_log_login` VALUES (604, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:07:39');
INSERT INTO `sys_log_login` VALUES (605, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:07:57');
INSERT INTO `sys_log_login` VALUES (606, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:17:28');
INSERT INTO `sys_log_login` VALUES (607, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:18:03');
INSERT INTO `sys_log_login` VALUES (608, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:18:05');
INSERT INTO `sys_log_login` VALUES (609, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:18:40');
INSERT INTO `sys_log_login` VALUES (610, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:19:33');
INSERT INTO `sys_log_login` VALUES (611, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:19:42');
INSERT INTO `sys_log_login` VALUES (612, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:21:02');
INSERT INTO `sys_log_login` VALUES (613, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:21:05');
INSERT INTO `sys_log_login` VALUES (614, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:22:07');
INSERT INTO `sys_log_login` VALUES (615, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:22:07');
INSERT INTO `sys_log_login` VALUES (616, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:25:11');
INSERT INTO `sys_log_login` VALUES (617, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:26:52');
INSERT INTO `sys_log_login` VALUES (618, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:27:55');
INSERT INTO `sys_log_login` VALUES (619, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:27:59');
INSERT INTO `sys_log_login` VALUES (620, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:28:00');
INSERT INTO `sys_log_login` VALUES (621, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:29:53');
INSERT INTO `sys_log_login` VALUES (622, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:29:53');
INSERT INTO `sys_log_login` VALUES (623, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:30:37');
INSERT INTO `sys_log_login` VALUES (624, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:33:42');
INSERT INTO `sys_log_login` VALUES (625, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:35:27');
INSERT INTO `sys_log_login` VALUES (626, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:35:55');
INSERT INTO `sys_log_login` VALUES (627, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:36:48');
INSERT INTO `sys_log_login` VALUES (628, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:38:44');
INSERT INTO `sys_log_login` VALUES (629, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:38:45');
INSERT INTO `sys_log_login` VALUES (630, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:39:45');
INSERT INTO `sys_log_login` VALUES (631, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:40:57');
INSERT INTO `sys_log_login` VALUES (632, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:42:12');
INSERT INTO `sys_log_login` VALUES (633, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:43:56');
INSERT INTO `sys_log_login` VALUES (634, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:45:51');
INSERT INTO `sys_log_login` VALUES (635, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:48:57');
INSERT INTO `sys_log_login` VALUES (636, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:50:20');
INSERT INTO `sys_log_login` VALUES (637, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:54:17');
INSERT INTO `sys_log_login` VALUES (638, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:56:06');
INSERT INTO `sys_log_login` VALUES (639, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:57:45');
INSERT INTO `sys_log_login` VALUES (640, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:59:04');
INSERT INTO `sys_log_login` VALUES (641, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 22:59:05');
INSERT INTO `sys_log_login` VALUES (642, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 23:00:53');
INSERT INTO `sys_log_login` VALUES (643, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 23:01:25');
INSERT INTO `sys_log_login` VALUES (644, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 23:01:26');
INSERT INTO `sys_log_login` VALUES (645, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 23:01:26');
INSERT INTO `sys_log_login` VALUES (646, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 23:01:27');
INSERT INTO `sys_log_login` VALUES (647, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 23:01:27');
INSERT INTO `sys_log_login` VALUES (648, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 23:01:36');
INSERT INTO `sys_log_login` VALUES (649, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 23:05:25');
INSERT INTO `sys_log_login` VALUES (650, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 23:07:59');
INSERT INTO `sys_log_login` VALUES (651, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 23:09:17');
INSERT INTO `sys_log_login` VALUES (652, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 23:09:17');
INSERT INTO `sys_log_login` VALUES (653, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-18 23:09:29');
INSERT INTO `sys_log_login` VALUES (654, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 08:15:04');
INSERT INTO `sys_log_login` VALUES (655, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 08:15:32');
INSERT INTO `sys_log_login` VALUES (656, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 09:18:03');
INSERT INTO `sys_log_login` VALUES (657, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 09:49:38');
INSERT INTO `sys_log_login` VALUES (658, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 09:53:39');
INSERT INTO `sys_log_login` VALUES (659, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 09:56:23');
INSERT INTO `sys_log_login` VALUES (660, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 10:09:34');
INSERT INTO `sys_log_login` VALUES (661, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 10:11:30');
INSERT INTO `sys_log_login` VALUES (662, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 10:17:50');
INSERT INTO `sys_log_login` VALUES (663, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 10:18:43');
INSERT INTO `sys_log_login` VALUES (664, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 10:22:21');
INSERT INTO `sys_log_login` VALUES (665, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 10:27:09');
INSERT INTO `sys_log_login` VALUES (666, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 10:27:40');
INSERT INTO `sys_log_login` VALUES (667, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 10:28:22');
INSERT INTO `sys_log_login` VALUES (668, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 10:28:49');
INSERT INTO `sys_log_login` VALUES (669, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 10:29:12');
INSERT INTO `sys_log_login` VALUES (670, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 10:30:44');
INSERT INTO `sys_log_login` VALUES (671, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 11:15:15');
INSERT INTO `sys_log_login` VALUES (672, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 11:45:22');
INSERT INTO `sys_log_login` VALUES (673, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 11:55:16');
INSERT INTO `sys_log_login` VALUES (674, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 11:56:31');
INSERT INTO `sys_log_login` VALUES (675, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 11:56:33');
INSERT INTO `sys_log_login` VALUES (676, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 11:56:41');
INSERT INTO `sys_log_login` VALUES (677, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 11:56:44');
INSERT INTO `sys_log_login` VALUES (678, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 11:56:47');
INSERT INTO `sys_log_login` VALUES (679, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 11:56:55');
INSERT INTO `sys_log_login` VALUES (680, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 11:57:11');
INSERT INTO `sys_log_login` VALUES (681, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 11:57:21');
INSERT INTO `sys_log_login` VALUES (682, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 11:58:08');
INSERT INTO `sys_log_login` VALUES (683, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 12:26:31');
INSERT INTO `sys_log_login` VALUES (684, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 12:34:03');
INSERT INTO `sys_log_login` VALUES (685, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 12:57:36');
INSERT INTO `sys_log_login` VALUES (686, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 13:24:54');
INSERT INTO `sys_log_login` VALUES (687, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 15:37:14');
INSERT INTO `sys_log_login` VALUES (688, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 15:41:48');
INSERT INTO `sys_log_login` VALUES (689, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 15:42:20');
INSERT INTO `sys_log_login` VALUES (690, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 15:43:42');
INSERT INTO `sys_log_login` VALUES (691, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 15:46:56');
INSERT INTO `sys_log_login` VALUES (692, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 15:50:18');
INSERT INTO `sys_log_login` VALUES (693, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:02:43');
INSERT INTO `sys_log_login` VALUES (694, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:03:21');
INSERT INTO `sys_log_login` VALUES (695, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:05:08');
INSERT INTO `sys_log_login` VALUES (696, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:12:12');
INSERT INTO `sys_log_login` VALUES (697, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:13:25');
INSERT INTO `sys_log_login` VALUES (698, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:15:02');
INSERT INTO `sys_log_login` VALUES (699, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:17:57');
INSERT INTO `sys_log_login` VALUES (700, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:18:58');
INSERT INTO `sys_log_login` VALUES (701, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:24:57');
INSERT INTO `sys_log_login` VALUES (702, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:25:31');
INSERT INTO `sys_log_login` VALUES (703, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:26:48');
INSERT INTO `sys_log_login` VALUES (704, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:31:39');
INSERT INTO `sys_log_login` VALUES (705, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:32:08');
INSERT INTO `sys_log_login` VALUES (706, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:34:50');
INSERT INTO `sys_log_login` VALUES (707, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:35:30');
INSERT INTO `sys_log_login` VALUES (708, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:35:31');
INSERT INTO `sys_log_login` VALUES (709, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:35:35');
INSERT INTO `sys_log_login` VALUES (710, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:35:41');
INSERT INTO `sys_log_login` VALUES (711, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:40:39');
INSERT INTO `sys_log_login` VALUES (712, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:40:49');
INSERT INTO `sys_log_login` VALUES (713, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:43:26');
INSERT INTO `sys_log_login` VALUES (714, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:44:09');
INSERT INTO `sys_log_login` VALUES (715, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:45:58');
INSERT INTO `sys_log_login` VALUES (716, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:46:33');
INSERT INTO `sys_log_login` VALUES (717, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:47:01');
INSERT INTO `sys_log_login` VALUES (718, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:50:13');
INSERT INTO `sys_log_login` VALUES (719, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:50:26');
INSERT INTO `sys_log_login` VALUES (720, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:50:50');
INSERT INTO `sys_log_login` VALUES (721, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:51:59');
INSERT INTO `sys_log_login` VALUES (722, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:53:42');
INSERT INTO `sys_log_login` VALUES (723, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:55:19');
INSERT INTO `sys_log_login` VALUES (724, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:56:45');
INSERT INTO `sys_log_login` VALUES (725, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 16:57:01');
INSERT INTO `sys_log_login` VALUES (726, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 17:02:57');
INSERT INTO `sys_log_login` VALUES (727, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 17:09:40');
INSERT INTO `sys_log_login` VALUES (728, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 17:10:00');
INSERT INTO `sys_log_login` VALUES (729, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 17:10:36');
INSERT INTO `sys_log_login` VALUES (730, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 17:10:38');
INSERT INTO `sys_log_login` VALUES (731, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 17:11:27');
INSERT INTO `sys_log_login` VALUES (732, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 17:11:57');
INSERT INTO `sys_log_login` VALUES (733, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 17:11:58');
INSERT INTO `sys_log_login` VALUES (734, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 17:12:46');
INSERT INTO `sys_log_login` VALUES (735, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 17:16:16');
INSERT INTO `sys_log_login` VALUES (736, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 17:18:23');
INSERT INTO `sys_log_login` VALUES (737, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 17:21:00');
INSERT INTO `sys_log_login` VALUES (738, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 17:22:52');
INSERT INTO `sys_log_login` VALUES (739, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 17:54:22');
INSERT INTO `sys_log_login` VALUES (740, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 18:18:09');
INSERT INTO `sys_log_login` VALUES (741, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 18:36:34');
INSERT INTO `sys_log_login` VALUES (742, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 18:38:33');
INSERT INTO `sys_log_login` VALUES (743, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 19:39:35');
INSERT INTO `sys_log_login` VALUES (744, 'wdk003-wdk003', '0:0:0:0:0:0:0:1', '2021-03-19 19:40:43');
INSERT INTO `sys_log_login` VALUES (745, 'wdk003-wdk003', '0:0:0:0:0:0:0:1', '2021-03-19 19:42:25');
INSERT INTO `sys_log_login` VALUES (746, 'wdk003-wdk003', '0:0:0:0:0:0:0:1', '2021-03-19 19:42:30');
INSERT INTO `sys_log_login` VALUES (747, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 19:52:35');
INSERT INTO `sys_log_login` VALUES (748, 'wdk003-wdk003', '0:0:0:0:0:0:0:1', '2021-03-19 19:54:03');
INSERT INTO `sys_log_login` VALUES (749, 'wdk003-wdk003', '0:0:0:0:0:0:0:1', '2021-03-19 19:54:40');
INSERT INTO `sys_log_login` VALUES (750, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 19:55:18');
INSERT INTO `sys_log_login` VALUES (751, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 20:09:58');
INSERT INTO `sys_log_login` VALUES (752, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-19 20:51:29');
INSERT INTO `sys_log_login` VALUES (753, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-19 20:52:33');
INSERT INTO `sys_log_login` VALUES (754, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 09:48:04');
INSERT INTO `sys_log_login` VALUES (755, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 09:48:13');
INSERT INTO `sys_log_login` VALUES (756, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 09:50:08');
INSERT INTO `sys_log_login` VALUES (757, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 09:50:11');
INSERT INTO `sys_log_login` VALUES (758, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 09:50:14');
INSERT INTO `sys_log_login` VALUES (759, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 09:50:53');
INSERT INTO `sys_log_login` VALUES (760, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 09:53:32');
INSERT INTO `sys_log_login` VALUES (761, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 09:54:11');
INSERT INTO `sys_log_login` VALUES (762, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-20 10:14:08');
INSERT INTO `sys_log_login` VALUES (763, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 14:31:04');
INSERT INTO `sys_log_login` VALUES (764, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 15:26:53');
INSERT INTO `sys_log_login` VALUES (765, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 15:31:24');
INSERT INTO `sys_log_login` VALUES (766, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 15:31:42');
INSERT INTO `sys_log_login` VALUES (767, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 15:38:46');
INSERT INTO `sys_log_login` VALUES (768, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 15:42:32');
INSERT INTO `sys_log_login` VALUES (769, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 15:46:06');
INSERT INTO `sys_log_login` VALUES (770, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 16:02:12');
INSERT INTO `sys_log_login` VALUES (771, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 16:04:08');
INSERT INTO `sys_log_login` VALUES (772, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 16:07:45');
INSERT INTO `sys_log_login` VALUES (773, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 16:08:30');
INSERT INTO `sys_log_login` VALUES (774, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 16:09:30');
INSERT INTO `sys_log_login` VALUES (775, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 16:12:23');
INSERT INTO `sys_log_login` VALUES (776, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 16:13:28');
INSERT INTO `sys_log_login` VALUES (777, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 16:14:31');
INSERT INTO `sys_log_login` VALUES (778, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 16:15:32');
INSERT INTO `sys_log_login` VALUES (779, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 16:15:32');
INSERT INTO `sys_log_login` VALUES (780, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 16:17:43');
INSERT INTO `sys_log_login` VALUES (781, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-20 17:24:10');
INSERT INTO `sys_log_login` VALUES (782, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 18:02:51');
INSERT INTO `sys_log_login` VALUES (783, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 18:46:07');
INSERT INTO `sys_log_login` VALUES (784, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 20:24:24');
INSERT INTO `sys_log_login` VALUES (785, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 20:28:13');
INSERT INTO `sys_log_login` VALUES (786, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 20:43:48');
INSERT INTO `sys_log_login` VALUES (787, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 20:44:14');
INSERT INTO `sys_log_login` VALUES (788, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 20:44:14');
INSERT INTO `sys_log_login` VALUES (789, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 20:45:11');
INSERT INTO `sys_log_login` VALUES (790, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 20:45:11');
INSERT INTO `sys_log_login` VALUES (791, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 20:45:51');
INSERT INTO `sys_log_login` VALUES (792, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 20:48:49');
INSERT INTO `sys_log_login` VALUES (793, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 20:48:58');
INSERT INTO `sys_log_login` VALUES (794, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 20:49:00');
INSERT INTO `sys_log_login` VALUES (795, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 20:49:46');
INSERT INTO `sys_log_login` VALUES (796, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 20:50:35');
INSERT INTO `sys_log_login` VALUES (797, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 20:50:43');
INSERT INTO `sys_log_login` VALUES (798, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 21:09:49');
INSERT INTO `sys_log_login` VALUES (799, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-20 22:36:14');
INSERT INTO `sys_log_login` VALUES (800, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 22:36:33');
INSERT INTO `sys_log_login` VALUES (801, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-20 23:55:38');
INSERT INTO `sys_log_login` VALUES (802, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-21 08:43:59');
INSERT INTO `sys_log_login` VALUES (803, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-21 12:40:49');
INSERT INTO `sys_log_login` VALUES (804, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-21 17:02:29');
INSERT INTO `sys_log_login` VALUES (805, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-21 17:02:55');
INSERT INTO `sys_log_login` VALUES (806, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-21 17:04:02');
INSERT INTO `sys_log_login` VALUES (807, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-21 18:00:31');
INSERT INTO `sys_log_login` VALUES (808, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-21 19:01:59');
INSERT INTO `sys_log_login` VALUES (809, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-21 19:02:58');
INSERT INTO `sys_log_login` VALUES (810, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-21 19:11:14');
INSERT INTO `sys_log_login` VALUES (811, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-21 19:23:31');
INSERT INTO `sys_log_login` VALUES (812, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-25 22:44:13');
INSERT INTO `sys_log_login` VALUES (813, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-25 22:44:30');
INSERT INTO `sys_log_login` VALUES (814, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 09:20:33');
INSERT INTO `sys_log_login` VALUES (815, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 09:50:48');
INSERT INTO `sys_log_login` VALUES (816, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 09:53:00');
INSERT INTO `sys_log_login` VALUES (817, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 09:53:00');
INSERT INTO `sys_log_login` VALUES (818, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 09:53:00');
INSERT INTO `sys_log_login` VALUES (819, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 10:04:21');
INSERT INTO `sys_log_login` VALUES (820, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 10:05:57');
INSERT INTO `sys_log_login` VALUES (821, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 10:06:38');
INSERT INTO `sys_log_login` VALUES (822, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 16:42:23');
INSERT INTO `sys_log_login` VALUES (823, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 16:45:40');
INSERT INTO `sys_log_login` VALUES (824, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 16:50:35');
INSERT INTO `sys_log_login` VALUES (825, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 16:50:36');
INSERT INTO `sys_log_login` VALUES (826, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 16:51:45');
INSERT INTO `sys_log_login` VALUES (827, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 16:51:58');
INSERT INTO `sys_log_login` VALUES (828, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 16:52:01');
INSERT INTO `sys_log_login` VALUES (829, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 16:52:24');
INSERT INTO `sys_log_login` VALUES (830, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 16:52:56');
INSERT INTO `sys_log_login` VALUES (831, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 16:53:26');
INSERT INTO `sys_log_login` VALUES (832, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 16:56:48');
INSERT INTO `sys_log_login` VALUES (833, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 16:58:00');
INSERT INTO `sys_log_login` VALUES (834, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 16:58:18');
INSERT INTO `sys_log_login` VALUES (835, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 16:58:28');
INSERT INTO `sys_log_login` VALUES (836, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 16:58:29');
INSERT INTO `sys_log_login` VALUES (837, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 16:59:08');
INSERT INTO `sys_log_login` VALUES (838, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 16:59:18');
INSERT INTO `sys_log_login` VALUES (839, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 17:00:04');
INSERT INTO `sys_log_login` VALUES (840, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:01:05');
INSERT INTO `sys_log_login` VALUES (841, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 17:06:50');
INSERT INTO `sys_log_login` VALUES (842, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:22:04');
INSERT INTO `sys_log_login` VALUES (843, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:28:04');
INSERT INTO `sys_log_login` VALUES (844, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:28:24');
INSERT INTO `sys_log_login` VALUES (845, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:28:51');
INSERT INTO `sys_log_login` VALUES (846, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:28:52');
INSERT INTO `sys_log_login` VALUES (847, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:28:52');
INSERT INTO `sys_log_login` VALUES (848, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:29:15');
INSERT INTO `sys_log_login` VALUES (849, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:29:39');
INSERT INTO `sys_log_login` VALUES (850, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:32:12');
INSERT INTO `sys_log_login` VALUES (851, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:32:44');
INSERT INTO `sys_log_login` VALUES (852, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:32:57');
INSERT INTO `sys_log_login` VALUES (853, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:33:34');
INSERT INTO `sys_log_login` VALUES (854, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:34:46');
INSERT INTO `sys_log_login` VALUES (855, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:37:43');
INSERT INTO `sys_log_login` VALUES (856, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:40:32');
INSERT INTO `sys_log_login` VALUES (857, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:40:58');
INSERT INTO `sys_log_login` VALUES (858, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:51:35');
INSERT INTO `sys_log_login` VALUES (859, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:51:49');
INSERT INTO `sys_log_login` VALUES (860, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 17:52:48');
INSERT INTO `sys_log_login` VALUES (861, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 18:12:42');
INSERT INTO `sys_log_login` VALUES (862, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 18:16:49');
INSERT INTO `sys_log_login` VALUES (863, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 18:16:57');
INSERT INTO `sys_log_login` VALUES (864, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 18:16:57');
INSERT INTO `sys_log_login` VALUES (865, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 18:21:22');
INSERT INTO `sys_log_login` VALUES (866, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 18:22:44');
INSERT INTO `sys_log_login` VALUES (867, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 18:23:56');
INSERT INTO `sys_log_login` VALUES (868, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 18:24:02');
INSERT INTO `sys_log_login` VALUES (869, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 18:27:27');
INSERT INTO `sys_log_login` VALUES (870, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 18:30:42');
INSERT INTO `sys_log_login` VALUES (871, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 18:44:44');
INSERT INTO `sys_log_login` VALUES (872, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 18:48:01');
INSERT INTO `sys_log_login` VALUES (873, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 18:52:54');
INSERT INTO `sys_log_login` VALUES (874, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 19:28:38');
INSERT INTO `sys_log_login` VALUES (875, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 19:30:57');
INSERT INTO `sys_log_login` VALUES (876, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 19:33:04');
INSERT INTO `sys_log_login` VALUES (877, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 19:36:00');
INSERT INTO `sys_log_login` VALUES (878, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 19:37:31');
INSERT INTO `sys_log_login` VALUES (879, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 19:39:53');
INSERT INTO `sys_log_login` VALUES (880, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 19:42:13');
INSERT INTO `sys_log_login` VALUES (881, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 19:43:30');
INSERT INTO `sys_log_login` VALUES (882, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 19:45:02');
INSERT INTO `sys_log_login` VALUES (883, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 19:47:07');
INSERT INTO `sys_log_login` VALUES (884, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 19:47:07');
INSERT INTO `sys_log_login` VALUES (885, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 19:49:11');
INSERT INTO `sys_log_login` VALUES (886, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 19:49:59');
INSERT INTO `sys_log_login` VALUES (887, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 19:50:56');
INSERT INTO `sys_log_login` VALUES (888, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 19:51:06');
INSERT INTO `sys_log_login` VALUES (889, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 19:51:06');
INSERT INTO `sys_log_login` VALUES (890, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 19:54:04');
INSERT INTO `sys_log_login` VALUES (891, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 20:03:17');
INSERT INTO `sys_log_login` VALUES (892, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 20:10:55');
INSERT INTO `sys_log_login` VALUES (893, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 20:12:46');
INSERT INTO `sys_log_login` VALUES (894, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 20:13:15');
INSERT INTO `sys_log_login` VALUES (895, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 20:39:02');
INSERT INTO `sys_log_login` VALUES (896, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 20:41:25');
INSERT INTO `sys_log_login` VALUES (897, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 20:43:27');
INSERT INTO `sys_log_login` VALUES (898, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 20:43:47');
INSERT INTO `sys_log_login` VALUES (899, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 20:45:40');
INSERT INTO `sys_log_login` VALUES (900, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 20:53:41');
INSERT INTO `sys_log_login` VALUES (901, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 20:54:19');
INSERT INTO `sys_log_login` VALUES (902, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 20:54:31');
INSERT INTO `sys_log_login` VALUES (903, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 20:59:52');
INSERT INTO `sys_log_login` VALUES (904, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:02:33');
INSERT INTO `sys_log_login` VALUES (905, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:04:29');
INSERT INTO `sys_log_login` VALUES (906, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:05:05');
INSERT INTO `sys_log_login` VALUES (907, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:05:22');
INSERT INTO `sys_log_login` VALUES (908, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:06:48');
INSERT INTO `sys_log_login` VALUES (909, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:07:16');
INSERT INTO `sys_log_login` VALUES (910, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:07:41');
INSERT INTO `sys_log_login` VALUES (911, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:08:09');
INSERT INTO `sys_log_login` VALUES (912, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:08:24');
INSERT INTO `sys_log_login` VALUES (913, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:09:29');
INSERT INTO `sys_log_login` VALUES (914, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:10:37');
INSERT INTO `sys_log_login` VALUES (915, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:11:05');
INSERT INTO `sys_log_login` VALUES (916, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:11:56');
INSERT INTO `sys_log_login` VALUES (917, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:32:26');
INSERT INTO `sys_log_login` VALUES (918, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:34:04');
INSERT INTO `sys_log_login` VALUES (919, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:34:57');
INSERT INTO `sys_log_login` VALUES (920, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:38:24');
INSERT INTO `sys_log_login` VALUES (921, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:38:25');
INSERT INTO `sys_log_login` VALUES (922, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:39:41');
INSERT INTO `sys_log_login` VALUES (923, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-26 21:41:16');
INSERT INTO `sys_log_login` VALUES (924, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:43:54');
INSERT INTO `sys_log_login` VALUES (925, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:44:00');
INSERT INTO `sys_log_login` VALUES (926, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:44:01');
INSERT INTO `sys_log_login` VALUES (927, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:44:15');
INSERT INTO `sys_log_login` VALUES (928, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:45:50');
INSERT INTO `sys_log_login` VALUES (929, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:46:05');
INSERT INTO `sys_log_login` VALUES (930, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:46:20');
INSERT INTO `sys_log_login` VALUES (931, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:47:21');
INSERT INTO `sys_log_login` VALUES (932, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:50:11');
INSERT INTO `sys_log_login` VALUES (933, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:51:14');
INSERT INTO `sys_log_login` VALUES (934, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:54:03');
INSERT INTO `sys_log_login` VALUES (935, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 21:59:24');
INSERT INTO `sys_log_login` VALUES (936, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:00:15');
INSERT INTO `sys_log_login` VALUES (937, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:03:40');
INSERT INTO `sys_log_login` VALUES (938, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:04:20');
INSERT INTO `sys_log_login` VALUES (939, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:05:12');
INSERT INTO `sys_log_login` VALUES (940, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:05:12');
INSERT INTO `sys_log_login` VALUES (941, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:05:38');
INSERT INTO `sys_log_login` VALUES (942, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:05:38');
INSERT INTO `sys_log_login` VALUES (943, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:06:18');
INSERT INTO `sys_log_login` VALUES (944, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:07:23');
INSERT INTO `sys_log_login` VALUES (945, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:08:10');
INSERT INTO `sys_log_login` VALUES (946, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:08:12');
INSERT INTO `sys_log_login` VALUES (947, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:08:37');
INSERT INTO `sys_log_login` VALUES (948, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:10:19');
INSERT INTO `sys_log_login` VALUES (949, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:19:12');
INSERT INTO `sys_log_login` VALUES (950, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:20:48');
INSERT INTO `sys_log_login` VALUES (951, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:21:02');
INSERT INTO `sys_log_login` VALUES (952, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:21:47');
INSERT INTO `sys_log_login` VALUES (953, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:23:01');
INSERT INTO `sys_log_login` VALUES (954, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:23:04');
INSERT INTO `sys_log_login` VALUES (955, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:23:45');
INSERT INTO `sys_log_login` VALUES (956, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:24:19');
INSERT INTO `sys_log_login` VALUES (957, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:29:07');
INSERT INTO `sys_log_login` VALUES (958, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:29:58');
INSERT INTO `sys_log_login` VALUES (959, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:33:02');
INSERT INTO `sys_log_login` VALUES (960, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:33:48');
INSERT INTO `sys_log_login` VALUES (961, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:36:08');
INSERT INTO `sys_log_login` VALUES (962, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:39:08');
INSERT INTO `sys_log_login` VALUES (963, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:40:25');
INSERT INTO `sys_log_login` VALUES (964, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:40:52');
INSERT INTO `sys_log_login` VALUES (965, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:40:55');
INSERT INTO `sys_log_login` VALUES (966, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:42:06');
INSERT INTO `sys_log_login` VALUES (967, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:42:07');
INSERT INTO `sys_log_login` VALUES (968, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:44:15');
INSERT INTO `sys_log_login` VALUES (969, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:44:19');
INSERT INTO `sys_log_login` VALUES (970, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:48:30');
INSERT INTO `sys_log_login` VALUES (971, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:51:12');
INSERT INTO `sys_log_login` VALUES (972, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:51:20');
INSERT INTO `sys_log_login` VALUES (973, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:52:19');
INSERT INTO `sys_log_login` VALUES (974, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:52:25');
INSERT INTO `sys_log_login` VALUES (975, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:53:53');
INSERT INTO `sys_log_login` VALUES (976, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:56:08');
INSERT INTO `sys_log_login` VALUES (977, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:57:29');
INSERT INTO `sys_log_login` VALUES (978, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 22:57:35');
INSERT INTO `sys_log_login` VALUES (979, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:01:42');
INSERT INTO `sys_log_login` VALUES (980, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:04:14');
INSERT INTO `sys_log_login` VALUES (981, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:04:15');
INSERT INTO `sys_log_login` VALUES (982, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:04:15');
INSERT INTO `sys_log_login` VALUES (983, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:04:15');
INSERT INTO `sys_log_login` VALUES (984, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:04:16');
INSERT INTO `sys_log_login` VALUES (985, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:04:16');
INSERT INTO `sys_log_login` VALUES (986, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:04:16');
INSERT INTO `sys_log_login` VALUES (987, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:05:13');
INSERT INTO `sys_log_login` VALUES (988, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:05:14');
INSERT INTO `sys_log_login` VALUES (989, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:08:48');
INSERT INTO `sys_log_login` VALUES (990, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:09:41');
INSERT INTO `sys_log_login` VALUES (991, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:10:18');
INSERT INTO `sys_log_login` VALUES (992, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:14:14');
INSERT INTO `sys_log_login` VALUES (993, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:14:56');
INSERT INTO `sys_log_login` VALUES (994, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:16:00');
INSERT INTO `sys_log_login` VALUES (995, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:16:45');
INSERT INTO `sys_log_login` VALUES (996, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:19:01');
INSERT INTO `sys_log_login` VALUES (997, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:19:02');
INSERT INTO `sys_log_login` VALUES (998, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:19:17');
INSERT INTO `sys_log_login` VALUES (999, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:21:32');
INSERT INTO `sys_log_login` VALUES (1000, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:21:56');
INSERT INTO `sys_log_login` VALUES (1001, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:21:57');
INSERT INTO `sys_log_login` VALUES (1002, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:23:08');
INSERT INTO `sys_log_login` VALUES (1003, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:23:33');
INSERT INTO `sys_log_login` VALUES (1004, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:25:55');
INSERT INTO `sys_log_login` VALUES (1005, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:28:26');
INSERT INTO `sys_log_login` VALUES (1006, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:29:07');
INSERT INTO `sys_log_login` VALUES (1007, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:29:14');
INSERT INTO `sys_log_login` VALUES (1008, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:29:15');
INSERT INTO `sys_log_login` VALUES (1009, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:31:02');
INSERT INTO `sys_log_login` VALUES (1010, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:33:13');
INSERT INTO `sys_log_login` VALUES (1011, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:36:07');
INSERT INTO `sys_log_login` VALUES (1012, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:37:06');
INSERT INTO `sys_log_login` VALUES (1013, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:37:10');
INSERT INTO `sys_log_login` VALUES (1014, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:38:15');
INSERT INTO `sys_log_login` VALUES (1015, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:43:49');
INSERT INTO `sys_log_login` VALUES (1016, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:46:54');
INSERT INTO `sys_log_login` VALUES (1017, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:51:45');
INSERT INTO `sys_log_login` VALUES (1018, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:52:31');
INSERT INTO `sys_log_login` VALUES (1019, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:53:37');
INSERT INTO `sys_log_login` VALUES (1020, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-26 23:57:11');
INSERT INTO `sys_log_login` VALUES (1021, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 00:02:54');
INSERT INTO `sys_log_login` VALUES (1022, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 00:04:38');
INSERT INTO `sys_log_login` VALUES (1023, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 00:25:48');
INSERT INTO `sys_log_login` VALUES (1024, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 00:27:26');
INSERT INTO `sys_log_login` VALUES (1025, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 00:28:13');
INSERT INTO `sys_log_login` VALUES (1026, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 00:28:46');
INSERT INTO `sys_log_login` VALUES (1027, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 00:30:38');
INSERT INTO `sys_log_login` VALUES (1028, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 00:32:06');
INSERT INTO `sys_log_login` VALUES (1029, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 00:33:49');
INSERT INTO `sys_log_login` VALUES (1030, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 07:37:08');
INSERT INTO `sys_log_login` VALUES (1031, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-27 07:38:36');
INSERT INTO `sys_log_login` VALUES (1032, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 07:42:05');
INSERT INTO `sys_log_login` VALUES (1033, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 08:02:24');
INSERT INTO `sys_log_login` VALUES (1034, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 08:04:53');
INSERT INTO `sys_log_login` VALUES (1035, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 08:09:17');
INSERT INTO `sys_log_login` VALUES (1036, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 08:10:04');
INSERT INTO `sys_log_login` VALUES (1037, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 08:10:30');
INSERT INTO `sys_log_login` VALUES (1038, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 08:11:31');
INSERT INTO `sys_log_login` VALUES (1039, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 08:15:21');
INSERT INTO `sys_log_login` VALUES (1040, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 08:16:43');
INSERT INTO `sys_log_login` VALUES (1041, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 08:16:57');
INSERT INTO `sys_log_login` VALUES (1042, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 08:34:00');
INSERT INTO `sys_log_login` VALUES (1043, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 08:39:33');
INSERT INTO `sys_log_login` VALUES (1044, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 08:46:04');
INSERT INTO `sys_log_login` VALUES (1045, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 09:13:46');
INSERT INTO `sys_log_login` VALUES (1046, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 09:15:53');
INSERT INTO `sys_log_login` VALUES (1047, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 09:26:01');
INSERT INTO `sys_log_login` VALUES (1048, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 09:30:03');
INSERT INTO `sys_log_login` VALUES (1049, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 09:32:17');
INSERT INTO `sys_log_login` VALUES (1050, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 09:34:12');
INSERT INTO `sys_log_login` VALUES (1051, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 09:38:46');
INSERT INTO `sys_log_login` VALUES (1052, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-27 09:40:20');
INSERT INTO `sys_log_login` VALUES (1053, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 09:43:01');
INSERT INTO `sys_log_login` VALUES (1054, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 09:44:00');
INSERT INTO `sys_log_login` VALUES (1055, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-27 09:45:08');
INSERT INTO `sys_log_login` VALUES (1056, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 09:45:20');
INSERT INTO `sys_log_login` VALUES (1057, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 09:46:23');
INSERT INTO `sys_log_login` VALUES (1058, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 09:46:31');
INSERT INTO `sys_log_login` VALUES (1059, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 09:47:35');
INSERT INTO `sys_log_login` VALUES (1060, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 10:00:45');
INSERT INTO `sys_log_login` VALUES (1061, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 10:03:11');
INSERT INTO `sys_log_login` VALUES (1062, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 10:04:19');
INSERT INTO `sys_log_login` VALUES (1063, '管理员-admin', '0:0:0:0:0:0:0:1', '2021-03-27 10:08:37');
INSERT INTO `sys_log_login` VALUES (1064, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 10:15:37');
INSERT INTO `sys_log_login` VALUES (1065, 'wdk01-wdk01', '0:0:0:0:0:0:0:1', '2021-03-27 10:17:23');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `spread` int(255) NULL DEFAULT NULL COMMENT '0不展开1展开',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `available` int(255) NULL DEFAULT NULL COMMENT '0不可用1可用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '汽车出租系统', NULL, 1, NULL, '&#xe68e;', 1);
INSERT INTO `sys_menu` VALUES (2, 1, '基础管理', '', 1, '', '&#xe653;', 1);
INSERT INTO `sys_menu` VALUES (3, 1, '业务管理', '', 1, '', '&#xe663;', 1);
INSERT INTO `sys_menu` VALUES (4, 1, '系统管理', '', 0, '', '&#xe716;', 1);
INSERT INTO `sys_menu` VALUES (5, 1, '统计分析', NULL, 0, NULL, '&#xe629;', 1);
INSERT INTO `sys_menu` VALUES (6, 2, '客户管理', '../bus/toCustomerManager.action', 0, '', '&#xe770;', 1);
INSERT INTO `sys_menu` VALUES (7, 2, '车辆管理', '../bus/toCarManager.action', 0, '', '&#xe657;', 1);
INSERT INTO `sys_menu` VALUES (8, 3, '汽车出租', '../bus/toRentCarManager.action', 1, '', '&#xe65b;', 1);
INSERT INTO `sys_menu` VALUES (9, 3, '订单管理', '../bus/toRentManager.action', 0, '', '&#xe6b2;', 1);
INSERT INTO `sys_menu` VALUES (10, 3, '汽车入库', '../bus/toCheckCarManager.action', 0, '', '&#xe65a;', 1);
INSERT INTO `sys_menu` VALUES (11, 3, '检查单', '../bus/toCheckManager.action', 0, '', '&#xe705;', 1);
INSERT INTO `sys_menu` VALUES (12, 4, '菜单管理', '../sys/toMenuManager.action', 0, NULL, '&#xe60f;', 1);
INSERT INTO `sys_menu` VALUES (13, 4, '角色管理', '../sys/toRoleManager.action', 0, '', '&#xe66f;', 1);
INSERT INTO `sys_menu` VALUES (14, 4, '管理员管理', '../sys/toUserManager.action', 0, '', '&#xe770;', 1);
INSERT INTO `sys_menu` VALUES (15, 4, '日志管理', '../sys/toLogInfoManager.action', 0, '', '&#xe655;', 1);
INSERT INTO `sys_menu` VALUES (16, 4, '公告管理', '../sys/toNewsManager.action', 0, '', '&#xe645;', 1);
INSERT INTO `sys_menu` VALUES (18, 5, '客户地区统计', '../stat/toCustomerAreaStat.action', 0, '', '&#xe63c;', 1);
INSERT INTO `sys_menu` VALUES (19, 5, '年度月份租赁额', '../stat/toCompanyYearGradeStat.action', 0, '', '&#xe62c;', 1);
INSERT INTO `sys_menu` VALUES (20, 5, '业务员年度销售额', '../stat/toOpernameYearGradeStat.action', 0, '', '&#xe62d;', 1);
INSERT INTO `sys_menu` VALUES (23, 1, '婚庆用车', '../bus/toRentMyselfCarManager.action', 0, '', '&#xe626;', 1);
INSERT INTO `sys_menu` VALUES (24, 1, '个人待租赁订单', '../customerRent/toCustomerBusRentDetail.action', 0, '', '&#xe770;', 1);
INSERT INTO `sys_menu` VALUES (25, 1, '个人订单', '../bus/toCustomerRentManager.action', 0, '', '&#xe62a;', 1);

-- ----------------------------
-- Table structure for sys_news
-- ----------------------------
DROP TABLE IF EXISTS `sys_news`;
CREATE TABLE `sys_news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_news
-- ----------------------------
INSERT INTO `sys_news` VALUES (19, '婚庆用车系统公告', '公告！！！！！', '2021-03-05 18:01:14', '管理员');
INSERT INTO `sys_news` VALUES (20, '用户你们都可以通过首页看的到', '打折了，打折了，租车免费了', '2021-03-18 19:09:40', '管理员');
INSERT INTO `sys_news` VALUES (21, '有问题请致电', '电话：653000', '2021-03-19 19:13:31', '管理员');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roledesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `available` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', '拥有所有菜单权限', 1);
INSERT INTO `sys_role` VALUES (2, '业务管理员', '拥有所以业务菜单', 1);
INSERT INTO `sys_role` VALUES (3, '系统管理员', '管理系统', 1);
INSERT INTO `sys_role` VALUES (4, '数据统计管理员', '数据统计管理员', 1);
INSERT INTO `sys_role` VALUES (5, '客户', '客户使用权', 1);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `rid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`rid`, `mid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 5);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 8);
INSERT INTO `sys_role_menu` VALUES (1, 9);
INSERT INTO `sys_role_menu` VALUES (1, 10);
INSERT INTO `sys_role_menu` VALUES (1, 11);
INSERT INTO `sys_role_menu` VALUES (1, 12);
INSERT INTO `sys_role_menu` VALUES (1, 14);
INSERT INTO `sys_role_menu` VALUES (1, 15);
INSERT INTO `sys_role_menu` VALUES (1, 16);
INSERT INTO `sys_role_menu` VALUES (1, 18);
INSERT INTO `sys_role_menu` VALUES (1, 19);
INSERT INTO `sys_role_menu` VALUES (1, 20);
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 6);
INSERT INTO `sys_role_menu` VALUES (2, 7);
INSERT INTO `sys_role_menu` VALUES (2, 8);
INSERT INTO `sys_role_menu` VALUES (2, 9);
INSERT INTO `sys_role_menu` VALUES (2, 10);
INSERT INTO `sys_role_menu` VALUES (2, 11);
INSERT INTO `sys_role_menu` VALUES (3, 1);
INSERT INTO `sys_role_menu` VALUES (3, 4);
INSERT INTO `sys_role_menu` VALUES (3, 12);
INSERT INTO `sys_role_menu` VALUES (3, 13);
INSERT INTO `sys_role_menu` VALUES (3, 14);
INSERT INTO `sys_role_menu` VALUES (3, 15);
INSERT INTO `sys_role_menu` VALUES (3, 16);
INSERT INTO `sys_role_menu` VALUES (4, 1);
INSERT INTO `sys_role_menu` VALUES (4, 5);
INSERT INTO `sys_role_menu` VALUES (4, 18);
INSERT INTO `sys_role_menu` VALUES (4, 19);
INSERT INTO `sys_role_menu` VALUES (4, 20);
INSERT INTO `sys_role_menu` VALUES (5, 1);
INSERT INTO `sys_role_menu` VALUES (5, 23);
INSERT INTO `sys_role_menu` VALUES (5, 24);
INSERT INTO `sys_role_menu` VALUES (5, 25);

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`uid`, `rid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (8, 1);
INSERT INTO `sys_role_user` VALUES (11, 1);
INSERT INTO `sys_role_user` VALUES (11, 2);
INSERT INTO `sys_role_user` VALUES (11, 3);
INSERT INTO `sys_role_user` VALUES (11, 4);
INSERT INTO `sys_role_user` VALUES (410721, 5);
INSERT INTO `sys_role_user` VALUES (410722, 5);
INSERT INTO `sys_role_user` VALUES (410723, 5);
INSERT INTO `sys_role_user` VALUES (45464465, 5);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(255) NULL DEFAULT NULL COMMENT '0女1男',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(255) NULL DEFAULT 2 COMMENT '1，超级管理员,2，系统用户',
  `available` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45464466 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (8, 'admin', '123', '管理员', 1, '河南都是我的家', '15111111111', 'e10adc3949ba59abbe56e057f20f883e', '系统管理员', 2, 1);
INSERT INTO `sys_user` VALUES (11, 'wdk', '11111', '王道科', 1, '河南新乡', '15236610873', 'e10adc3949ba59abbe56e057f20f883e', '老大', 2, 1);
INSERT INTO `sys_user` VALUES (13, '王道科', '410721111111111111', '王道科', 1, '河南新乡', '15236610873', 'e10adc3949ba59abbe56e057f20f883e', '客户', 2, 1);
INSERT INTO `sys_user` VALUES (410721, 'wdk01', '410721', 'wdk01', 1, '河南新乡', '15236601010', 'e10adc3949ba59abbe56e057f20f883e', '客户', 2, 1);
INSERT INTO `sys_user` VALUES (45464465, 'wewrwe', '45464465', 'wewrwe', 0, 'werwerwer', '15236610873', 'e10adc3949ba59abbe56e057f20f883e', '客户', 2, 1);

SET FOREIGN_KEY_CHECKS = 1;
