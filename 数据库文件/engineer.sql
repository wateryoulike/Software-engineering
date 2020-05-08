/*
Navicat MySQL Data Transfer

Source Server         : Keshawn_lu's Mysql
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : engineer

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-05-08 17:19:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for engineer
-- ----------------------------
DROP TABLE IF EXISTS `engineer`;
CREATE TABLE `engineer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` int DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `education` int DEFAULT NULL,
  `hometown` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `seniority` int DEFAULT NULL,
  `basic_wage` float(255,0) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of engineer
-- ----------------------------
INSERT INTO `engineer` VALUES ('2', '20170527', '熊星琼', '1', '1978-11-03 00:00:00', '2', '绍兴', '杭州西湖区', '17322861458', '20', '21400', '/static/images/icon/m3.jpg');
INSERT INTO `engineer` VALUES ('3', '20170565', '袁惠敏', '0', '1989-05-15 00:00:00', '3', '杭州', '杭州临安区', '17322864874', '9', '11500', '/static/images/icon/m13.jpg');
INSERT INTO `engineer` VALUES ('4', '20170528', '张贺', '1', '1982-04-01 00:00:00', '3', '嘉兴', '杭州拱墅区', '17322861234', '13', '15400', '/static/images/icon/m1.jpg');
INSERT INTO `engineer` VALUES ('5', '20170520', '胡深刻', '1', '1988-01-02 00:00:00', '5', '温州', '杭州上城区', '17322866584', '5', '26600', '/static/images/icon/m4.jpg');
INSERT INTO `engineer` VALUES ('9', '20170576', '章艺将', '0', '1992-10-22 00:00:00', '3', '湖州', '杭州下城区', '17322868654', '4', '15132', '/static/images/icon/m5.jpg');
INSERT INTO `engineer` VALUES ('10', '20174581', '叶诗', '0', '1983-06-13 00:00:00', '1', '临安', '杭州萧山区', '17322864584', '14', '14900', '/static/images/icon/m6.jpg');
INSERT INTO `engineer` VALUES ('11', '20178994', '张乘', '1', '1986-05-15 00:00:00', '4', '安徽', '杭州江干区', '17322864168', '8', '19500', '/static/images/icon/m2.jpg');
INSERT INTO `engineer` VALUES ('12', '20170528', '何颂', '1', '1988-07-01 00:00:00', '3', '江苏', '杭州富阳区', '17322866847', '6', '14400', '/static/images/icon/m7.jpg');
INSERT INTO `engineer` VALUES ('13', '20174877', '林杨', '1', '1991-04-22 00:00:00', '3', '福建', '杭州余杭区', '17322861475', '5', '17800', '/static/images/icon/m8.jpg');
INSERT INTO `engineer` VALUES ('14', '20170354', '王欣', '1', '1984-06-12 00:00:00', '4', '杭州', '杭州建德区', '17322864768', '10', '19132', '/static/images/icon/m9.jpg');
INSERT INTO `engineer` VALUES ('15', '20170756', '叶回', '1', '1984-01-02 00:00:00', '5', '武汉', '杭州桐庐区', '17322884764', '8', '28600', '/static/images/icon/m10.jpg');
INSERT INTO `engineer` VALUES ('16', '20171577', '梅宇', '1', '1982-10-22 00:00:00', '3', '北京', '杭州淳安区', '17322458613', '11', '19132', '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES ('17', '20174581', '余洋洋', '1', '1986-09-17 00:00:00', '3', '广州', '杭州余杭区', '17322865796', '8', '19900', '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES ('18', '20179863', '李玉欣', '0', '1985-12-15 00:00:00', '5', '厦门', '杭州拱墅区', '17322575687', '6', '23500', '/static/images/icon/m15.jpg');
INSERT INTO `engineer` VALUES ('19', '20170999', '虞书欣', '1', '1985-12-15 00:00:00', '5', '杭州', '杭州临安区', '17898996566', '5', '30000', '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES ('20', '20189999', '许佳琪', '1', '1999-03-05 00:00:00', '5', '舟山', '舟山定海区', '18965664212', '15', '99999', '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES ('21', '20198888', '赵小棠', '1', '1982-10-22 00:00:00', '4', '杭州', '杭州拱墅区', '13569998787', '6', '20000', '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES ('22', '20165898', '胡饮', '1', '1988-07-12 00:00:00', '4', '舟山', '舟山普陀区', '133206598965', '8', '88888', '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES ('23', '20178795', '范闲', '0', '1986-09-17 00:00:00', '3', '北京', '北京东城区', '13588887777', '9', '66666', '/static/images/icon/m10.jpg');
INSERT INTO `engineer` VALUES ('24', '20169899', '范思辙', '0', '1988-07-01 00:00:00', '5', '上海', '上海浦东区', '17366669999', '5', '96325', '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES ('25', '20178956', '牧尘', '0', '1993-07-23 00:00:00', '3', '杭州', '杭州建德区', '17896544548', '6', '20001', '/static/images/icon/m6.jpg');
INSERT INTO `engineer` VALUES ('26', '20189654', '萧炎', '0', '1988-08-25 00:00:00', '4', '武汉', '武汉汉阳区', '17569320123', '8', '69854', '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES ('27', '20156589', '林动', '0', '1984-06-30 00:00:00', '5', '北京', '北京西城区', '13898745462', '9', '56478', '/static/images/icon/m4.jpg');
INSERT INTO `engineer` VALUES ('28', '20189545', '洛璃', '1', '1983-06-24 00:00:00', '5', '舟山', '舟山岱山县', '16698784512', '15', '66964', '/static/images/icon/m4.jpg');
INSERT INTO `engineer` VALUES ('29', '20163210', '赵晓倩', '1', '1986-06-05 00:00:00', '2', '武汉', '武汉青山区', '18965451230', '16', '21321', '/static/images/icon/m2.jpg');
INSERT INTO `engineer` VALUES ('30', '20156542', '赵小新', '0', '1982-10-20 00:00:00', '5', '武汉', '武汉汉南区', '13654587852', '6', '54578', '/static/images/icon/m7.jpg');
INSERT INTO `engineer` VALUES ('31', '20165457', '九幽', '0', '1991-04-22 00:00:00', '1', '杭州', '杭州下城区', '13545879620', '9', '12012', '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES ('32', '20148957', '刘青云', '0', '1986-05-31 00:00:00', '3', '舟山', '舟山岱山县', '13456545872', '8', '22565', '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES ('33', '20136595', '刘晓苏', '1', '1986-09-26 00:00:00', '2', '杭州', '杭州萧山区', '13698784520', '7', '45412', '/static/images/icon/m6.jpg');
INSERT INTO `engineer` VALUES ('34', '20187845', '欧若拉', '0', '2004-10-20 16:56:02', '3', '武汉', '武汉洪山区', '13564521020', '9', '78451', '/static/images/icon/m9.jpg');
INSERT INTO `engineer` VALUES ('35', '20132654', '欧亚辉', '0', '1984-06-25 00:00:00', '4', '杭州', '杭州拱墅区', '13659845521', '5', '8000', '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES ('36', '20145652', '蒲珊奇', '0', '1988-07-15 00:00:00', '2', '武汉', '武汉江夏区', '15459878521', '6', '7888', '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES ('37', '20136569', '王玉山', '0', '1985-12-17 00:00:00', '3', '厦门', '武汉青山区', '15468745212', '6', '6666', '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES ('38', '20188888', '李算起', '1', '1999-03-09 00:00:00', '2', '哈尔滨', '武汉江岸区', '13565656457', '2', '7894', '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES ('39', '20145895', '李忘生', '1', '1988-07-18 00:00:00', '4', '天津', '杭州下城区', '16589778412', '6', '9663', '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES ('40', '20198785', '邱启云', '0', '1985-12-28 00:00:00', '3', '贵州', '杭州拱墅区', '16545879456', '5', '78952', '/static/images/icon/m4.jpg');
INSERT INTO `engineer` VALUES ('41', '20203654', '秋雨', '0', '1986-09-28 00:00:00', '4', '杭州', '杭州淳安区', '15645879562', '3', '54651', '/static/images/icon/m6.jpg');
INSERT INTO `engineer` VALUES ('42', '20177777', '秋殇去', '1', '1993-07-31 00:00:00', '3', '内蒙古', '北京西城区', '15879565121', '6', '20000', '/static/images/icon/m9.jpg');
INSERT INTO `engineer` VALUES ('43', '20156598', '齐雨薇', '0', '1993-07-19 00:00:00', '2', '杭州', '杭州临安区', '13565879842', '4', '30000', '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES ('44', '20189845', '周扬青', '0', '2020-05-24 17:04:42', '3', '厦门', '武汉汉南区', '13264564646', '6', '84512', '/static/images/icon/m4.jpg');
INSERT INTO `engineer` VALUES ('45', '20199999', '呈急速', '0', '1986-09-01 00:00:00', '2', '镇江', '杭州下城区', '13565484512', '8', '6545', '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES ('46', '20120225', '程素宇', '1', '1988-08-08 00:00:00', '4', '扬州', '武汉青山区', '12354648181', '8', '15644', '/static/images/icon/m4.jpg');
INSERT INTO `engineer` VALUES ('47', '20111251', '李武阳', '0', '1988-08-14 00:00:00', '3', '淮安', '淮安淮安区', '12561423513', '7', '10251', '/static/images/icon/m6.jpg');
INSERT INTO `engineer` VALUES ('48', '20166555', '李玉王', '1', '1983-06-26 00:00:00', '2', '宿迁', '淮安淮阴区', '15898784512', '6', '20326', '/static/images/icon/m2.jpg');
INSERT INTO `engineer` VALUES ('49', '20156589', '李全文', '1', '1993-07-31 00:00:00', '1', '舟山', '杭州临安区', '15645897455', '6', '45261', '/static/images/icon/m9.jpg');
INSERT INTO `engineer` VALUES ('50', '20156505', '全是我', '0', '1986-05-25 00:00:00', '2', '内蒙古', '武汉青山区', '12565485123', '7', '20303', '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES ('51', '20156945', '全是你', '0', '1985-12-24 00:00:00', '3', '杭州', '杭州淳安区', '13565445125', '9', '10250', '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES ('52', '20133646', '卿珊奇', '1', '1983-06-13 00:00:00', '4', '贵州', '武汉青山区', '11548842345', '6', '20302', '/static/images/icon/m9.jpg');
INSERT INTO `engineer` VALUES ('53', '20165897', '秦少久', '0', '1986-06-10 00:00:00', '2', '无锡', '武汉江岸区', '13654544113', '8', '10320', '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES ('54', '2001644', '陆倩地', '0', '1985-12-28 00:00:00', '5', '无锡', '武汉青山区', '13545264226', '7', '20021', '/static/images/icon/m6.jpg');
INSERT INTO `engineer` VALUES ('55', '2015458', '罗三秋', '0', '1991-04-08 00:00:00', '2', '内蒙古', '武汉江岸区', '13546402441', '9', '20156', '/static/images/icon/m2.jpg');
INSERT INTO `engineer` VALUES ('56', '2014656', '罗志宇', '1', '1988-06-06 00:00:00', '5', '哈尔滨', '舟山岱山县', '13654655945', '8', '14554', '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES ('57', '2018778', '钱素琴', '0', '1986-09-15 00:00:00', '2', '杭州', '杭州萧山区', '13564545122', '4', '15645', '/static/images/icon/m7.jpg');
INSERT INTO `engineer` VALUES ('58', '2016564', '卢卡斯', '1', '2004-10-18 16:56:02', '3', '扬州', '北京西城区', '13565451212', '9', '20321', '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES ('59', '2016989', '鲁菜色', '0', '1985-12-30 00:00:00', '2', '无锡', '无锡惠山区', '13565984512', '3', '20300', '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES ('60', '2019856', '陆千元', '1', '1993-07-19 00:00:00', '3', '镇江', '无锡新吴区', '18985451365', '2', '19561', '/static/images/icon/m6.jpg');
