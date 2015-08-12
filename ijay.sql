/*
Navicat MySQL Data Transfer

Source Server         : localserver
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : ijay

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2015-08-11 23:29:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for data_interval
-- ----------------------------
DROP TABLE IF EXISTS `data_interval`;
CREATE TABLE `data_interval` (
  `data_interval_id` int(11) NOT NULL AUTO_INCREMENT,
  `data_interval_linguistik_value` varchar(10) DEFAULT NULL,
  `data_interval_min` int(11) DEFAULT NULL,
  `data_interval_max` int(11) DEFAULT NULL,
  `data_interval_dividing_condition` varchar(10) DEFAULT NULL,
  `data_interval_occurence` int(11) DEFAULT NULL,
  PRIMARY KEY (`data_interval_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_interval
-- ----------------------------
INSERT INTO `data_interval` VALUES ('1', 'A1', '13866735', '14202577', 'First', '9');
INSERT INTO `data_interval` VALUES ('2', 'A2', '14202577', '14538419', 'First', '11');
INSERT INTO `data_interval` VALUES ('3', 'A3', '14538419', '14706340', 'Second', '38');
INSERT INTO `data_interval` VALUES ('4', 'A4', '14706340', '14874261', 'Second', '43');
INSERT INTO `data_interval` VALUES ('5', 'A5', '14874261', '15042182', 'Second', '65');
INSERT INTO `data_interval` VALUES ('6', 'A6', '15042182', '15210103', 'Second', '45');
INSERT INTO `data_interval` VALUES ('7', 'A7', '15210103', '15378024', 'Second', '42');
INSERT INTO `data_interval` VALUES ('8', 'A8', '15378024', '15545945', 'Second', '52');
INSERT INTO `data_interval` VALUES ('9', 'A9', '15545945', '15713866', 'Second', '58');
INSERT INTO `data_interval` VALUES ('10', 'A10', '15713866', '15881787', 'Second', '26');
INSERT INTO `data_interval` VALUES ('11', 'A11', '15881787', '16217630', 'First', '24');

-- ----------------------------
-- Table structure for data_uji
-- ----------------------------
DROP TABLE IF EXISTS `data_uji`;
CREATE TABLE `data_uji` (
  `data_uji_id` int(11) NOT NULL AUTO_INCREMENT,
  `data_uji_date` date DEFAULT NULL,
  `data_uji_price` varchar(11) DEFAULT NULL,
  `data_uji_ramalan` varchar(11) DEFAULT NULL,
  `data_uji_error` varchar(11) DEFAULT NULL,
  `data_uji_tanggal` datetime DEFAULT NULL,
  PRIMARY KEY (`data_uji_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_uji
-- ----------------------------
INSERT INTO `data_uji` VALUES ('1', '2015-08-01', '14936935', '-', '-', '2015-08-11 21:53:51');
INSERT INTO `data_uji` VALUES ('2', '2015-08-02', '14836935', '14958221.5', '-121286.500', '2015-08-11 21:53:51');
INSERT INTO `data_uji` VALUES ('3', '2015-08-03', '14868869', '14790300.5', '78568.5', '2015-08-11 21:53:51');
INSERT INTO `data_uji` VALUES ('4', '2015-08-04', '14879993', '14790300.5', '89692.5', '2015-08-11 21:53:51');

-- ----------------------------
-- Table structure for fuzzyfikasi
-- ----------------------------
DROP TABLE IF EXISTS `fuzzyfikasi`;
CREATE TABLE `fuzzyfikasi` (
  `fuzzyfikasi_id` int(11) NOT NULL AUTO_INCREMENT,
  `fuzzyfikasi_date` date DEFAULT NULL,
  `fuzzyfikasi_price` varchar(20) DEFAULT NULL,
  `fuzzyfikasi_linguistik_value` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`fuzzyfikasi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=414 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fuzzyfikasi
-- ----------------------------
INSERT INTO `fuzzyfikasi` VALUES ('1', '2014-01-01', '14658765', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('2', '2014-01-02', '14896000', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('3', '2014-01-03', '15023865', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('4', '2014-01-06', '15179325', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('5', '2014-01-07', '15021531.25', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('6', '2014-01-08', '14938935', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('7', '2014-01-09', '14944940', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('8', '2014-01-10', '15131946.38', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('9', '2014-01-13', '15038400', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('10', '2014-01-14', '15080575', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('11', '2014-01-15', '14937060', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('12', '2014-01-16', '15043876.25', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('13', '2014-01-17', '15112500', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('14', '2014-01-20', '15207132.5', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('15', '2014-01-21', '15020035', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('16', '2014-01-22', '15065740', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('17', '2014-01-23', '15364395', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('18', '2014-01-24', '15432060', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('19', '2014-01-27', '15415915', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('20', '2014-01-28', '15252737.5', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('21', '2014-01-29', '15376560', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('22', '2014-01-30', '15170925', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('23', '2014-01-31', '15274710', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('24', '2014-02-03', '15446880', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('25', '2014-02-04', '15256175.63', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('26', '2014-02-05', '15295491.25', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('27', '2014-02-06', '15321132.75', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('28', '2014-02-07', '15312480', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('29', '2014-02-10', '15544282.5', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('30', '2014-02-11', '15569890', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('31', '2014-02-12', '15583607.5', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('32', '2014-02-13', '15522840', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('33', '2014-02-14', '15609000', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('34', '2014-02-17', '15644587.5', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('35', '2014-02-18', '15644283.75', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('36', '2014-02-19', '15545586.25', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('37', '2014-02-20', '15548203.13', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('38', '2014-02-21', '15538924.75', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('39', '2014-02-24', '15546500.63', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('40', '2014-02-25', '15622782.5', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('41', '2014-02-26', '15501570', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('42', '2014-02-27', '15540696.25', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('43', '2014-02-28', '15399338.5', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('44', '2014-03-03', '15640030.25', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('45', '2014-03-04', '15476426.25', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('46', '2014-03-05', '15484465.5', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('47', '2014-03-06', '15440106.88', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('48', '2014-03-07', '15274592.38', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('49', '2014-03-10', '15274560', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('50', '2014-03-11', '15340518.75', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('51', '2014-03-12', '15606550', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('52', '2014-03-13', '15579796.88', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('53', '2014-03-14', '15726675', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('54', '2014-03-17', '15566711.25', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('55', '2014-03-18', '15357258.13', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('56', '2014-03-19', '15138132', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('57', '2014-03-20', '15187515', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('58', '2014-03-21', '15260460', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('59', '2014-03-24', '14916335', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('60', '2014-03-25', '14964048.75', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('61', '2014-03-26', '14878640', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('62', '2014-03-27', '14835960', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('63', '2014-03-28', '14708360', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('64', '2014-03-31', '14674280', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('65', '2014-04-01', '14522421.88', 'A2');
INSERT INTO `fuzzyfikasi` VALUES ('66', '2014-04-02', '14589910', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('67', '2014-04-03', '14536164', 'A2');
INSERT INTO `fuzzyfikasi` VALUES ('68', '2014-04-04', '14680329.63', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('69', '2014-04-07', '14681947.5', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('70', '2014-04-08', '14782290.75', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('71', '2014-04-09', '14694804.88', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('72', '2014-04-10', '14992957', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('73', '2014-04-11', '15041675', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('74', '2014-04-14', '15163265.63', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('75', '2014-04-15', '14836140', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('76', '2014-04-16', '14882001.75', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('77', '2014-04-17', '14834580', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('78', '2014-04-18', '14834580', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('79', '2014-04-21', '14867055', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('80', '2014-04-22', '14823360', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('81', '2014-04-23', '14947457.5', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('82', '2014-04-24', '14982045.75', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('83', '2014-04-25', '15048305.63', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('84', '2014-04-28', '15050863.5', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('85', '2014-04-29', '14985768.13', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('86', '2014-04-30', '14896992.75', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('87', '2014-05-01', '14781377.75', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('88', '2014-05-02', '14763203.13', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('89', '2014-05-05', '14756796.88', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('90', '2014-05-06', '15044081.25', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('91', '2014-05-07', '15001200', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('92', '2014-05-08', '14877720', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('93', '2014-05-09', '14888112.5', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('94', '2014-05-12', '14962898.75', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('95', '2014-05-13', '14957072.25', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('96', '2014-05-14', '14939238.88', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('97', '2014-05-15', '14867704.5', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('98', '2014-05-16', '14739243.75', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('99', '2014-05-19', '14865585', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('100', '2014-05-20', '14882056.25', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('101', '2014-05-21', '14813029.38', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('102', '2014-05-22', '14971705', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('103', '2014-05-23', '15000772.5', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('104', '2014-05-26', '14952341.25', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('105', '2014-05-27', '14767101.25', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('106', '2014-05-28', '14679974.75', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('107', '2014-05-29', '14581217.5', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('108', '2014-05-30', '14599587.5', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('109', '2014-06-02', '14673896.25', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('110', '2014-06-03', '14644566', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('111', '2014-06-04', '14806022.5', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('112', '2014-06-05', '14851518.75', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('113', '2014-06-06', '14764162.5', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('114', '2014-06-09', '14763096.25', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('115', '2014-06-10', '14874695', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('116', '2014-06-11', '14904220', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('117', '2014-06-12', '14920661', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('118', '2014-06-13', '15014398.5', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('119', '2014-06-16', '15082084.38', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('120', '2014-06-17', '15073743.75', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('121', '2014-06-18', '15232555.88', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('122', '2014-06-19', '15430662', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('123', '2014-06-20', '15712593.75', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('124', '2014-06-23', '15748865', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('125', '2014-06-24', '15805518.75', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('126', '2014-06-25', '15919507.5', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('127', '2014-06-26', '15870863.25', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('128', '2014-06-27', '15803412.5', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('129', '2014-06-30', '15589325', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('130', '2014-07-01', '15747468.75', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('131', '2014-07-02', '15798615', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('132', '2014-07-03', '15701306.25', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('133', '2014-07-04', '15662795.63', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('134', '2014-07-07', '15375230', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('135', '2014-07-08', '15379875', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('136', '2014-07-09', '15376968.75', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('137', '2014-07-10', '15513393.75', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('138', '2014-07-11', '15465975', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('139', '2014-07-14', '15234490', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('140', '2014-07-15', '15376125', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('141', '2014-07-16', '15215195', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('142', '2014-07-17', '15219712.5', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('143', '2014-07-18', '15183708.75', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('144', '2014-07-21', '15174055', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('145', '2014-07-22', '15172695', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('146', '2014-07-23', '15048540', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('147', '2014-07-24', '14953885.63', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('148', '2014-07-25', '14989968.13', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('149', '2014-07-28', '15102848.75', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('150', '2014-07-29', '15042066.88', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('151', '2014-07-30', '14987073.75', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('152', '2014-07-31', '14879981.88', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('153', '2014-08-01', '14949446.88', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('154', '2014-08-04', '15173699', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('155', '2014-08-05', '15027720.75', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('156', '2014-08-06', '15351375', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('157', '2014-08-07', '15395423.75', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('158', '2014-08-08', '15425580.63', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('159', '2014-08-11', '15258875.63', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('160', '2014-08-12', '15377828.13', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('161', '2014-08-13', '15338592', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('162', '2014-08-14', '15331828.75', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('163', '2014-08-15', '15128208', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('164', '2014-08-18', '15151875.38', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('165', '2014-08-19', '15141823.5', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('166', '2014-08-20', '15151500', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('167', '2014-08-21', '14907672.5', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('168', '2014-08-22', '14917002.75', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('169', '2014-08-25', '14966815.5', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('170', '2014-08-26', '15062918', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('171', '2014-08-27', '14984444.13', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('172', '2014-08-28', '15117046', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('173', '2014-08-29', '15040060.63', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('174', '2014-09-01', '15072634', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('175', '2014-09-02', '14884082.5', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('176', '2014-09-03', '14888607.5', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('177', '2014-09-04', '14957926', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('178', '2014-09-05', '14881830', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('179', '2014-09-08', '14767440.5', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('180', '2014-09-09', '14775782.38', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('181', '2014-09-10', '14776812', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('182', '2014-09-11', '14677781.25', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('183', '2014-09-12', '14556330', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('184', '2014-09-15', '14721516.88', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('185', '2014-09-16', '14743871.25', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('186', '2014-09-17', '14776380', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('187', '2014-09-18', '14621590', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('188', '2014-09-19', '14597358.13', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('189', '2014-09-22', '14529842.25', 'A2');
INSERT INTO `fuzzyfikasi` VALUES ('190', '2014-09-23', '14630395', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('191', '2014-09-24', '14549180.63', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('192', '2014-09-25', '14538904.38', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('193', '2014-09-26', '14592309.38', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('194', '2014-09-29', '14841315', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('195', '2014-09-30', '14823052.5', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('196', '2014-10-01', '14753103.75', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('197', '2014-10-02', '14722762.5', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('198', '2014-10-03', '14550917.5', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('199', '2014-10-06', '14600107.5', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('200', '2014-10-07', '14771126.25', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('201', '2014-10-08', '14895471.5', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('202', '2014-10-09', '14954082.5', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('203', '2014-10-10', '14896180', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('204', '2014-10-13', '15013464', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('205', '2014-10-14', '15073210.63', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('206', '2014-10-15', '15130293.75', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('207', '2014-10-16', '15159343.13', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('208', '2014-10-17', '14942447.63', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('209', '2014-10-20', '14974446.25', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('210', '2014-10-21', '15003000', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('211', '2014-10-22', '14940546.88', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('212', '2014-10-23', '14866965', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('213', '2014-10-24', '14874361.5', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('214', '2014-10-27', '14878933.75', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('215', '2014-10-28', '14959972.5', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('216', '2014-10-29', '14781103.5', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('217', '2014-10-30', '14574250', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('218', '2014-10-31', '14069961.25', 'A1');
INSERT INTO `fuzzyfikasi` VALUES ('219', '2014-11-03', '14138533.13', 'A1');
INSERT INTO `fuzzyfikasi` VALUES ('220', '2014-11-04', '14123398.75', 'A1');
INSERT INTO `fuzzyfikasi` VALUES ('221', '2014-11-05', '13866735', 'A1');
INSERT INTO `fuzzyfikasi` VALUES ('222', '2014-11-06', '13900300', 'A1');
INSERT INTO `fuzzyfikasi` VALUES ('223', '2014-11-07', '14054305.75', 'A1');
INSERT INTO `fuzzyfikasi` VALUES ('224', '2014-11-10', '14121205', 'A1');
INSERT INTO `fuzzyfikasi` VALUES ('225', '2014-11-11', '14115082.5', 'A1');
INSERT INTO `fuzzyfikasi` VALUES ('226', '2014-11-12', '14205153.25', 'A2');
INSERT INTO `fuzzyfikasi` VALUES ('227', '2014-11-13', '14176254.38', 'A1');
INSERT INTO `fuzzyfikasi` VALUES ('228', '2014-11-14', '14274659', 'A2');
INSERT INTO `fuzzyfikasi` VALUES ('229', '2014-11-17', '14431821.25', 'A2');
INSERT INTO `fuzzyfikasi` VALUES ('230', '2014-11-18', '14491912.5', 'A2');
INSERT INTO `fuzzyfikasi` VALUES ('231', '2014-11-19', '14528410', 'A2');
INSERT INTO `fuzzyfikasi` VALUES ('232', '2014-11-20', '14488250', 'A2');
INSERT INTO `fuzzyfikasi` VALUES ('233', '2014-11-21', '14623756.88', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('234', '2014-11-24', '14551421.25', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('235', '2014-11-25', '14584636', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('236', '2014-11-26', '14579562.5', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('237', '2014-11-27', '14548470.75', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('238', '2014-11-28', '14434281', 'A2');
INSERT INTO `fuzzyfikasi` VALUES ('239', '2014-12-01', '14653365', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('240', '2014-12-02', '14662650', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('241', '2014-12-03', '14816617.88', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('242', '2014-12-04', '14879767.5', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('243', '2014-12-05', '14684409', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('244', '2014-12-08', '14731760.5', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('245', '2014-12-09', '15128296.5', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('246', '2014-12-10', '15161558.5', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('247', '2014-12-11', '15018863.13', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('248', '2014-12-12', '15160777.5', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('249', '2014-12-15', '15354451.88', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('250', '2014-12-16', '15247700', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('251', '2014-12-17', '15135205.63', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('252', '2014-12-18', '15062437.5', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('253', '2014-12-19', '14931795', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('254', '2014-12-22', '14867714.75', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('255', '2014-12-23', '14638087.5', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('256', '2014-12-24', '14658663.13', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('257', '2014-12-25', '14658663.13', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('258', '2014-12-26', '14658663.13', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('259', '2014-12-29', '14755918.5', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('260', '2014-12-30', '15010479', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('261', '2014-12-31', '14936310', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('262', '2015-01-01', '14936310', 'A5');
INSERT INTO `fuzzyfikasi` VALUES ('263', '2015-01-02', '14699810', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('264', '2015-01-05', '15153000', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('265', '2015-01-06', '15318739.38', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('266', '2015-01-07', '15419954.25', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('267', '2015-01-08', '15415578.75', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('268', '2015-01-09', '15406364.13', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('269', '2015-01-12', '15450833.75', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('270', '2015-01-13', '15513821.25', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('271', '2015-01-14', '15577055', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('272', '2015-01-15', '15813040', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('273', '2015-01-16', '16080531.25', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('274', '2015-01-19', '16072814.38', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('275', '2015-01-20', '16217630', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('276', '2015-01-21', '16142880', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('277', '2015-01-22', '16180678.13', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('278', '2015-01-23', '16148769.38', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('279', '2015-01-26', '16028437.5', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('280', '2015-01-27', '16075970.25', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('281', '2015-01-28', '16081968', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('282', '2015-01-29', '15945015.63', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('283', '2015-01-30', '15964216.88', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('284', '2015-02-02', '16141662.5', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('285', '2015-02-03', '15997819.5', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('286', '2015-02-04', '16014812.5', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('287', '2015-02-05', '15907475.63', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('288', '2015-02-06', '15654594.5', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('289', '2015-02-09', '15663928.75', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('290', '2015-02-10', '15641115', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('291', '2015-02-11', '15562428.75', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('292', '2015-02-12', '15641887.5', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('293', '2015-02-13', '15760593.75', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('294', '2015-02-16', '15676010.63', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('295', '2015-02-17', '15444710.25', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('296', '2015-02-18', '15488055', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('297', '2015-02-19', '15533003.75', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('298', '2015-02-20', '15480703.13', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('299', '2015-02-23', '15459155.25', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('300', '2015-02-24', '15380268.75', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('301', '2015-02-25', '15509349.13', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('302', '2015-02-26', '15510909.38', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('303', '2015-02-27', '15690950', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('304', '2015-03-02', '15723093.75', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('305', '2015-03-03', '15723910.13', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('306', '2015-03-04', '15572508.75', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('307', '2015-03-05', '15613980', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('308', '2015-03-06', '15254768.38', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('309', '2015-03-09', '15248925', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('310', '2015-03-10', '15212323', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('311', '2015-03-11', '15169075', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('312', '2015-03-12', '15189535.63', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('313', '2015-03-13', '15200640', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('314', '2015-03-16', '15238231.5', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('315', '2015-03-17', '15155377.5', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('316', '2015-03-18', '15109282.5', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('317', '2015-03-19', '15198810', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('318', '2015-03-20', '15517537.68', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('319', '2015-03-23', '15444381.88', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('320', '2015-03-24', '15376307.5', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('321', '2015-03-25', '15526059.7', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('322', '2015-03-26', '15662003.85', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('323', '2015-03-27', '15622473.75', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('324', '2015-03-30', '15500412.5', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('325', '2015-03-31', '15520025', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('326', '2015-04-01', '15611872.5', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('327', '2015-04-02', '15583496.25', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('328', '2015-04-03', '15583496.25', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('329', '2015-04-06', '15530762.25', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('330', '2015-04-07', '15724835', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('331', '2015-04-08', '15639923.75', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('332', '2015-04-09', '15413514.88', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('333', '2015-04-10', '15592923.36', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('334', '2015-04-13', '15567715.23', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('335', '2015-04-14', '15508452.38', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('336', '2015-04-15', '15389005.19', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('337', '2015-04-16', '15483121.72', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('338', '2015-04-17', '15463045.62', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('339', '2015-04-20', '15422885', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('340', '2015-04-21', '15485108.97', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('341', '2015-04-22', '15341325', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('342', '2015-04-23', '15361391.25', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('343', '2015-04-24', '15283768.5', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('344', '2015-04-27', '15576000', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('345', '2015-04-28', '15692820', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('346', '2015-04-29', '15644460', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('347', '2015-04-30', '15298990.63', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('348', '2015-05-01', '15243251.24', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('349', '2015-05-04', '15263830.37', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('350', '2015-05-05', '15617857.5', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('351', '2015-05-06', '15567048.75', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('352', '2015-05-07', '15609050', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('353', '2015-05-08', '15566250', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('354', '2015-05-11', '15644583.75', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('355', '2015-05-12', '15725417', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('356', '2015-05-13', '15902943.75', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('357', '2015-05-14', '16093437.5', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('358', '2015-05-15', '15975124.5', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('359', '2015-05-18', '16073119.5', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('360', '2015-05-19', '15926149.09', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('361', '2015-05-20', '15948337.5', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('362', '2015-05-21', '15821047.5', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('363', '2015-05-22', '15839933.57', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('364', '2015-05-25', '15839933.57', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('365', '2015-05-26', '15659132.71', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('366', '2015-05-27', '15655589.77', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('367', '2015-05-28', '15667477.5', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('368', '2015-05-29', '15755072.31', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('369', '2015-06-01', '15865676.46', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('370', '2015-06-02', '15771795.42', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('371', '2015-06-03', '15732990', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('372', '2015-06-04', '15619632', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('373', '2015-06-05', '15460645.36', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('374', '2015-06-08', '15692061.39', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('375', '2015-06-09', '15663539.6', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('376', '2015-06-10', '15821906.25', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('377', '2015-06-11', '15698209.25', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('378', '2015-06-12', '15772044', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('379', '2015-06-15', '15753967.7', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('380', '2015-06-16', '15726495.75', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('381', '2015-06-17', '15746915', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('382', '2015-06-18', '15990612.3', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('383', '2015-06-19', '16043125.8', 'A11');
INSERT INTO `fuzzyfikasi` VALUES ('384', '2015-06-22', '15779005', 'A10');
INSERT INTO `fuzzyfikasi` VALUES ('385', '2015-06-23', '15614390', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('386', '2015-06-24', '15614983.13', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('387', '2015-06-25', '15628491.57', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('388', '2015-06-26', '15576428.75', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('389', '2015-06-29', '15693720', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('390', '2015-06-30', '15612357.5', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('391', '2015-07-01', '15565352', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('392', '2015-07-02', '15540356.63', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('393', '2015-07-03', '15557093.35', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('394', '2015-07-06', '15567266', 'A9');
INSERT INTO `fuzzyfikasi` VALUES ('395', '2015-07-07', '15409921.88', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('396', '2015-07-08', '15460182.5', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('397', '2015-07-09', '15526438', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('398', '2015-07-10', '15434337.95', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('399', '2015-07-13', '15348200', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('400', '2015-07-14', '15433927.7', 'A8');
INSERT INTO `fuzzyfikasi` VALUES ('401', '2015-07-15', '15311478', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('402', '2015-07-16', '15271444.5', 'A7');
INSERT INTO `fuzzyfikasi` VALUES ('403', '2015-07-17', '15116646.99', 'A6');
INSERT INTO `fuzzyfikasi` VALUES ('404', '2015-07-20', '14740332.75', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('405', '2015-07-21', '14753677.25', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('406', '2015-07-22', '14562744.54', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('407', '2015-07-23', '14729850.19', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('408', '2015-07-24', '14531353.37', 'A2');
INSERT INTO `fuzzyfikasi` VALUES ('409', '2015-07-27', '14804900', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('410', '2015-07-28', '14757591.84', 'A4');
INSERT INTO `fuzzyfikasi` VALUES ('411', '2015-07-29', '14670404', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('412', '2015-07-30', '14645906.25', 'A3');
INSERT INTO `fuzzyfikasi` VALUES ('413', '2015-07-31', '14858604.68', 'A4');

-- ----------------------------
-- Table structure for gold_history
-- ----------------------------
DROP TABLE IF EXISTS `gold_history`;
CREATE TABLE `gold_history` (
  `gold_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `gold_history_date` date DEFAULT NULL,
  `gold_history_close` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gold_history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=414 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gold_history
-- ----------------------------
INSERT INTO `gold_history` VALUES ('1', '2014-01-01', '14658765');
INSERT INTO `gold_history` VALUES ('2', '2014-01-02', '14896000');
INSERT INTO `gold_history` VALUES ('3', '2014-01-03', '15023865');
INSERT INTO `gold_history` VALUES ('4', '2014-01-06', '15179325');
INSERT INTO `gold_history` VALUES ('5', '2014-01-07', '15021531.25');
INSERT INTO `gold_history` VALUES ('6', '2014-01-08', '14938935');
INSERT INTO `gold_history` VALUES ('7', '2014-01-09', '14944940');
INSERT INTO `gold_history` VALUES ('8', '2014-01-10', '15131946.38');
INSERT INTO `gold_history` VALUES ('9', '2014-01-13', '15038400');
INSERT INTO `gold_history` VALUES ('10', '2014-01-14', '15080575');
INSERT INTO `gold_history` VALUES ('11', '2014-01-15', '14937060');
INSERT INTO `gold_history` VALUES ('12', '2014-01-16', '15043876.25');
INSERT INTO `gold_history` VALUES ('13', '2014-01-17', '15112500');
INSERT INTO `gold_history` VALUES ('14', '2014-01-20', '15207132.5');
INSERT INTO `gold_history` VALUES ('15', '2014-01-21', '15020035');
INSERT INTO `gold_history` VALUES ('16', '2014-01-22', '15065740');
INSERT INTO `gold_history` VALUES ('17', '2014-01-23', '15364395');
INSERT INTO `gold_history` VALUES ('18', '2014-01-24', '15432060');
INSERT INTO `gold_history` VALUES ('19', '2014-01-27', '15415915');
INSERT INTO `gold_history` VALUES ('20', '2014-01-28', '15252737.5');
INSERT INTO `gold_history` VALUES ('21', '2014-01-29', '15376560');
INSERT INTO `gold_history` VALUES ('22', '2014-01-30', '15170925');
INSERT INTO `gold_history` VALUES ('23', '2014-01-31', '15274710');
INSERT INTO `gold_history` VALUES ('24', '2014-02-03', '15446880');
INSERT INTO `gold_history` VALUES ('25', '2014-02-04', '15256175.63');
INSERT INTO `gold_history` VALUES ('26', '2014-02-05', '15295491.25');
INSERT INTO `gold_history` VALUES ('27', '2014-02-06', '15321132.75');
INSERT INTO `gold_history` VALUES ('28', '2014-02-07', '15312480');
INSERT INTO `gold_history` VALUES ('29', '2014-02-10', '15544282.5');
INSERT INTO `gold_history` VALUES ('30', '2014-02-11', '15569890');
INSERT INTO `gold_history` VALUES ('31', '2014-02-12', '15583607.5');
INSERT INTO `gold_history` VALUES ('32', '2014-02-13', '15522840');
INSERT INTO `gold_history` VALUES ('33', '2014-02-14', '15609000');
INSERT INTO `gold_history` VALUES ('34', '2014-02-17', '15644587.5');
INSERT INTO `gold_history` VALUES ('35', '2014-02-18', '15644283.75');
INSERT INTO `gold_history` VALUES ('36', '2014-02-19', '15545586.25');
INSERT INTO `gold_history` VALUES ('37', '2014-02-20', '15548203.13');
INSERT INTO `gold_history` VALUES ('38', '2014-02-21', '15538924.75');
INSERT INTO `gold_history` VALUES ('39', '2014-02-24', '15546500.63');
INSERT INTO `gold_history` VALUES ('40', '2014-02-25', '15622782.5');
INSERT INTO `gold_history` VALUES ('41', '2014-02-26', '15501570');
INSERT INTO `gold_history` VALUES ('42', '2014-02-27', '15540696.25');
INSERT INTO `gold_history` VALUES ('43', '2014-02-28', '15399338.5');
INSERT INTO `gold_history` VALUES ('44', '2014-03-03', '15640030.25');
INSERT INTO `gold_history` VALUES ('45', '2014-03-04', '15476426.25');
INSERT INTO `gold_history` VALUES ('46', '2014-03-05', '15484465.5');
INSERT INTO `gold_history` VALUES ('47', '2014-03-06', '15440106.88');
INSERT INTO `gold_history` VALUES ('48', '2014-03-07', '15274592.38');
INSERT INTO `gold_history` VALUES ('49', '2014-03-10', '15274560');
INSERT INTO `gold_history` VALUES ('50', '2014-03-11', '15340518.75');
INSERT INTO `gold_history` VALUES ('51', '2014-03-12', '15606550');
INSERT INTO `gold_history` VALUES ('52', '2014-03-13', '15579796.88');
INSERT INTO `gold_history` VALUES ('53', '2014-03-14', '15726675');
INSERT INTO `gold_history` VALUES ('54', '2014-03-17', '15566711.25');
INSERT INTO `gold_history` VALUES ('55', '2014-03-18', '15357258.13');
INSERT INTO `gold_history` VALUES ('56', '2014-03-19', '15138132');
INSERT INTO `gold_history` VALUES ('57', '2014-03-20', '15187515');
INSERT INTO `gold_history` VALUES ('58', '2014-03-21', '15260460');
INSERT INTO `gold_history` VALUES ('59', '2014-03-24', '14916335');
INSERT INTO `gold_history` VALUES ('60', '2014-03-25', '14964048.75');
INSERT INTO `gold_history` VALUES ('61', '2014-03-26', '14878640');
INSERT INTO `gold_history` VALUES ('62', '2014-03-27', '14835960');
INSERT INTO `gold_history` VALUES ('63', '2014-03-28', '14708360');
INSERT INTO `gold_history` VALUES ('64', '2014-03-31', '14674280');
INSERT INTO `gold_history` VALUES ('65', '2014-04-01', '14522421.88');
INSERT INTO `gold_history` VALUES ('66', '2014-04-02', '14589910');
INSERT INTO `gold_history` VALUES ('67', '2014-04-03', '14536164');
INSERT INTO `gold_history` VALUES ('68', '2014-04-04', '14680329.63');
INSERT INTO `gold_history` VALUES ('69', '2014-04-07', '14681947.5');
INSERT INTO `gold_history` VALUES ('70', '2014-04-08', '14782290.75');
INSERT INTO `gold_history` VALUES ('71', '2014-04-09', '14694804.88');
INSERT INTO `gold_history` VALUES ('72', '2014-04-10', '14992957');
INSERT INTO `gold_history` VALUES ('73', '2014-04-11', '15041675');
INSERT INTO `gold_history` VALUES ('74', '2014-04-14', '15163265.63');
INSERT INTO `gold_history` VALUES ('75', '2014-04-15', '14836140');
INSERT INTO `gold_history` VALUES ('76', '2014-04-16', '14882001.75');
INSERT INTO `gold_history` VALUES ('77', '2014-04-17', '14834580');
INSERT INTO `gold_history` VALUES ('78', '2014-04-18', '14834580');
INSERT INTO `gold_history` VALUES ('79', '2014-04-21', '14867055');
INSERT INTO `gold_history` VALUES ('80', '2014-04-22', '14823360');
INSERT INTO `gold_history` VALUES ('81', '2014-04-23', '14947457.5');
INSERT INTO `gold_history` VALUES ('82', '2014-04-24', '14982045.75');
INSERT INTO `gold_history` VALUES ('83', '2014-04-25', '15048305.63');
INSERT INTO `gold_history` VALUES ('84', '2014-04-28', '15050863.5');
INSERT INTO `gold_history` VALUES ('85', '2014-04-29', '14985768.13');
INSERT INTO `gold_history` VALUES ('86', '2014-04-30', '14896992.75');
INSERT INTO `gold_history` VALUES ('87', '2014-05-01', '14781377.75');
INSERT INTO `gold_history` VALUES ('88', '2014-05-02', '14763203.13');
INSERT INTO `gold_history` VALUES ('89', '2014-05-05', '14756796.88');
INSERT INTO `gold_history` VALUES ('90', '2014-05-06', '15044081.25');
INSERT INTO `gold_history` VALUES ('91', '2014-05-07', '15001200');
INSERT INTO `gold_history` VALUES ('92', '2014-05-08', '14877720');
INSERT INTO `gold_history` VALUES ('93', '2014-05-09', '14888112.5');
INSERT INTO `gold_history` VALUES ('94', '2014-05-12', '14962898.75');
INSERT INTO `gold_history` VALUES ('95', '2014-05-13', '14957072.25');
INSERT INTO `gold_history` VALUES ('96', '2014-05-14', '14939238.88');
INSERT INTO `gold_history` VALUES ('97', '2014-05-15', '14867704.5');
INSERT INTO `gold_history` VALUES ('98', '2014-05-16', '14739243.75');
INSERT INTO `gold_history` VALUES ('99', '2014-05-19', '14865585');
INSERT INTO `gold_history` VALUES ('100', '2014-05-20', '14882056.25');
INSERT INTO `gold_history` VALUES ('101', '2014-05-21', '14813029.38');
INSERT INTO `gold_history` VALUES ('102', '2014-05-22', '14971705');
INSERT INTO `gold_history` VALUES ('103', '2014-05-23', '15000772.5');
INSERT INTO `gold_history` VALUES ('104', '2014-05-26', '14952341.25');
INSERT INTO `gold_history` VALUES ('105', '2014-05-27', '14767101.25');
INSERT INTO `gold_history` VALUES ('106', '2014-05-28', '14679974.75');
INSERT INTO `gold_history` VALUES ('107', '2014-05-29', '14581217.5');
INSERT INTO `gold_history` VALUES ('108', '2014-05-30', '14599587.5');
INSERT INTO `gold_history` VALUES ('109', '2014-06-02', '14673896.25');
INSERT INTO `gold_history` VALUES ('110', '2014-06-03', '14644566');
INSERT INTO `gold_history` VALUES ('111', '2014-06-04', '14806022.5');
INSERT INTO `gold_history` VALUES ('112', '2014-06-05', '14851518.75');
INSERT INTO `gold_history` VALUES ('113', '2014-06-06', '14764162.5');
INSERT INTO `gold_history` VALUES ('114', '2014-06-09', '14763096.25');
INSERT INTO `gold_history` VALUES ('115', '2014-06-10', '14874695');
INSERT INTO `gold_history` VALUES ('116', '2014-06-11', '14904220');
INSERT INTO `gold_history` VALUES ('117', '2014-06-12', '14920661');
INSERT INTO `gold_history` VALUES ('118', '2014-06-13', '15014398.5');
INSERT INTO `gold_history` VALUES ('119', '2014-06-16', '15082084.38');
INSERT INTO `gold_history` VALUES ('120', '2014-06-17', '15073743.75');
INSERT INTO `gold_history` VALUES ('121', '2014-06-18', '15232555.88');
INSERT INTO `gold_history` VALUES ('122', '2014-06-19', '15430662');
INSERT INTO `gold_history` VALUES ('123', '2014-06-20', '15712593.75');
INSERT INTO `gold_history` VALUES ('124', '2014-06-23', '15748865');
INSERT INTO `gold_history` VALUES ('125', '2014-06-24', '15805518.75');
INSERT INTO `gold_history` VALUES ('126', '2014-06-25', '15919507.5');
INSERT INTO `gold_history` VALUES ('127', '2014-06-26', '15870863.25');
INSERT INTO `gold_history` VALUES ('128', '2014-06-27', '15803412.5');
INSERT INTO `gold_history` VALUES ('129', '2014-06-30', '15589325');
INSERT INTO `gold_history` VALUES ('130', '2014-07-01', '15747468.75');
INSERT INTO `gold_history` VALUES ('131', '2014-07-02', '15798615');
INSERT INTO `gold_history` VALUES ('132', '2014-07-03', '15701306.25');
INSERT INTO `gold_history` VALUES ('133', '2014-07-04', '15662795.63');
INSERT INTO `gold_history` VALUES ('134', '2014-07-07', '15375230');
INSERT INTO `gold_history` VALUES ('135', '2014-07-08', '15379875');
INSERT INTO `gold_history` VALUES ('136', '2014-07-09', '15376968.75');
INSERT INTO `gold_history` VALUES ('137', '2014-07-10', '15513393.75');
INSERT INTO `gold_history` VALUES ('138', '2014-07-11', '15465975');
INSERT INTO `gold_history` VALUES ('139', '2014-07-14', '15234490');
INSERT INTO `gold_history` VALUES ('140', '2014-07-15', '15376125');
INSERT INTO `gold_history` VALUES ('141', '2014-07-16', '15215195');
INSERT INTO `gold_history` VALUES ('142', '2014-07-17', '15219712.5');
INSERT INTO `gold_history` VALUES ('143', '2014-07-18', '15183708.75');
INSERT INTO `gold_history` VALUES ('144', '2014-07-21', '15174055');
INSERT INTO `gold_history` VALUES ('145', '2014-07-22', '15172695');
INSERT INTO `gold_history` VALUES ('146', '2014-07-23', '15048540');
INSERT INTO `gold_history` VALUES ('147', '2014-07-24', '14953885.63');
INSERT INTO `gold_history` VALUES ('148', '2014-07-25', '14989968.13');
INSERT INTO `gold_history` VALUES ('149', '2014-07-28', '15102848.75');
INSERT INTO `gold_history` VALUES ('150', '2014-07-29', '15042066.88');
INSERT INTO `gold_history` VALUES ('151', '2014-07-30', '14987073.75');
INSERT INTO `gold_history` VALUES ('152', '2014-07-31', '14879981.88');
INSERT INTO `gold_history` VALUES ('153', '2014-08-01', '14949446.88');
INSERT INTO `gold_history` VALUES ('154', '2014-08-04', '15173699');
INSERT INTO `gold_history` VALUES ('155', '2014-08-05', '15027720.75');
INSERT INTO `gold_history` VALUES ('156', '2014-08-06', '15351375');
INSERT INTO `gold_history` VALUES ('157', '2014-08-07', '15395423.75');
INSERT INTO `gold_history` VALUES ('158', '2014-08-08', '15425580.63');
INSERT INTO `gold_history` VALUES ('159', '2014-08-11', '15258875.63');
INSERT INTO `gold_history` VALUES ('160', '2014-08-12', '15377828.13');
INSERT INTO `gold_history` VALUES ('161', '2014-08-13', '15338592');
INSERT INTO `gold_history` VALUES ('162', '2014-08-14', '15331828.75');
INSERT INTO `gold_history` VALUES ('163', '2014-08-15', '15128208');
INSERT INTO `gold_history` VALUES ('164', '2014-08-18', '15151875.38');
INSERT INTO `gold_history` VALUES ('165', '2014-08-19', '15141823.5');
INSERT INTO `gold_history` VALUES ('166', '2014-08-20', '15151500');
INSERT INTO `gold_history` VALUES ('167', '2014-08-21', '14907672.5');
INSERT INTO `gold_history` VALUES ('168', '2014-08-22', '14917002.75');
INSERT INTO `gold_history` VALUES ('169', '2014-08-25', '14966815.5');
INSERT INTO `gold_history` VALUES ('170', '2014-08-26', '15062918');
INSERT INTO `gold_history` VALUES ('171', '2014-08-27', '14984444.13');
INSERT INTO `gold_history` VALUES ('172', '2014-08-28', '15117046');
INSERT INTO `gold_history` VALUES ('173', '2014-08-29', '15040060.63');
INSERT INTO `gold_history` VALUES ('174', '2014-09-01', '15072634');
INSERT INTO `gold_history` VALUES ('175', '2014-09-02', '14884082.5');
INSERT INTO `gold_history` VALUES ('176', '2014-09-03', '14888607.5');
INSERT INTO `gold_history` VALUES ('177', '2014-09-04', '14957926');
INSERT INTO `gold_history` VALUES ('178', '2014-09-05', '14881830');
INSERT INTO `gold_history` VALUES ('179', '2014-09-08', '14767440.5');
INSERT INTO `gold_history` VALUES ('180', '2014-09-09', '14775782.38');
INSERT INTO `gold_history` VALUES ('181', '2014-09-10', '14776812');
INSERT INTO `gold_history` VALUES ('182', '2014-09-11', '14677781.25');
INSERT INTO `gold_history` VALUES ('183', '2014-09-12', '14556330');
INSERT INTO `gold_history` VALUES ('184', '2014-09-15', '14721516.88');
INSERT INTO `gold_history` VALUES ('185', '2014-09-16', '14743871.25');
INSERT INTO `gold_history` VALUES ('186', '2014-09-17', '14776380');
INSERT INTO `gold_history` VALUES ('187', '2014-09-18', '14621590');
INSERT INTO `gold_history` VALUES ('188', '2014-09-19', '14597358.13');
INSERT INTO `gold_history` VALUES ('189', '2014-09-22', '14529842.25');
INSERT INTO `gold_history` VALUES ('190', '2014-09-23', '14630395');
INSERT INTO `gold_history` VALUES ('191', '2014-09-24', '14549180.63');
INSERT INTO `gold_history` VALUES ('192', '2014-09-25', '14538904.38');
INSERT INTO `gold_history` VALUES ('193', '2014-09-26', '14592309.38');
INSERT INTO `gold_history` VALUES ('194', '2014-09-29', '14841315');
INSERT INTO `gold_history` VALUES ('195', '2014-09-30', '14823052.5');
INSERT INTO `gold_history` VALUES ('196', '2014-10-01', '14753103.75');
INSERT INTO `gold_history` VALUES ('197', '2014-10-02', '14722762.5');
INSERT INTO `gold_history` VALUES ('198', '2014-10-03', '14550917.5');
INSERT INTO `gold_history` VALUES ('199', '2014-10-06', '14600107.5');
INSERT INTO `gold_history` VALUES ('200', '2014-10-07', '14771126.25');
INSERT INTO `gold_history` VALUES ('201', '2014-10-08', '14895471.5');
INSERT INTO `gold_history` VALUES ('202', '2014-10-09', '14954082.5');
INSERT INTO `gold_history` VALUES ('203', '2014-10-10', '14896180');
INSERT INTO `gold_history` VALUES ('204', '2014-10-13', '15013464');
INSERT INTO `gold_history` VALUES ('205', '2014-10-14', '15073210.63');
INSERT INTO `gold_history` VALUES ('206', '2014-10-15', '15130293.75');
INSERT INTO `gold_history` VALUES ('207', '2014-10-16', '15159343.13');
INSERT INTO `gold_history` VALUES ('208', '2014-10-17', '14942447.63');
INSERT INTO `gold_history` VALUES ('209', '2014-10-20', '14974446.25');
INSERT INTO `gold_history` VALUES ('210', '2014-10-21', '15003000');
INSERT INTO `gold_history` VALUES ('211', '2014-10-22', '14940546.88');
INSERT INTO `gold_history` VALUES ('212', '2014-10-23', '14866965');
INSERT INTO `gold_history` VALUES ('213', '2014-10-24', '14874361.5');
INSERT INTO `gold_history` VALUES ('214', '2014-10-27', '14878933.75');
INSERT INTO `gold_history` VALUES ('215', '2014-10-28', '14959972.5');
INSERT INTO `gold_history` VALUES ('216', '2014-10-29', '14781103.5');
INSERT INTO `gold_history` VALUES ('217', '2014-10-30', '14574250');
INSERT INTO `gold_history` VALUES ('218', '2014-10-31', '14069961.25');
INSERT INTO `gold_history` VALUES ('219', '2014-11-03', '14138533.13');
INSERT INTO `gold_history` VALUES ('220', '2014-11-04', '14123398.75');
INSERT INTO `gold_history` VALUES ('221', '2014-11-05', '13866735');
INSERT INTO `gold_history` VALUES ('222', '2014-11-06', '13900300');
INSERT INTO `gold_history` VALUES ('223', '2014-11-07', '14054305.75');
INSERT INTO `gold_history` VALUES ('224', '2014-11-10', '14121205');
INSERT INTO `gold_history` VALUES ('225', '2014-11-11', '14115082.5');
INSERT INTO `gold_history` VALUES ('226', '2014-11-12', '14205153.25');
INSERT INTO `gold_history` VALUES ('227', '2014-11-13', '14176254.38');
INSERT INTO `gold_history` VALUES ('228', '2014-11-14', '14274659');
INSERT INTO `gold_history` VALUES ('229', '2014-11-17', '14431821.25');
INSERT INTO `gold_history` VALUES ('230', '2014-11-18', '14491912.5');
INSERT INTO `gold_history` VALUES ('231', '2014-11-19', '14528410');
INSERT INTO `gold_history` VALUES ('232', '2014-11-20', '14488250');
INSERT INTO `gold_history` VALUES ('233', '2014-11-21', '14623756.88');
INSERT INTO `gold_history` VALUES ('234', '2014-11-24', '14551421.25');
INSERT INTO `gold_history` VALUES ('235', '2014-11-25', '14584636');
INSERT INTO `gold_history` VALUES ('236', '2014-11-26', '14579562.5');
INSERT INTO `gold_history` VALUES ('237', '2014-11-27', '14548470.75');
INSERT INTO `gold_history` VALUES ('238', '2014-11-28', '14434281');
INSERT INTO `gold_history` VALUES ('239', '2014-12-01', '14653365');
INSERT INTO `gold_history` VALUES ('240', '2014-12-02', '14662650');
INSERT INTO `gold_history` VALUES ('241', '2014-12-03', '14816617.88');
INSERT INTO `gold_history` VALUES ('242', '2014-12-04', '14879767.5');
INSERT INTO `gold_history` VALUES ('243', '2014-12-05', '14684409');
INSERT INTO `gold_history` VALUES ('244', '2014-12-08', '14731760.5');
INSERT INTO `gold_history` VALUES ('245', '2014-12-09', '15128296.5');
INSERT INTO `gold_history` VALUES ('246', '2014-12-10', '15161558.5');
INSERT INTO `gold_history` VALUES ('247', '2014-12-11', '15018863.13');
INSERT INTO `gold_history` VALUES ('248', '2014-12-12', '15160777.5');
INSERT INTO `gold_history` VALUES ('249', '2014-12-15', '15354451.88');
INSERT INTO `gold_history` VALUES ('250', '2014-12-16', '15247700');
INSERT INTO `gold_history` VALUES ('251', '2014-12-17', '15135205.63');
INSERT INTO `gold_history` VALUES ('252', '2014-12-18', '15062437.5');
INSERT INTO `gold_history` VALUES ('253', '2014-12-19', '14931795');
INSERT INTO `gold_history` VALUES ('254', '2014-12-22', '14867714.75');
INSERT INTO `gold_history` VALUES ('255', '2014-12-23', '14638087.5');
INSERT INTO `gold_history` VALUES ('256', '2014-12-24', '14658663.13');
INSERT INTO `gold_history` VALUES ('257', '2014-12-25', '14658663.13');
INSERT INTO `gold_history` VALUES ('258', '2014-12-26', '14658663.13');
INSERT INTO `gold_history` VALUES ('259', '2014-12-29', '14755918.5');
INSERT INTO `gold_history` VALUES ('260', '2014-12-30', '15010479');
INSERT INTO `gold_history` VALUES ('261', '2014-12-31', '14936310');
INSERT INTO `gold_history` VALUES ('262', '2015-01-01', '14936310');
INSERT INTO `gold_history` VALUES ('263', '2015-01-02', '14699810');
INSERT INTO `gold_history` VALUES ('264', '2015-01-05', '15153000');
INSERT INTO `gold_history` VALUES ('265', '2015-01-06', '15318739.38');
INSERT INTO `gold_history` VALUES ('266', '2015-01-07', '15419954.25');
INSERT INTO `gold_history` VALUES ('267', '2015-01-08', '15415578.75');
INSERT INTO `gold_history` VALUES ('268', '2015-01-09', '15406364.13');
INSERT INTO `gold_history` VALUES ('269', '2015-01-12', '15450833.75');
INSERT INTO `gold_history` VALUES ('270', '2015-01-13', '15513821.25');
INSERT INTO `gold_history` VALUES ('271', '2015-01-14', '15577055');
INSERT INTO `gold_history` VALUES ('272', '2015-01-15', '15813040');
INSERT INTO `gold_history` VALUES ('273', '2015-01-16', '16080531.25');
INSERT INTO `gold_history` VALUES ('274', '2015-01-19', '16072814.38');
INSERT INTO `gold_history` VALUES ('275', '2015-01-20', '16217630');
INSERT INTO `gold_history` VALUES ('276', '2015-01-21', '16142880');
INSERT INTO `gold_history` VALUES ('277', '2015-01-22', '16180678.13');
INSERT INTO `gold_history` VALUES ('278', '2015-01-23', '16148769.38');
INSERT INTO `gold_history` VALUES ('279', '2015-01-26', '16028437.5');
INSERT INTO `gold_history` VALUES ('280', '2015-01-27', '16075970.25');
INSERT INTO `gold_history` VALUES ('281', '2015-01-28', '16081968');
INSERT INTO `gold_history` VALUES ('282', '2015-01-29', '15945015.63');
INSERT INTO `gold_history` VALUES ('283', '2015-01-30', '15964216.88');
INSERT INTO `gold_history` VALUES ('284', '2015-02-02', '16141662.5');
INSERT INTO `gold_history` VALUES ('285', '2015-02-03', '15997819.5');
INSERT INTO `gold_history` VALUES ('286', '2015-02-04', '16014812.5');
INSERT INTO `gold_history` VALUES ('287', '2015-02-05', '15907475.63');
INSERT INTO `gold_history` VALUES ('288', '2015-02-06', '15654594.5');
INSERT INTO `gold_history` VALUES ('289', '2015-02-09', '15663928.75');
INSERT INTO `gold_history` VALUES ('290', '2015-02-10', '15641115');
INSERT INTO `gold_history` VALUES ('291', '2015-02-11', '15562428.75');
INSERT INTO `gold_history` VALUES ('292', '2015-02-12', '15641887.5');
INSERT INTO `gold_history` VALUES ('293', '2015-02-13', '15760593.75');
INSERT INTO `gold_history` VALUES ('294', '2015-02-16', '15676010.63');
INSERT INTO `gold_history` VALUES ('295', '2015-02-17', '15444710.25');
INSERT INTO `gold_history` VALUES ('296', '2015-02-18', '15488055');
INSERT INTO `gold_history` VALUES ('297', '2015-02-19', '15533003.75');
INSERT INTO `gold_history` VALUES ('298', '2015-02-20', '15480703.13');
INSERT INTO `gold_history` VALUES ('299', '2015-02-23', '15459155.25');
INSERT INTO `gold_history` VALUES ('300', '2015-02-24', '15380268.75');
INSERT INTO `gold_history` VALUES ('301', '2015-02-25', '15509349.13');
INSERT INTO `gold_history` VALUES ('302', '2015-02-26', '15510909.38');
INSERT INTO `gold_history` VALUES ('303', '2015-02-27', '15690950');
INSERT INTO `gold_history` VALUES ('304', '2015-03-02', '15723093.75');
INSERT INTO `gold_history` VALUES ('305', '2015-03-03', '15723910.13');
INSERT INTO `gold_history` VALUES ('306', '2015-03-04', '15572508.75');
INSERT INTO `gold_history` VALUES ('307', '2015-03-05', '15613980');
INSERT INTO `gold_history` VALUES ('308', '2015-03-06', '15254768.38');
INSERT INTO `gold_history` VALUES ('309', '2015-03-09', '15248925');
INSERT INTO `gold_history` VALUES ('310', '2015-03-10', '15212323');
INSERT INTO `gold_history` VALUES ('311', '2015-03-11', '15169075');
INSERT INTO `gold_history` VALUES ('312', '2015-03-12', '15189535.63');
INSERT INTO `gold_history` VALUES ('313', '2015-03-13', '15200640');
INSERT INTO `gold_history` VALUES ('314', '2015-03-16', '15238231.5');
INSERT INTO `gold_history` VALUES ('315', '2015-03-17', '15155377.5');
INSERT INTO `gold_history` VALUES ('316', '2015-03-18', '15109282.5');
INSERT INTO `gold_history` VALUES ('317', '2015-03-19', '15198810');
INSERT INTO `gold_history` VALUES ('318', '2015-03-20', '15517537.68');
INSERT INTO `gold_history` VALUES ('319', '2015-03-23', '15444381.88');
INSERT INTO `gold_history` VALUES ('320', '2015-03-24', '15376307.5');
INSERT INTO `gold_history` VALUES ('321', '2015-03-25', '15526059.7');
INSERT INTO `gold_history` VALUES ('322', '2015-03-26', '15662003.85');
INSERT INTO `gold_history` VALUES ('323', '2015-03-27', '15622473.75');
INSERT INTO `gold_history` VALUES ('324', '2015-03-30', '15500412.5');
INSERT INTO `gold_history` VALUES ('325', '2015-03-31', '15520025');
INSERT INTO `gold_history` VALUES ('326', '2015-04-01', '15611872.5');
INSERT INTO `gold_history` VALUES ('327', '2015-04-02', '15583496.25');
INSERT INTO `gold_history` VALUES ('328', '2015-04-03', '15583496.25');
INSERT INTO `gold_history` VALUES ('329', '2015-04-06', '15530762.25');
INSERT INTO `gold_history` VALUES ('330', '2015-04-07', '15724835');
INSERT INTO `gold_history` VALUES ('331', '2015-04-08', '15639923.75');
INSERT INTO `gold_history` VALUES ('332', '2015-04-09', '15413514.88');
INSERT INTO `gold_history` VALUES ('333', '2015-04-10', '15592923.36');
INSERT INTO `gold_history` VALUES ('334', '2015-04-13', '15567715.23');
INSERT INTO `gold_history` VALUES ('335', '2015-04-14', '15508452.38');
INSERT INTO `gold_history` VALUES ('336', '2015-04-15', '15389005.19');
INSERT INTO `gold_history` VALUES ('337', '2015-04-16', '15483121.72');
INSERT INTO `gold_history` VALUES ('338', '2015-04-17', '15463045.62');
INSERT INTO `gold_history` VALUES ('339', '2015-04-20', '15422885');
INSERT INTO `gold_history` VALUES ('340', '2015-04-21', '15485108.97');
INSERT INTO `gold_history` VALUES ('341', '2015-04-22', '15341325');
INSERT INTO `gold_history` VALUES ('342', '2015-04-23', '15361391.25');
INSERT INTO `gold_history` VALUES ('343', '2015-04-24', '15283768.5');
INSERT INTO `gold_history` VALUES ('344', '2015-04-27', '15576000');
INSERT INTO `gold_history` VALUES ('345', '2015-04-28', '15692820');
INSERT INTO `gold_history` VALUES ('346', '2015-04-29', '15644460');
INSERT INTO `gold_history` VALUES ('347', '2015-04-30', '15298990.63');
INSERT INTO `gold_history` VALUES ('348', '2015-05-01', '15243251.24');
INSERT INTO `gold_history` VALUES ('349', '2015-05-04', '15263830.37');
INSERT INTO `gold_history` VALUES ('350', '2015-05-05', '15617857.5');
INSERT INTO `gold_history` VALUES ('351', '2015-05-06', '15567048.75');
INSERT INTO `gold_history` VALUES ('352', '2015-05-07', '15609050');
INSERT INTO `gold_history` VALUES ('353', '2015-05-08', '15566250');
INSERT INTO `gold_history` VALUES ('354', '2015-05-11', '15644583.75');
INSERT INTO `gold_history` VALUES ('355', '2015-05-12', '15725417');
INSERT INTO `gold_history` VALUES ('356', '2015-05-13', '15902943.75');
INSERT INTO `gold_history` VALUES ('357', '2015-05-14', '16093437.5');
INSERT INTO `gold_history` VALUES ('358', '2015-05-15', '15975124.5');
INSERT INTO `gold_history` VALUES ('359', '2015-05-18', '16073119.5');
INSERT INTO `gold_history` VALUES ('360', '2015-05-19', '15926149.09');
INSERT INTO `gold_history` VALUES ('361', '2015-05-20', '15948337.5');
INSERT INTO `gold_history` VALUES ('362', '2015-05-21', '15821047.5');
INSERT INTO `gold_history` VALUES ('363', '2015-05-22', '15839933.57');
INSERT INTO `gold_history` VALUES ('364', '2015-05-25', '15839933.57');
INSERT INTO `gold_history` VALUES ('365', '2015-05-26', '15659132.71');
INSERT INTO `gold_history` VALUES ('366', '2015-05-27', '15655589.77');
INSERT INTO `gold_history` VALUES ('367', '2015-05-28', '15667477.5');
INSERT INTO `gold_history` VALUES ('368', '2015-05-29', '15755072.31');
INSERT INTO `gold_history` VALUES ('369', '2015-06-01', '15865676.46');
INSERT INTO `gold_history` VALUES ('370', '2015-06-02', '15771795.42');
INSERT INTO `gold_history` VALUES ('371', '2015-06-03', '15732990');
INSERT INTO `gold_history` VALUES ('372', '2015-06-04', '15619632');
INSERT INTO `gold_history` VALUES ('373', '2015-06-05', '15460645.36');
INSERT INTO `gold_history` VALUES ('374', '2015-06-08', '15692061.39');
INSERT INTO `gold_history` VALUES ('375', '2015-06-09', '15663539.6');
INSERT INTO `gold_history` VALUES ('376', '2015-06-10', '15821906.25');
INSERT INTO `gold_history` VALUES ('377', '2015-06-11', '15698209.25');
INSERT INTO `gold_history` VALUES ('378', '2015-06-12', '15772044');
INSERT INTO `gold_history` VALUES ('379', '2015-06-15', '15753967.7');
INSERT INTO `gold_history` VALUES ('380', '2015-06-16', '15726495.75');
INSERT INTO `gold_history` VALUES ('381', '2015-06-17', '15746915');
INSERT INTO `gold_history` VALUES ('382', '2015-06-18', '15990612.3');
INSERT INTO `gold_history` VALUES ('383', '2015-06-19', '16043125.8');
INSERT INTO `gold_history` VALUES ('384', '2015-06-22', '15779005');
INSERT INTO `gold_history` VALUES ('385', '2015-06-23', '15614390');
INSERT INTO `gold_history` VALUES ('386', '2015-06-24', '15614983.13');
INSERT INTO `gold_history` VALUES ('387', '2015-06-25', '15628491.57');
INSERT INTO `gold_history` VALUES ('388', '2015-06-26', '15576428.75');
INSERT INTO `gold_history` VALUES ('389', '2015-06-29', '15693720');
INSERT INTO `gold_history` VALUES ('390', '2015-06-30', '15612357.5');
INSERT INTO `gold_history` VALUES ('391', '2015-07-01', '15565352');
INSERT INTO `gold_history` VALUES ('392', '2015-07-02', '15540356.63');
INSERT INTO `gold_history` VALUES ('393', '2015-07-03', '15557093.35');
INSERT INTO `gold_history` VALUES ('394', '2015-07-06', '15567266');
INSERT INTO `gold_history` VALUES ('395', '2015-07-07', '15409921.88');
INSERT INTO `gold_history` VALUES ('396', '2015-07-08', '15460182.5');
INSERT INTO `gold_history` VALUES ('397', '2015-07-09', '15526438');
INSERT INTO `gold_history` VALUES ('398', '2015-07-10', '15434337.95');
INSERT INTO `gold_history` VALUES ('399', '2015-07-13', '15348200');
INSERT INTO `gold_history` VALUES ('400', '2015-07-14', '15433927.7');
INSERT INTO `gold_history` VALUES ('401', '2015-07-15', '15311478');
INSERT INTO `gold_history` VALUES ('402', '2015-07-16', '15271444.5');
INSERT INTO `gold_history` VALUES ('403', '2015-07-17', '15116646.99');
INSERT INTO `gold_history` VALUES ('404', '2015-07-20', '14740332.75');
INSERT INTO `gold_history` VALUES ('405', '2015-07-21', '14753677.25');
INSERT INTO `gold_history` VALUES ('406', '2015-07-22', '14562744.54');
INSERT INTO `gold_history` VALUES ('407', '2015-07-23', '14729850.19');
INSERT INTO `gold_history` VALUES ('408', '2015-07-24', '14531353.37');
INSERT INTO `gold_history` VALUES ('409', '2015-07-27', '14804900');
INSERT INTO `gold_history` VALUES ('410', '2015-07-28', '14757591.84');
INSERT INTO `gold_history` VALUES ('411', '2015-07-29', '14670404');
INSERT INTO `gold_history` VALUES ('412', '2015-07-30', '14645906.25');
INSERT INTO `gold_history` VALUES ('413', '2015-07-31', '14858604.68');

-- ----------------------------
-- Table structure for pre_data_interval
-- ----------------------------
DROP TABLE IF EXISTS `pre_data_interval`;
CREATE TABLE `pre_data_interval` (
  `pre_data_interval_id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_data_interval_linguistik_value` varchar(10) DEFAULT NULL,
  `pre_data_interval_min` int(11) DEFAULT NULL,
  `pre_data_interval_max` int(11) DEFAULT NULL,
  `pre_data_interval_occurence` int(11) DEFAULT NULL,
  PRIMARY KEY (`pre_data_interval_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pre_data_interval
-- ----------------------------
INSERT INTO `pre_data_interval` VALUES ('1', 'A1', '13866735', '14202577', '9');
INSERT INTO `pre_data_interval` VALUES ('2', 'A2', '14202577', '14538419', '11');
INSERT INTO `pre_data_interval` VALUES ('3', 'A3', '14538419', '14874261', '81');
INSERT INTO `pre_data_interval` VALUES ('4', 'A4', '14874261', '15210103', '110');
INSERT INTO `pre_data_interval` VALUES ('5', 'A5', '15210103', '15545945', '94');
INSERT INTO `pre_data_interval` VALUES ('6', 'A6', '15545945', '15881787', '84');
INSERT INTO `pre_data_interval` VALUES ('7', 'A7', '15881787', '16217630', '24');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(25) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  `user_created` datetime DEFAULT NULL,
  `user_last_ip` varchar(30) DEFAULT NULL,
  `user_last_login` datetime DEFAULT NULL,
  `user_activate` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2015-08-07 20:59:39', null, null, '1');
