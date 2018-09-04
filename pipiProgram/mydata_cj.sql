/*
Navicat MySQL Data Transfer

Source Server         : mysql5
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : mydata_cj

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2018-04-20 16:39:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_line
-- ----------------------------
DROP TABLE IF EXISTS `tb_line`;
CREATE TABLE `tb_line` (
  `LineNumber` int(11) NOT NULL AUTO_INCREMENT,
  `TrafficCode` varchar(255) DEFAULT NULL,
  `StationName` varchar(255) DEFAULT NULL,
  `DepartureTime` datetime DEFAULT NULL,
  `ArrivalTime` datetime DEFAULT NULL,
  `Mileage` varchar(255) DEFAULT NULL,
  `ResidenceTime` varchar(11) DEFAULT NULL,
  `SpendTime` varchar(255) DEFAULT NULL,
  `StationCode` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`LineNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_line
-- ----------------------------
INSERT INTO `tb_line` VALUES ('10001', 'D0001', '北京', '2018-04-18 10:00:00', '2018-04-18 13:00:00', '550', '3', '3', '12581');
INSERT INTO `tb_line` VALUES ('10002', 'D0002', '太原', '2018-04-19 10:15:00', '2018-04-19 15:15:00', '800', '5', '5', '10073');
INSERT INTO `tb_line` VALUES ('10003', 'D0003', '大连', '2018-04-18 16:00:00', '2018-04-18 20:00:00', '650', '4', '4', '21152');

-- ----------------------------
-- Table structure for tb_manager
-- ----------------------------
DROP TABLE IF EXISTS `tb_manager`;
CREATE TABLE `tb_manager` (
  `mid` int(255) NOT NULL AUTO_INCREMENT,
  `mname` varchar(255) DEFAULT NULL,
  `mpass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_manager
-- ----------------------------
INSERT INTO `tb_manager` VALUES ('1', 'admin', '123');
INSERT INTO `tb_manager` VALUES ('2', 'lqc', '123');
INSERT INTO `tb_manager` VALUES ('3', 'hao', '123');
INSERT INTO `tb_manager` VALUES ('4', 'hua', '123');
INSERT INTO `tb_manager` VALUES ('5', null, null);

-- ----------------------------
-- Table structure for tb_marshalling
-- ----------------------------
DROP TABLE IF EXISTS `tb_marshalling`;
CREATE TABLE `tb_marshalling` (
  `TrainMarshallingNumber` int(11) NOT NULL AUTO_INCREMENT,
  `TrafficCode` varchar(255) DEFAULT NULL,
  `CarriageNumber` varchar(255) DEFAULT NULL,
  `CarSeatType` varchar(255) DEFAULT NULL,
  `CarSeatNumber` varchar(255) DEFAULT NULL,
  `CarType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TrainMarshallingNumber`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_marshalling
-- ----------------------------
INSERT INTO `tb_marshalling` VALUES ('4', '1', '1', '软座', '1', '软座车');
INSERT INTO `tb_marshalling` VALUES ('5', '2', '2', '软座', '1', '软座车');
INSERT INTO `tb_marshalling` VALUES ('6', '3', '3', '硬座', '3', '硬座车');
INSERT INTO `tb_marshalling` VALUES ('7', null, null, null, null, null);

-- ----------------------------
-- Table structure for tb_station
-- ----------------------------
DROP TABLE IF EXISTS `tb_station`;
CREATE TABLE `tb_station` (
  `sId` int(11) NOT NULL AUTO_INCREMENT,
  `StationCode` varchar(255) NOT NULL,
  `StationName` varchar(255) NOT NULL,
  `PinyinCode` varchar(255) NOT NULL,
  `RailwayBureau` varchar(255) DEFAULT NULL,
  `StationgRade` varchar(255) DEFAULT NULL,
  `AdministrativeRegion` varchar(255) NOT NULL,
  `ContactAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_station
-- ----------------------------
INSERT INTO `tb_station` VALUES ('1', '10001', '北京', 'BJ', '中铁', '一', '广东', '北京');
INSERT INTO `tb_station` VALUES ('2', '10025', '北京南', 'BJN', '中铁', '一', '北京', '北京');
INSERT INTO `tb_station` VALUES ('3', '10073', '廊坊', 'LF', '中铁', '一', '河北', '河北');
INSERT INTO `tb_station` VALUES ('4', '10148', '天津北', 'TJB', '中铁', '一', '天津', '天津');
INSERT INTO `tb_station` VALUES ('5', '12158', '北京东', 'BJD', '中铁', '一', '北京', '北京');
INSERT INTO `tb_station` VALUES ('6', '12392', '大同', 'DT', '中铁', '一', '山西', '山西');
INSERT INTO `tb_station` VALUES ('7', '12581', '呼和浩特', 'HHHT', '中铁', '一', '内蒙古', '内蒙古');
INSERT INTO `tb_station` VALUES ('8', '12713', '北京北', 'BJB', '中铁', '一', '北京', '北京');
INSERT INTO `tb_station` VALUES ('9', '16010', '天津西', 'TJX', '中铁', '一', '天津', '天津');
INSERT INTO `tb_station` VALUES ('10', '20372', '石家庄', 'SJZ', '中铁', '一', '河北', '河北');

-- ----------------------------
-- Table structure for tb_train
-- ----------------------------
DROP TABLE IF EXISTS `tb_train`;
CREATE TABLE `tb_train` (
  `tId` int(11) NOT NULL AUTO_INCREMENT,
  `TrafficCode` varchar(255) NOT NULL,
  `DepartureStation` varchar(255) NOT NULL,
  `TerminalStation` varchar(255) NOT NULL,
  `StartTime` datetime NOT NULL,
  `EndTime` datetime NOT NULL,
  `SpendTime` varchar(255) NOT NULL,
  `Mileage` varchar(255) NOT NULL,
  `NoticketNumber` int(11) NOT NULL,
  `VehicleClassification` varchar(255) NOT NULL,
  `TrainType` varchar(255) NOT NULL,
  PRIMARY KEY (`tId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_train
-- ----------------------------
INSERT INTO `tb_train` VALUES ('1', 'D0001', '北京', '呼和浩特', '2018-04-18 00:00:00', '2018-04-18 00:00:00', '3', '550', '200', '新空调', '普快');
INSERT INTO `tb_train` VALUES ('2', 'D0002', '太原', '廊坊', '2018-04-19 00:00:00', '2018-04-19 00:00:00', '5', '800', '200', '新空调', '普快');
INSERT INTO `tb_train` VALUES ('3', 'D0003', '大连', '北京西', '2018-04-18 00:00:00', '2018-04-18 00:00:00', '4', '650', '200', '新空调', '特快');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `uId` int(255) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(255) DEFAULT NULL,
  `realName` varchar(255) NOT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `provice` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `cardType` varchar(255) DEFAULT NULL,
  `cardNumber` varchar(11) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `lvkeType` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `ulname` varchar(255) DEFAULT NULL,
  `ulpass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uId`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'haohao', '赖志豪', '男', '广东省', '城市', '二代身份证', '4561312.0', '1998-01-06', '成人', '', 'haohao', '123');
INSERT INTO `tb_user` VALUES ('2', null, '张君华', '男', '北京市', '东城区', '港澳通行证', '4541312', '1998-10-12 00:00:00', '学生', 'sfa', 'huahua', '123');
INSERT INTO `tb_user` VALUES ('3', null, '梁麒昌', '男', '北京市', '东城区', '二代身份证', '4543516512', '1996-12-06', '学生', '45464', 'changchang', '123');
INSERT INTO `tb_user` VALUES ('42', null, '张达达', '男', '天津市', '和平区', '二代身份证', '113', '1998-10-12 00:00:00', '儿童', '5213', 'nihao', '123');
