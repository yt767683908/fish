/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50547
 Source Host           : localhost:3306
 Source Schema         : manage

 Target Server Type    : MySQL
 Target Server Version : 50547
 File Encoding         : 65001

 Date: 29/08/2018 23:39:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_acount
-- ----------------------------
DROP TABLE IF EXISTS `user_acount`;
CREATE TABLE `user_acount`  (
  `no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `username` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '',
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '邮箱',
  `createuser` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `createtime` datetime NULL DEFAULT NULL,
  `updateuser` varchar(64) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT '',
  `updatetime` datetime NULL DEFAULT NULL,
  `valid` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '有效',
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_acount
-- ----------------------------
INSERT INTO `user_acount` VALUES (9, 'TGFF8585', '系统管理员', '4QrcOUm6Wau+VuBX8g+IPg==', '系统管理员', '17855038871', '767683908@qq.com', 'TGFF8585', '2018-08-26 21:05:26', '', NULL, 'A');
INSERT INTO `user_acount` VALUES (4, 'YBCO6433', '测试注册', '4QrcOUm6Wau+VuBX8g+IPg==', '测试注册', '123456', '1234567@qq.com', 'YBCO6433', '2018-08-19 21:47:30', '', NULL, 'A');
INSERT INTO `user_acount` VALUES (5, 'QUHL9437', '於涛', '4QrcOUm6Wau+VuBX8g+IPg==', '於涛', '17855038871', '767683908@qq.com', 'QUHL9437', '2018-08-19 21:58:48', '', NULL, 'A');
INSERT INTO `user_acount` VALUES (6, 'XNVH6858', '李世民', '4QrcOUm6Wau+VuBX8g+IPg==', '李世民', '12345678910', '767683908@qq.com', 'XNVH6858', '2018-08-19 22:02:48', '', NULL, 'A');
INSERT INTO `user_acount` VALUES (7, 'MAWP5980', '张三丰', 'JdVa0oOqQAr0ZMdtcTwHrQ==', '张三丰', '12345678910', '767683908@qq.com', 'MAWP5980', '2018-08-19 22:48:44', '', NULL, 'A');
INSERT INTO `user_acount` VALUES (8, 'CQBH0617', '哪吒', '4QrcOUm6Wau+VuBX8g+IPg==', '哪吒', '12345678910', '1234567@qq.com', 'CQBH0617', '2018-08-22 22:33:53', '', NULL, 'A');

-- ----------------------------
-- Table structure for user_department
-- ----------------------------
DROP TABLE IF EXISTS `user_department`;
CREATE TABLE `user_department`  (
  `no` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `count` int(11) NULL DEFAULT NULL COMMENT '部门人数',
  `level` int(11) NULL DEFAULT NULL COMMENT '等级',
  `parentno` bigint(20) NULL DEFAULT NULL COMMENT '上级部门ID',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `createdate` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updatedate` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `updateuser` bigint(50) NULL DEFAULT NULL COMMENT '修改人',
  `isdel` int(11) NULL DEFAULT NULL COMMENT '是否删除（0否1是）',
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `no` bigint(20) NOT NULL AUTO_INCREMENT,
  `uno` bigint(20) NULL DEFAULT NULL COMMENT '用户no',
  `deptno` bigint(11) NULL DEFAULT NULL COMMENT '部门',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` int(2) NULL DEFAULT NULL COMMENT '性别（0女 1男）',
  `birthday` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生日',
  `cardid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `signature` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '签名',
  `school` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '毕业院校',
  `education` int(11) NULL DEFAULT NULL COMMENT '学历',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现居住地址',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `profilephoto` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人头像',
  `createdate` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `createuser` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `updatedate` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `updateuser` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_message
-- ----------------------------
DROP TABLE IF EXISTS `user_message`;
CREATE TABLE `user_message`  (
  `no` bigint(20) NOT NULL AUTO_INCREMENT,
  `senduser` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送人',
  `receiveuser` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收人',
  `groupid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '群ID',
  `isread` int(11) NULL DEFAULT NULL COMMENT '是否已读 0 未读  1 已读',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型 0 单聊消息  1 群消息',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '消息内容',
  `createuser` bigint(20) NULL DEFAULT NULL,
  `createdate` datetime NULL DEFAULT NULL,
  `updatedate` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
