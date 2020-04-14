# liu
第一次写项目：Servlet+JSP+JDBC+MySQL

数据库
/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50643
Source Host           : localhost:3306
Source Database       : wuliu

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2020-04-14 22:08:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dingdan
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jname` varchar(30) NOT NULL,
  `jphonea` char(20) NOT NULL,
  `jphoneb` char(20) NOT NULL,
  `jregion` varchar(50) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `sphonea` char(20) NOT NULL,
  `sphoneb` char(20) NOT NULL,
  `sregion` varchar(50) NOT NULL,
  `hname` varchar(30) NOT NULL,
  `hmoeny` char(20) DEFAULT NULL,
  `hweight` char(10) DEFAULT NULL,
  `hbulk` char(10) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('1', 'zhangsan', '1111', '2222', 'beijing', 'lisi', '3333', '4444', 'tianjiing', 'dianshi', '200', '10', '20', 'sss');
INSERT INTO `dingdan` VALUES ('2', '张三', '13332077021', '5956015', '天津', '李四', '13332077023', '5103', '北京', '电视', '2000', '300', '70', '屏幕易碎');
INSERT INTO `dingdan` VALUES ('3', '座山雕', '13211245626', '8390223', '天津市大学软件学院', '侯一洁', '13211245626', '9390224', '东丽区', '', '', '', '', '');
INSERT INTO `dingdan` VALUES ('4', '张三', '133', '5956015', '天津', '李四', '144', '5103', '', '', '', '', '', '');
INSERT INTO `dingdan` VALUES ('5', '张三', '1', '11', '11', '11', '1', '1', '1', '11', '1', '1', '1', '易碎品');

-- ----------------------------
-- Table structure for gly
-- ----------------------------
DROP TABLE IF EXISTS `gly`;
CREATE TABLE `gly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` char(30) DEFAULT NULL,
  `email` char(30) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gly
-- ----------------------------
INSERT INTO `gly` VALUES ('1', '刘波', '1112', '1614374316@qq.com', '111111111111111111');
INSERT INTO `gly` VALUES ('2', '张三', '123', '1614374316@qq.com', '111111111111111111');
INSERT INTO `gly` VALUES ('6', '李四', '123', '1712624418@qq.com', '111111111111111111');
INSERT INTO `gly` VALUES ('7', '赵六', '123456', '1712624418@qq.com', '13332077027');
INSERT INTO `gly` VALUES ('8', '万事', '123456', '1614374316@qq.com', '13332077027');
INSERT INTO `gly` VALUES ('11', 'aa', '12', '1614374316@qq.com', '13332077027');
INSERT INTO `gly` VALUES ('12', 'z', '1', '1712624418@qq.com', '111111');
INSERT INTO `gly` VALUES ('13', 'c', '123', '1614374316@qq.com', '13332077027');
INSERT INTO `gly` VALUES ('14', 'c', '123', '1614374316@qq.com', '13332077027');
INSERT INTO `gly` VALUES ('15', 'c', '123', '1614374316@qq.com', '13332077027');
INSERT INTO `gly` VALUES ('16', '喜喜', '123456', '1614374316@qq.com', '13332077027');
INSERT INTO `gly` VALUES ('17', 'admit', '123456', '1712624418@qq.com', '13332077027');
INSERT INTO `gly` VALUES ('18', '郭晋', '123456', '1614374316@qq.com', '13332077027');
INSERT INTO `gly` VALUES ('19', '郑三炮', '123654', '173850578@qq.com', '13332077027');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` char(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `phone` char(20) NOT NULL,
  `email` char(30) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'kk', '654321', 'lisi', 'nan', '1399918462', 'null', 'null');
INSERT INTO `user` VALUES ('2', '张三', '123456', '张三', '男', '111111111', 'null', 'null');
INSERT INTO `user` VALUES ('3', 'zz', '123456', 'sa', 'nan', '11111', '154', '15');
INSERT INTO `user` VALUES ('4', '王五', '123456', '留恋', '男', '111111', '1614374316@qq.com', '山西省');
INSERT INTO `user` VALUES ('5', 'JJ ', '123456', '留恋', '男', '13332077027', '1712624418@qq.com', '山西省');
INSERT INTO `user` VALUES ('6', 'JJ ', '123456', '留恋', '男', '13332077027', '1712624418@qq.com', '山西省');
INSERT INTO `user` VALUES ('7', '哈哈', '123456', '小明', '男', '12033026500', '1614374316@qq.com', '山西省');
INSERT INTO `user` VALUES ('8', 'add', 'qwe', 'cdc', '男', '13300001111', '4551515@qq.com', '东北省');
INSERT INTO `user` VALUES ('9', '嘿嘿', '123456', '锅小二', '男', '13752740011', '173850578@qq.com', '山西省');
INSERT INTO `user` VALUES ('10', '呃呃', 'zzz', 'aa', '男', '111111111111111111', '1614374316@qq.com', '山西省');
INSERT INTO `user` VALUES ('11', '011111111111111111111111', 'zz', '留恋', '男', '13332077027', '1712624418@qq.com', '河北省');
INSERT INTO `user` VALUES ('12', '0111111111111111', 'aaa', '小明', '男', '13332077027', '1614374316@qq.com', '山西省');
INSERT INTO `user` VALUES ('13', 'qq', 'aa', 'a', '男', '13332077027', '1712624418@qq.com', '河北省');
INSERT INTO `user` VALUES ('14', 'JJ a', 'a', 'a', '男', '111111111111111111', '1712624418@qq.com', '河北省');
INSERT INTO `user` VALUES ('15', '小二', '123456', '王小二', '男', '13332077027', '1614374316@qq.com', '山西省');
INSERT INTO `user` VALUES ('16', '小六子', '123456', '赵六', '男', '13332077027', '1614374316@qq.com', '山西省');
INSERT INTO `user` VALUES ('17', '座山雕', '123321', '张飞', '男', '13752740022', '173855578@qq.com', '河北省');
INSERT INTO `user` VALUES ('18', '11', '11', '11', '女', '123456@qq.COM', '123456@qq.com', '河北省');
INSERT INTO `user` VALUES ('19', '笑笑', '123456', '留恋', '男', '111111111111111111', '1712624418@qq.com', '河北省');
INSERT INTO `user` VALUES ('20', '哈哈', '1236', '版本', '天津市', '1254455', '171262@qq.com', 'jjj');

-- ----------------------------
-- Table structure for yg
-- ----------------------------
DROP TABLE IF EXISTS `yg`;
CREATE TABLE `yg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `card` char(30) NOT NULL,
  `status` varchar(30) DEFAULT NULL,
  `zhuangtai` varchar(30) DEFAULT NULL,
  `data` char(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yg
-- ----------------------------
INSERT INTO `yg` VALUES ('1', '圆通', '吴明宇', '男', '511621195612124567', '职工', '上岗中', '2019-06-27', '普通编制');

