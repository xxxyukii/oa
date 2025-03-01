/*
 Navicat Premium Data Transfer

 Source Server         : localhost_53306
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : localhost:53306
 Source Schema         : ry-vue

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 01/03/2025 11:43:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for assets
-- ----------------------------
DROP TABLE IF EXISTS `assets`;
CREATE TABLE `assets`  (
  `asset_id` bigint NOT NULL AUTO_INCREMENT COMMENT '资产编号',
  `asset_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资产名称',
  `asset_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产类型',
  `brand` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌',
  `model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '型号',
  `sn_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'sn号',
  `manufacturing_date` date NULL DEFAULT NULL COMMENT '出厂日期',
  `inbound_date` date NULL DEFAULT NULL COMMENT '入库日期',
  `purchase_batch` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '购买批号',
  `quantity` int NULL DEFAULT NULL COMMENT '数量',
  `unit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所属人',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_id` bigint NULL DEFAULT NULL COMMENT '所属部门',
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产所在位置',
  `status` tinyint NULL DEFAULT NULL COMMENT '状态 （正常 维修 报废）',
  `is_in_stock` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否在库',
  `is_new` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否全新',
  `asset_manager_id` bigint NULL DEFAULT NULL COMMENT '资产管理员',
  `asset_manager_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产管理人所属人姓名',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日期',
  PRIMARY KEY (`asset_id`) USING BTREE,
  UNIQUE INDEX `sn_number`(`sn_number` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of assets
-- ----------------------------
INSERT INTO `assets` VALUES (1, 'Laptop A', '0', 'BrandX', 'ModelX1', 'SN0001', '2023-01-01', '2023-02-01', 'BATCH001', 89, 'pcs', 'Office use', '1', 'admin', 103, 'Tokyo Office', 0, 'Y', 'Y', 1, 'admin', '2025-01-20 16:03:20', '2025-02-18 23:43:42');
INSERT INTO `assets` VALUES (2, 'Monitor B', '1', 'BrandY', 'ModelY1', 'SN0002', '2023-01-02', '2023-02-02', 'BATCH002', 20, 'pcs', 'For staff', '2', 'ry', 106, 'Osaka Branch', 1, 'Y', 'N', 2, 'admin', '2025-01-23 16:53:18', '2025-02-27 14:23:06');
INSERT INTO `assets` VALUES (3, 'Printer C', '2', 'BrandZ', 'ModelZ1', 'SN0003', '2023-01-03', '2023-02-03', 'BATCH003', 5, 'pcs', 'Shared resource', '120', 'Alice', 104, 'Kyoto Office', 1, 'N', 'Y', 1, NULL, '2025-01-02 15:11:44', '2025-01-23 11:46:45');
INSERT INTO `assets` VALUES (4, 'Tablet D', '2', 'BrandX', 'ModelX2', 'SN0004', '2023-01-04', '2023-02-04', 'BATCH004', 15, 'pcs', 'Mobile use', '121', 'Bob', 106, 'Tokyo Office', 1, 'Y', 'Y', 1, NULL, '2025-01-02 15:11:44', '2025-01-23 11:46:49');
INSERT INTO `assets` VALUES (5, 'Chair E', '1', 'BrandW', 'ModelW1', 'SN0005', '2023-01-05', '2023-02-05', 'BATCH005', 47, 'pcs', 'Office furniture', '1', 'admin', 107, 'Osaka Branch', 0, 'Y', 'Y', 1, NULL, '2025-01-02 15:11:44', '2025-02-18 15:32:31');
INSERT INTO `assets` VALUES (6, 'Desk F', '1', 'BrandU', 'ModelU1', 'SN0006', '2023-01-06', '2023-02-06', 'BATCH006', 30, 'pcs', 'Workspaces', '143', 'user001', 104, 'Kyoto Office', 1, 'N', 'Y', 1, NULL, '2025-01-02 15:11:44', '2025-01-23 11:47:00');
INSERT INTO `assets` VALUES (7, 'Server G', '1', 'BrandV', 'ModelV1', 'SN0007', '2023-01-07', '2023-02-07', 'BATCH007', 10, 'units', 'Data center', '144', 'user002', 106, 'Data Center A', 2, 'Y', 'Y', 1, NULL, '2025-01-02 15:11:44', '2025-02-27 14:17:15');
INSERT INTO `assets` VALUES (8, 'Router H', '1', 'BrandT', 'ModelT1', 'SN0008', '2023-01-08', '2023-02-08', 'BATCH008', 10, 'units', 'Network', '145', 'user003', 104, 'Tokyo Office', 2, 'Y', 'N', 1, NULL, '2025-01-02 15:11:44', '2025-01-23 11:47:08');
INSERT INTO `assets` VALUES (9, 'Switch I', '1', 'BrandS', 'ModelS1', 'SN0009', '2023-01-09', '2023-02-09', 'BATCH009', 5, 'units', 'Network', '146', 'user004', 106, 'Data Center B', 1, 'N', 'Y', 1, NULL, '2025-01-02 15:11:44', '2025-01-23 11:47:14');
INSERT INTO `assets` VALUES (10, 'Phone J', '2', 'BrandR', 'ModelR1', 'SN0010', '2023-01-10', '2023-02-10', 'BATCH010', 25, 'pcs', 'Staff use', '147', 'user005', 104, 'Osaka Branch', 0, 'N', 'N', 1, NULL, '2025-01-02 15:11:44', '2025-01-23 11:47:18');
INSERT INTO `assets` VALUES (26, '11', '0', '111', '111', 'XYZELE74004217', '2025-02-19', '2025-02-13', '1111', 10, '台', NULL, NULL, NULL, 105, 'a02', 0, 'N', 'Y', NULL, 'admin', '2025-02-13 15:51:18', '2025-02-27 14:17:18');

-- ----------------------------
-- Table structure for booking_user
-- ----------------------------
DROP TABLE IF EXISTS `booking_user`;
CREATE TABLE `booking_user`  (
  `booking_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `notification_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`booking_id`, `user_id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `booking_user_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `meeting_bookings` (`booking_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `booking_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of booking_user
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'auth_dept', '部门表', '', '', 'AuthDept', 'tree', 'element-ui', 'com.bx.auth', 'auth', 'dept', '部门', 'ruoyi', '0', '/', '{\"treeCode\":\"dept_id\",\"treeName\":\"dept_name\",\"treeParentCode\":\"parent_id\"}', 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:22:43', NULL);
INSERT INTO `gen_table` VALUES (2, 'auth_user', '用户信息表', NULL, NULL, 'AuthUser', 'crud', 'element-ui', 'com.bx.auth', 'auth', '员工', '用户信息', 'ruoyi', '0', '/', '{}', 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14', NULL);
INSERT INTO `gen_table` VALUES (3, 'auth_user_dept', '员工部门关联表', NULL, NULL, 'AuthUserDept', 'crud', 'element-ui', 'com.bx.auth', 'auth', 'dept', '员工部门关联', 'ruoyi', '0', '/', '{}', 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:34', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, 1, 'dept_id', '部门id', 'bigint', 'Long', 'deptId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:22:43');
INSERT INTO `gen_table_column` VALUES (2, 1, 'parent_id', '父部门id', 'bigint', 'Long', 'parentId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:22:43');
INSERT INTO `gen_table_column` VALUES (3, 1, 'ancestors', '祖级列表', 'varchar(50)', 'String', 'ancestors', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:22:43');
INSERT INTO `gen_table_column` VALUES (4, 1, 'dept_name', '部门名称', 'varchar(30)', 'String', 'deptName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:22:43');
INSERT INTO `gen_table_column` VALUES (5, 1, 'order_num', '显示顺序', 'int', 'Long', 'orderNum', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:22:43');
INSERT INTO `gen_table_column` VALUES (6, 1, 'status', '部门状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'radio', '', 6, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:22:43');
INSERT INTO `gen_table_column` VALUES (7, 1, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:22:43');
INSERT INTO `gen_table_column` VALUES (8, 1, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:22:43');
INSERT INTO `gen_table_column` VALUES (9, 1, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:22:43');
INSERT INTO `gen_table_column` VALUES (10, 1, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:22:43');
INSERT INTO `gen_table_column` VALUES (11, 1, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:22:43');
INSERT INTO `gen_table_column` VALUES (12, 2, 'user_id', '用户ID', 'bigint', 'Long', 'userId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14');
INSERT INTO `gen_table_column` VALUES (13, 2, 'name', '姓名', 'varchar(30)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14');
INSERT INTO `gen_table_column` VALUES (14, 2, 'nick_name', '用户昵称', 'varchar(30)', 'String', 'nickName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14');
INSERT INTO `gen_table_column` VALUES (15, 2, 'gender', '用户性别（0男 1女 2未知）', 'char(1)', 'String', 'gender', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14');
INSERT INTO `gen_table_column` VALUES (16, 2, 'emp_number', '工号', 'varchar(30)', 'String', 'empNumber', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14');
INSERT INTO `gen_table_column` VALUES (17, 2, 'email', '用户邮箱', 'varchar(50)', 'String', 'email', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14');
INSERT INTO `gen_table_column` VALUES (18, 2, 'phonenumber', '手机号码', 'varchar(11)', 'String', 'phonenumber', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14');
INSERT INTO `gen_table_column` VALUES (19, 2, 'user_type', '用户类型（00系统用户）', 'varchar(2)', 'String', 'userType', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 8, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14');
INSERT INTO `gen_table_column` VALUES (20, 2, 'password', '密码', 'varchar(100)', 'String', 'password', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14');
INSERT INTO `gen_table_column` VALUES (21, 2, 'avatar', '头像地址', 'varchar(100)', 'String', 'avatar', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14');
INSERT INTO `gen_table_column` VALUES (22, 2, 'status', '帐号状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'radio', '', 11, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14');
INSERT INTO `gen_table_column` VALUES (23, 2, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14');
INSERT INTO `gen_table_column` VALUES (24, 2, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14');
INSERT INTO `gen_table_column` VALUES (25, 2, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14');
INSERT INTO `gen_table_column` VALUES (26, 2, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14');
INSERT INTO `gen_table_column` VALUES (27, 2, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14');
INSERT INTO `gen_table_column` VALUES (28, 2, 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', '0', '1', '1', '1', NULL, 'EQ', 'textarea', '', 17, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:14');
INSERT INTO `gen_table_column` VALUES (29, 3, 'user_id', '用户ID', 'bigint', 'Long', 'userId', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:34');
INSERT INTO `gen_table_column` VALUES (30, 3, 'dept_id', '部门id', 'bigint', 'Long', 'deptId', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:34');
INSERT INTO `gen_table_column` VALUES (31, 3, 'position', '职位', 'varchar(30)', 'String', 'position', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:34');
INSERT INTO `gen_table_column` VALUES (32, 3, 'desc', '描述', 'varchar(30)', 'String', 'desc', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:34');
INSERT INTO `gen_table_column` VALUES (33, 3, 'is_leader', '是否是部门负责人', 'char(1)', 'String', 'isLeader', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:34');
INSERT INTO `gen_table_column` VALUES (34, 3, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:34');
INSERT INTO `gen_table_column` VALUES (35, 3, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:34');
INSERT INTO `gen_table_column` VALUES (36, 3, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:34');
INSERT INTO `gen_table_column` VALUES (37, 3, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2024-10-27 11:18:06', '', '2024-10-27 11:23:34');

-- ----------------------------
-- Table structure for leave_requests
-- ----------------------------
DROP TABLE IF EXISTS `leave_requests`;
CREATE TABLE `leave_requests`  (
  `leave_id` bigint NOT NULL AUTO_INCREMENT COMMENT '请假申请 ID\n',
  `user_id` bigint NOT NULL COMMENT '申请人ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '审核状态（pending, approved, rejected）',
  `process` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '当前进度',
  `leave_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请假类型',
  `start_date` date NULL DEFAULT NULL COMMENT '请假开始日期\n',
  `end_date` date NULL DEFAULT NULL COMMENT '请假结束日期\n',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请假原因\n',
  `reviewed_by` bigint NULL DEFAULT NULL COMMENT '审核人 ID\n',
  `review_date` datetime NULL DEFAULT NULL COMMENT '审核日期\n',
  PRIMARY KEY (`leave_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leave_requests
-- ----------------------------

-- ----------------------------
-- Table structure for meeting_bookings
-- ----------------------------
DROP TABLE IF EXISTS `meeting_bookings`;
CREATE TABLE `meeting_bookings`  (
  `booking_id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint NOT NULL,
  `user_id` bigint NULL DEFAULT NULL COMMENT '预约人',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门',
  `phonenumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系方式',
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `purpose` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '预约目的 会议用途',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '会议主题 申请理由',
  `checkedAttendees` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所有的参会信息 参会人或者参会部门',
  `status` tinyint NULL DEFAULT NULL COMMENT '审核状态（0:已发起，1:审核中，2：已同意，3：已驳回，）',
  `examineReason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`booking_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meeting_bookings
-- ----------------------------
INSERT INTO `meeting_bookings` VALUES (6, 3, 121, NULL, '13012345678', '2024-12-03 19:59:44', '2024-12-04 19:59:48', NULL, '2024-12-09 19:59:59', '技术交流', NULL, 1, NULL);
INSERT INTO `meeting_bookings` VALUES (7, 5, 120, NULL, '13566666666', '2024-12-12 13:56:01', '2024-12-12 15:56:07', NULL, '2024-12-10 13:56:24', 'Java', NULL, 0, NULL);
INSERT INTO `meeting_bookings` VALUES (14, 1, 1, NULL, '15888888888', '2024-12-31 13:00:00', '2024-12-31 15:00:00', NULL, '2024-12-31 09:23:00', '1231test', NULL, 0, NULL);
INSERT INTO `meeting_bookings` VALUES (15, 2, 163, NULL, '18888888888', '2024-12-31 14:00:00', '2024-12-31 15:00:00', NULL, '2024-12-31 09:25:07', '1231_test_2', NULL, 2, '会议室装修');
INSERT INTO `meeting_bookings` VALUES (16, 1, 2, NULL, '15666666666', '2024-12-31 10:00:00', '2024-12-31 11:00:00', '年末活动', '2024-12-31 09:38:28', '1231_test_2', NULL, 0, NULL);
INSERT INTO `meeting_bookings` VALUES (17, 1, 1, NULL, '15888888888', '2024-12-31 15:00:00', '2024-12-31 16:00:00', 'java', '2024-12-31 11:22:11', '1231_test_2', '[{\"id\":149,\"label\":\"user007\",\"isLeaf\":true,\"type\":2,\"key\":\"2_149\"},{\"id\":159,\"label\":\"user017\",\"isLeaf\":true,\"type\":2,\"key\":\"2_159\"},{\"id\":161,\"label\":\"user019\",\"isLeaf\":true,\"type\":2,\"key\":\"2_161\"},{\"id\":107,\"label\":\"运维部门\",\"isLeaf\":false,\"type\":1,\"key\":\"1_107\"}]', 0, NULL);
INSERT INTO `meeting_bookings` VALUES (22, 7, 1, 101, '15888888888', '2025-01-02 02:24:47', '2025-01-02 09:25:58', NULL, '2025-01-02 09:25:26', 'test01 起始日期', '[{\"id\":101,\"label\":\"深圳总公司\",\"isLeaf\":false,\"type\":1,\"key\":\"1_101\"}]', 1, '');
INSERT INTO `meeting_bookings` VALUES (23, 15, 1, 104, '15888888888', '2025-01-24 00:00:00', '2025-01-31 00:00:00', NULL, '2025-01-18 13:23:21', 'test0118', '[{\"id\":104,\"label\":\"市场部门\",\"isLeaf\":false,\"type\":1,\"key\":\"1_104\"},{\"id\":144,\"label\":\"user002\",\"isLeaf\":true,\"type\":2,\"key\":\"2_144\"},{\"id\":146,\"label\":\"user004\",\"isLeaf\":true,\"type\":2,\"key\":\"2_146\"}]', 1, '');
INSERT INTO `meeting_bookings` VALUES (24, 6, 163, NULL, '18888888888', '2025-02-14 00:00:00', '2025-02-19 00:00:00', '111', '2025-02-13 02:38:04', '11', '[{\"id\":143,\"label\":\"user001\",\"isLeaf\":true,\"type\":2,\"key\":\"2_143\"},{\"id\":145,\"label\":\"user003\",\"isLeaf\":true,\"type\":2,\"key\":\"2_145\"},{\"id\":147,\"label\":\"user005\",\"isLeaf\":true,\"type\":2,\"key\":\"2_147\"}]', 0, NULL);
INSERT INTO `meeting_bookings` VALUES (28, 4, 1, 101, '15888888888', '2025-02-21 00:00:00', '2025-02-22 00:00:00', NULL, '2025-02-13 06:58:18', '111', '[{\"id\":101,\"label\":\"深圳总公司\",\"isLeaf\":false,\"type\":1,\"key\":\"1_101\"}]', 0, NULL);

-- ----------------------------
-- Table structure for meeting_rooms
-- ----------------------------
DROP TABLE IF EXISTS `meeting_rooms`;
CREATE TABLE `meeting_rooms`  (
  `room_id` bigint(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `room_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '会议室名称',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '会议室位置',
  `capacity` int NOT NULL COMMENT '会议室容量',
  `available` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否可用（0：不可用，1：可用）\n',
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '会议室图片URL',
  `equipment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '会议室设备（如投影仪、白板），用逗号分隔',
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间（记录会议室信息添加的时间）',
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `in_use` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '是否正在使用（0：空闲，1：使用中）',
  PRIMARY KEY (`room_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meeting_rooms
-- ----------------------------
INSERT INTO `meeting_rooms` VALUES (00000000000000000001, '会议室A', '一楼', 10, '1', 'https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png', '投影仪,白板', '2023-05-01 09:00:00', '2023-05-10 15:30:00', '0');
INSERT INTO `meeting_rooms` VALUES (00000000000000000002, '会议室B', '二楼', 20, '0', 'https://t10.baidu.com/it/u=1059024432,2442969642&fm=58', '电视,麦克风', '2023-04-15 14:20:00', '2024-11-27 17:06:42', '1');
INSERT INTO `meeting_rooms` VALUES (00000000000000000004, '会议室D', '四楼', 50, '0', 'https://example.com/image_d.jpg', '电视,白板,视频会议系统', '2023-02-20 13:45:00', '2023-03-01 09:30:00', '1');
INSERT INTO `meeting_rooms` VALUES (00000000000000000006, '会议室F', '六楼', 30, '1', 'https://example.com/image_f.jpg', '音响,麦克风', '2022-12-12 07:45:00', '2023-01-20 14:15:00', '1');
INSERT INTO `meeting_rooms` VALUES (00000000000000000007, '会议室G', '七楼', 100, '0', 'https://example.com/image_g.jpg', '投影仪,电视,白板', '2023-06-10 16:30:00', '2023-06-12 18:00:00', '0');
INSERT INTO `meeting_rooms` VALUES (00000000000000000020, '1', '1', 200, NULL, '0', 'aaa', '2025-02-14 07:44:40', '2025-02-14 07:44:40', '0');
INSERT INTO `meeting_rooms` VALUES (00000000000000000021, 'vvv', '1111', 10, NULL, '1', 'vvv', '2025-02-14 08:26:23', '2025-02-14 08:26:23', '1');
INSERT INTO `meeting_rooms` VALUES (00000000000000000022, '11', NULL, 1, NULL, NULL, '', '2025-02-16 09:27:15', '2025-02-16 09:27:15', '0');
INSERT INTO `meeting_rooms` VALUES (00000000000000000023, 'qwewq', NULL, 2, NULL, NULL, '', '2025-02-16 17:40:42', '2025-02-16 17:40:42', '0');
INSERT INTO `meeting_rooms` VALUES (00000000000000000024, '11111', NULL, 1, NULL, '0', '1111', '2025-02-16 20:53:47', '2025-02-16 20:53:47', '0');
INSERT INTO `meeting_rooms` VALUES (00000000000000000025, 'www11111111111', NULL, 7, NULL, '0', 'kkkk', '2025-02-16 21:02:19', '2025-02-16 21:02:19', '0');

-- ----------------------------
-- Table structure for repair_order
-- ----------------------------
DROP TABLE IF EXISTS `repair_order`;
CREATE TABLE `repair_order`  (
  `repair_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '申请id',
  `asset_id` bigint NULL DEFAULT NULL COMMENT '资产id',
  `user_id` bigint NOT NULL COMMENT '申请人id',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `repair_date` datetime NULL DEFAULT NULL COMMENT '申请日期',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述 故障现象',
  `image_url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片url',
  `repair_status` tinyint NULL DEFAULT NULL COMMENT '订单状态 申请-进行中-已完结',
  `asset_manager_id` bigint NULL DEFAULT NULL COMMENT '资产管理人/审批人',
  `product_change` tinyint NULL DEFAULT NULL COMMENT '是否换新/维修操作',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `repairman` bigint NULL DEFAULT NULL COMMENT '维修人',
  `repair_method` tinyint NULL DEFAULT NULL COMMENT '状态某个节点 维修方式维修中 已更换',
  PRIMARY KEY (`repair_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repair_order
-- ----------------------------
INSERT INTO `repair_order` VALUES (4, 1, 1, 'admin', '2025-02-25 00:00:00', '艮艮艮艮艮艮艮艮艮艮根根', 'http://localhost:8080/uploads/7c544cf8-c9c5-46c2-906a-963d88f5a761.jpg,http://localhost:8080/uploads/b4a97b63-8527-456d-bc03-c3debfca1af2.png,http://localhost:8080/uploads/8601f99b-8c25-41b5-ac25-da09382633b8.png', 0, NULL, 2, '2025-02-18 22:26:36', NULL, 1, NULL);
INSERT INTO `repair_order` VALUES (5, 1, 1, 'admin', '2025-02-25 00:00:00', NULL, 'http://localhost:8080/uploads/7c544cf8-c9c5-46c2-906a-963d88f5a761.jpg,http://localhost:8080/uploads/b4a97b63-8527-456d-bc03-c3debfca1af2.png,http://localhost:8080/uploads/8601f99b-8c25-41b5-ac25-da09382633b8.png', 0, 1, 2, '2025-02-18 22:27:45', NULL, 1, NULL);
INSERT INTO `repair_order` VALUES (6, 1, 1, 'admin', '2025-02-27 00:00:00', 'qqq', 'http://localhost:8080/uploads/6f285bb4-8569-4d01-a354-5255451d1b62.jpg,http://localhost:8080/uploads/e8a2736c-e478-4d98-a170-4e83209ee596.png', 0, NULL, 2, '2025-02-18 22:28:22', NULL, NULL, NULL);
INSERT INTO `repair_order` VALUES (7, 1, 1, 'admin', '2025-02-25 00:00:00', NULL, 'http://localhost:8080/uploads/858e85aa-dce5-4528-9cc1-277cc6c05e53.jpg,http://localhost:8080/uploads/a2fb2e32-e68d-4383-92d5-6fb60db605e4.jpg', 0, NULL, 2, '2025-02-18 22:37:57', NULL, 1, NULL);
INSERT INTO `repair_order` VALUES (8, 1, 1, 'admin', '2025-02-25 00:00:00', NULL, 'http://localhost:8080/uploads/fadaf429-c037-4321-9ac5-052f2ecc43d8.jpg,http://localhost:8080/uploads/78f7eecc-d856-4452-bce5-35ceeeba8502.png', 0, NULL, 2, '2025-02-18 23:34:01', NULL, NULL, NULL);
INSERT INTO `repair_order` VALUES (9, 1, 1, 'admin', '2025-02-18 00:00:00', NULL, 'http://localhost:8080/uploads/3397e02e-62b4-45d1-9d0c-222d8be158b6.jpg,http://localhost:8080/uploads/572862cf-ddc5-4744-923f-1dffa495ef54.png', 1, NULL, 2, '2025-02-18 23:36:43', NULL, 1, NULL);
INSERT INTO `repair_order` VALUES (12, 2, 2, 'ry', '2025-02-27 00:00:00', 'aaaaaaaaa', NULL, 1, 2, 1, '2025-02-24 17:21:13', NULL, 1, NULL);
INSERT INTO `repair_order` VALUES (13, 2, 2, 'ry', '2025-02-27 00:00:00', '哈哈哈哈哈哈哈哈', NULL, 0, 2, 1, '2025-02-24 17:22:38', NULL, NULL, NULL);
INSERT INTO `repair_order` VALUES (14, 2, 2, 'ry', '2025-02-27 00:00:00', '11111', 'http://localhost:8080/uploads/1e34ec2b-4ca7-4bee-8d86-5eb552f8d182.png', 0, NULL, 2, '2025-02-24 17:23:37', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_attendance
-- ----------------------------
DROP TABLE IF EXISTS `sys_attendance`;
CREATE TABLE `sys_attendance`  (
  `att_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'attendance考勤表Id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门id',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户账号',
  `attendance_date` date NULL DEFAULT NULL COMMENT '打卡日期',
  `am_time` datetime NULL DEFAULT NULL COMMENT '上班打卡',
  `pm_time` datetime NULL DEFAULT NULL COMMENT '下班打卡',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`att_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5400 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_attendance
-- ----------------------------
INSERT INTO `sys_attendance` VALUES (980, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '上班未打卡');
INSERT INTO `sys_attendance` VALUES (981, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (982, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (983, 120, 104, 'Alice', '2024-11-19', '2024-11-19 06:40:20', '2024-11-19 23:20:00', NULL);
INSERT INTO `sys_attendance` VALUES (984, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (985, 122, 107, 'Charlie', '2024-11-19', '2024-11-19 09:21:33', '2024-11-19 19:21:33', '补了上班卡');
INSERT INTO `sys_attendance` VALUES (986, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (987, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1151, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1152, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1153, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1154, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1155, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1156, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1157, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1158, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1159, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1160, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1161, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1162, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1163, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1164, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1165, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1166, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1167, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1168, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1169, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1170, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1171, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1172, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1173, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1174, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1175, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1176, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1177, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1178, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1179, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1180, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1181, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1182, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1183, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1184, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1185, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1186, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1187, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1188, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1189, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1190, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1191, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1192, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1193, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1194, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1195, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1196, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1197, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1198, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1199, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1200, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1201, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1202, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1203, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1204, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1205, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1206, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1207, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1208, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1209, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1210, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1211, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1212, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1213, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1214, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1215, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1216, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1217, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1218, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1219, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1887, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1888, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1889, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1890, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1891, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1892, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1893, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1894, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1895, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1896, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1897, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1898, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1899, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1900, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1901, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1902, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1903, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1904, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1905, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1906, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1907, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1908, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1909, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1910, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1911, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1912, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1913, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1914, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1915, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1916, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1917, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1918, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1919, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1920, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1921, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1922, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1923, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1924, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1925, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1926, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1927, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1928, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1929, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1930, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1931, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1932, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1933, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1934, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1935, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1936, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1937, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1938, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1939, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1940, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1941, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1942, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1943, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1944, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1945, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1946, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1947, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1948, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1949, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1950, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1951, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1952, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1953, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1954, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1955, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1956, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1957, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1958, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1959, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1960, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1961, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1962, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1963, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1964, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1965, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1966, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1967, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1968, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1969, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1970, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1971, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1972, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1973, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1974, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1975, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1976, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1977, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1978, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1979, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1980, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1981, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1982, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1983, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1984, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1985, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1986, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1987, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1988, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1989, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1990, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1991, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1992, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1993, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1994, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (1995, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (1996, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (1997, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (1998, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (1999, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2000, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2001, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2002, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2003, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2004, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2005, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2006, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2007, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2008, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2009, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2010, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2011, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2012, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2013, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2014, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2015, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2016, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2017, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2018, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2019, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2020, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2021, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2022, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2023, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2024, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2025, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2026, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2027, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2028, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2029, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2030, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2031, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2032, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2033, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2034, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2035, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2036, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2037, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2038, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2039, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2040, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2041, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2042, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2043, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2044, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2045, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2046, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2047, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2048, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2049, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2050, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2051, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2052, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2053, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2054, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2055, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2056, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2057, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2058, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2059, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2060, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2061, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2062, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2063, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2064, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2065, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2066, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2067, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2068, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2069, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2070, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2071, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2072, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2073, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2074, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2075, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2076, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2077, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2078, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2079, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2080, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2081, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2082, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2083, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2084, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2085, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2086, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2087, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2088, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2089, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2090, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2091, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2092, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2093, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2094, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2095, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2096, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2097, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2098, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2099, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2100, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2101, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2102, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2103, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2104, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2105, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2106, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2107, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2108, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2109, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2110, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2111, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2112, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2113, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2114, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2115, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2116, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2117, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2118, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2119, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2120, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2121, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2122, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2123, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2124, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2125, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2126, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2127, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2128, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2129, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2130, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2131, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2132, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2133, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2134, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2135, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2136, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2137, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2138, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2139, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2140, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2141, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2142, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2143, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2144, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2145, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2146, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2147, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2148, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2149, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2150, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2151, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2152, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2153, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2154, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2155, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2156, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2157, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2158, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2159, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2160, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2161, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2162, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2163, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2164, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2165, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2166, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2167, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2168, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2169, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2170, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2171, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2172, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2173, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2174, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2175, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2176, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2177, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2178, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2179, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2180, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2181, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2182, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2183, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2184, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2185, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2186, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2187, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2188, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2189, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2190, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2191, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2192, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2193, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2194, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2195, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2196, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2197, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2198, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2199, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2200, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2201, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2202, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2203, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2204, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2205, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2206, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2207, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2208, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2209, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2210, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2211, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2212, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2213, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2214, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2215, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2216, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2217, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2218, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2219, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2220, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2221, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2222, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2223, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2224, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2225, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2226, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2227, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2228, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2229, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2230, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2231, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2232, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2233, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2234, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2235, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2236, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2237, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2238, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2239, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2240, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2241, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2242, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2243, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2244, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2245, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2246, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2247, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2248, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2249, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2250, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2251, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2252, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2253, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2254, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2255, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2256, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2257, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2258, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2259, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2260, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2261, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2262, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2263, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2264, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2265, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2266, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2267, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2268, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2269, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2270, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2271, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2272, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2273, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2274, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2275, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2276, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2277, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2278, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2279, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2280, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2281, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2282, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2283, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2284, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2285, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2286, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2287, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2288, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2289, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2290, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2291, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2292, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2293, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2294, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2295, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2296, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2297, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2298, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2299, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2300, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2301, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2302, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2303, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2304, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2305, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2306, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2307, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2308, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2309, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2310, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2311, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2312, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2313, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2314, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2315, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2316, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2317, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2318, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2319, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2320, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2321, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2322, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2323, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2324, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2325, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2326, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2327, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2328, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2329, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2330, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2331, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2332, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2333, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2334, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2335, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2336, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2337, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2338, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2339, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2340, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2341, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2342, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2343, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2344, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2345, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2346, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2347, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2348, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2349, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2350, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2351, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2352, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2353, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2354, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2355, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2356, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2357, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2358, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2359, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2360, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2361, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2362, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2363, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2364, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2365, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2366, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2367, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2368, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2369, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2370, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2371, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2372, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2373, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2374, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2375, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2376, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2377, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2378, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2379, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2380, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2381, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2382, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2383, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2384, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2385, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2386, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2387, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2388, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2389, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2390, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2391, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2392, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2393, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2394, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2395, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2396, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2397, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2398, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2399, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2400, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2401, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2402, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2403, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2404, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2405, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2406, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2407, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2408, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2409, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2410, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2411, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2412, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2413, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2414, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2415, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2416, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2417, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2418, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2419, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2420, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2421, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2422, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2423, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2424, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2425, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2426, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2427, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2428, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2429, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2430, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2431, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2432, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2433, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2434, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2435, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2436, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2437, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2438, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2439, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2440, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2441, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2442, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2443, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2444, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2445, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2446, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2447, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2448, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2449, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2450, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2451, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2452, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2453, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2454, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2455, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2456, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2457, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2458, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2459, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2460, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2461, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2462, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2463, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2464, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2465, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2466, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2467, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2468, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2469, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2470, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2471, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2472, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2473, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2474, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2475, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2476, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2477, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2478, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2479, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2480, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2481, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2482, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2483, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2484, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2485, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2486, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2487, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2488, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2489, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2490, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2491, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2492, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2493, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2494, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2495, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2496, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2497, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2498, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2499, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2500, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2501, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2502, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2503, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2504, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2505, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2506, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2507, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2508, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2509, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2510, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2511, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2512, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2513, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2514, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2515, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2516, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2517, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2518, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2519, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2520, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2521, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2522, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2523, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2524, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2525, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2526, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2527, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2528, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2529, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2530, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2531, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2532, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2533, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2534, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2535, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2536, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2537, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2538, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2539, 151, 104, 'user009', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2540, 152, 106, 'user010', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2541, 153, 104, 'user011', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2542, 154, 106, 'user012', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2543, 155, 104, 'user013', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2544, 156, 106, 'user014', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2545, 157, 104, 'user015', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2546, 158, 106, 'user016', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2547, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2548, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2549, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2550, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2551, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2552, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2553, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2554, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2555, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2556, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2557, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2558, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2559, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2560, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2561, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2562, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2563, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2564, 151, 104, 'user009', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2565, 152, 106, 'user010', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2566, 153, 104, 'user011', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2567, 154, 106, 'user012', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2568, 155, 104, 'user013', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2569, 156, 106, 'user014', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2570, 157, 104, 'user015', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2571, 158, 106, 'user016', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2572, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2573, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2574, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2575, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2576, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2577, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2578, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2579, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2580, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2581, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2582, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2583, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2584, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2585, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2586, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2587, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2588, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2589, 151, 104, 'user009', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2590, 152, 106, 'user010', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2591, 153, 104, 'user011', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2592, 154, 106, 'user012', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2593, 155, 104, 'user013', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2594, 156, 106, 'user014', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2595, 157, 104, 'user015', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2596, 158, 106, 'user016', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2597, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2598, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2599, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2600, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2601, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2602, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2603, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2604, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2605, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2606, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2607, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2608, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2609, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2610, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2611, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2612, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2613, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2614, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2615, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2616, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2617, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2618, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2619, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2620, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2621, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2622, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2623, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2624, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2625, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2626, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2627, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2628, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2629, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2630, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2631, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2632, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2633, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2634, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2635, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2636, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2637, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2638, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2639, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2640, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2641, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2642, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2643, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2644, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2645, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2646, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2647, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2648, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2649, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2650, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2651, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2652, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2653, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2654, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2655, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2656, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2657, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2658, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2659, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2660, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2661, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2662, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2663, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2664, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2665, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2666, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2667, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2668, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2669, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2670, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2671, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2672, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2673, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2674, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2675, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2676, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2677, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2678, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2679, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2680, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2681, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2682, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2683, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2684, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2685, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2686, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2687, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2688, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2689, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2690, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2691, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2692, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2693, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2694, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2695, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2696, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2697, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2698, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2699, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2700, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2701, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2702, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2703, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2704, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2705, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2706, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2707, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2708, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2709, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2710, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2711, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2712, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2713, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2714, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2715, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2716, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2717, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2718, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2719, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2720, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2721, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2722, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2723, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2724, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2725, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2726, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2727, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2728, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2729, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2730, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2731, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2732, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2733, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2734, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2735, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2736, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2737, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2738, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2739, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2740, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2741, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2742, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2743, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2744, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2745, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2746, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2747, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2748, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2749, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2750, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2751, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2752, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2753, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2754, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2755, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2756, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2757, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2758, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2759, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2760, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2761, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2762, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2763, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2764, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2765, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2766, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2767, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2768, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2769, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2770, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2771, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2772, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2773, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2774, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2775, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2776, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2777, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2778, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2779, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2780, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2781, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2782, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2783, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2784, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2785, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2786, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2787, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2788, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2789, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2790, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2791, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2792, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2793, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2794, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2795, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2796, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2797, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2798, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2799, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2800, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2801, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2802, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2803, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2804, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2805, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2806, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2807, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2808, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2809, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2810, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2811, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2812, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2813, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2814, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2815, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2816, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2817, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2818, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2819, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2820, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2821, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2822, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2823, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2824, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2825, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2826, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2827, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2828, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2829, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2830, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2831, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2832, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2833, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2834, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2835, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2836, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2837, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2838, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2839, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2840, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2841, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2842, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2843, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2844, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2845, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2846, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2847, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2848, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2849, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2850, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2851, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2852, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2853, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2854, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2855, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2856, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2857, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2858, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2859, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2860, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2861, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2862, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2863, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2864, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2865, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2866, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2867, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2868, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2869, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2870, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2871, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2872, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2873, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2874, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2875, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2876, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2877, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2878, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2879, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2880, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2881, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2882, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2883, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2884, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2885, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2886, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2887, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2888, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2889, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2890, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2891, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2892, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2893, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2894, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2895, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2896, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2897, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2898, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2899, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2900, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2901, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2902, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2903, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2904, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2905, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2906, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2907, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2908, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2909, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2910, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2911, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2912, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2913, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2914, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2915, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2916, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2917, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2918, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2919, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2920, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2921, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2922, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2923, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2924, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2925, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2926, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2927, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2928, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2929, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2930, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2931, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2932, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2933, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2934, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2935, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2936, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2937, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2938, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2939, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2940, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2941, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2942, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2943, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2944, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2945, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2946, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2947, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2948, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2949, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2950, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2951, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2952, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2953, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2954, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2955, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2956, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2957, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2958, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2959, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2960, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2961, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2962, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2963, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2964, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2965, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2966, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2967, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2968, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2969, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2970, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2971, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2972, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2973, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2974, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2975, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2976, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2977, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2978, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2979, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2980, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2981, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2982, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2983, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2984, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2985, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2986, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2987, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2988, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (2989, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (2990, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (2991, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (2992, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2993, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2994, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2995, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2996, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2997, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2998, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (2999, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3000, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3001, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3002, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3003, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3004, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3005, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3006, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3007, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3008, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3009, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3010, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3011, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3012, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3013, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3014, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3015, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3016, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3017, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3018, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3019, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3020, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3021, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3022, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3023, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3024, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3025, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3026, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3027, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3028, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3029, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3030, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3031, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3032, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3033, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3034, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3035, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3036, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3037, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3038, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3039, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3040, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3041, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3042, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3043, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3044, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3045, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3046, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3047, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3048, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3049, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3050, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3051, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3052, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3053, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3054, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3055, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3056, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3057, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3058, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3059, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3060, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3061, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3062, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3063, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3064, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3065, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3066, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3067, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3068, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3069, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3070, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3071, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3072, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3073, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3074, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3075, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3076, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3077, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3078, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3079, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3080, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3081, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3082, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3083, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3084, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3085, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3086, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3087, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3088, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3089, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3090, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3091, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3092, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3093, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3094, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3095, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3096, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3097, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3098, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3099, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3100, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3101, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3102, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3103, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3104, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3105, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3106, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3107, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3108, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3109, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3110, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3111, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3112, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3113, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3114, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3115, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3116, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3117, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3118, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3119, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3120, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3121, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3122, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3123, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3124, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3125, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3126, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3127, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3128, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3129, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3130, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3131, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3132, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3133, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3134, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3135, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3136, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3137, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3138, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3139, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3140, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3141, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3142, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3143, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3144, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3145, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3146, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3147, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3148, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3149, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3150, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3151, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3152, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3153, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3154, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3155, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3156, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3157, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3158, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3159, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3160, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3161, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3162, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3163, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3164, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3165, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3166, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3167, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3168, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3169, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3170, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3171, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3172, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3173, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3174, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3175, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3176, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3177, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3178, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3179, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3180, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3181, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3182, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3183, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3184, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3185, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3186, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3187, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3188, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3189, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3190, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3191, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3192, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3193, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3194, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3195, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3196, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3197, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3198, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3199, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3200, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3201, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3202, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3203, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3204, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3205, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3206, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3207, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3208, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3209, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3210, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3211, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3212, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3213, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3214, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3215, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3216, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3217, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3218, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3219, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3220, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3221, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3222, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3223, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3224, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3225, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3226, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3227, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3228, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3229, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3230, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3231, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3232, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3233, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3234, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3235, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3236, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3237, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3238, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3239, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3240, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3241, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3242, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3243, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3244, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3245, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3246, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3247, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3248, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3249, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3250, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3251, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3252, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3253, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3254, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3255, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3256, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3257, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3258, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3259, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3260, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3261, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3262, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3263, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3264, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3265, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3266, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3267, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3268, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3269, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3270, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3271, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3272, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3273, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3274, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3275, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3276, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3277, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3278, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3279, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3280, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3281, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3282, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3283, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3284, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3285, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3286, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3287, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3288, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3289, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3290, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3291, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3292, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3293, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3294, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3295, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3296, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3297, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3298, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3299, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3300, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3301, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3302, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3303, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3304, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3305, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3306, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3307, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3308, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3309, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3310, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3311, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3312, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3313, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3314, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3315, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3316, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3317, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3318, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3319, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3320, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3321, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3322, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3323, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3324, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3325, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3326, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3327, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3328, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3329, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3330, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3331, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3332, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3333, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3334, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3335, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3336, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3337, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3338, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3339, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3340, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3341, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3342, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3343, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3344, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3345, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3346, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3347, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3348, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3349, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3350, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3351, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3352, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3353, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3354, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3355, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3356, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3357, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3358, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3359, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3360, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3361, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3362, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3363, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3364, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3365, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3366, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3367, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3368, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3369, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3370, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3371, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3372, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3373, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3374, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3375, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3376, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3377, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3378, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3379, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3380, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3381, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3382, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3383, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3384, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3385, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3386, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3387, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3388, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3389, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3390, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3391, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3392, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3393, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3394, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3395, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3396, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3397, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3398, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3399, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3400, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3401, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3402, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3403, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3404, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3405, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3406, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3407, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3408, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3409, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3410, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3411, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3412, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3413, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3414, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3415, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3416, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3417, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3418, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3419, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3420, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3421, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3422, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3423, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3424, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3425, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3426, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3427, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3428, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3429, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3430, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3431, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3432, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3433, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3434, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3435, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3436, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3437, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3438, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3439, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3440, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3441, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3442, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3443, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3444, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3445, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3446, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3447, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3448, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3449, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3450, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3451, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3452, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3453, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3454, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3455, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3456, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3457, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3458, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3459, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3460, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3461, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3462, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3463, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3464, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3465, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3466, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3467, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3468, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3469, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3470, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3471, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3472, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3473, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3474, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3475, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3476, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3477, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3478, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3479, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3480, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3481, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3482, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3483, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3484, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3485, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3486, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3487, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3488, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3489, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3490, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3491, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3492, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3493, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3494, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3495, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3496, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3497, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3498, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3499, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3500, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3501, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3502, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3503, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3504, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3505, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3506, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3507, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3508, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3509, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3510, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3511, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3512, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3513, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3514, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3515, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3516, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3517, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3518, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3519, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3520, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3521, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3522, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3523, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3524, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3525, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3526, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3527, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3528, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3529, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3530, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3531, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3532, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3533, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3534, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3535, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3536, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3537, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3538, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3539, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3540, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3541, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3542, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3543, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3544, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3545, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3546, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3547, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3548, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3549, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3550, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3551, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3552, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3553, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3554, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3555, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3556, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3557, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3558, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3559, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3560, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3561, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3562, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3563, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3564, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3565, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3566, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3567, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3568, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3569, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3570, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3571, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3572, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3573, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3574, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3575, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3576, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3577, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3578, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3579, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3580, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3581, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3582, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3583, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3584, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3585, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3586, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3587, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3588, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3589, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3590, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3591, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3592, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3593, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3594, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3595, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3596, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3597, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3598, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3599, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3600, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3601, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3602, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3603, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3604, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3605, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3606, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3607, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3608, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3609, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3610, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3611, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3612, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3613, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3614, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3615, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3616, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3617, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3618, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3619, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3620, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3621, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3622, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3623, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3624, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3625, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3626, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3627, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3628, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3629, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3630, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3631, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3632, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3633, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3634, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3635, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3636, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3637, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3638, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3639, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3640, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3641, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3642, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3643, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3644, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3645, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3646, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3647, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3648, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3649, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3650, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3651, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3652, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3653, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3654, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3655, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3656, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3657, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3658, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3659, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3660, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3661, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3662, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3663, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3664, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3665, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3666, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3667, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3668, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3669, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3670, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3671, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3672, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3673, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3674, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3675, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3676, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3677, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3678, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3679, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3680, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3681, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3682, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3683, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3684, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3685, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3686, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3687, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3688, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3689, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3690, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3691, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3692, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3693, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3694, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3695, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3696, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3697, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3698, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3699, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3700, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3701, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3702, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3703, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3704, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3705, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3706, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3707, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3708, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3709, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3710, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3711, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3712, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3713, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3714, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3715, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3716, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3717, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3718, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3719, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3720, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3721, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3722, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3723, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3724, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3725, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3726, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3727, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3728, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3729, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3730, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3731, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3732, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3733, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3734, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3735, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3736, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3737, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3738, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3739, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3740, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3741, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3742, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3743, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3744, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3745, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3746, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3747, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3748, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3749, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3750, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3751, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3752, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3753, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3754, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3755, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3756, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3757, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3758, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3759, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3760, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3761, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3762, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3763, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3764, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3765, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3766, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3767, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3768, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3769, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3770, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3771, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3772, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3773, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3774, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3775, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3776, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3777, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3778, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3779, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3780, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3781, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3782, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3783, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3784, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3785, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3786, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3787, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3788, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3789, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3790, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3791, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3792, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3793, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3794, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3795, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3796, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3797, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3798, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3799, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3800, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3801, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3802, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3803, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3804, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3805, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3806, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3807, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3808, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3809, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3810, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3811, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3812, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3813, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3814, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3815, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3816, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3817, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3818, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3819, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3820, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3821, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3822, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3823, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3824, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3825, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3826, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3827, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3828, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3829, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3830, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3831, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3832, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3833, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3834, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3835, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3836, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3837, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3838, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3839, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3840, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3841, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3842, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3843, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3844, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3845, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3846, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3847, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3848, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3849, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3850, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3851, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3852, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3853, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3854, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3855, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3856, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3857, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3858, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3859, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3860, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3861, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3862, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3863, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3864, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3865, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3866, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3867, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3868, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3869, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3870, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3871, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3872, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3873, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3874, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3875, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3876, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3877, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3878, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3879, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3880, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3881, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3882, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3883, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3884, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3885, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3886, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3887, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3888, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3889, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3890, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3891, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3892, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3893, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3894, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3895, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3896, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3897, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3898, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3899, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3900, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3901, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3902, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3903, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3904, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3905, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3906, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3907, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3908, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3909, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3910, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3911, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3912, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3913, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3914, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3915, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3916, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3917, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3918, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3919, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3920, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3921, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3922, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3923, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3924, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3925, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3926, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3927, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3928, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3929, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3930, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3931, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3932, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3933, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3934, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3935, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3936, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3937, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3938, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3939, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3940, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3941, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3942, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3943, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3944, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3945, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3946, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3947, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3948, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3949, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3950, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3951, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3952, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3953, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3954, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3955, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3956, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3957, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3958, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3959, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3960, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3961, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3962, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3963, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3964, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3965, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3966, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3967, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3968, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3969, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3970, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3971, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3972, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3973, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3974, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3975, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3976, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3977, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3978, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3979, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3980, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3981, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3982, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3983, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3984, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3985, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3986, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3987, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3988, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3989, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3990, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3991, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3992, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3993, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3994, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (3995, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (3996, 120, 104, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (3997, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (3998, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (3999, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4000, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4001, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4002, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4003, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4004, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4005, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4006, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4007, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4008, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4009, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4010, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4011, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4012, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4013, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4014, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4015, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4016, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4017, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4018, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4019, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4020, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4021, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4022, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4023, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4024, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4025, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4026, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4027, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4028, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4029, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4030, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4031, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4032, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4033, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4034, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4035, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4036, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4037, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4038, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4039, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4040, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4041, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4042, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4043, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4044, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4045, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4046, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4047, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4048, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4049, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4050, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4051, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4052, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4053, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4054, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4055, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4056, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4057, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4058, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4059, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4060, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4061, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4062, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4063, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4064, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4065, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4066, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4067, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4068, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4069, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4070, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4071, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4072, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4073, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4074, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4075, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4076, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4077, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4078, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4079, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4080, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4081, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4082, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4083, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4084, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4085, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4086, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4087, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4088, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4089, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4090, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4091, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4092, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4093, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4094, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4095, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4096, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4097, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4098, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4099, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4100, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4101, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4102, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4103, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4104, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4105, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4106, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4107, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4108, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4109, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4110, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4111, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4112, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4113, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4114, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4115, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4116, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4117, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4118, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4119, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4120, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4121, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4122, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4123, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4124, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4125, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4126, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4127, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4128, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4129, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4130, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4131, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4132, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4133, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4134, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4135, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4136, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4137, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4138, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4139, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4140, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4141, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4142, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4143, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4144, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4145, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4146, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4147, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4148, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4149, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4150, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4151, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4152, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4153, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4154, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4155, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4156, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4157, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4158, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4159, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4160, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4161, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4162, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4163, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4164, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4165, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4166, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4167, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4168, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4169, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4170, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4171, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4172, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4173, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4174, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4175, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4176, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4177, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4178, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4179, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4180, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4181, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4182, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4183, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4184, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4185, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4186, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4187, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4188, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4189, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4190, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4191, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4192, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4193, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4194, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4195, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4196, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4197, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4198, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4199, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4200, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4201, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4202, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4203, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4204, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4205, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4206, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4207, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4208, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4209, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4210, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4211, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4212, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4213, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4214, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4215, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4216, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4217, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4218, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4219, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4220, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4221, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4222, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4223, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4224, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4225, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4226, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4227, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4228, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4229, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4230, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4231, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4232, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4233, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4234, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4235, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4236, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4237, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4238, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4239, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4240, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4241, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4242, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4243, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4244, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4245, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4246, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4247, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4248, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4249, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4250, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4251, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4252, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4253, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4254, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4255, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4256, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4257, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4258, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4259, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4260, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4261, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4262, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4263, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4264, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4265, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4266, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4267, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4268, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4269, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4270, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4271, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4272, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4273, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4274, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4275, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4276, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4277, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4278, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4279, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4280, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4281, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4282, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4283, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4284, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4285, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4286, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4287, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4288, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4289, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4290, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4291, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4292, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4293, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4294, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4295, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4296, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4297, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4298, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4299, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4300, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4301, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4302, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4303, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4304, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4305, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4306, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4307, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4308, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4309, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4310, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4311, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4312, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4313, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4314, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4315, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4316, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4317, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4318, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4319, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4320, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4321, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4322, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4323, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4324, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4325, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4326, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4327, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4328, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4329, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4330, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4331, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4332, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4333, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4334, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4335, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4336, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4337, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4338, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4339, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4340, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4341, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4342, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4343, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4344, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4345, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4346, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4347, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4348, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4349, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4350, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4351, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4352, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4353, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4354, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4355, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4356, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4357, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4358, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4359, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4360, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4361, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4362, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4363, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4364, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4365, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4366, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4367, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4368, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4369, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4370, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4371, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4372, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4373, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4374, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4375, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4376, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4377, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4378, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4379, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4380, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4381, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4382, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4383, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4384, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4385, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4386, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4387, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4388, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4389, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4390, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4391, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4392, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4393, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4394, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4395, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4396, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4397, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4398, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4399, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4400, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4401, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4402, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4403, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4404, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4405, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4406, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4407, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4408, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4409, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4410, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4411, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4412, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4413, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4414, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4415, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4416, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4417, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4418, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4419, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4420, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4421, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4422, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4423, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4424, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4425, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4426, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4427, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4428, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4429, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4430, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4431, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4432, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4433, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4434, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4435, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4436, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4437, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4438, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4439, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4440, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4441, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4442, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4443, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4444, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4445, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4446, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4447, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4448, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4449, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4450, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4451, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4452, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4453, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4454, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4455, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4456, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4457, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4458, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4459, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4460, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4461, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4462, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4463, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4464, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4465, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4466, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4467, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4468, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4469, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4470, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4471, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4472, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4473, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4474, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4475, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4476, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4477, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4478, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4479, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4480, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4481, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4482, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4483, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4484, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4485, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4486, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4487, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4488, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4489, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4490, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4491, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4492, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4493, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4494, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4495, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4496, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4497, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4498, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4499, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4500, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4501, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4502, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4503, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4504, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4505, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4506, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4507, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4508, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4509, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4510, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4511, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4512, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4513, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4514, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4515, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4516, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4517, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4518, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4519, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4520, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4521, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4522, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4523, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4524, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4525, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4526, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4527, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4528, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4529, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4530, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4531, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4532, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4533, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4534, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4535, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4536, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4537, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4538, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4539, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4540, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4541, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4542, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4543, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4544, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4545, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4546, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4547, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4548, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4549, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4550, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4551, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4552, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4553, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4554, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4555, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4556, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4557, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4558, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4559, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4560, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4561, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4562, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4563, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4564, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4565, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4566, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4567, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4568, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4569, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4570, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4571, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4572, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4573, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4574, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4575, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4576, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4577, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4578, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4579, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4580, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4581, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4582, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4583, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4584, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4585, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4586, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4587, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4588, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4589, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4590, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4591, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4592, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4593, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4594, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4595, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4596, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4597, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4598, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4599, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4600, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4601, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4602, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4603, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4604, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4605, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4606, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4607, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4608, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4609, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4610, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4611, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4612, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4613, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4614, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4615, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4616, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4617, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4618, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4619, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4620, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4621, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4622, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4623, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4624, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4625, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4626, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4627, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4628, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4629, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4630, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4631, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4632, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4633, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4634, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4635, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4636, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4637, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4638, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4639, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4640, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4641, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4642, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4643, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4644, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4645, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4646, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4647, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4648, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4649, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4650, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4651, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4652, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4653, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4654, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4655, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4656, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4657, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4658, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4659, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4660, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4661, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4662, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4663, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4664, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4665, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4666, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4667, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4668, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4669, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4670, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4671, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4672, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4673, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4674, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4675, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4676, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4677, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4678, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4679, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4680, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4681, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4682, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4683, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4684, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4685, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4686, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4687, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4688, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4689, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4690, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4691, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4692, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4693, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4694, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4695, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4696, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4697, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4698, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4699, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4700, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4701, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4702, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4703, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4704, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4705, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4706, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4707, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4708, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4709, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4710, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4711, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4712, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4713, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4714, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4715, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4716, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4717, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4718, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4719, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4720, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4721, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4722, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4723, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4724, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4725, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4726, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4727, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4728, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4729, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4730, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4731, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4732, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4733, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4734, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4735, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4736, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4737, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4738, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4739, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4740, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4741, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4742, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4743, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4744, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4745, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4746, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4747, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4748, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4749, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4750, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4751, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4752, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4753, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4754, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4755, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4756, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4757, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4758, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4759, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4760, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4761, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4762, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4763, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4764, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4765, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4766, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4767, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4768, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4769, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4770, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4771, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4772, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4773, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4774, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4775, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4776, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4777, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4778, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4779, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4780, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4781, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4782, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4783, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4784, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4785, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4786, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4787, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4788, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4789, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4790, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4791, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4792, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4793, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4794, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4795, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4796, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4797, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4798, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4799, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4800, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4801, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4802, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4803, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4804, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4805, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4806, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4807, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4808, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4809, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4810, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4811, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4812, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4813, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4814, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4815, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4816, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4817, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4818, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4819, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4820, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4821, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4822, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4823, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4824, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4825, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4826, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4827, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4828, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4829, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4830, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4831, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4832, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4833, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4834, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4835, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4836, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4837, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4838, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4839, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4840, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4841, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4842, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4843, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4844, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4845, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4846, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4847, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4848, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4849, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4850, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4851, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4852, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4853, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4854, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4855, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4856, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4857, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4858, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4859, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4860, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4861, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4862, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4863, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4864, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4865, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4866, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4867, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4868, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4869, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4870, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4871, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4872, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4873, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4874, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4875, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4876, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4877, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4878, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4879, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4880, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4881, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4882, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4883, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4884, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4885, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4886, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4887, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4888, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4889, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4890, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4891, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4892, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4893, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4894, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4895, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4896, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4897, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4898, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4899, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4900, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4901, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4902, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4903, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4904, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4905, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4906, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4907, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4908, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4909, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4910, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4911, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4912, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4913, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4914, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4915, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4916, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4917, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4918, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4919, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4920, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4921, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4922, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4923, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4924, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4925, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4926, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4927, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4928, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4929, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4930, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4931, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4932, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4933, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4934, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4935, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4936, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4937, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4938, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4939, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4940, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4941, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4942, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4943, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4944, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4945, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4946, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4947, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4948, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4949, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4950, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4951, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4952, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4953, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4954, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4955, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4956, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4957, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4958, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4959, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4960, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4961, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4962, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4963, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4964, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4965, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4966, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4967, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4968, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4969, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4970, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4971, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4972, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4973, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4974, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4975, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4976, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4977, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4978, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4979, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4980, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4981, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4982, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4983, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (4984, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (4985, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (4986, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (4987, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4988, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4989, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4990, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4991, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4992, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4993, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4994, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4995, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4996, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4997, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4998, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (4999, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5000, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5001, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5002, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5003, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5004, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5005, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5006, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5007, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5008, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5009, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5010, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5011, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5012, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5013, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5014, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5015, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5016, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5017, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5018, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5019, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5020, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5021, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5022, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5023, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5024, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5025, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5026, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5027, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5028, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5029, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5030, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5031, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5032, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5033, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5034, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5035, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5036, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5037, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5038, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5039, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5040, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5041, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5042, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5043, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5044, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5045, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5046, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5047, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5048, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5049, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5050, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5051, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5052, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5053, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5054, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5055, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5056, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5057, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5058, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5059, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5060, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5061, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5062, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5063, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5064, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5065, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5066, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5067, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5068, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5069, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5070, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5071, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5072, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5073, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5074, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5075, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5076, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5077, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5078, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5079, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5080, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5081, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5082, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5083, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5084, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5085, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5086, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5087, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5088, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5089, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5090, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5091, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5092, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5093, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5094, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5095, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5096, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5097, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5098, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5099, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5100, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5101, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5102, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5103, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5104, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5105, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5106, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5107, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5108, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5109, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5110, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5111, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5112, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5113, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5114, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5115, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5116, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5117, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5118, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5119, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5120, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5121, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5122, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5123, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5124, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5125, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5126, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5127, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5128, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5129, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5130, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5131, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5132, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5133, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5134, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5135, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5136, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5137, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5138, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5139, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5140, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5141, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5142, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5143, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5144, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5145, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5146, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5147, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5148, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5149, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5150, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5151, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5152, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5153, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5154, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5155, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5156, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5157, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5158, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5159, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5160, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5161, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5162, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5163, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5164, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5165, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5166, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5167, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5168, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5169, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5170, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5171, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5172, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5173, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5174, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5175, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5176, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5177, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5178, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5179, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5180, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5181, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5182, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5183, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5184, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5185, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5186, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5187, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5188, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5189, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5190, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5191, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5192, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5193, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5194, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5195, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5196, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5197, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5198, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5199, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5200, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5201, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5202, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5203, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5204, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5205, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5206, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5207, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5208, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5209, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5210, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5211, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5212, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5213, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5214, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5215, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5216, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5217, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5218, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5219, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5220, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5221, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5222, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5223, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5224, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5225, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5226, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5227, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5228, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5229, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5230, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5231, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5232, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5233, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5234, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5235, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5236, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5237, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5238, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5239, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5240, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5241, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5242, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5243, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5244, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5245, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5246, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5247, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5248, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5249, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5250, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5251, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5252, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5253, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5254, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5255, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5256, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5257, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5258, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5259, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5260, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5261, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5262, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5263, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5264, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5265, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5266, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5267, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5268, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5269, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5270, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5271, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5272, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5273, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5274, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5275, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5276, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5277, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5278, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5279, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5280, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5281, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5282, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5283, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5284, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5285, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5286, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5287, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5288, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5289, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5290, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5291, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5292, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5293, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5294, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5295, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5296, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5297, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5298, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5299, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5300, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5301, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5302, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5303, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5304, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5305, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5306, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5307, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5308, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5309, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5310, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5311, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5312, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5313, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5314, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5315, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5316, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5317, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5318, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5319, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5320, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5321, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5322, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5323, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5324, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5325, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5326, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5327, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5328, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5329, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5330, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5331, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5332, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5333, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5334, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5335, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5336, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5337, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5338, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5339, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5340, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5341, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5342, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5343, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5344, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5345, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5346, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5347, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5348, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5349, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5350, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5351, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5352, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5353, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5354, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5355, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5356, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5357, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5358, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5359, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5360, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5361, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5362, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5363, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5364, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5365, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5366, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5367, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5368, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5369, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5370, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5371, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5372, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5373, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5374, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5375, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5376, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5377, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5378, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5379, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5380, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5381, 1, 103, 'admin', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5382, 2, 105, 'ry', '2024-11-19', '2024-11-19 08:18:09', NULL, '上班');
INSERT INTO `sys_attendance` VALUES (5383, 120, 109, 'Alice', '2024-11-19', '2024-11-19 18:40:18', '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance` VALUES (5384, 121, 106, 'Bob', '2024-11-19', '2024-11-19 09:20:19', '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance` VALUES (5385, 122, 107, 'Charlie', '2024-11-19', NULL, '2024-11-19 19:21:33', '下班');
INSERT INTO `sys_attendance` VALUES (5386, 143, 104, 'user001', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5387, 144, 106, 'user002', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5388, 145, 104, 'user003', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5389, 146, 106, 'user004', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5390, 147, 104, 'user005', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5391, 148, 106, 'user006', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5392, 149, 104, 'user007', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5393, 150, 106, 'user008', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5394, 159, 104, 'user017', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5395, 160, 106, 'user018', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5396, 161, 104, 'user019', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5397, 162, 106, 'user020', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5398, 163, 103, 'tiffany', '2024-11-19', NULL, NULL, NULL);
INSERT INTO `sys_attendance` VALUES (5399, 164, 101, 'ceooo', '2024-11-19', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_attendance_record
-- ----------------------------
DROP TABLE IF EXISTS `sys_attendance_record`;
CREATE TABLE `sys_attendance_record`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT COMMENT '打卡实时记录id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `check_date` date NULL DEFAULT NULL COMMENT '打卡日期',
  `check_time` datetime NULL DEFAULT NULL COMMENT '打卡时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_attendance_record
-- ----------------------------
INSERT INTO `sys_attendance_record` VALUES (1, 1, NULL, '2024-11-08 08:24:39', NULL);
INSERT INTO `sys_attendance_record` VALUES (2, 1, NULL, '2024-11-08 14:25:01', NULL);
INSERT INTO `sys_attendance_record` VALUES (3, 1, NULL, '2024-11-08 18:14:57', NULL);
INSERT INTO `sys_attendance_record` VALUES (4, 2, NULL, '2024-11-08 06:15:00', NULL);
INSERT INTO `sys_attendance_record` VALUES (5, 2, NULL, '2024-11-08 12:33:02', NULL);
INSERT INTO `sys_attendance_record` VALUES (6, 2, NULL, '2024-11-08 15:40:46', NULL);
INSERT INTO `sys_attendance_record` VALUES (8, 2, NULL, '2024-11-08 23:55:03', NULL);
INSERT INTO `sys_attendance_record` VALUES (9, 2, NULL, '2024-11-09 03:24:06', NULL);
INSERT INTO `sys_attendance_record` VALUES (10, 1, NULL, '2024-11-11 11:25:47', NULL);
INSERT INTO `sys_attendance_record` VALUES (11, 2, NULL, '2024-11-11 05:08:09', NULL);
INSERT INTO `sys_attendance_record` VALUES (12, 2, NULL, '2024-11-11 15:08:11', NULL);
INSERT INTO `sys_attendance_record` VALUES (13, 121, NULL, '2024-11-11 09:30:12', NULL);
INSERT INTO `sys_attendance_record` VALUES (14, 121, NULL, '2024-11-11 18:08:12', NULL);
INSERT INTO `sys_attendance_record` VALUES (15, 122, NULL, '2024-11-11 13:00:14', NULL);
INSERT INTO `sys_attendance_record` VALUES (16, 122, NULL, '2024-11-11 08:08:28', NULL);
INSERT INTO `sys_attendance_record` VALUES (17, 120, NULL, '2024-11-11 09:08:33', NULL);
INSERT INTO `sys_attendance_record` VALUES (20, 2, NULL, '2024-11-18 17:10:00', NULL);
INSERT INTO `sys_attendance_record` VALUES (21, 1, NULL, '2024-11-18 17:10:26', NULL);
INSERT INTO `sys_attendance_record` VALUES (22, 1, NULL, '2024-11-19 03:06:45', NULL);
INSERT INTO `sys_attendance_record` VALUES (23, 2, NULL, '2024-11-19 08:18:09', NULL);
INSERT INTO `sys_attendance_record` VALUES (24, 120, NULL, '2024-11-19 18:40:18', NULL);
INSERT INTO `sys_attendance_record` VALUES (25, 120, NULL, '2024-11-19 23:20:10', NULL);
INSERT INTO `sys_attendance_record` VALUES (26, 121, NULL, '2024-11-19 09:20:19', NULL);
INSERT INTO `sys_attendance_record` VALUES (27, 121, NULL, '2024-11-19 18:01:17', NULL);
INSERT INTO `sys_attendance_record` VALUES (28, 122, NULL, '2024-11-19 19:21:33', NULL);
INSERT INTO `sys_attendance_record` VALUES (34, 1, NULL, '2024-11-20 07:56:43', NULL);
INSERT INTO `sys_attendance_record` VALUES (35, 2, NULL, '2024-11-20 18:57:05', NULL);
INSERT INTO `sys_attendance_record` VALUES (36, 120, NULL, '2024-11-20 12:57:33', NULL);
INSERT INTO `sys_attendance_record` VALUES (37, 120, NULL, '2024-11-20 20:58:32', NULL);
INSERT INTO `sys_attendance_record` VALUES (38, 121, NULL, '2024-11-20 13:58:52', NULL);
INSERT INTO `sys_attendance_record` VALUES (39, 121, NULL, '2024-11-21 01:59:12', NULL);
INSERT INTO `sys_attendance_record` VALUES (40, 1, NULL, '2024-11-21 09:00:11', NULL);
INSERT INTO `sys_attendance_record` VALUES (41, 1, NULL, '2024-11-21 11:34:51', NULL);
INSERT INTO `sys_attendance_record` VALUES (42, 1, NULL, '2024-11-21 11:34:58', NULL);
INSERT INTO `sys_attendance_record` VALUES (43, 1, NULL, '2024-11-21 11:36:05', NULL);
INSERT INTO `sys_attendance_record` VALUES (44, 1, NULL, '2024-11-21 18:00:17', NULL);
INSERT INTO `sys_attendance_record` VALUES (45, 1, NULL, '2024-11-22 11:09:40', NULL);
INSERT INTO `sys_attendance_record` VALUES (46, 1, NULL, '2024-11-22 11:19:27', NULL);
INSERT INTO `sys_attendance_record` VALUES (47, 1, NULL, '2024-11-28 13:50:33', NULL);
INSERT INTO `sys_attendance_record` VALUES (48, 1, NULL, '2024-12-12 09:24:55', NULL);
INSERT INTO `sys_attendance_record` VALUES (49, 2, NULL, '2024-12-17 20:04:33', NULL);
INSERT INTO `sys_attendance_record` VALUES (50, 2, NULL, '2024-12-17 20:05:28', NULL);
INSERT INTO `sys_attendance_record` VALUES (51, 163, NULL, '2024-12-18 09:31:26', NULL);
INSERT INTO `sys_attendance_record` VALUES (52, 163, NULL, '2024-12-18 09:31:32', NULL);
INSERT INTO `sys_attendance_record` VALUES (53, 163, NULL, '2024-12-18 17:03:08', NULL);
INSERT INTO `sys_attendance_record` VALUES (54, 2, NULL, '2025-01-02 10:29:51', NULL);
INSERT INTO `sys_attendance_record` VALUES (55, 2, NULL, '2025-01-02 10:29:58', NULL);
INSERT INTO `sys_attendance_record` VALUES (56, 2, NULL, '2025-01-02 10:30:18', NULL);
INSERT INTO `sys_attendance_record` VALUES (57, 1, NULL, '2025-01-15 16:47:45', NULL);
INSERT INTO `sys_attendance_record` VALUES (58, 1, NULL, '2025-01-21 09:23:10', NULL);
INSERT INTO `sys_attendance_record` VALUES (59, 1, NULL, '2025-01-21 15:21:22', NULL);
INSERT INTO `sys_attendance_record` VALUES (60, 1, NULL, '2025-01-24 21:07:19', NULL);
INSERT INTO `sys_attendance_record` VALUES (61, 1, NULL, '2025-02-11 10:30:04', NULL);
INSERT INTO `sys_attendance_record` VALUES (62, 1, NULL, '2025-02-11 10:30:12', NULL);
INSERT INTO `sys_attendance_record` VALUES (63, 1, NULL, '2025-02-11 10:30:21', NULL);
INSERT INTO `sys_attendance_record` VALUES (64, 2, NULL, '2025-02-14 09:27:53', NULL);
INSERT INTO `sys_attendance_record` VALUES (65, 163, NULL, '2025-02-14 09:43:12', NULL);
INSERT INTO `sys_attendance_record` VALUES (66, 1, NULL, '2025-02-26 17:34:42', NULL);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-10-23 10:16:40', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-10-23 10:16:40', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-10-23 10:16:40', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-10-23 10:16:40', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-10-23 10:16:40', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-10-23 10:16:40', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-23 10:16:39', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-23 10:16:39', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-23 10:16:39', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-23 10:16:39', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-23 10:16:39', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-23 10:16:39', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-23 10:16:39', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-23 10:16:39', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-23 10:16:39', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-23 10:16:39', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, 'Electronics', '0', 'asset_type', NULL, 'default', 'N', '0', 'admin', '2025-01-15 09:59:53', 'admin', '2025-01-15 11:09:57', '资产类别，电子产品，主机显示屏笔记本');
INSERT INTO `sys_dict_data` VALUES (101, 2, 'Furniture', '2', 'asset_type', NULL, 'default', 'N', '0', 'admin', '2025-01-15 10:04:13', 'admin', '2025-01-15 11:10:21', '办公家具 桌子椅子储物柜抽屉');
INSERT INTO `sys_dict_data` VALUES (102, 3, 'IT Equipment', '1', 'asset_type', NULL, 'default', 'N', '0', 'admin', '2025-01-15 11:11:26', 'admin', '2025-01-15 11:11:41', 'IT设备');
INSERT INTO `sys_dict_data` VALUES (103, 1, '台', '1', 'asset_unit', NULL, 'default', 'N', '0', 'admin', '2025-01-16 17:18:41', '', NULL, '电脑设备等');
INSERT INTO `sys_dict_data` VALUES (104, 2, '个', '0', 'asset_unit', NULL, 'default', 'N', '0', 'admin', '2025-01-16 17:19:10', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 3, '套', '2', 'asset_unit', NULL, 'default', 'N', '0', 'admin', '2025-01-16 17:19:25', 'admin', '2025-01-16 17:19:44', NULL);
INSERT INTO `sys_dict_data` VALUES (106, 4, 'OTHER', '3', 'asset_type', '', 'default', 'N', '0', 'admin', '2025-01-23 14:32:03', 'admin', '2025-01-23 14:32:48', '其他');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-10-23 10:16:40', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '资产类型', 'asset_type', '0', 'admin', '2025-01-15 09:52:49', '', NULL, '资产管理-资产类型');
INSERT INTO `sys_dict_type` VALUES (101, '数量单位', 'asset_unit', '0', 'admin', '2025-01-16 17:17:36', '', NULL, '资产数量单位');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-10-23 10:16:40', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 697 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-23 10:29:11');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-23 10:31:14');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-10-23 10:36:13');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-10-23 10:36:42');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-23 10:36:57');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-10-23 10:39:43');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-23 10:41:39');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-23 14:25:04');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-23 14:31:05');
INSERT INTO `sys_logininfor` VALUES (109, 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-23 14:31:23');
INSERT INTO `sys_logininfor` VALUES (110, 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-23 14:33:18');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-23 14:33:24');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-23 15:11:40');
INSERT INTO `sys_logininfor` VALUES (113, 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-23 15:12:01');
INSERT INTO `sys_logininfor` VALUES (114, 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-23 15:26:21');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-23 15:26:29');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-23 15:26:49');
INSERT INTO `sys_logininfor` VALUES (117, 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-23 15:27:06');
INSERT INTO `sys_logininfor` VALUES (118, 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-10-23 15:45:23');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-10-23 15:46:39');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-23 15:48:20');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-23 15:48:20');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-23 15:49:27');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-23 16:35:09');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-10-24 10:51:43');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-24 11:31:08');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-10-24 11:38:24');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-10-24 12:13:48');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-24 14:07:36');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-24 14:11:44');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-25 10:42:43');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-27 11:16:59');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-29 08:52:29');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-29 10:15:13');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-10-29 11:03:46');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-29 11:03:51');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-29 12:56:23');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-10-29 15:31:36');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-29 18:28:58');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-29 19:49:30');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-30 11:42:51');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-30 14:07:13');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-30 15:19:24');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-10-30 16:01:35');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-30 16:01:39');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-10-30 16:30:19');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-30 16:30:23');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-30 17:32:55');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-30 19:08:25');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-30 20:03:49');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-31 00:22:45');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-31 13:49:45');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2024-11-01 10:29:07');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-01 10:29:13');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-01 12:32:29');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-01 14:12:41');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-02 10:37:56');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-02 11:37:12');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-02 15:09:24');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-02 18:53:53');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-02 18:53:53');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-02 18:57:09');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-04 16:19:56');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-06 09:49:55');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-06 10:56:17');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-06 11:29:51');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-06 19:07:37');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-07 09:52:29');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-07 13:53:01');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-07 15:03:47');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-09 10:31:07');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-09 11:18:50');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-09 14:24:28');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-09 14:27:32');
INSERT INTO `sys_logininfor` VALUES (174, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-09 14:27:53');
INSERT INTO `sys_logininfor` VALUES (175, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-09 14:28:09');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-09 14:28:13');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-09 14:29:15');
INSERT INTO `sys_logininfor` VALUES (178, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-09 14:29:20');
INSERT INTO `sys_logininfor` VALUES (179, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-09 14:29:32');
INSERT INTO `sys_logininfor` VALUES (180, 'tttest', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-09 14:29:57');
INSERT INTO `sys_logininfor` VALUES (181, 'user001', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-11-09 14:30:11');
INSERT INTO `sys_logininfor` VALUES (182, 'user001', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-09 14:30:15');
INSERT INTO `sys_logininfor` VALUES (183, 'user002', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-09 14:30:29');
INSERT INTO `sys_logininfor` VALUES (184, 'user002', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-09 14:30:35');
INSERT INTO `sys_logininfor` VALUES (185, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-09 14:31:06');
INSERT INTO `sys_logininfor` VALUES (186, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-09 14:32:24');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-09 14:32:29');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-09 15:24:42');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-09 16:14:51');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-13 12:32:47');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-13 15:54:52');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-13 17:08:16');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-14 10:57:55');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-17 17:07:01');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-19 11:06:33');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-19 17:34:02');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-19 18:26:54');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-19 19:50:44');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-19 19:50:49');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-19 21:30:58');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-20 10:03:22');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-20 11:19:59');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-20 17:52:46');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-11-20 23:02:15');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-20 23:02:24');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-21 09:21:20');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-21 10:31:48');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-21 12:19:20');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-21 14:06:28');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-11-21 16:04:03');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-21 16:04:13');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-21 16:04:28');
INSERT INTO `sys_logininfor` VALUES (213, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-21 16:04:35');
INSERT INTO `sys_logininfor` VALUES (214, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-21 16:07:11');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-21 16:07:16');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-21 17:05:16');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-21 20:10:59');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-21 21:04:15');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-22 09:52:49');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-22 10:44:40');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-22 12:30:57');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-22 12:30:57');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-22 12:31:10');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-22 14:05:34');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-22 15:47:38');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-22 16:21:48');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-11-22 17:09:31');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-22 17:09:38');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-22 17:40:33');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-22 19:51:35');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-23 08:49:03');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-23 10:07:11');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-23 11:24:07');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-23 14:19:28');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-23 16:26:56');
INSERT INTO `sys_logininfor` VALUES (236, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-24 09:04:59');
INSERT INTO `sys_logininfor` VALUES (237, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-11-24 10:19:49');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-11-24 10:19:53');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-24 10:20:01');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-24 11:41:40');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-24 13:49:54');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-24 18:43:31');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-25 10:37:35');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-25 14:25:29');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-25 16:47:17');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-26 14:25:38');
INSERT INTO `sys_logininfor` VALUES (247, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-26 15:26:15');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-26 15:30:39');
INSERT INTO `sys_logininfor` VALUES (249, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-26 15:30:47');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-26 19:23:03');
INSERT INTO `sys_logininfor` VALUES (251, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-27 09:07:45');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-27 13:25:14');
INSERT INTO `sys_logininfor` VALUES (253, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-27 14:43:23');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-27 16:12:05');
INSERT INTO `sys_logininfor` VALUES (255, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-27 18:47:31');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-28 10:32:21');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-28 13:28:12');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-28 13:29:44');
INSERT INTO `sys_logininfor` VALUES (259, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-28 13:29:52');
INSERT INTO `sys_logininfor` VALUES (260, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-28 13:30:18');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-28 13:30:26');
INSERT INTO `sys_logininfor` VALUES (262, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-28 14:04:52');
INSERT INTO `sys_logininfor` VALUES (263, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-28 15:23:50');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-11-28 16:10:08');
INSERT INTO `sys_logininfor` VALUES (265, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-28 16:10:16');
INSERT INTO `sys_logininfor` VALUES (266, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-28 16:59:02');
INSERT INTO `sys_logininfor` VALUES (267, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-11-29 09:33:12');
INSERT INTO `sys_logininfor` VALUES (268, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-29 09:33:18');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-29 11:42:02');
INSERT INTO `sys_logininfor` VALUES (270, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-29 13:42:30');
INSERT INTO `sys_logininfor` VALUES (271, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-29 14:30:46');
INSERT INTO `sys_logininfor` VALUES (272, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-29 16:13:35');
INSERT INTO `sys_logininfor` VALUES (273, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-29 18:02:51');
INSERT INTO `sys_logininfor` VALUES (274, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-01 09:01:46');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-01 15:39:00');
INSERT INTO `sys_logininfor` VALUES (276, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-03 09:19:26');
INSERT INTO `sys_logininfor` VALUES (277, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-03 10:40:52');
INSERT INTO `sys_logininfor` VALUES (278, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-03 19:54:08');
INSERT INTO `sys_logininfor` VALUES (279, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-04 09:02:04');
INSERT INTO `sys_logininfor` VALUES (280, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-12-04 19:27:20');
INSERT INTO `sys_logininfor` VALUES (281, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-04 19:27:44');
INSERT INTO `sys_logininfor` VALUES (282, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-12-05 11:05:25');
INSERT INTO `sys_logininfor` VALUES (283, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-12-05 11:05:30');
INSERT INTO `sys_logininfor` VALUES (284, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-05 11:05:36');
INSERT INTO `sys_logininfor` VALUES (285, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-05 13:49:13');
INSERT INTO `sys_logininfor` VALUES (286, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-05 14:42:07');
INSERT INTO `sys_logininfor` VALUES (287, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-05 15:13:46');
INSERT INTO `sys_logininfor` VALUES (288, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-05 19:12:48');
INSERT INTO `sys_logininfor` VALUES (289, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-06 10:04:41');
INSERT INTO `sys_logininfor` VALUES (290, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-06 11:43:44');
INSERT INTO `sys_logininfor` VALUES (291, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-06 12:49:49');
INSERT INTO `sys_logininfor` VALUES (292, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-12-06 15:01:25');
INSERT INTO `sys_logininfor` VALUES (293, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-12-06 15:01:29');
INSERT INTO `sys_logininfor` VALUES (294, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-06 15:01:35');
INSERT INTO `sys_logininfor` VALUES (295, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-06 15:39:57');
INSERT INTO `sys_logininfor` VALUES (296, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-06 17:01:06');
INSERT INTO `sys_logininfor` VALUES (297, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-08 16:52:48');
INSERT INTO `sys_logininfor` VALUES (298, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-08 18:09:58');
INSERT INTO `sys_logininfor` VALUES (299, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-08 18:10:06');
INSERT INTO `sys_logininfor` VALUES (300, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-09 13:30:52');
INSERT INTO `sys_logininfor` VALUES (301, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-09 14:20:25');
INSERT INTO `sys_logininfor` VALUES (302, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-09 19:45:48');
INSERT INTO `sys_logininfor` VALUES (303, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-12-10 12:03:40');
INSERT INTO `sys_logininfor` VALUES (304, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-10 12:03:49');
INSERT INTO `sys_logininfor` VALUES (305, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-10 13:32:55');
INSERT INTO `sys_logininfor` VALUES (306, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-10 14:52:41');
INSERT INTO `sys_logininfor` VALUES (307, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-10 18:29:16');
INSERT INTO `sys_logininfor` VALUES (308, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-11 10:02:27');
INSERT INTO `sys_logininfor` VALUES (309, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-11 11:23:42');
INSERT INTO `sys_logininfor` VALUES (310, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-11 14:14:32');
INSERT INTO `sys_logininfor` VALUES (311, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-11 15:06:58');
INSERT INTO `sys_logininfor` VALUES (312, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-11 15:44:36');
INSERT INTO `sys_logininfor` VALUES (313, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-11 15:44:43');
INSERT INTO `sys_logininfor` VALUES (314, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-11 15:45:18');
INSERT INTO `sys_logininfor` VALUES (315, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-11 15:45:24');
INSERT INTO `sys_logininfor` VALUES (316, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-11 17:20:12');
INSERT INTO `sys_logininfor` VALUES (317, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-12 09:24:45');
INSERT INTO `sys_logininfor` VALUES (318, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-12 10:36:11');
INSERT INTO `sys_logininfor` VALUES (319, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-12 14:07:54');
INSERT INTO `sys_logininfor` VALUES (320, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-12 19:23:16');
INSERT INTO `sys_logininfor` VALUES (321, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-13 13:50:37');
INSERT INTO `sys_logininfor` VALUES (322, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-13 14:34:46');
INSERT INTO `sys_logininfor` VALUES (323, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-13 16:20:22');
INSERT INTO `sys_logininfor` VALUES (324, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-13 19:17:20');
INSERT INTO `sys_logininfor` VALUES (325, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-13 19:34:58');
INSERT INTO `sys_logininfor` VALUES (326, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-13 19:35:06');
INSERT INTO `sys_logininfor` VALUES (327, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-13 20:32:27');
INSERT INTO `sys_logininfor` VALUES (328, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-13 20:33:41');
INSERT INTO `sys_logininfor` VALUES (329, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-13 20:33:48');
INSERT INTO `sys_logininfor` VALUES (330, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-13 20:35:17');
INSERT INTO `sys_logininfor` VALUES (331, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-13 20:35:24');
INSERT INTO `sys_logininfor` VALUES (332, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-13 20:39:11');
INSERT INTO `sys_logininfor` VALUES (333, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-13 20:39:25');
INSERT INTO `sys_logininfor` VALUES (334, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-13 21:34:07');
INSERT INTO `sys_logininfor` VALUES (335, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-13 21:34:15');
INSERT INTO `sys_logininfor` VALUES (336, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-13 21:38:10');
INSERT INTO `sys_logininfor` VALUES (337, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-13 21:38:28');
INSERT INTO `sys_logininfor` VALUES (338, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-13 21:38:34');
INSERT INTO `sys_logininfor` VALUES (339, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-13 21:38:41');
INSERT INTO `sys_logininfor` VALUES (340, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-14 13:42:51');
INSERT INTO `sys_logininfor` VALUES (341, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-14 14:14:09');
INSERT INTO `sys_logininfor` VALUES (342, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-14 15:01:52');
INSERT INTO `sys_logininfor` VALUES (343, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-15 00:14:49');
INSERT INTO `sys_logininfor` VALUES (344, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-15 00:49:35');
INSERT INTO `sys_logininfor` VALUES (345, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-15 16:53:45');
INSERT INTO `sys_logininfor` VALUES (346, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-16 16:55:26');
INSERT INTO `sys_logininfor` VALUES (347, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-16 19:13:50');
INSERT INTO `sys_logininfor` VALUES (348, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-17 00:02:54');
INSERT INTO `sys_logininfor` VALUES (349, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-17 10:16:58');
INSERT INTO `sys_logininfor` VALUES (350, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2024-12-17 11:12:20');
INSERT INTO `sys_logininfor` VALUES (351, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-17 11:12:29');
INSERT INTO `sys_logininfor` VALUES (352, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-17 13:23:22');
INSERT INTO `sys_logininfor` VALUES (353, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-17 19:05:35');
INSERT INTO `sys_logininfor` VALUES (354, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-17 19:14:45');
INSERT INTO `sys_logininfor` VALUES (355, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-17 19:15:00');
INSERT INTO `sys_logininfor` VALUES (356, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-17 22:47:43');
INSERT INTO `sys_logininfor` VALUES (357, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 08:54:20');
INSERT INTO `sys_logininfor` VALUES (358, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 09:26:28');
INSERT INTO `sys_logininfor` VALUES (359, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-18 09:31:04');
INSERT INTO `sys_logininfor` VALUES (360, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 09:31:18');
INSERT INTO `sys_logininfor` VALUES (361, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-18 09:37:29');
INSERT INTO `sys_logininfor` VALUES (362, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 09:37:47');
INSERT INTO `sys_logininfor` VALUES (363, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-18 09:37:51');
INSERT INTO `sys_logininfor` VALUES (364, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 09:37:58');
INSERT INTO `sys_logininfor` VALUES (365, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 10:40:29');
INSERT INTO `sys_logininfor` VALUES (366, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 13:35:50');
INSERT INTO `sys_logininfor` VALUES (367, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 14:21:49');
INSERT INTO `sys_logininfor` VALUES (368, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 15:29:44');
INSERT INTO `sys_logininfor` VALUES (369, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2024-12-18 16:42:32');
INSERT INTO `sys_logininfor` VALUES (370, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 16:42:39');
INSERT INTO `sys_logininfor` VALUES (371, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-18 17:02:40');
INSERT INTO `sys_logininfor` VALUES (372, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 17:02:55');
INSERT INTO `sys_logininfor` VALUES (373, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-18 17:15:54');
INSERT INTO `sys_logininfor` VALUES (374, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 17:16:01');
INSERT INTO `sys_logininfor` VALUES (375, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-18 17:16:18');
INSERT INTO `sys_logininfor` VALUES (376, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-12-18 17:16:22');
INSERT INTO `sys_logininfor` VALUES (377, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-18 17:16:29');
INSERT INTO `sys_logininfor` VALUES (378, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-19 11:36:48');
INSERT INTO `sys_logininfor` VALUES (379, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-19 16:08:51');
INSERT INTO `sys_logininfor` VALUES (380, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-20 15:15:15');
INSERT INTO `sys_logininfor` VALUES (381, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 09:44:55');
INSERT INTO `sys_logininfor` VALUES (382, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 10:26:06');
INSERT INTO `sys_logininfor` VALUES (383, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-21 10:52:44');
INSERT INTO `sys_logininfor` VALUES (384, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 10:52:50');
INSERT INTO `sys_logininfor` VALUES (385, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 12:06:16');
INSERT INTO `sys_logininfor` VALUES (386, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 14:31:46');
INSERT INTO `sys_logininfor` VALUES (387, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 15:28:54');
INSERT INTO `sys_logininfor` VALUES (388, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 21:10:32');
INSERT INTO `sys_logininfor` VALUES (389, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-21 21:21:48');
INSERT INTO `sys_logininfor` VALUES (390, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-12-21 21:21:55');
INSERT INTO `sys_logininfor` VALUES (391, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 21:22:02');
INSERT INTO `sys_logininfor` VALUES (392, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-21 21:23:02');
INSERT INTO `sys_logininfor` VALUES (393, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 21:23:09');
INSERT INTO `sys_logininfor` VALUES (394, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-21 21:23:26');
INSERT INTO `sys_logininfor` VALUES (395, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 21:23:32');
INSERT INTO `sys_logininfor` VALUES (396, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-21 21:24:02');
INSERT INTO `sys_logininfor` VALUES (397, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 21:24:09');
INSERT INTO `sys_logininfor` VALUES (398, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-21 21:26:31');
INSERT INTO `sys_logininfor` VALUES (399, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 21:26:36');
INSERT INTO `sys_logininfor` VALUES (400, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-21 21:26:51');
INSERT INTO `sys_logininfor` VALUES (401, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 21:26:56');
INSERT INTO `sys_logininfor` VALUES (402, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 23:39:22');
INSERT INTO `sys_logininfor` VALUES (403, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-21 23:39:29');
INSERT INTO `sys_logininfor` VALUES (404, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 23:39:36');
INSERT INTO `sys_logininfor` VALUES (405, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-21 23:55:35');
INSERT INTO `sys_logininfor` VALUES (406, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-21 23:55:43');
INSERT INTO `sys_logininfor` VALUES (407, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-22 16:30:19');
INSERT INTO `sys_logininfor` VALUES (408, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-22 20:52:50');
INSERT INTO `sys_logininfor` VALUES (409, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-22 21:56:03');
INSERT INTO `sys_logininfor` VALUES (410, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-22 23:33:08');
INSERT INTO `sys_logininfor` VALUES (411, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-23 10:21:44');
INSERT INTO `sys_logininfor` VALUES (412, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-23 18:43:02');
INSERT INTO `sys_logininfor` VALUES (413, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-24 14:35:55');
INSERT INTO `sys_logininfor` VALUES (414, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-12-24 16:46:59');
INSERT INTO `sys_logininfor` VALUES (415, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-24 16:47:06');
INSERT INTO `sys_logininfor` VALUES (416, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-25 10:19:26');
INSERT INTO `sys_logininfor` VALUES (417, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-25 11:16:07');
INSERT INTO `sys_logininfor` VALUES (418, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-25 13:55:01');
INSERT INTO `sys_logininfor` VALUES (419, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-25 16:57:06');
INSERT INTO `sys_logininfor` VALUES (420, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-26 13:24:22');
INSERT INTO `sys_logininfor` VALUES (421, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-12-26 17:07:06');
INSERT INTO `sys_logininfor` VALUES (422, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-26 17:07:13');
INSERT INTO `sys_logininfor` VALUES (423, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-26 22:30:44');
INSERT INTO `sys_logininfor` VALUES (424, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-27 13:56:36');
INSERT INTO `sys_logininfor` VALUES (425, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-29 09:29:32');
INSERT INTO `sys_logininfor` VALUES (426, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-29 10:55:35');
INSERT INTO `sys_logininfor` VALUES (427, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-29 14:12:41');
INSERT INTO `sys_logininfor` VALUES (428, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-29 14:33:19');
INSERT INTO `sys_logininfor` VALUES (429, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-29 14:33:49');
INSERT INTO `sys_logininfor` VALUES (430, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-29 16:45:12');
INSERT INTO `sys_logininfor` VALUES (431, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-30 09:49:18');
INSERT INTO `sys_logininfor` VALUES (432, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-30 13:17:30');
INSERT INTO `sys_logininfor` VALUES (433, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-30 14:38:04');
INSERT INTO `sys_logininfor` VALUES (434, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-30 16:13:14');
INSERT INTO `sys_logininfor` VALUES (435, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-31 09:21:48');
INSERT INTO `sys_logininfor` VALUES (436, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-31 09:23:23');
INSERT INTO `sys_logininfor` VALUES (437, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-31 09:23:37');
INSERT INTO `sys_logininfor` VALUES (438, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-31 09:25:39');
INSERT INTO `sys_logininfor` VALUES (439, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-31 09:25:47');
INSERT INTO `sys_logininfor` VALUES (440, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-31 09:36:48');
INSERT INTO `sys_logininfor` VALUES (441, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-31 09:37:01');
INSERT INTO `sys_logininfor` VALUES (442, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-31 11:20:45');
INSERT INTO `sys_logininfor` VALUES (443, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-31 14:20:46');
INSERT INTO `sys_logininfor` VALUES (444, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-31 15:32:22');
INSERT INTO `sys_logininfor` VALUES (445, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-31 15:41:37');
INSERT INTO `sys_logininfor` VALUES (446, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-31 15:41:47');
INSERT INTO `sys_logininfor` VALUES (447, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-31 16:01:38');
INSERT INTO `sys_logininfor` VALUES (448, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-31 16:01:44');
INSERT INTO `sys_logininfor` VALUES (449, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-31 16:14:14');
INSERT INTO `sys_logininfor` VALUES (450, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-31 16:14:21');
INSERT INTO `sys_logininfor` VALUES (451, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-31 16:15:28');
INSERT INTO `sys_logininfor` VALUES (452, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-31 16:15:36');
INSERT INTO `sys_logininfor` VALUES (453, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-31 16:15:46');
INSERT INTO `sys_logininfor` VALUES (454, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-31 16:15:53');
INSERT INTO `sys_logininfor` VALUES (455, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-31 16:31:24');
INSERT INTO `sys_logininfor` VALUES (456, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-31 16:31:31');
INSERT INTO `sys_logininfor` VALUES (457, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-12-31 16:52:52');
INSERT INTO `sys_logininfor` VALUES (458, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-12-31 16:53:02');
INSERT INTO `sys_logininfor` VALUES (459, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-12-31 16:53:12');
INSERT INTO `sys_logininfor` VALUES (460, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-02 09:21:23');
INSERT INTO `sys_logininfor` VALUES (461, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-02 10:06:35');
INSERT INTO `sys_logininfor` VALUES (462, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-01-02 10:20:55');
INSERT INTO `sys_logininfor` VALUES (463, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-02 10:21:03');
INSERT INTO `sys_logininfor` VALUES (464, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-03 10:37:55');
INSERT INTO `sys_logininfor` VALUES (465, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-03 16:11:18');
INSERT INTO `sys_logininfor` VALUES (466, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-08 16:07:14');
INSERT INTO `sys_logininfor` VALUES (467, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-10 14:38:00');
INSERT INTO `sys_logininfor` VALUES (468, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-10 15:58:50');
INSERT INTO `sys_logininfor` VALUES (469, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-10 17:27:29');
INSERT INTO `sys_logininfor` VALUES (470, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-11 15:20:56');
INSERT INTO `sys_logininfor` VALUES (471, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-11 16:09:00');
INSERT INTO `sys_logininfor` VALUES (472, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-13 13:16:31');
INSERT INTO `sys_logininfor` VALUES (473, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-13 15:04:49');
INSERT INTO `sys_logininfor` VALUES (474, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-13 16:23:05');
INSERT INTO `sys_logininfor` VALUES (475, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-14 09:05:00');
INSERT INTO `sys_logininfor` VALUES (476, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-14 10:35:59');
INSERT INTO `sys_logininfor` VALUES (477, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-01-14 11:22:21');
INSERT INTO `sys_logininfor` VALUES (478, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2025-01-14 12:56:28');
INSERT INTO `sys_logininfor` VALUES (479, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-14 12:56:33');
INSERT INTO `sys_logininfor` VALUES (480, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-14 13:43:01');
INSERT INTO `sys_logininfor` VALUES (481, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-14 15:06:03');
INSERT INTO `sys_logininfor` VALUES (482, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-14 15:31:26');
INSERT INTO `sys_logininfor` VALUES (483, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-14 20:16:48');
INSERT INTO `sys_logininfor` VALUES (484, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-01-14 21:02:38');
INSERT INTO `sys_logininfor` VALUES (485, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-14 21:02:41');
INSERT INTO `sys_logininfor` VALUES (486, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-15 09:51:32');
INSERT INTO `sys_logininfor` VALUES (487, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-15 11:08:45');
INSERT INTO `sys_logininfor` VALUES (488, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-15 13:25:53');
INSERT INTO `sys_logininfor` VALUES (489, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-15 14:38:42');
INSERT INTO `sys_logininfor` VALUES (490, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-15 15:22:39');
INSERT INTO `sys_logininfor` VALUES (491, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-15 19:03:13');
INSERT INTO `sys_logininfor` VALUES (492, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-16 09:45:48');
INSERT INTO `sys_logininfor` VALUES (493, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-16 10:44:02');
INSERT INTO `sys_logininfor` VALUES (494, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-16 11:16:34');
INSERT INTO `sys_logininfor` VALUES (495, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-16 14:10:37');
INSERT INTO `sys_logininfor` VALUES (496, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-16 15:37:44');
INSERT INTO `sys_logininfor` VALUES (497, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-16 16:53:49');
INSERT INTO `sys_logininfor` VALUES (498, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-16 18:50:36');
INSERT INTO `sys_logininfor` VALUES (499, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-17 17:14:59');
INSERT INTO `sys_logininfor` VALUES (500, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-01-17 17:15:07');
INSERT INTO `sys_logininfor` VALUES (501, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-17 17:15:15');
INSERT INTO `sys_logininfor` VALUES (502, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-01-17 17:15:27');
INSERT INTO `sys_logininfor` VALUES (503, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-17 17:15:40');
INSERT INTO `sys_logininfor` VALUES (504, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-01-17 17:19:47');
INSERT INTO `sys_logininfor` VALUES (505, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-17 17:20:11');
INSERT INTO `sys_logininfor` VALUES (506, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-18 13:04:47');
INSERT INTO `sys_logininfor` VALUES (507, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-18 15:52:40');
INSERT INTO `sys_logininfor` VALUES (508, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-18 16:35:07');
INSERT INTO `sys_logininfor` VALUES (509, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-18 18:03:03');
INSERT INTO `sys_logininfor` VALUES (510, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-18 18:44:36');
INSERT INTO `sys_logininfor` VALUES (511, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-18 19:25:52');
INSERT INTO `sys_logininfor` VALUES (512, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-19 10:01:50');
INSERT INTO `sys_logininfor` VALUES (513, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-19 11:26:33');
INSERT INTO `sys_logininfor` VALUES (514, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-19 12:19:31');
INSERT INTO `sys_logininfor` VALUES (515, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-19 16:40:40');
INSERT INTO `sys_logininfor` VALUES (516, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-20 12:23:29');
INSERT INTO `sys_logininfor` VALUES (517, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-20 12:54:20');
INSERT INTO `sys_logininfor` VALUES (518, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-20 13:38:49');
INSERT INTO `sys_logininfor` VALUES (519, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-20 14:39:06');
INSERT INTO `sys_logininfor` VALUES (520, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-20 15:52:28');
INSERT INTO `sys_logininfor` VALUES (521, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-20 16:51:32');
INSERT INTO `sys_logininfor` VALUES (522, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-21 09:22:02');
INSERT INTO `sys_logininfor` VALUES (523, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-21 13:47:34');
INSERT INTO `sys_logininfor` VALUES (524, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-21 14:52:57');
INSERT INTO `sys_logininfor` VALUES (525, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-01-22 09:38:03');
INSERT INTO `sys_logininfor` VALUES (526, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-01-22 09:38:06');
INSERT INTO `sys_logininfor` VALUES (527, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-01-22 09:38:09');
INSERT INTO `sys_logininfor` VALUES (528, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-01-22 09:38:14');
INSERT INTO `sys_logininfor` VALUES (529, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-01-22 09:38:17');
INSERT INTO `sys_logininfor` VALUES (530, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-22 09:43:42');
INSERT INTO `sys_logininfor` VALUES (531, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-22 17:58:07');
INSERT INTO `sys_logininfor` VALUES (532, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-23 09:45:26');
INSERT INTO `sys_logininfor` VALUES (533, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-23 11:07:49');
INSERT INTO `sys_logininfor` VALUES (534, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-23 14:29:33');
INSERT INTO `sys_logininfor` VALUES (535, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-23 16:15:32');
INSERT INTO `sys_logininfor` VALUES (536, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-23 16:39:57');
INSERT INTO `sys_logininfor` VALUES (537, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-23 20:49:51');
INSERT INTO `sys_logininfor` VALUES (538, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-24 15:15:16');
INSERT INTO `sys_logininfor` VALUES (539, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-01-24 15:17:10');
INSERT INTO `sys_logininfor` VALUES (540, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-24 15:17:16');
INSERT INTO `sys_logininfor` VALUES (541, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-01-24 15:17:27');
INSERT INTO `sys_logininfor` VALUES (542, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-01-24 15:17:32');
INSERT INTO `sys_logininfor` VALUES (543, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-24 15:17:37');
INSERT INTO `sys_logininfor` VALUES (544, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-01-24 15:18:02');
INSERT INTO `sys_logininfor` VALUES (545, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-24 15:18:07');
INSERT INTO `sys_logininfor` VALUES (546, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-01-24 15:20:43');
INSERT INTO `sys_logininfor` VALUES (547, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-24 15:20:50');
INSERT INTO `sys_logininfor` VALUES (548, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-01-24 15:21:58');
INSERT INTO `sys_logininfor` VALUES (549, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-01-24 15:22:04');
INSERT INTO `sys_logininfor` VALUES (550, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-01-24 15:22:07');
INSERT INTO `sys_logininfor` VALUES (551, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-24 15:22:11');
INSERT INTO `sys_logininfor` VALUES (552, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-24 16:19:52');
INSERT INTO `sys_logininfor` VALUES (553, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-24 17:03:35');
INSERT INTO `sys_logininfor` VALUES (554, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-24 17:38:27');
INSERT INTO `sys_logininfor` VALUES (555, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-01-24 21:11:58');
INSERT INTO `sys_logininfor` VALUES (556, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-24 21:12:03');
INSERT INTO `sys_logininfor` VALUES (557, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-25 09:08:33');
INSERT INTO `sys_logininfor` VALUES (558, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-25 09:45:53');
INSERT INTO `sys_logininfor` VALUES (559, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-25 11:02:41');
INSERT INTO `sys_logininfor` VALUES (560, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-25 13:38:56');
INSERT INTO `sys_logininfor` VALUES (561, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-25 14:23:24');
INSERT INTO `sys_logininfor` VALUES (562, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-25 15:49:22');
INSERT INTO `sys_logininfor` VALUES (563, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-25 17:02:40');
INSERT INTO `sys_logininfor` VALUES (564, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-25 17:39:38');
INSERT INTO `sys_logininfor` VALUES (565, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-26 07:44:42');
INSERT INTO `sys_logininfor` VALUES (566, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-01-26 08:00:22');
INSERT INTO `sys_logininfor` VALUES (567, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2025-01-26 08:01:16');
INSERT INTO `sys_logininfor` VALUES (568, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-26 08:01:17');
INSERT INTO `sys_logininfor` VALUES (569, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-26 09:32:13');
INSERT INTO `sys_logininfor` VALUES (570, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-31 10:57:48');
INSERT INTO `sys_logininfor` VALUES (571, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-31 13:17:57');
INSERT INTO `sys_logininfor` VALUES (572, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-01-31 19:57:22');
INSERT INTO `sys_logininfor` VALUES (573, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-04 15:32:17');
INSERT INTO `sys_logininfor` VALUES (574, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-04 13:28:44');
INSERT INTO `sys_logininfor` VALUES (575, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-04 21:58:33');
INSERT INTO `sys_logininfor` VALUES (576, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-05 01:39:08');
INSERT INTO `sys_logininfor` VALUES (577, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-05 07:10:52');
INSERT INTO `sys_logininfor` VALUES (578, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-05 08:05:16');
INSERT INTO `sys_logininfor` VALUES (579, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-05 14:26:08');
INSERT INTO `sys_logininfor` VALUES (580, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-02-10 02:01:52');
INSERT INTO `sys_logininfor` VALUES (581, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-10 02:01:59');
INSERT INTO `sys_logininfor` VALUES (582, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-10 11:05:29');
INSERT INTO `sys_logininfor` VALUES (583, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-10 11:37:41');
INSERT INTO `sys_logininfor` VALUES (584, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-11 01:20:43');
INSERT INTO `sys_logininfor` VALUES (585, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-11 01:50:49');
INSERT INTO `sys_logininfor` VALUES (586, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-11 02:29:45');
INSERT INTO `sys_logininfor` VALUES (587, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-11 05:52:00');
INSERT INTO `sys_logininfor` VALUES (588, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-11 06:41:59');
INSERT INTO `sys_logininfor` VALUES (589, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2025-02-13 01:23:23');
INSERT INTO `sys_logininfor` VALUES (590, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-02-13 01:23:25');
INSERT INTO `sys_logininfor` VALUES (591, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-13 01:23:30');
INSERT INTO `sys_logininfor` VALUES (592, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-13 02:04:43');
INSERT INTO `sys_logininfor` VALUES (593, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-13 02:04:51');
INSERT INTO `sys_logininfor` VALUES (594, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-13 02:07:51');
INSERT INTO `sys_logininfor` VALUES (595, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-13 02:07:57');
INSERT INTO `sys_logininfor` VALUES (596, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-13 02:09:36');
INSERT INTO `sys_logininfor` VALUES (597, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-13 02:09:42');
INSERT INTO `sys_logininfor` VALUES (598, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-13 02:10:51');
INSERT INTO `sys_logininfor` VALUES (599, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-13 02:11:05');
INSERT INTO `sys_logininfor` VALUES (600, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-13 02:22:39');
INSERT INTO `sys_logininfor` VALUES (601, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-13 03:06:27');
INSERT INTO `sys_logininfor` VALUES (602, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-13 05:34:04');
INSERT INTO `sys_logininfor` VALUES (603, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-13 06:48:30');
INSERT INTO `sys_logininfor` VALUES (604, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-13 12:06:37');
INSERT INTO `sys_logininfor` VALUES (605, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-13 13:52:43');
INSERT INTO `sys_logininfor` VALUES (606, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-13 13:53:02');
INSERT INTO `sys_logininfor` VALUES (607, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-13 13:53:22');
INSERT INTO `sys_logininfor` VALUES (608, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-13 15:11:54');
INSERT INTO `sys_logininfor` VALUES (609, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-13 15:12:06');
INSERT INTO `sys_logininfor` VALUES (610, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-13 16:38:40');
INSERT INTO `sys_logininfor` VALUES (611, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-14 01:27:33');
INSERT INTO `sys_logininfor` VALUES (612, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-14 01:27:55');
INSERT INTO `sys_logininfor` VALUES (613, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-14 01:28:03');
INSERT INTO `sys_logininfor` VALUES (614, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-14 01:29:22');
INSERT INTO `sys_logininfor` VALUES (615, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-14 01:29:28');
INSERT INTO `sys_logininfor` VALUES (616, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-14 01:31:13');
INSERT INTO `sys_logininfor` VALUES (617, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-14 01:31:18');
INSERT INTO `sys_logininfor` VALUES (618, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-14 01:41:33');
INSERT INTO `sys_logininfor` VALUES (619, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-14 01:41:40');
INSERT INTO `sys_logininfor` VALUES (620, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-14 01:41:53');
INSERT INTO `sys_logininfor` VALUES (621, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-14 01:42:01');
INSERT INTO `sys_logininfor` VALUES (622, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-14 05:36:02');
INSERT INTO `sys_logininfor` VALUES (623, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-14 06:43:02');
INSERT INTO `sys_logininfor` VALUES (624, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-16 03:14:24');
INSERT INTO `sys_logininfor` VALUES (625, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-16 04:12:50');
INSERT INTO `sys_logininfor` VALUES (626, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2025-02-16 08:26:58');
INSERT INTO `sys_logininfor` VALUES (627, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-16 08:27:03');
INSERT INTO `sys_logininfor` VALUES (628, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-16 18:14:10');
INSERT INTO `sys_logininfor` VALUES (629, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-16 20:52:21');
INSERT INTO `sys_logininfor` VALUES (630, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-16 21:02:40');
INSERT INTO `sys_logininfor` VALUES (631, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-16 21:02:50');
INSERT INTO `sys_logininfor` VALUES (632, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-16 21:03:09');
INSERT INTO `sys_logininfor` VALUES (633, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-16 21:03:13');
INSERT INTO `sys_logininfor` VALUES (634, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-16 21:54:30');
INSERT INTO `sys_logininfor` VALUES (635, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-16 21:54:39');
INSERT INTO `sys_logininfor` VALUES (636, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-17 14:52:20');
INSERT INTO `sys_logininfor` VALUES (637, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-18 11:30:51');
INSERT INTO `sys_logininfor` VALUES (638, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-18 15:07:20');
INSERT INTO `sys_logininfor` VALUES (639, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2025-02-18 17:17:04');
INSERT INTO `sys_logininfor` VALUES (640, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-18 17:17:07');
INSERT INTO `sys_logininfor` VALUES (641, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-18 17:17:10');
INSERT INTO `sys_logininfor` VALUES (642, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-18 21:46:18');
INSERT INTO `sys_logininfor` VALUES (643, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-19 10:00:54');
INSERT INTO `sys_logininfor` VALUES (644, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2025-02-22 18:30:48');
INSERT INTO `sys_logininfor` VALUES (645, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-02-22 18:30:51');
INSERT INTO `sys_logininfor` VALUES (646, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-22 18:30:59');
INSERT INTO `sys_logininfor` VALUES (647, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-24 09:21:10');
INSERT INTO `sys_logininfor` VALUES (648, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-24 09:56:51');
INSERT INTO `sys_logininfor` VALUES (649, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-24 10:56:40');
INSERT INTO `sys_logininfor` VALUES (650, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2025-02-24 13:23:02');
INSERT INTO `sys_logininfor` VALUES (651, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-24 13:23:05');
INSERT INTO `sys_logininfor` VALUES (652, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-24 14:35:09');
INSERT INTO `sys_logininfor` VALUES (653, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-24 16:45:06');
INSERT INTO `sys_logininfor` VALUES (654, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-24 17:20:31');
INSERT INTO `sys_logininfor` VALUES (655, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-24 17:20:39');
INSERT INTO `sys_logininfor` VALUES (656, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-24 17:33:24');
INSERT INTO `sys_logininfor` VALUES (657, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-24 17:33:32');
INSERT INTO `sys_logininfor` VALUES (658, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-24 20:22:34');
INSERT INTO `sys_logininfor` VALUES (659, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-24 21:48:06');
INSERT INTO `sys_logininfor` VALUES (660, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-25 11:03:29');
INSERT INTO `sys_logininfor` VALUES (661, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-25 15:22:53');
INSERT INTO `sys_logininfor` VALUES (662, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2025-02-25 17:13:20');
INSERT INTO `sys_logininfor` VALUES (663, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-25 17:13:25');
INSERT INTO `sys_logininfor` VALUES (664, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-25 22:18:03');
INSERT INTO `sys_logininfor` VALUES (665, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-25 23:38:51');
INSERT INTO `sys_logininfor` VALUES (666, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-26 09:28:31');
INSERT INTO `sys_logininfor` VALUES (667, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-26 09:28:47');
INSERT INTO `sys_logininfor` VALUES (668, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-26 09:28:57');
INSERT INTO `sys_logininfor` VALUES (669, 'tiffany', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-26 09:39:40');
INSERT INTO `sys_logininfor` VALUES (670, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-26 09:39:48');
INSERT INTO `sys_logininfor` VALUES (671, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-26 10:59:30');
INSERT INTO `sys_logininfor` VALUES (672, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-26 10:59:35');
INSERT INTO `sys_logininfor` VALUES (673, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-26 10:59:42');
INSERT INTO `sys_logininfor` VALUES (674, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-26 11:00:01');
INSERT INTO `sys_logininfor` VALUES (675, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2025-02-26 11:00:06');
INSERT INTO `sys_logininfor` VALUES (676, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-26 11:00:14');
INSERT INTO `sys_logininfor` VALUES (677, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-26 11:08:36');
INSERT INTO `sys_logininfor` VALUES (678, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-26 11:08:46');
INSERT INTO `sys_logininfor` VALUES (679, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-26 11:08:56');
INSERT INTO `sys_logininfor` VALUES (680, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-26 11:09:04');
INSERT INTO `sys_logininfor` VALUES (681, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-26 13:36:05');
INSERT INTO `sys_logininfor` VALUES (682, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-26 15:48:27');
INSERT INTO `sys_logininfor` VALUES (683, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-26 16:46:03');
INSERT INTO `sys_logininfor` VALUES (684, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-26 20:32:39');
INSERT INTO `sys_logininfor` VALUES (685, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-26 22:33:24');
INSERT INTO `sys_logininfor` VALUES (686, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-27 09:18:31');
INSERT INTO `sys_logininfor` VALUES (687, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-27 09:56:06');
INSERT INTO `sys_logininfor` VALUES (688, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-27 11:24:25');
INSERT INTO `sys_logininfor` VALUES (689, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-27 13:57:33');
INSERT INTO `sys_logininfor` VALUES (690, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2025-02-28 13:51:00');
INSERT INTO `sys_logininfor` VALUES (691, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-28 13:51:04');
INSERT INTO `sys_logininfor` VALUES (692, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-28 14:27:29');
INSERT INTO `sys_logininfor` VALUES (693, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-28 14:27:35');
INSERT INTO `sys_logininfor` VALUES (694, 'ry', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2025-02-28 14:45:52');
INSERT INTO `sys_logininfor` VALUES (695, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-02-28 14:45:57');
INSERT INTO `sys_logininfor` VALUES (696, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-01 00:30:33');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由名称',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2011 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-10-23 10:16:39', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-10-23 10:16:39', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-10-23 10:16:39', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2024-10-23 10:16:39', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-10-23 10:16:39', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-10-23 10:16:39', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-10-23 10:16:39', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-10-23 10:16:39', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-10-23 10:16:39', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-10-23 10:16:39', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-10-23 10:16:39', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-10-23 10:16:39', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-10-23 10:16:39', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-10-23 10:16:39', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-10-23 10:16:39', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-10-23 10:16:39', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-10-23 10:16:39', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-10-23 10:16:39', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-10-23 10:16:39', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-10-23 10:16:39', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-10-23 10:16:39', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-10-23 10:16:39', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-10-23 10:16:39', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-10-23 10:16:39', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-10-23 10:16:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, 'test', 0, 8, '/', NULL, NULL, '', 1, 0, 'M', '0', '0', '', '404', 'admin', '2024-10-23 14:29:36', 'admin', '2024-10-23 15:11:08', '');
INSERT INTO `sys_menu` VALUES (2002, '考勤记录', 1, 1, 'attendance', 'system/attendance/index', NULL, '', 1, 0, 'C', '0', '0', 'system:attendance:list', 'time', 'admin', '2024-11-07 10:53:57', 'admin', '2025-02-22 19:00:52', '');
INSERT INTO `sys_menu` VALUES (2003, '会议室信息', 1, 2, 'meeting', 'system/meeting/index', NULL, '', 1, 0, 'C', '0', '0', '', 'monitor', 'admin', '2024-11-27 14:46:24', 'admin', '2025-02-22 19:00:01', '');
INSERT INTO `sys_menu` VALUES (2006, '会议管理', 1, 2, 'meeting/booking', 'system/meeting/booking', NULL, '', 1, 0, 'C', '0', '0', '', 'build', 'admin', '2024-11-28 17:24:23', 'admin', '2025-02-22 18:59:52', '');
INSERT INTO `sys_menu` VALUES (2007, '导出', 2002, 1, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:attendance:export', '#', 'admin', '2024-12-21 21:20:08', 'admin', '2024-12-21 21:26:08', '');
INSERT INTO `sys_menu` VALUES (2008, '导入', 2002, 2, '', NULL, NULL, '', 1, 0, 'F', '0', '0', 'system:attendance:import', '#', 'admin', '2024-12-21 21:25:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '资产管理', 1, 2, 'asset', 'system/asset/index', NULL, '', 1, 0, 'C', '0', '0', 'system:asset:list', 'money', 'admin', '2025-01-03 10:44:29', 'admin', '2025-01-24 15:18:57', '');
INSERT INTO `sys_menu` VALUES (2010, '维修申请', 1, 2, 'asset/repairOrder', 'system/asset/repairOrder', NULL, '', 1, 0, 'C', '0', '0', '', 'clipboard', 'admin', '2025-01-25 09:11:40', 'admin', '2025-01-25 09:13:07', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-10-23 10:16:40', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-10-23 10:16:40', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 257 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"404\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"test\",\"menuType\":\"C\",\"orderNum\":8,\"params\":{},\"parentId\":0,\"path\":\"/\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 14:29:36', 55);
INSERT INTO `sys_oper_log` VALUES (101, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'PUT', 1, 'admin', '研发部门', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"updateBy\":\"admin\",\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 14:30:58', 126);
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'ry', '测试部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"icon\":\"bug\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"test\",\"menuType\":\"C\",\"orderNum\":9,\"params\":{},\"parentId\":0,\"path\":\"/\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"新增菜单\'test\'失败，菜单名称已存在\",\"code\":500}', 0, NULL, '2024-10-23 14:32:38', 15);
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'ry', '测试部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"ry\",\"icon\":\"bug\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"test1\",\"menuType\":\"C\",\"orderNum\":9,\"params\":{},\"parentId\":0,\"path\":\"/\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 14:32:46', 16);
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-10-23 14:29:36\",\"icon\":\"404\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"test\",\"menuType\":\"M\",\"orderNum\":8,\"params\":{},\"parentId\":0,\"path\":\"/\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 15:11:08', 33);
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-10-23 14:32:45\",\"icon\":\"bug\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"test1\",\"menuType\":\"M\",\"orderNum\":9,\"params\":{},\"parentId\":0,\"path\":\"/\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 15:11:17', 15);
INSERT INTO `sys_oper_log` VALUES (106, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-10-23 10:16:39\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,4,2000],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 15:26:43', 69);
INSERT INTO `sys_oper_log` VALUES (107, '创建表', 0, 'com.ruoyi.generator.controller.GenController.createTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/createTable', '127.0.0.1', '内网IP', '{\"sql\":\"CREATE TABLE `auth_user` (\\n  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT \'用户ID\',\\n  `name` varchar(30) NOT NULL COMMENT \'姓名\',\\n  `nick_name` varchar(30) NOT NULL COMMENT \'用户昵称\',\\n  `gender` char(1) DEFAULT \'2\' COMMENT \'用户性别（0男 1女 2未知）\',\\n  `emp_number` varchar(30) NOT NULL COMMENT \'工号\',\\n  `email` varchar(50) DEFAULT \'\' COMMENT \'用户邮箱\',\\n  `phonenumber` varchar(11) DEFAULT \'\' COMMENT \'手机号码\',\\n  `user_type` varchar(2) DEFAULT \'00\' COMMENT \'用户类型（00系统用户）\',\\n  `password` varchar(100) DEFAULT \'\' COMMENT \'密码\',\\n  `avatar` varchar(100) DEFAULT \'\' COMMENT \'头像地址\',\\n  `status` char(1) DEFAULT \'0\' COMMENT \'帐号状态（0正常 1停用）\',\\n  `del_flag` char(1) DEFAULT \'0\' COMMENT \'删除标志（0代表存在 2代表删除）\',\\n  `create_by` varchar(64) DEFAULT \'\' COMMENT \'创建者\',\\n  `create_time` datetime DEFAULT NULL COMMENT \'创建时间\',\\n  `update_by` varchar(64) DEFAULT \'\' COMMENT \'更新者\',\\n  `update_time` datetime DEFAULT NULL COMMENT \'更新时间\',\\n  `remark` varchar(500) DEFAULT NULL COMMENT \'备注\',\\n  PRIMARY KEY (`user_id`)\\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT=\'用户信息表\';\\n\\nCREATE TABLE `auth_dept` (\\n  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT \'部门id\',\\n  `parent_id` bigint DEFAULT \'0\' COMMENT \'父部门id\',\\n  `ancestors` varchar(50) DEFAULT \'\' COMMENT \'祖级列表\',\\n  `dept_name` varchar(30) DEFAULT \'\' COMMENT \'部门名称\',\\n  `order_num` int DEFAULT \'0\' COMMENT \'显示顺序\',\\n  `status` char(1) DEFAULT \'0\' COMMENT \'部门状态（0正常 1停用）\',\\n  `del_flag` char(1) DEFAULT \'0\' COMMENT \'删除标志（0代表存在 2代表删除）\',\\n  `create_by` varchar(64) DEFAULT \'\' COMMENT \'创建者\',\\n  `create_time` datetime DEFAULT NULL COMMENT \'创建时间\',\\n  `update_by` varchar(64) DEFAULT \'\' COMMENT \'更新者\',\\n  `update_time` datetime DEFAULT NULL COMMENT \'更新时间\',\\n  PRIMARY KEY (`dept_id`)\\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT=\'部门表\';\\n\\nCREATE TABLE `auth_user_dept` (\\n  `user_id` bigint NOT NULL COMMENT \'用户ID\',\\n  `dept_id` bigint NOT NULL COMMENT \'部门id\',\\n  `position` varchar(30) DEFAULT \'\' COMMENT \'职位\',\\n  `des', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-27 11:18:06', 423);
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"auth_dept\"}', NULL, 0, NULL, '2024-10-27 11:18:15', 561);
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"auth_dept,auth_user,auth_user_dept\"}', NULL, 0, NULL, '2024-10-27 11:18:20', 398);
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"dept\",\"className\":\"AuthDept\",\"columns\":[{\"capJavaField\":\"DeptId\",\"columnComment\":\"部门id\",\"columnId\":1,\"columnName\":\"dept_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-10-27 11:18:06\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"deptId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"父部门id\",\"columnId\":2,\"columnName\":\"parent_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-10-27 11:18:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":true,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":true},{\"capJavaField\":\"Ancestors\",\"columnComment\":\"祖级列表\",\"columnId\":3,\"columnName\":\"ancestors\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-27 11:18:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"ancestors\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeptName\",\"columnComment\":\"部门名称\",\"columnId\":4,\"columnName\":\"dept_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-27 11:18:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaFie', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-27 11:22:43', 113);
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"员工\",\"className\":\"AuthUser\",\"columns\":[{\"capJavaField\":\"UserId\",\"columnComment\":\"用户ID\",\"columnId\":12,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-10-27 11:18:06\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":13,\"columnName\":\"name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-27 11:18:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"NickName\",\"columnComment\":\"用户昵称\",\"columnId\":14,\"columnName\":\"nick_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-27 11:18:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"nickName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Gender\",\"columnComment\":\"用户性别（0男 1女 2未知）\",\"columnId\":15,\"columnName\":\"gender\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-27 11:18:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-27 11:23:14', 102);
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"dept\",\"className\":\"AuthUserDept\",\"columns\":[{\"capJavaField\":\"UserId\",\"columnComment\":\"用户ID\",\"columnId\":29,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-10-27 11:18:06\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeptId\",\"columnComment\":\"部门id\",\"columnId\":30,\"columnName\":\"dept_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-10-27 11:18:06\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"deptId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Position\",\"columnComment\":\"职位\",\"columnId\":31,\"columnName\":\"position\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-27 11:18:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"position\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Desc\",\"columnComment\":\"描述\",\"columnId\":32,\"columnName\":\"desc\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-27 11:18:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"desc\",\"javaType\":\"String\",\"list\":true,\"param', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-27 11:23:34', 54);
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"auth_dept,auth_user,auth_user_dept\"}', NULL, 0, NULL, '2024-10-27 11:24:02', 502);
INSERT INTO `sys_oper_log` VALUES (114, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-10-02 09:00:00\",\"delFlag\":\"0\",\"email\":\"bob@example.com\",\"loginDate\":\"2024-10-02 09:00:00\",\"loginIp\":\"192.168.1.2\",\"nickName\":\"Bob\",\"params\":{},\"phonenumber\":\"15923456789\",\"postIds\":[4],\"remark\":\"Remark for Bob\",\"roleIds\":[],\"roles\":[],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":121,\"userName\":\"user002\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-30 20:22:20', 85);
INSERT INTO `sys_oper_log` VALUES (115, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":107,\"email\":\"bai123@hotmail.com\",\"nickName\":\"user111111\",\"params\":{},\"phonenumber\":\"15900000000\",\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":130,\"userName\":\"user101010101\",\"workId\":\"work9009\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-02 17:15:34', 161);
INSERT INTO `sys_oper_log` VALUES (116, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":106,\"email\":\"wei@qq.com\",\"nickName\":\"user11111111\",\"params\":{},\"phonenumber\":\"18967686666\",\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":131,\"userName\":\"aui845\",\"workId\":\"work111\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-02 17:16:48', 113);
INSERT INTO `sys_oper_log` VALUES (117, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/user/130', '127.0.0.1', '内网IP', '[130]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-02 17:17:08', 24);
INSERT INTO `sys_oper_log` VALUES (118, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/user/131', '127.0.0.1', '内网IP', '[131]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-02 17:17:11', 13);
INSERT INTO `sys_oper_log` VALUES (119, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"email\":\"test1@qq.com\",\"nickName\":\"test1\",\"params\":{},\"phonenumber\":\"18900000000\",\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":132,\"userName\":\"tttest\",\"workId\":\"testworkid\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-02 17:28:52', 76);
INSERT INTO `sys_oper_log` VALUES (120, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":108,\"nickName\":\"test2\",\"params\":{},\"postIds\":[3],\"roleIds\":[2],\"sex\":\"0\",\"status\":\"0\",\"userId\":133,\"userName\":\"ttt2\",\"workId\":\"workttt\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-02 17:41:24', 116);
INSERT INTO `sys_oper_log` VALUES (121, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"nickName\":\"test3\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userName\":\"admin\",\"workId\":\"wwww\"}', '{\"msg\":\"新增用户\'admin\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2024-11-02 17:48:47', 4);
INSERT INTO `sys_oper_log` VALUES (122, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"nickName\":\"test4\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userName\":\"admin\",\"workId\":\"wwww\"}', '{\"msg\":\"新增用户\'admin\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2024-11-02 17:48:53', 5);
INSERT INTO `sys_oper_log` VALUES (123, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"test3\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":134,\"userName\":\"testt3\",\"workId\":\"ttt3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-02 17:49:13', 106);
INSERT INTO `sys_oper_log` VALUES (124, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"test4\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":135,\"userName\":\"ttt4\",\"workId\":\"www4\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-02 17:50:47', 112);
INSERT INTO `sys_oper_log` VALUES (125, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"test5\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":136,\"userName\":\"ttt5\",\"workId\":\"www5\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-02 17:51:52', 111);
INSERT INTO `sys_oper_log` VALUES (126, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"山西省/阳泉市/郊区dkfdjsl\",\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"test6\",\"params\":{},\"postIds\":[2],\"roleIds\":[],\"status\":\"0\",\"userId\":137,\"userName\":\"ttt6\",\"workId\":\"w6\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-02 18:03:34', 109);
INSERT INTO `sys_oper_log` VALUES (127, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"test7\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":138,\"userName\":\"t7\",\"workId\":\"w7\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-02 18:08:17', 112);
INSERT INTO `sys_oper_log` VALUES (128, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"山西省/长治市/潞城区sdlkfjsldj\",\"admin\":false,\"createBy\":\"admin\",\"endDate\":\"2024-11-20 00:00:00\",\"nickName\":\"test8\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"startDate\":\"2024-11-01 00:00:00\",\"status\":\"0\",\"userName\":\"t8\",\"workId\":\"w8\"}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### The error may exist in file [D:\\workspace\\java\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\SysUserMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.SysUserMapper.insertUser\r\n### The error occurred while executing an update\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String', '2024-11-02 18:13:18', 108);
INSERT INTO `sys_oper_log` VALUES (129, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"山西省/长治市/潞城区sdlkfjsldj\",\"admin\":false,\"createBy\":\"admin\",\"endDate\":\"2024-11-20 00:00:00\",\"nickName\":\"test8\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"startDate\":\"2024-11-01 00:00:00\",\"status\":\"0\",\"userName\":\"t8\",\"workId\":\"w8\"}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### The error may exist in file [D:\\workspace\\java\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\SysUserMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.SysUserMapper.insertUser\r\n### The error occurred while executing an update\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String', '2024-11-02 18:13:27', 99);
INSERT INTO `sys_oper_log` VALUES (130, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"山西省/长治市/潞城区sdlkfjsldj\",\"admin\":false,\"createBy\":\"admin\",\"endDate\":\"2024-11-20 00:00:00\",\"nickName\":\"test8\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"startDate\":\"2024-11-01 00:00:00\",\"status\":\"0\",\"userName\":\"t8\",\"workId\":\"w8\"}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### The error may exist in file [D:\\workspace\\java\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\SysUserMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.SysUserMapper.insertUser\r\n### The error occurred while executing an update\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String', '2024-11-02 18:14:15', 96);
INSERT INTO `sys_oper_log` VALUES (131, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"山西省/长治市/潞城区sdlkfjsldj\",\"admin\":false,\"createBy\":\"admin\",\"endDate\":\"2024-11-01 00:00:00\",\"nickName\":\"test8\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"startDate\":\"2024-10-09 00:00:00\",\"status\":\"0\",\"userName\":\"t8\",\"workId\":\"w8\"}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### The error may exist in file [D:\\workspace\\java\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\SysUserMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.SysUserMapper.insertUser\r\n### The error occurred while executing an update\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String', '2024-11-02 18:14:53', 104);
INSERT INTO `sys_oper_log` VALUES (132, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"山西省/长治市/潞城区sdlkfjsldj\",\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"test8\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"startDate\":\"2024-10-09 00:00:00\",\"status\":\"0\",\"userName\":\"t8\",\"workId\":\"w8\"}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### The error may exist in file [D:\\workspace\\java\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\SysUserMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.SysUserMapper.insertUser\r\n### The error occurred while executing an update\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String', '2024-11-02 18:17:20', 104);
INSERT INTO `sys_oper_log` VALUES (133, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"山西省/长治市/潞城区sdlkfjsldj\",\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"test8\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":139,\"userName\":\"t8\",\"workId\":\"w8\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-02 18:17:51', 119);
INSERT INTO `sys_oper_log` VALUES (134, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"test9\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"startDate\":\"2024-11-01 00:00:00\",\"status\":\"0\",\"userId\":140,\"userName\":\"t9\",\"workId\":\"w9\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-02 18:38:23', 76);
INSERT INTO `sys_oper_log` VALUES (135, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-11-02 17:28:52\",\"delFlag\":\"0\",\"deptId\":109,\"email\":\"test1@qq.com\",\"loginIp\":\"\",\"nickName\":\"test1\",\"params\":{},\"phonenumber\":\"18900000000\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":132,\"userName\":\"tttest\",\"workId\":\"testworkid\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-06 09:51:53', 43);
INSERT INTO `sys_oper_log` VALUES (136, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-11-02 17:28:52\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,102\",\"children\":[],\"deptId\":109,\"deptName\":\"财务部门\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":102,\"status\":\"0\"},\"deptId\":109,\"email\":\"test1@qq.com\",\"loginIp\":\"\",\"nickName\":\"test1\",\"params\":{},\"phonenumber\":\"18900000000\",\"postIds\":[4],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":132,\"userName\":\"tttest\",\"workId\":\"testworkid\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-06 12:18:36', 91);
INSERT INTO `sys_oper_log` VALUES (137, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-11-02 17:28:52\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,102\",\"children\":[],\"deptId\":109,\"deptName\":\"财务部门\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":102,\"status\":\"0\"},\"deptId\":109,\"email\":\"test1@qq.com\",\"loginIp\":\"\",\"nickName\":\"test1\",\"params\":{},\"phonenumber\":\"18900000000\",\"postIds\":[4],\"roleIds\":[2],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":132,\"userName\":\"tttest\",\"workId\":\"testworkid\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-06 12:18:51', 46);
INSERT INTO `sys_oper_log` VALUES (138, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"四川省成都市青羊区光华大道100号锦江豪庭4幢703室\",\"admin\":false,\"avatar\":\"\",\"birthday\":\"1996-07-01 00:00:00\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 14:00:00\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,102\",\"children\":[],\"deptId\":108,\"deptName\":\"市场部门\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":102,\"status\":\"0\"},\"deptId\":108,\"email\":\"grace@example.com\",\"endDate\":\"2024-11-28 00:00:00\",\"loginDate\":\"2024-10-07 14:00:00\",\"loginIp\":\"192.168.1.7\",\"nickName\":\"Grace\",\"params\":{},\"phonenumber\":\"13678901234\",\"postIds\":[],\"remark\":\"Remark for Grace\",\"roleIds\":[],\"roles\":[],\"sex\":\"1\",\"startDate\":\"2022-07-01 00:00:00\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":126,\"userName\":\"user007\",\"workId\":\"W007\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-06 13:07:27', 45);
INSERT INTO `sys_oper_log` VALUES (139, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"山东省济南市历下区经十路68号海岱公寓9幢302室\",\"admin\":false,\"avatar\":\"\",\"birthday\":\"1995-06-01 00:00:00\",\"createBy\":\"admin\",\"createTime\":\"2024-10-06 13:00:00\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":107,\"deptName\":\"运维部门\",\"leader\":\"若依\",\"orderNum\":5,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":107,\"email\":\"frank@example.com\",\"loginDate\":\"2024-10-06 13:00:00\",\"loginIp\":\"192.168.1.6\",\"nickName\":\"Frank\",\"params\":{},\"phonenumber\":\"15967890123\",\"postIds\":[],\"remark\":\"Remark for Frank\",\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"startDate\":\"2022-06-01 00:00:00\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":125,\"userName\":\"user006\",\"workId\":\"W006\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-06 13:07:46', 23);
INSERT INTO `sys_oper_log` VALUES (140, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"辽宁省抚顺市顺城区城东新区99-2号\",\"admin\":false,\"createBy\":\"admin\",\"deptId\":108,\"email\":\"t2@qq.com\",\"nickName\":\"test2\",\"params\":{},\"phonenumber\":\"13800000001\",\"postIds\":[3],\"roleIds\":[2],\"sex\":\"0\",\"startDate\":\"2021-03-03 00:00:00\",\"status\":\"0\",\"userId\":141,\"userName\":\"t2\",\"workId\":\"w2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-06 13:23:15', 123);
INSERT INTO `sys_oper_log` VALUES (141, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/user/141', '127.0.0.1', '内网IP', '[141]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-06 13:57:29', 15);
INSERT INTO `sys_oper_log` VALUES (142, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"北京市/市辖区/东城区yiyiiyi1\",\"admin\":false,\"createBy\":\"admin\",\"deptId\":105,\"email\":\"t2@qq.com\",\"nickName\":\"test2\",\"params\":{},\"phonenumber\":\"15677777777\",\"postIds\":[4],\"roleIds\":[2],\"sex\":\"0\",\"startDate\":\"2024-09-03 00:00:00\",\"status\":\"0\",\"userId\":142,\"userName\":\"t2\",\"workId\":\"w2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-07 09:54:46', 113);
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2000', '127.0.0.1', '内网IP', '2000', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-11-07 10:50:40', 31);
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2001', '127.0.0.1', '内网IP', '2001', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-07 10:50:44', 12);
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"time\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"考勤记录\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"path\":\"/\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-07 10:53:57', 21);
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/attendance/index\",\"createTime\":\"2024-11-07 10:53:57\",\"icon\":\"time\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"考勤记录\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"/\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-07 10:55:30', 11);
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/attendance/index\",\"createTime\":\"2024-11-07 10:53:57\",\"icon\":\"time\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"考勤记录\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"dept\",\"perms\":\"system:dept:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-07 11:03:14', 9);
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/attendance/index\",\"createTime\":\"2024-11-07 10:53:57\",\"icon\":\"time\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"考勤记录\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"/\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-07 11:03:56', 10);
INSERT INTO `sys_oper_log` VALUES (149, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/attendance/index\",\"createTime\":\"2024-11-07 10:53:57\",\"icon\":\"time\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"考勤记录\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"attendance\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-07 11:05:15', 12);
INSERT INTO `sys_oper_log` VALUES (150, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/attendance/index\",\"createTime\":\"2024-11-07 10:53:57\",\"icon\":\"time\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"考勤记录\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"attendance\",\"perms\":\"system:user:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-09 14:29:04', 32);
INSERT INTO `sys_oper_log` VALUES (151, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/attendance/index\",\"createTime\":\"2024-11-07 10:53:57\",\"icon\":\"time\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"考勤记录\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"attendance\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-09 14:33:00', 11);
INSERT INTO `sys_oper_log` VALUES (152, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"四川省成都市青羊区光华大道100号锦江豪庭4幢703室\",\"admin\":false,\"avatar\":\"\",\"birthday\":\"1996-07-01 00:00:00\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 14:00:00\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,102\",\"children\":[],\"deptId\":108,\"deptName\":\"市场部门\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":102,\"status\":\"0\"},\"deptId\":108,\"email\":\"grace@example.com\",\"loginDate\":\"2024-10-07 14:00:00\",\"loginIp\":\"192.168.1.7\",\"nickName\":\"Grace\",\"params\":{},\"phonenumber\":\"13678901234\",\"postIds\":[4],\"remark\":\"Remark for Grace\",\"roleIds\":[],\"roles\":[],\"sex\":\"1\",\"startDate\":\"2022-07-01 00:00:00\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":126,\"userName\":\"user007\",\"workId\":\"W007\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-09 15:25:02', 56);
INSERT INTO `sys_oper_log` VALUES (153, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-10-23 10:16:39\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"测试部门\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":105,\"email\":\"ry@qq.com\",\"loginDate\":\"2024-11-21 16:04:37\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\",\"workId\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 16:37:41', 55);
INSERT INTO `sys_oper_log` VALUES (154, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/user/121', '127.0.0.1', '内网IP', '[121]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-23 16:50:35', 136);
INSERT INTO `sys_oper_log` VALUES (155, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"浙江省杭州市萧山区山阴路965号家联公寓2幢703室\",\"admin\":false,\"avatar\":\"\",\"birthday\":\"1990-01-01 00:00:00\",\"createBy\":\"admin\",\"createTime\":\"2024-10-01 08:00:00\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":104,\"deptName\":\"市场部门\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":104,\"email\":\"alice@example.com\",\"loginDate\":\"2024-10-01 08:00:00\",\"loginIp\":\"192.168.1.1\",\"nickName\":\"user01\",\"params\":{},\"phonenumber\":\"13612345678\",\"postIds\":[],\"remark\":\"Remark for Alice\",\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"startDate\":\"2022-02-28 00:00:00\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":120,\"userName\":\"Alice\",\"workId\":\"W001\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-24 09:38:42', 208);
INSERT INTO `sys_oper_log` VALUES (156, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"浙江省杭州市萧山区山阴路965号家联公寓2幢703室\",\"admin\":false,\"avatar\":\"\",\"birthday\":\"1990-01-01 00:00:00\",\"createBy\":\"admin\",\"createTime\":\"2024-10-01 08:00:00\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":104,\"deptName\":\"市场部门\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":104,\"email\":\"alice@example.com\",\"loginDate\":\"2024-10-01 08:00:00\",\"loginIp\":\"192.168.1.1\",\"nickName\":\"user01\",\"params\":{},\"phonenumber\":\"13612345678\",\"postIds\":[],\"remark\":\"Remark for Alice\",\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"startDate\":\"2022-01-28 00:00:00\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":120,\"userName\":\"Alice\",\"workId\":\"W001\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-24 09:39:30', 87);
INSERT INTO `sys_oper_log` VALUES (157, '用户管理', 5, 'com.ruoyi.web.controller.system.SysUserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-11-24 14:28:28', 4392);
INSERT INTO `sys_oper_log` VALUES (158, '用户管理', 5, 'com.ruoyi.web.controller.system.SysUserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-11-24 14:35:32', 333);
INSERT INTO `sys_oper_log` VALUES (159, '用户管理', 5, 'com.ruoyi.web.controller.system.SysUserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-11-25 14:45:18', 646);
INSERT INTO `sys_oper_log` VALUES (160, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'ry', '测试部门', '/system/menu/2000', '127.0.0.1', '内网IP', '2000', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-11-26 15:31:15', 37);
INSERT INTO `sys_oper_log` VALUES (161, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/meetingroom/index\",\"createBy\":\"admin\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"会议室信息\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":1,\"path\":\"meetingroom\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 14:46:24', 126);
INSERT INTO `sys_oper_log` VALUES (162, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/meeting/index\",\"createTime\":\"2024-11-27 14:46:24\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2003,\"menuName\":\"会议室信息\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":1,\"path\":\"meeting\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-27 14:47:16', 42);
INSERT INTO `sys_oper_log` VALUES (163, '会议室管理', 1, 'com.ruoyi.web.controller.system.MeetingController.add()', 'POST', 1, 'admin', '研发部门', '/system/meeting', '127.0.0.1', '内网IP', '{\"capacity\":20,\"equipment\":\"投影\",\"inUse\":\"0\",\"location\":\"一楼\",\"roomName\":\"测试会议室\"}', NULL, 1, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 1\' at line 1\r\n### The error may exist in file [D:\\workspace\\java\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\MeetingMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT room_id, room_name FROM meeting_rooms WHERE room_name = ? and limit 1\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 1\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'limit 1\' at line 1', '2024-11-27 18:48:10', 299);
INSERT INTO `sys_oper_log` VALUES (164, '会议室管理', 1, 'com.ruoyi.web.controller.system.MeetingController.add()', 'POST', 1, 'admin', '研发部门', '/system/meeting', '127.0.0.1', '内网IP', '{\"capacity\":20,\"inUse\":\"0\",\"roomName\":\"测试11\"}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'began\' in \'class com.ruoyi.common.core.domain.entity.MeetingRoom\'', '2024-11-27 18:52:46', 52);
INSERT INTO `sys_oper_log` VALUES (165, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/11/28/aniya_20241128103253A001.jpg\",\"code\":200}', 0, NULL, '2024-11-28 10:32:50', 277);
INSERT INTO `sys_oper_log` VALUES (166, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', '研发部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15888888888\",\"sex\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 10:32:53', 36);
INSERT INTO `sys_oper_log` VALUES (167, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', '研发部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15888888888\",\"sex\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 10:32:57', 41);
INSERT INTO `sys_oper_log` VALUES (168, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/11/28/avatar_20241128103322A002.png\",\"code\":200}', 0, NULL, '2024-11-28 10:33:20', 24);
INSERT INTO `sys_oper_log` VALUES (169, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', '研发部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15888888888\",\"sex\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 10:33:32', 44);
INSERT INTO `sys_oper_log` VALUES (170, '岗位管理', 5, 'com.ruoyi.web.controller.system.SysPostController.export()', 'POST', 1, 'admin', '研发部门', '/system/post/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-11-28 16:16:42', 3070);
INSERT INTO `sys_oper_log` VALUES (171, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"会议管理\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"system/meeting/\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 17:19:34', 72);
INSERT INTO `sys_oper_log` VALUES (172, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2004', '127.0.0.1', '内网IP', '2004', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 17:20:04', 26);
INSERT INTO `sys_oper_log` VALUES (173, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/meeting/booking\",\"createBy\":\"admin\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"会议管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"meeting\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 17:22:42', 36);
INSERT INTO `sys_oper_log` VALUES (174, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2005', '127.0.0.1', '内网IP', '2005', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 17:23:30', 21);
INSERT INTO `sys_oper_log` VALUES (175, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/meeting/booking\",\"createBy\":\"admin\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"会议管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":1,\"path\":\"meeting\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 17:24:23', 33);
INSERT INTO `sys_oper_log` VALUES (176, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/meeting/index\",\"createTime\":\"2024-11-27 14:46:24\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2003,\"menuName\":\"会议室信息\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":1,\"path\":\"meeting\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 17:25:35', 29);
INSERT INTO `sys_oper_log` VALUES (177, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/meeting/booking\",\"createTime\":\"2024-11-28 17:24:23\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"会议管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":1,\"path\":\"meeting/booking\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-28 17:26:58', 33);
INSERT INTO `sys_oper_log` VALUES (178, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"status\":\"1\",\"updateBy\":\"admin\",\"userId\":122}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-06 17:46:55', 35);
INSERT INTO `sys_oper_log` VALUES (179, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":122}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-06 17:47:07', 15);
INSERT INTO `sys_oper_log` VALUES (180, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/attendance/index\",\"createTime\":\"2024-11-07 10:53:57\",\"icon\":\"time\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"考勤记录\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"attendance\",\"perms\":\"system:user:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-11 15:46:05', 77);
INSERT INTO `sys_oper_log` VALUES (181, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/attendance/index\",\"createTime\":\"2024-11-07 10:53:57\",\"icon\":\"time\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"考勤记录\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"attendance\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-11 15:46:18', 32);
INSERT INTO `sys_oper_log` VALUES (182, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-10-23 10:16:39\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,2002,2006,2003,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,4,2000],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-13 20:33:04', 341);
INSERT INTO `sys_oper_log` VALUES (183, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'ry', '测试部门', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'avatar\' at row 2\r\n### The error may exist in file [D:\\workspace\\java\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\SysUserMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.SysUserMapper.updateUserAvatar-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_user set avatar = ? where user_name = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'avatar\' at row 2\n; Data truncation: Data too long for column \'avatar\' at row 2; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'avatar\' at row 2', '2024-12-13 20:38:05', 489);
INSERT INTO `sys_oper_log` VALUES (184, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'ry', '测试部门', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/12/13/11_20241213203853A002.jpg\",\"code\":200}', 0, NULL, '2024-12-13 20:38:51', 36);
INSERT INTO `sys_oper_log` VALUES (185, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'ry', '测试部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"ry@qq.com\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15666666666\",\"sex\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-13 20:38:53', 60);
INSERT INTO `sys_oper_log` VALUES (186, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'ry', '测试部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"ry@qq.com\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15666666666\",\"sex\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-13 20:38:57', 49);
INSERT INTO `sys_oper_log` VALUES (187, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"上海市/市辖区/长宁区\",\"admin\":false,\"createBy\":\"admin\",\"deptId\":103,\"email\":\"fafafa@gmail.com\",\"nickName\":\"tiffany\",\"params\":{},\"phonenumber\":\"18888888888\",\"postIds\":[4],\"remark\":\"娄山关路\",\"roleIds\":[2],\"sex\":\"1\",\"startDate\":\"2024-12-01 00:00:00\",\"status\":\"0\",\"userId\":163,\"userName\":\"tiffany\",\"workId\":\"WID021\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 09:29:34', 1513);
INSERT INTO `sys_oper_log` VALUES (188, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'tiffany', '研发部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"fafafa@gmail.com\",\"nickName\":\"fa\",\"params\":{},\"phonenumber\":\"18888888888\",\"sex\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 09:33:24', 51);
INSERT INTO `sys_oper_log` VALUES (189, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'tiffany', '研发部门', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/12/18/1111 (2)_20241218093551A001.jpg\",\"code\":200}', 0, NULL, '2024-12-18 09:35:49', 527);
INSERT INTO `sys_oper_log` VALUES (190, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'tiffany', '研发部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"fafafa@gmail.com\",\"nickName\":\"fa\",\"params\":{},\"phonenumber\":\"18888888888\",\"sex\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 09:35:51', 35);
INSERT INTO `sys_oper_log` VALUES (191, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, 'tiffany', '研发部门', '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 09:36:21', 3922);
INSERT INTO `sys_oper_log` VALUES (192, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, 'tiffany', '研发部门', '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-18 09:37:01', 3857);
INSERT INTO `sys_oper_log` VALUES (193, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"roleId\":100,\"roleKey\":\"4\",\"roleName\":\"test\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-21 21:12:09', 191);
INSERT INTO `sys_oper_log` VALUES (194, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"导出\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2002,\"perms\":\"system:attendace:export\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-21 21:20:08', 65);
INSERT INTO `sys_oper_log` VALUES (195, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-10-23 10:16:39\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,2002,2007,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,2003,2006,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,4,2000],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-21 21:21:37', 130);
INSERT INTO `sys_oper_log` VALUES (196, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'ry', '测试部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-10-23 10:16:39\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,2003,2006,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,4,2000],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-21 21:22:49', 186);
INSERT INTO `sys_oper_log` VALUES (197, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"导入\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2002,\"perms\":\"system:attendance:import\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-21 21:25:58', 32);
INSERT INTO `sys_oper_log` VALUES (198, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-12-21 21:20:08\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"导出\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2002,\"path\":\"\",\"perms\":\"system:attendance:export\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-21 21:26:08', 27);
INSERT INTO `sys_oper_log` VALUES (199, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-10-23 10:16:39\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2002,100,1000,1001,1002,1003,1004,1005,1006,2008,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,2003,2006,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,4,2000],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-21 21:26:24', 136);
INSERT INTO `sys_oper_log` VALUES (200, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'ry', '测试部门', '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-10-23 10:16:39\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-21 23:55:29', 137);
INSERT INTO `sys_oper_log` VALUES (201, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/attendance/index\",\"createTime\":\"2024-11-07 10:53:57\",\"icon\":\"time\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"考勤记录\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"attendance\",\"perms\":\"system:attendance:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-12-31 16:17:27', 135);
INSERT INTO `sys_oper_log` VALUES (202, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/asset/index\",\"createBy\":\"admin\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"资产管理\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"asset\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-03 10:44:29', 129);
INSERT INTO `sys_oper_log` VALUES (203, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/asset/index\",\"createTime\":\"2025-01-03 10:44:29\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2009,\"menuName\":\"资产管理\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":1,\"path\":\"asset\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-03 10:45:15', 39);
INSERT INTO `sys_oper_log` VALUES (204, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/asset/index\",\"createTime\":\"2025-01-03 10:44:29\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2009,\"menuName\":\"资产管理\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"asset\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-03 10:45:34', 46);
INSERT INTO `sys_oper_log` VALUES (205, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"资产类型\",\"dictType\":\"asset_type\",\"params\":{},\"remark\":\"资产管理-资产类型\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-15 09:52:49', 86);
INSERT INTO `sys_oper_log` VALUES (206, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"电子产品\",\"dictSort\":1,\"dictType\":\"asset_type\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-15 09:59:53', 54);
INSERT INTO `sys_oper_log` VALUES (207, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-01-15 09:59:53\",\"default\":false,\"dictCode\":100,\"dictLabel\":\"电子产品\",\"dictSort\":1,\"dictType\":\"asset_type\",\"dictValue\":\"0\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"remark\":\"资产类别，电子产品，主机显示屏笔记本\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-15 10:00:44', 38);
INSERT INTO `sys_oper_log` VALUES (208, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"办公家具\",\"dictSort\":2,\"dictType\":\"asset_type\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"remark\":\"办公家具 桌子椅子储物柜抽屉\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-15 10:04:13', 48);
INSERT INTO `sys_oper_log` VALUES (209, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-01-15 09:59:53\",\"default\":false,\"dictCode\":100,\"dictLabel\":\"Electronics\",\"dictSort\":1,\"dictType\":\"asset_type\",\"dictValue\":\"0\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"remark\":\"资产类别，电子产品，主机显示屏笔记本\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-15 11:09:57', 50);
INSERT INTO `sys_oper_log` VALUES (210, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-01-15 10:04:13\",\"default\":false,\"dictCode\":101,\"dictLabel\":\"Furniture\",\"dictSort\":2,\"dictType\":\"asset_type\",\"dictValue\":\"2\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"remark\":\"办公家具 桌子椅子储物柜抽屉\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-15 11:10:21', 52);
INSERT INTO `sys_oper_log` VALUES (211, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"IT Equipment\",\"dictSort\":2,\"dictType\":\"asset_type\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"remark\":\"IT设备\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-15 11:11:26', 57);
INSERT INTO `sys_oper_log` VALUES (212, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-01-15 11:11:26\",\"default\":false,\"dictCode\":102,\"dictLabel\":\"IT Equipment\",\"dictSort\":3,\"dictType\":\"asset_type\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"remark\":\"IT设备\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-15 11:11:41', 38);
INSERT INTO `sys_oper_log` VALUES (213, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"浙江省杭州市萧山区山阴路965号家联公寓2幢703室\",\"admin\":false,\"avatar\":\"\",\"birthday\":\"1990-01-01 00:00:00\",\"createBy\":\"admin\",\"createTime\":\"2024-10-01 08:00:00\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":104,\"deptName\":\"市场部门\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":104,\"deptName\":\"市场部门\",\"email\":\"alice@example.com\",\"loginDate\":\"2024-10-01 08:00:00\",\"loginIp\":\"192.168.1.1\",\"nickName\":\"user01\",\"params\":{},\"phonenumber\":\"13612345678\",\"postIds\":[4],\"remark\":\"Remark for Alice\",\"roleIds\":[2],\"roles\":[],\"sex\":\"0\",\"startDate\":\"2022-01-01 00:00:00\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":120,\"userName\":\"Alice\",\"workId\":\"W001\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-16 09:53:11', 131);
INSERT INTO `sys_oper_log` VALUES (214, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"数量单位\",\"dictType\":\"asset_unit\",\"params\":{},\"remark\":\"资产数量单位\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-16 17:17:36', 47);
INSERT INTO `sys_oper_log` VALUES (215, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"台\",\"dictSort\":1,\"dictType\":\"asset_unit\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"remark\":\"电脑设备等\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-16 17:18:41', 29);
INSERT INTO `sys_oper_log` VALUES (216, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"个\",\"dictSort\":2,\"dictType\":\"asset_unit\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-16 17:19:11', 38);
INSERT INTO `sys_oper_log` VALUES (217, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"2\",\"dictSort\":3,\"dictType\":\"asset_unit\",\"dictValue\":\"套\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-16 17:19:25', 32);
INSERT INTO `sys_oper_log` VALUES (218, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-01-16 17:19:25\",\"default\":false,\"dictCode\":105,\"dictLabel\":\"套\",\"dictSort\":3,\"dictType\":\"asset_unit\",\"dictValue\":\"2\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-16 17:19:44', 39);
INSERT INTO `sys_oper_log` VALUES (219, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'tiffany', '研发部门', '/system/user/150', '127.0.0.1', '内网IP', '[150]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-17 17:15:57', 208);
INSERT INTO `sys_oper_log` VALUES (220, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'tiffany', '研发部门', '/system/user/161', '127.0.0.1', '内网IP', '[161]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-17 17:16:24', 67);
INSERT INTO `sys_oper_log` VALUES (221, '资产管理', 1, 'com.ruoyi.web.controller.system.AssetsController.add()', 'POST', 1, 'admin', '研发部门', '/system/assets/add', '127.0.0.1', '内网IP', '{\"assetManagerId\":1,\"assetName\":\"111\",\"assetType\":\"2\",\"brand\":\"11\",\"deptId\":104,\"inboundDate\":\"2025-01-13\",\"isInStock\":\"Y\",\"isNew\":\"Y\",\"location\":\"111\",\"manufacturingDate\":\"2025-01-12\",\"model\":\"11\",\"purchaseBatch\":\"11\",\"quantity\":1,\"remark\":\"1111\",\"snNumber\":\"XYZGEN78836650\",\"status\":0,\"unit\":\"0\"}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.time.LocalDate and java.lang.String\r\n### The error may exist in file [D:\\workspace\\java\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\AssetsMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.AssetsMapper.insertAssets\r\n### The error occurred while executing an update\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.time.LocalDate and java.lang.String', '2025-01-18 16:06:02', 77);
INSERT INTO `sys_oper_log` VALUES (222, '资产管理', 1, 'com.ruoyi.web.controller.system.AssetsController.add()', 'POST', 1, 'admin', '研发部门', '/system/assets/add', '127.0.0.1', '内网IP', '{\"assetManagerId\":1,\"assetName\":\"1111\",\"assetType\":\"0\",\"brand\":\"111111\",\"deptId\":108,\"inboundDate\":\"2025-01-12\",\"isInStock\":\"Y\",\"isNew\":\"Y\",\"location\":\"11\",\"manufacturingDate\":\"2024-12-31\",\"model\":\"11\",\"purchaseBatch\":\"11\",\"quantity\":1,\"snNumber\":\"XYZGEN22362485\",\"status\":0,\"unit\":\"0\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'asset_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\workspace\\java\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\AssetsMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.AssetsMapper.insertAssets-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO assets(                    asset_name,           asset_type,           brand,           model,           manufacturing_date,           inbound_date,           purchase_batch,           quantity,           unit,                               dept_id,           location,           status,           is_in_stock,           is_new,           asset_manager_id,          created_at,updated_at         )VALUES (                    ?,           ?,           ?,           ?,           ?,           ?,           ?,           ?,           ?,                               ?,           ?,           ?,           ?,           ?,           ?,          sysdate(),sysdate()         )\r\n### Cause: java.sql.SQLException: Field \'asset_id\' doesn\'t have a default value\n; Field \'asset_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'asset_id\' doesn\'t have a default value', '2025-01-18 18:05:33', 310);
INSERT INTO `sys_oper_log` VALUES (223, '资产管理', 1, 'com.ruoyi.web.controller.system.AssetsController.add()', 'POST', 1, 'admin', '研发部门', '/system/assets/add', '127.0.0.1', '内网IP', '{\"assetManagerId\":1,\"assetName\":\"1111\",\"assetType\":\"0\",\"brand\":\"111111\",\"deptId\":108,\"inboundDate\":\"2025-01-12\",\"isInStock\":\"Y\",\"isNew\":\"Y\",\"location\":\"11\",\"manufacturingDate\":\"2024-12-31\",\"model\":\"11\",\"purchaseBatch\":\"11\",\"quantity\":1,\"snNumber\":\"XYZGEN80991692\",\"status\":0,\"unit\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-18 18:14:20', 32);
INSERT INTO `sys_oper_log` VALUES (224, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"浙江省杭州市萧山区山阴路965号家联公寓2幢703室\",\"admin\":false,\"avatar\":\"\",\"birthday\":\"1990-01-01 00:00:00\",\"createBy\":\"admin\",\"createTime\":\"2024-10-01 08:00:00\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":104,\"deptName\":\"市场部门\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":104,\"deptName\":\"市场部门\",\"email\":\"alice@example.com\",\"endDate\":\"2025-01-15 00:00:00\",\"loginDate\":\"2024-10-01 08:00:00\",\"loginIp\":\"192.168.1.1\",\"nickName\":\"user01\",\"params\":{},\"phonenumber\":\"13612345678\",\"postIds\":[4],\"remark\":\"Remark for Alice\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"startDate\":\"2022-01-01 00:00:00\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":120,\"userName\":\"Alice\",\"workId\":\"W001\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-20 16:10:05', 215);
INSERT INTO `sys_oper_log` VALUES (225, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"浙江省杭州市萧山区山阴路965号家联公寓2幢703室\",\"admin\":false,\"avatar\":\"\",\"birthday\":\"1990-01-01 00:00:00\",\"createBy\":\"admin\",\"createTime\":\"2024-10-01 08:00:00\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":104,\"deptName\":\"市场部门\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":104,\"deptName\":\"市场部门\",\"email\":\"alice@example.com\",\"endDate\":\"2025-01-19 00:00:00\",\"loginDate\":\"2024-10-01 08:00:00\",\"loginIp\":\"192.168.1.1\",\"nickName\":\"user01\",\"params\":{},\"phonenumber\":\"13612345678\",\"postIds\":[4],\"remark\":\"Remark for Alice\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"startDate\":\"2022-01-01 00:00:00\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":120,\"userName\":\"Alice\",\"workId\":\"W001\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-20 16:10:14', 81);
INSERT INTO `sys_oper_log` VALUES (226, '资产管理', 1, 'com.ruoyi.web.controller.system.AssetsController.add()', 'POST', 1, 'admin', '研发部门', '/system/assets/add', '127.0.0.1', '内网IP', '{\"assetManagerId\":163,\"assetName\":\"111\",\"assetType\":\"1\",\"assetUsername\":\"tiffany\",\"brand\":\"111\",\"inboundDate\":\"2025-01-21\",\"isInStock\":\"Y\",\"manufacturingDate\":\"2025-01-12\",\"model\":\"11\",\"quantity\":1,\"snNumber\":\"XYZGEN03971075\",\"status\":0,\"unit\":\"0\",\"userId\":\"tiffany\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'tiffany\' for column \'asset_manager_id\' at row 1\r\n### The error may exist in file [D:\\workspace\\java\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\AssetsMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.AssetsMapper.insertAssets-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO assets(                    asset_name,           asset_type,           brand,           model,           manufacturing_date,           inbound_date,                     quantity,           unit,                     user_id,                               status,           is_in_stock,                     asset_manager_id,           asset_username,          created_at,updated_at         )VALUES (                    ?,           ?,           ?,           ?,           ?,           ?,                     ?,           ?,                     ?,                               ?,           ?,                     ?,           ?,          sysdate(),sysdate()         )\r\n### Cause: java.sql.SQLException: Incorrect integer value: \'tiffany\' for column \'asset_manager_id\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'tiffany\' for column \'asset_manager_id\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'tiffany\' for column \'asset_manager_id\' at row 1', '2025-01-21 10:06:31', 193);
INSERT INTO `sys_oper_log` VALUES (227, '资产管理', 1, 'com.ruoyi.web.controller.system.AssetsController.add()', 'POST', 1, 'admin', '研发部门', '/system/assets/add', '127.0.0.1', '内网IP', '{\"assetManagerName\":\"admin\",\"assetName\":\"test\",\"assetType\":\"1\",\"brand\":\"aa\",\"inboundDate\":\"2025-01-21\",\"isInStock\":\"Y\",\"isNew\":\"Y\",\"location\":\"aa\",\"manufacturingDate\":\"2025-01-11\",\"model\":\"aaa\",\"purchaseBatch\":\"aaa\",\"quantity\":1,\"remark\":\"aaa\",\"snNumber\":\"XYZGEN55345682\",\"status\":0,\"unit\":\"0\",\"userName\":\"user006\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-23 11:25:41', 68);
INSERT INTO `sys_oper_log` VALUES (228, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"cssClass\":\"其他\",\"default\":false,\"dictLabel\":\"OTHER\",\"dictSort\":4,\"dictType\":\"asset_type\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-23 14:32:03', 36);
INSERT INTO `sys_oper_log` VALUES (229, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-01-23 14:32:03\",\"cssClass\":\"\",\"default\":false,\"dictCode\":106,\"dictLabel\":\"OTHER\",\"dictSort\":4,\"dictType\":\"asset_type\",\"dictValue\":\"3\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"remark\":\"其他\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-23 14:32:48', 29);
INSERT INTO `sys_oper_log` VALUES (230, '资产管理', 1, 'com.ruoyi.web.controller.system.AssetsController.add()', 'POST', 1, 'admin', '研发部门', '/system/assets/add', '127.0.0.1', '内网IP', '{\"assetManagerName\":\"user004\",\"assetName\":\"11\",\"assetType\":\"0\",\"quantity\":1,\"snNumber\":\"XYZELE72674987\",\"status\":0,\"unit\":\"1\",\"userId\":\"149\",\"userName\":\"user007\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-23 14:48:28', 62);
INSERT INTO `sys_oper_log` VALUES (231, '资产管理', 1, 'com.ruoyi.web.controller.system.AssetsController.add()', 'POST', 1, 'admin', '研发部门', '/system/assets/add', '127.0.0.1', '内网IP', '{\"assetManagerName\":\"user004\",\"assetName\":\"11\",\"assetType\":\"0\",\"quantity\":1,\"snNumber\":\"XYZELE62447501\",\"status\":0,\"unit\":\"1\",\"userId\":\"149\",\"userName\":\"user007\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-23 14:48:46', 25);
INSERT INTO `sys_oper_log` VALUES (232, '资产管理', 1, 'com.ruoyi.web.controller.system.AssetsController.add()', 'POST', 1, 'admin', '研发部门', '/system/assets/add', '127.0.0.1', '内网IP', '{\"assetManagerName\":\"user004\",\"assetName\":\"11\",\"assetType\":\"0\",\"quantity\":1,\"snNumber\":\"XYZELE18356356\",\"status\":0,\"unit\":\"1\",\"userId\":\"149\",\"userName\":\"user007\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-23 14:49:08', 18);
INSERT INTO `sys_oper_log` VALUES (233, '资产管理', 1, 'com.ruoyi.web.controller.system.AssetsController.add()', 'POST', 1, 'admin', '研发部门', '/system/assets/add', '127.0.0.1', '内网IP', '{\"assetManagerName\":\"user004\",\"assetName\":\"11\",\"assetType\":\"0\",\"quantity\":1,\"snNumber\":\"XYZELE81230854\",\"status\":0,\"unit\":\"1\",\"userId\":\"149\",\"userName\":\"user007\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-23 14:49:17', 17);
INSERT INTO `sys_oper_log` VALUES (234, '资产管理', 1, 'com.ruoyi.web.controller.system.AssetsController.add()', 'POST', 1, 'admin', '研发部门', '/system/assets/add', '127.0.0.1', '内网IP', '{\"assetName\":\"11\",\"quantity\":1,\"snNumber\":\"XYZOTH28505314\",\"status\":0,\"unit\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-23 14:54:00', 16);
INSERT INTO `sys_oper_log` VALUES (235, '资产管理', 1, 'com.ruoyi.web.controller.system.AssetsController.add()', 'POST', 1, 'admin', '研发部门', '/system/assets/add', '127.0.0.1', '内网IP', '{\"assetName\":\"22\",\"quantity\":1,\"snNumber\":\"XYZOTH58968170\",\"status\":0,\"unit\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-23 15:06:33', 204985);
INSERT INTO `sys_oper_log` VALUES (236, '资产管理', 1, 'com.ruoyi.web.controller.system.AssetsController.add()', 'POST', 1, 'admin', '研发部门', '/system/assets/add', '127.0.0.1', '内网IP', '{\"assetManagerName\":\"admin\",\"assetName\":\"test1\",\"assetType\":\"1\",\"inboundDate\":\"2025-01-13\",\"isInStock\":\"Y\",\"isNew\":\"Y\",\"location\":\"萧山\",\"manufacturingDate\":\"2025-01-05\",\"quantity\":1,\"snNumber\":\"XYZITE15614969\",\"status\":0,\"unit\":\"1\",\"userId\":\"143\",\"userName\":\"user001\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-23 15:19:49', 107);
INSERT INTO `sys_oper_log` VALUES (237, '资产管理', 1, 'com.ruoyi.web.controller.system.AssetsController.add()', 'POST', 1, 'admin', '研发部门', '/system/assets/add', '127.0.0.1', '内网IP', '{\"assetManagerId\":2,\"assetManagerName\":\"ry\",\"assetName\":\"test2\",\"brand\":\"得力\",\"deptId\":105,\"isInStock\":\"Y\",\"isNew\":\"Y\",\"location\":\"品牌部\",\"model\":\"\",\"quantity\":100,\"snNumber\":\"XYZOTH08372599\",\"status\":0,\"unit\":\"套\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-23 16:16:20', 26);
INSERT INTO `sys_oper_log` VALUES (238, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"浙江省杭州市萧山区山阴路965号家联公寓2幢703\",\"admin\":false,\"avatar\":\"\",\"birthday\":\"1990-01-01 00:00:00\",\"createBy\":\"admin\",\"createTime\":\"2024-10-01 08:00:00\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":104,\"deptName\":\"市场部门\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":104,\"deptName\":\"市场部门\",\"email\":\"alice@example.com\",\"loginDate\":\"2024-10-01 08:00:00\",\"loginIp\":\"192.168.1.1\",\"nickName\":\"user01\",\"params\":{},\"phonenumber\":\"13612345678\",\"postIds\":[4],\"remark\":\"Remark for Alice\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"startDate\":\"2022-01-01 00:00:00\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":120,\"userName\":\"Alice\",\"workId\":\"W001\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-23 16:35:40', 146254);
INSERT INTO `sys_oper_log` VALUES (239, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"浙江省杭州市萧山区山阴路965号家联公寓2幢703室\",\"admin\":false,\"avatar\":\"\",\"birthday\":\"1990-01-01 00:00:00\",\"createBy\":\"admin\",\"createTime\":\"2024-10-01 08:00:00\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":104,\"deptName\":\"市场部门\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":109,\"deptName\":\"市场部门\",\"email\":\"alice@example.com\",\"loginDate\":\"2024-10-01 08:00:00\",\"loginIp\":\"192.168.1.1\",\"nickName\":\"user01\",\"params\":{},\"phonenumber\":\"13612345678\",\"postIds\":[4],\"remark\":\"Remark for Alice\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"startDate\":\"2022-01-01 00:00:00\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":120,\"userName\":\"Alice\",\"workId\":\"W001\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-23 16:40:22', 235);
INSERT INTO `sys_oper_log` VALUES (240, '资产管理', 1, 'com.ruoyi.web.controller.system.AssetsController.add()', 'POST', 1, 'admin', '研发部门', '/system/assets/add', '127.0.0.1', '内网IP', '{\"assetManagerId\":147,\"assetManagerName\":\"user005\",\"assetName\":\"111\",\"assetType\":\"0\",\"brand\":\"\",\"deptId\":105,\"location\":\"11\",\"quantity\":1,\"snNumber\":\"XYZELE04222018\",\"status\":0,\"unit\":\"台\",\"userId\":\"162\",\"userName\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-23 20:53:12', 102);
INSERT INTO `sys_oper_log` VALUES (241, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/asset/index\",\"createTime\":\"2025-01-03 10:44:29\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2009,\"menuName\":\"资产管理\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"asset\",\"perms\":\"system:asset:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-24 15:18:57', 77);
INSERT INTO `sys_oper_log` VALUES (242, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-10-23 10:16:39\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2002,100,1000,1001,1002,1003,1004,1005,1006,2009,2008,101,1007,1008,1009,1010,1011,2006,2003,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,4,2000],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-24 21:15:36', 204);
INSERT INTO `sys_oper_log` VALUES (243, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"维修申请\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":1,\"path\":\"repairOrder\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-25 09:11:40', 70);
INSERT INTO `sys_oper_log` VALUES (244, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/asset/repairOrder\",\"createTime\":\"2025-01-25 09:11:40\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2010,\"menuName\":\"维修申请\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":1,\"path\":\"asset\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-25 09:12:27', 35);
INSERT INTO `sys_oper_log` VALUES (245, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/asset/repairOrder\",\"createTime\":\"2025-01-25 09:11:40\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2010,\"menuName\":\"维修申请\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"asset\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-25 09:12:40', 27);
INSERT INTO `sys_oper_log` VALUES (246, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/asset/repairOrder\",\"createTime\":\"2025-01-25 09:11:40\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2010,\"menuName\":\"维修申请\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"asset/repairOrder\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-01-25 09:13:07', 28);
INSERT INTO `sys_oper_log` VALUES (247, '资产管理', 1, 'com.ruoyi.web.controller.system.AssetsController.add()', 'POST', 1, 'admin', '研发部门', '/system/assets/add', '127.0.0.1', '内网IP', '{\"assetManagerId\":1,\"assetManagerName\":\"admin\",\"assetName\":\"Test1111\",\"assetType\":\"1\",\"brand\":\"aaa\",\"deptId\":104,\"inboundDate\":\"2025-02-09\",\"isInStock\":\"Y\",\"isNew\":\"Y\",\"location\":\"Tokyoaaaa\",\"manufacturingDate\":\"2025-02-08\",\"model\":\"11111\",\"purchaseBatch\":\"11111\",\"quantity\":100,\"remark\":\"111111\",\"snNumber\":\"XYZITE67940751\",\"status\":0,\"unit\":\"台\",\"userId\":\"122\",\"userName\":\"Charlie\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-02-11 07:00:21', 78);
INSERT INTO `sys_oper_log` VALUES (248, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-10-23 10:16:39\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2002,100,1000,1001,1002,1003,1004,1005,1006,2010,2009,2008,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,2006,2003,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,4,2000],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-02-13 02:09:28', 317);
INSERT INTO `sys_oper_log` VALUES (249, '岗位管理', 5, 'com.ruoyi.web.controller.system.SysPostController.export()', 'POST', 1, 'tiffany', '研发部门', '/system/post/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\",\"status\":\"1\"}', NULL, 0, NULL, '2025-02-13 02:38:24', 2002);
INSERT INTO `sys_oper_log` VALUES (250, '资产管理', 1, 'com.ruoyi.web.controller.system.AssetsController.add()', 'POST', 1, 'admin', '研发部门', '/system/assets/add', '127.0.0.1', '内网IP', '{\"assetManagerId\":1,\"assetManagerName\":\"admin\",\"assetName\":\"11\",\"assetType\":\"0\",\"brand\":\"111\",\"deptId\":105,\"inboundDate\":\"2025-02-13\",\"isInStock\":\"N\",\"isNew\":\"Y\",\"location\":\"a02\",\"manufacturingDate\":\"2025-02-19\",\"model\":\"111\",\"purchaseBatch\":\"1111\",\"quantity\":1,\"snNumber\":\"XYZELE74004217\",\"status\":0,\"unit\":\"台\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-02-13 07:51:19', 71);
INSERT INTO `sys_oper_log` VALUES (251, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'tiffany', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"address\":\"江苏省南京市秦淮区中华路198号博爱小区3幢405室\",\"admin\":false,\"avatar\":\"\",\"birthday\":\"1991-02-01 00:00:00\",\"createBy\":\"admin\",\"createTime\":\"2024-10-02 09:00:00\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":106,\"deptName\":\"财务部门\",\"leader\":\"若依\",\"orderNum\":4,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":106,\"deptName\":\"财务部门\",\"email\":\"bob@example.com\",\"loginDate\":\"2024-10-02 09:00:00\",\"loginIp\":\"192.168.1.2\",\"nickName\":\"user02\",\"params\":{},\"phonenumber\":\"15923456789\",\"postIds\":[],\"remark\":\"Remark for Bob\",\"roleIds\":[2],\"roles\":[],\"sex\":\"1\",\"startDate\":\"2022-02-01 00:00:00\",\"status\":\"0\",\"updateBy\":\"tiffany\",\"userId\":121,\"userName\":\"Bob\",\"workId\":\"W002\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-02-13 14:26:23', 392);
INSERT INTO `sys_oper_log` VALUES (252, '资产管理', 1, 'com.ruoyi.web.controller.system.AssetsController.add()', 'POST', 1, 'admin', '研发部门', '/system/assets/add', '127.0.0.1', '内网IP', '{\"assetManagerId\":1,\"assetManagerName\":\"admin\",\"assetName\":\"111\",\"deptId\":109,\"location\":\"111111\",\"quantity\":1,\"snNumber\":\"XYZOTH04475545\",\"status\":0,\"unit\":\"台\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-02-14 06:44:15', 126);
INSERT INTO `sys_oper_log` VALUES (253, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'PUT', 1, 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"status\":\"1\",\"updateBy\":\"admin\",\"userId\":164}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-02-14 07:55:18', 25);
INSERT INTO `sys_oper_log` VALUES (254, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/meeting/booking\",\"createTime\":\"2024-11-28 17:24:23\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"会议管理\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"meeting/booking\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-02-22 18:59:52', 126);
INSERT INTO `sys_oper_log` VALUES (255, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/meeting/index\",\"createTime\":\"2024-11-27 14:46:24\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2003,\"menuName\":\"会议室信息\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"meeting\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-02-22 19:00:01', 41);
INSERT INTO `sys_oper_log` VALUES (256, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/attendance/index\",\"createTime\":\"2024-11-07 10:53:57\",\"icon\":\"time\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"考勤记录\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"path\":\"attendance\",\"perms\":\"system:attendance:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-02-22 19:00:52', 37);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-10-23 10:16:39', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-10-23 10:16:39', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-10-23 10:16:39', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '1', 1, 1, '0', '0', 'admin', '2024-10-23 10:16:39', 'admin', '2025-02-13 02:09:28', '普通角色');
INSERT INTO `sys_role` VALUES (100, '维修人员', 'repair', 3, '1', 1, 1, '0', '0', 'admin', '2024-12-21 21:12:09', '', NULL, '维修人');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 2000);
INSERT INTO `sys_role_menu` VALUES (2, 2002);
INSERT INTO `sys_role_menu` VALUES (2, 2003);
INSERT INTO `sys_role_menu` VALUES (2, 2006);
INSERT INTO `sys_role_menu` VALUES (2, 2008);
INSERT INTO `sys_role_menu` VALUES (2, 2009);
INSERT INTO `sys_role_menu` VALUES (2, 2010);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `work_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '工号',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `start_date` date NULL DEFAULT NULL COMMENT '入职日期',
  `end_date` date NULL DEFAULT NULL COMMENT '离职日期',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 165 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2024/11/28/avatar_20241128103322A002.png', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2025-03-01 00:30:36', 'admin', '2024-10-23 10:16:39', '', '2025-03-01 00:30:33', '管理员', '', NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '/profile/avatar/2024/12/13/11_20241213203853A002.jpg', '$2a$10$sRuukOFHlfIdFEFIt7r9ouaqnVxKKppo7IyKN9n3iNUdwWS45SCPW', '0', '0', '127.0.0.1', '2025-02-28 14:27:37', 'admin', '2024-10-23 10:16:39', 'admin', '2025-02-28 14:27:35', '测试员', '', NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (120, 109, 'Alice', 'user01', '00', 'alice@example.com', '13612345678', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '192.168.1.1', '2024-10-01 08:00:00', 'admin', '2024-10-01 08:00:00', 'admin', '2025-01-23 16:40:22', 'Remark for Alice', 'W001', '浙江省杭州市萧山区山阴路965号家联公寓2幢703室', '1990-01-01', '2022-01-01', NULL);
INSERT INTO `sys_user` VALUES (121, 106, 'Bob', 'user02', '00', 'bob@example.com', '15923456789', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '192.168.1.2', '2024-10-02 09:00:00', 'admin', '2024-10-02 09:00:00', 'tiffany', '2025-02-13 14:26:23', 'Remark for Bob', 'W002', '江苏省南京市秦淮区中华路198号博爱小区3幢405室', '1991-02-01', '2022-02-01', NULL);
INSERT INTO `sys_user` VALUES (122, 107, 'Charlie', 'user03', '00', 'charlie@example.com', '13634567890', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '192.168.1.3', '2024-10-03 10:00:00', 'admin', '2024-10-03 10:00:00', 'admin', '2024-12-06 17:47:07', 'Remark for Charlie', 'W003', '上海市浦东新区张杨路855号海富公寓1幢201室', '1992-03-01', '2022-03-01', NULL);
INSERT INTO `sys_user` VALUES (143, 104, 'user001', 'Nick001', '00', 'user001@example.com', '12345678901', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '192.168.1.1', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'Remark 1', 'WID001', 'Address 1', '1990-01-01', '2023-01-01', NULL);
INSERT INTO `sys_user` VALUES (144, 106, 'user002', 'Nick002', '00', 'user002@example.com', '12345678902', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '192.168.1.2', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'Remark 2', 'WID002', 'Address 2', '1990-02-02', '2023-01-02', NULL);
INSERT INTO `sys_user` VALUES (145, 104, 'user003', 'Nick003', '00', 'user003@example.com', '12345678903', '2', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '192.168.1.3', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'Remark 3', 'WID003', 'Address 3', '1990-03-03', '2023-01-03', NULL);
INSERT INTO `sys_user` VALUES (146, 106, 'user004', 'Nick004', '00', 'user004@example.com', '12345678904', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '192.168.1.4', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'Remark 4', 'WID004', 'Address 4', '1990-04-04', '2023-01-04', NULL);
INSERT INTO `sys_user` VALUES (147, 104, 'user005', 'Nick005', '00', 'user005@example.com', '12345678905', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '192.168.1.5', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'Remark 5', 'WID005', 'Address 5', '1990-05-05', '2023-01-05', NULL);
INSERT INTO `sys_user` VALUES (148, 106, 'user006', 'Nick006', '00', 'user006@example.com', '12345678906', '2', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '192.168.1.6', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'Remark 6', 'WID006', 'Address 6', '1990-06-06', '2023-01-06', NULL);
INSERT INTO `sys_user` VALUES (149, 104, 'user007', 'Nick007', '00', 'user007@example.com', '12345678907', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '192.168.1.7', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'Remark 7', 'WID007', 'Address 7', '1990-07-07', '2023-01-07', NULL);
INSERT INTO `sys_user` VALUES (150, 106, 'user008', 'Nick008', '00', 'user008@example.com', '12345678908', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '2', '192.168.1.8', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'Remark 8', 'WID008', 'Address 8', '1990-08-08', '2023-01-08', NULL);
INSERT INTO `sys_user` VALUES (159, 104, 'user017', 'Nick017', '00', 'user017@example.com', '12345678917', '1', '', 'password017', '0', '0', '192.168.1.17', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'Remark 17', 'WID017', 'Address 17', '1990-05-17', '2023-01-17', NULL);
INSERT INTO `sys_user` VALUES (160, 106, 'user018', 'Nick018', '00', 'user018@example.com', '12345678918', '2', '', 'password018', '0', '0', '192.168.1.18', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'Remark 18', 'WID018', 'Address 18', '1990-06-18', '2023-01-18', NULL);
INSERT INTO `sys_user` VALUES (161, 104, 'user019', 'Nick019', '00', 'user019@example.com', '12345678919', '0', '', 'password019', '0', '2', '192.168.1.19', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'Remark 19', 'WID019', 'Address 19', '1990-07-19', '2023-01-19', NULL);
INSERT INTO `sys_user` VALUES (162, 106, 'user020', 'Nick020', '00', 'user020@example.com', '12345678920', '1', '', 'password020', '0', '0', '192.168.1.20', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'admin', '2024-12-15 01:13:29', 'Remark 20', 'WID020', 'Address 20', '1990-08-20', '2023-01-20', NULL);
INSERT INTO `sys_user` VALUES (163, 103, 'tiffany', 'fa', '00', 'fafafa@gmail.com', '18888888888', '1', '/profile/avatar/2024/12/18/1111 (2)_20241218093551A001.jpg', '$2a$10$sdK0Y6Ll7Zk2aSKAm.JzmOm6XeaNraFggT.hY2ZlvKTAnk2EaTxFK', '0', '0', '127.0.0.1', '2025-02-26 09:29:00', 'admin', '2024-12-18 09:29:34', '', '2025-02-26 09:28:57', '娄山关路', 'WID021', '上海市/市辖区/长宁区', NULL, '2024-12-01', NULL);
INSERT INTO `sys_user` VALUES (164, 101, 'ceooo', '富婆', '00', 'youqian@example.com', '18868686868', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '1', '0', '', NULL, '', NULL, 'admin', '2025-02-14 07:55:18', NULL, 'WID022', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (120, 4);
INSERT INTO `sys_user_post` VALUES (126, 4);
INSERT INTO `sys_user_post` VALUES (132, 4);
INSERT INTO `sys_user_post` VALUES (133, 3);
INSERT INTO `sys_user_post` VALUES (137, 2);
INSERT INTO `sys_user_post` VALUES (142, 4);
INSERT INTO `sys_user_post` VALUES (163, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (120, 2);
INSERT INTO `sys_user_role` VALUES (121, 2);
INSERT INTO `sys_user_role` VALUES (132, 2);
INSERT INTO `sys_user_role` VALUES (133, 2);
INSERT INTO `sys_user_role` VALUES (142, 2);
INSERT INTO `sys_user_role` VALUES (163, 2);

SET FOREIGN_KEY_CHECKS = 1;
