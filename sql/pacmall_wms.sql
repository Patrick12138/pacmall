/*
 Navicat Premium Data Transfer

 Source Server         : centos7_mysql5.7
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : 192.168.1.2:3306
 Source Schema         : pacmall_wms

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 07/07/2022 18:42:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `branch_id` bigint(20) NOT NULL,
  `xid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `context` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rollback_info` longblob NOT NULL,
  `log_status` int(11) NOT NULL,
  `log_created` datetime(0) NOT NULL,
  `log_modified` datetime(0) NOT NULL,
  `ext` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ux_undo_log`(`xid`, `branch_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of undo_log
-- ----------------------------

-- ----------------------------
-- Table structure for wms_purchase
-- ----------------------------
DROP TABLE IF EXISTS `wms_purchase`;
CREATE TABLE `wms_purchase`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assignee_id` bigint(20) NULL DEFAULT NULL,
  `assignee_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` char(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `priority` int(4) NULL DEFAULT NULL,
  `status` int(4) NULL DEFAULT NULL,
  `ware_id` bigint(20) NULL DEFAULT NULL,
  `amount` decimal(18, 4) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_purchase
-- ----------------------------

-- ----------------------------
-- Table structure for wms_purchase_detail
-- ----------------------------
DROP TABLE IF EXISTS `wms_purchase_detail`;
CREATE TABLE `wms_purchase_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `purchase_id` bigint(20) NULL DEFAULT NULL COMMENT '?????????id',
  `sku_id` bigint(20) NULL DEFAULT NULL COMMENT '????????????id',
  `sku_num` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `sku_price` decimal(18, 4) NULL DEFAULT NULL COMMENT '????????????',
  `ware_id` bigint(20) NULL DEFAULT NULL COMMENT '??????id',
  `status` int(11) NULL DEFAULT NULL COMMENT '??????[0?????????1????????????2???????????????3????????????4????????????]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_purchase_detail
-- ----------------------------

-- ----------------------------
-- Table structure for wms_ware_info
-- ----------------------------
DROP TABLE IF EXISTS `wms_ware_info`;
CREATE TABLE `wms_ware_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `areacode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_ware_info
-- ----------------------------
INSERT INTO `wms_ware_info` VALUES (1, '1', '1', '1');

-- ----------------------------
-- Table structure for wms_ware_order_task
-- ----------------------------
DROP TABLE IF EXISTS `wms_ware_order_task`;
CREATE TABLE `wms_ware_order_task`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT 'order_id',
  `order_sn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'order_sn',
  `consignee` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '?????????',
  `consignee_tel` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  `delivery_address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `order_comment` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `payment_way` tinyint(1) NULL DEFAULT NULL COMMENT '??????????????? 1:???????????? 2:???????????????',
  `task_status` tinyint(2) NULL DEFAULT NULL COMMENT '????????????',
  `order_body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `tracking_no` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '????????????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT 'create_time',
  `ware_id` bigint(20) NULL DEFAULT NULL COMMENT '??????id',
  `task_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '???????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_ware_order_task
-- ----------------------------

-- ----------------------------
-- Table structure for wms_ware_order_task_detail
-- ----------------------------
DROP TABLE IF EXISTS `wms_ware_order_task_detail`;
CREATE TABLE `wms_ware_order_task_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sku_id` bigint(20) NULL DEFAULT NULL COMMENT 'sku_id',
  `sku_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku_name',
  `sku_num` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `task_id` bigint(20) NULL DEFAULT NULL COMMENT '?????????id',
  `ware_id` bigint(20) NULL DEFAULT NULL COMMENT '??????id',
  `lock_status` int(1) NULL DEFAULT NULL COMMENT '1-?????????  2-?????????  3-??????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '???????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_ware_order_task_detail
-- ----------------------------

-- ----------------------------
-- Table structure for wms_ware_sku
-- ----------------------------
DROP TABLE IF EXISTS `wms_ware_sku`;
CREATE TABLE `wms_ware_sku`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sku_id` bigint(20) NULL DEFAULT NULL COMMENT 'sku_id',
  `ware_id` bigint(20) NULL DEFAULT NULL COMMENT '??????id',
  `stock` int(11) NULL DEFAULT NULL COMMENT '?????????',
  `sku_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku_name',
  `stock_locked` int(11) NULL DEFAULT 0 COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sku_id`(`sku_id`) USING BTREE,
  INDEX `ware_id`(`ware_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_ware_sku
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
