/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : 127.0.0.1:3306
 Source Schema         : software

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 09/05/2020 14:34:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`) USING BTREE,
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add share data', 7, 'add_sharedata');
INSERT INTO `auth_permission` VALUES (26, 'Can change share data', 7, 'change_sharedata');
INSERT INTO `auth_permission` VALUES (27, 'Can delete share data', 7, 'delete_sharedata');
INSERT INTO `auth_permission` VALUES (28, 'Can view share data', 7, 'view_sharedata');
INSERT INTO `auth_permission` VALUES (29, 'Can add share sort', 8, 'add_sharesort');
INSERT INTO `auth_permission` VALUES (30, 'Can change share sort', 8, 'change_sharesort');
INSERT INTO `auth_permission` VALUES (31, 'Can delete share sort', 8, 'delete_sharesort');
INSERT INTO `auth_permission` VALUES (32, 'Can view share sort', 8, 'view_sharesort');
INSERT INTO `auth_permission` VALUES (33, 'Can add share data', 9, 'add_sharedata');
INSERT INTO `auth_permission` VALUES (34, 'Can change share data', 9, 'change_sharedata');
INSERT INTO `auth_permission` VALUES (35, 'Can delete share data', 9, 'delete_sharedata');
INSERT INTO `auth_permission` VALUES (36, 'Can view share data', 9, 'view_sharedata');
INSERT INTO `auth_permission` VALUES (37, 'Can add share sort', 10, 'add_sharesort');
INSERT INTO `auth_permission` VALUES (38, 'Can change share sort', 10, 'change_sharesort');
INSERT INTO `auth_permission` VALUES (39, 'Can delete share sort', 10, 'delete_sharesort');
INSERT INTO `auth_permission` VALUES (40, 'Can view share sort', 10, 'view_sharesort');
INSERT INTO `auth_permission` VALUES (41, 'Can add engineer', 11, 'add_engineer');
INSERT INTO `auth_permission` VALUES (42, 'Can change engineer', 11, 'change_engineer');
INSERT INTO `auth_permission` VALUES (43, 'Can delete engineer', 11, 'delete_engineer');
INSERT INTO `auth_permission` VALUES (44, 'Can view engineer', 11, 'view_engineer');
INSERT INTO `auth_permission` VALUES (45, 'Can add opeartions', 12, 'add_opeartions');
INSERT INTO `auth_permission` VALUES (46, 'Can change opeartions', 12, 'change_opeartions');
INSERT INTO `auth_permission` VALUES (47, 'Can delete opeartions', 12, 'delete_opeartions');
INSERT INTO `auth_permission` VALUES (48, 'Can view opeartions', 12, 'view_opeartions');
INSERT INTO `auth_permission` VALUES (49, 'Can add recovered engineer', 13, 'add_recoveredengineer');
INSERT INTO `auth_permission` VALUES (50, 'Can change recovered engineer', 13, 'change_recoveredengineer');
INSERT INTO `auth_permission` VALUES (51, 'Can delete recovered engineer', 13, 'delete_recoveredengineer');
INSERT INTO `auth_permission` VALUES (52, 'Can view recovered engineer', 13, 'view_recoveredengineer');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`) USING BTREE,
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`) USING BTREE,
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`) USING BTREE,
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'index', 'sharedata');
INSERT INTO `django_content_type` VALUES (8, 'index', 'sharesort');
INSERT INTO `django_content_type` VALUES (11, 'rearend', 'engineer');
INSERT INTO `django_content_type` VALUES (12, 'rearend', 'opeartions');
INSERT INTO `django_content_type` VALUES (13, 'rearend', 'recoveredengineer');
INSERT INTO `django_content_type` VALUES (9, 'rearend', 'sharedata');
INSERT INTO `django_content_type` VALUES (10, 'rearend', 'sharesort');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-04-04 17:24:57.173548');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-04-04 17:25:06.115428');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-04-04 17:25:07.999349');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-04-04 17:25:08.034343');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-04-04 17:25:08.066314');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-04-04 17:25:09.262635');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-04-04 17:25:10.031185');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-04-04 17:25:10.724787');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-04-04 17:25:10.774759');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-04-04 17:25:11.351437');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-04-04 17:25:11.384412');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-04-04 17:25:11.421388');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-04-04 17:25:11.989078');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-04-04 17:25:12.759637');
INSERT INTO `django_migrations` VALUES (15, 'sessions', '0001_initial', '2020-04-04 17:25:13.349287');
INSERT INTO `django_migrations` VALUES (16, 'index', '0001_initial', '2020-04-05 06:34:04.704475');
INSERT INTO `django_migrations` VALUES (17, 'rearend', '0001_initial', '2020-04-28 02:26:35.126102');
INSERT INTO `django_migrations` VALUES (18, 'auth', '0010_alter_group_name_max_length', '2020-05-08 04:52:16.152425');
INSERT INTO `django_migrations` VALUES (19, 'auth', '0011_update_proxy_permissions', '2020-05-08 04:52:16.168588');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  KEY `django_session_expire_date_a5c62663` (`expire_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('0lsbens2qlp4lfy9ot2ywbxnywnfoeu0', 'MWZmN2QyOTNmMDczODk4NzQyN2FjZDM0Mzk5OWZmZDUyN2I2YzAwNjp7ImxvZ2luU3RhdHVzIjp0cnVlfQ==', '2020-04-20 07:54:55.943179');
INSERT INTO `django_session` VALUES ('21mmmnpj1o0owrwpmd6kgg9xr6mq9bfi', 'ZDM1MTdkZjdjMWYyOGI5OTZmZTIzNDM0NDI3ZTAyNzQ2NGNkYzBjMTp7ImxvZ2luU3RhdHVzIjp0cnVlfQ==', '2020-05-23 14:00:56.578148');
INSERT INTO `django_session` VALUES ('i3tdkehhpr9ni6xj52dtapezjafwsgj9', 'ZDM1MTdkZjdjMWYyOGI5OTZmZTIzNDM0NDI3ZTAyNzQ2NGNkYzBjMTp7ImxvZ2luU3RhdHVzIjp0cnVlfQ==', '2020-05-23 14:14:05.558611');
INSERT INTO `django_session` VALUES ('uknw1a1hp1gp16j7j21fw3z48ok28d01', 'MWZmN2QyOTNmMDczODk4NzQyN2FjZDM0Mzk5OWZmZDUyN2I2YzAwNjp7ImxvZ2luU3RhdHVzIjp0cnVlfQ==', '2020-05-04 12:27:14.069312');
INSERT INTO `django_session` VALUES ('zp8929hourufo8myspporg11sb1vy02q', 'MWZmN2QyOTNmMDczODk4NzQyN2FjZDM0Mzk5OWZmZDUyN2I2YzAwNjp7ImxvZ2luU3RhdHVzIjp0cnVlfQ==', '2020-04-20 11:02:14.759486');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of engineer
-- ----------------------------
BEGIN;
INSERT INTO `engineer` VALUES (3, '20170565', '袁惠敏', 0, '1989-05-15 00:00:00', 3, '杭州', '杭州临安区', '17322864874', 9, 29600, '/static/images/icon/m13.jpg');
INSERT INTO `engineer` VALUES (4, '20170528', '张贺', 1, '1982-04-01 00:00:00', 3, '嘉兴', '杭州拱墅区', '17322861234', 13, 35400, '/static/images/icon/m1.jpg');
INSERT INTO `engineer` VALUES (5, '20170520', '胡深刻', 1, '1988-01-02 00:00:00', 5, '温州', '杭州上城区', '17322866584', 5, 26600, '/static/images/icon/m4.jpg');
INSERT INTO `engineer` VALUES (9, '20170576', '章艺将', 0, '1992-10-22 00:00:00', 3, '湖州', '杭州下城区', '17322868654', 4, 15132, '/static/images/icon/m5.jpg');
INSERT INTO `engineer` VALUES (10, '20174581', '叶诗', 0, '1983-06-13 00:00:00', 1, '临安', '杭州萧山区', '17322864584', 14, 34900, '/static/images/icon/m6.jpg');
INSERT INTO `engineer` VALUES (11, '20178994', '张乘', 1, '1986-05-15 00:00:00', 4, '安徽', '杭州江干区', '17322864168', 8, 19500, '/static/images/icon/m2.jpg');
INSERT INTO `engineer` VALUES (12, '20170528', '何颂', 1, '1988-07-01 00:00:00', 3, '江苏', '杭州富阳区', '17322866847', 6, 14400, '/static/images/icon/m7.jpg');
INSERT INTO `engineer` VALUES (13, '20174877', '林杨', 1, '1991-04-22 00:00:00', 3, '福建', '杭州余杭区', '17322861475', 5, 17900, '/static/images/icon/m8.jpg');
INSERT INTO `engineer` VALUES (14, '20170354', '王欣', 1, '1984-06-12 00:00:00', 4, '杭州', '杭州建德区', '17322864768', 10, 19132, '/static/images/icon/m9.jpg');
INSERT INTO `engineer` VALUES (15, '20170756', '叶回', 1, '1984-01-02 00:00:00', 5, '武汉', '杭州桐庐区', '17322884764', 8, 28600, '/static/images/icon/m10.jpg');
INSERT INTO `engineer` VALUES (16, '20171577', '梅宇', 1, '1982-10-22 00:00:00', 3, '北京', '杭州淳安区', '17322458613', 11, 19132, '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES (17, '20174581', '余洋洋', 1, '1986-09-17 00:00:00', 3, '广州', '杭州余杭区', '17322865796', 8, 19900, '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES (18, '20179863', '李玉欣', 0, '1985-12-15 00:00:00', 5, '厦门', '杭州拱墅区', '17322575687', 6, 23500, '/static/images/icon/m15.jpg');
INSERT INTO `engineer` VALUES (19, '20170999', '虞书欣', 1, '1985-12-15 00:00:00', 5, '杭州', '杭州临安区', '17898996566', 16, 30000, '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES (20, '20189999', '许佳琪', 1, '1999-03-05 00:00:00', 5, '舟山', '舟山定海区', '18965664212', 13, 29999, '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES (21, '20198888', '赵小棠', 1, '1982-10-22 00:00:00', 4, '杭州', '杭州拱墅区', '13569998787', 9, 20000, '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES (22, '20165898', '胡饮', 1, '1988-07-12 00:00:00', 4, '舟山', '舟山普陀区', '133206598965', 7, 18888, '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES (23, '20178795', '范闲', 1, '1986-09-17 00:00:00', 3, '北京', '北京东城区', '13588887777', 11, 26666, '/static/images/icon/m10.jpg');
INSERT INTO `engineer` VALUES (24, '20169899', '范思辙', 0, '1988-07-01 00:00:00', 5, '上海', '上海浦东区', '17366669999', 5, 16325, '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES (25, '20178956', '牧尘', 1, '1993-07-23 00:00:00', 3, '杭州', '杭州建德区', '17896544548', 9, 20001, '/static/images/icon/m6.jpg');
INSERT INTO `engineer` VALUES (26, '20189654', '萧炎', 1, '1988-08-25 00:00:00', 4, '武汉', '武汉汉阳区', '17569320123', 8, 19854, '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES (27, '20156589', '林动', 1, '1984-06-30 00:00:00', 5, '北京', '北京西城区', '13898745462', 13, 26478, '/static/images/icon/m4.jpg');
INSERT INTO `engineer` VALUES (28, '20189545', '洛璃', 1, '1983-06-24 00:00:00', 5, '舟山', '舟山岱山县', '16698784512', 7, 16964, '/static/images/icon/m4.jpg');
INSERT INTO `engineer` VALUES (29, '20163210', '赵晓倩', 1, '1986-06-05 00:00:00', 2, '武汉', '武汉青山区', '18965451230', 16, 31321, '/static/images/icon/m2.jpg');
INSERT INTO `engineer` VALUES (30, '20156542', '赵小新', 0, '1982-10-20 00:00:00', 5, '武汉', '武汉汉南区', '13654587852', 1, 9578, '/static/images/icon/m7.jpg');
INSERT INTO `engineer` VALUES (31, '20165457', '九幽', 0, '1991-04-22 00:00:00', 1, '杭州', '杭州下城区', '13545879620', 3, 12012, '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES (32, '20148957', '刘青云', 1, '1986-05-31 00:00:00', 3, '舟山', '舟山岱山县', '13456545872', 8, 22565, '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES (33, '20136595', '刘晓苏', 1, '1986-09-26 00:00:00', 2, '杭州', '杭州萧山区', '13698784520', 10, 25412, '/static/images/icon/m6.jpg');
INSERT INTO `engineer` VALUES (34, '20187845', '欧若拉', 1, '2004-10-20 16:56:02', 3, '武汉', '武汉洪山区', '13564521020', 9, 22451, '/static/images/icon/m9.jpg');
INSERT INTO `engineer` VALUES (35, '20132654', '欧亚辉', 1, '1984-06-25 00:00:00', 4, '杭州', '杭州拱墅区', '13659845521', 4, 14000, '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES (36, '20145652', '蒲珊奇', 1, '1988-07-15 00:00:00', 2, '武汉', '武汉江夏区', '15459878521', 5, 17888, '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES (37, '20136569', '王玉山', 1, '1985-12-17 00:00:00', 3, '厦门', '武汉青山区', '15468745212', 2, 12666, '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES (38, '20188888', '李算起', 1, '1999-03-09 00:00:00', 2, '哈尔滨', '武汉江岸区', '13565656457', 1, 7894, '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES (39, '20145895', '李忘生', 1, '1988-07-18 00:00:00', 4, '天津', '杭州下城区', '16589778412', 1, 9663, '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES (40, '20198785', '邱启云', 1, '1985-12-28 00:00:00', 3, '贵州', '杭州拱墅区', '16545879456', 7, 18952, '/static/images/icon/m4.jpg');
INSERT INTO `engineer` VALUES (41, '20203654', '秋雨', 0, '1986-09-28 00:00:00', 4, '杭州', '杭州淳安区', '15645879562', 12, 34651, '/static/images/icon/m6.jpg');
INSERT INTO `engineer` VALUES (42, '20177777', '秋殇去', 1, '1993-07-31 00:00:00', 3, '内蒙古', '北京西城区', '15879565121', 8, 20000, '/static/images/icon/m9.jpg');
INSERT INTO `engineer` VALUES (43, '20156598', '齐雨薇', 0, '1993-07-19 00:00:00', 2, '杭州', '杭州临安区', '13565879842', 13, 30000, '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES (44, '20189845', '周扬青', 0, '2020-05-24 17:04:42', 3, '厦门', '武汉汉南区', '13264564646', 12, 24512, '/static/images/icon/m4.jpg');
INSERT INTO `engineer` VALUES (45, '20199999', '呈急速', 1, '1986-09-01 00:00:00', 2, '镇江', '杭州下城区', '13565484512', 1, 9545, '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES (46, '20120225', '程素宇', 1, '1988-08-08 00:00:00', 4, '扬州', '武汉青山区', '12354648181', 5, 15644, '/static/images/icon/m4.jpg');
INSERT INTO `engineer` VALUES (47, '20111251', '李武阳', 1, '1988-08-14 00:00:00', 3, '淮安', '淮安淮安区', '12561423513', 1, 10251, '/static/images/icon/m6.jpg');
INSERT INTO `engineer` VALUES (48, '20166555', '李玉王', 1, '1983-06-26 00:00:00', 2, '宿迁', '淮安淮阴区', '15898784512', 10, 20326, '/static/images/icon/m2.jpg');
INSERT INTO `engineer` VALUES (49, '20156589', '李全文', 1, '1993-07-31 00:00:00', 1, '舟山', '杭州临安区', '15645897455', 11, 22261, '/static/images/icon/m9.jpg');
INSERT INTO `engineer` VALUES (50, '20156505', '全是我', 1, '1986-05-25 00:00:00', 2, '内蒙古', '武汉青山区', '12565485123', 8, 20303, '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES (51, '20156945', '全是你', 1, '1985-12-24 00:00:00', 3, '杭州', '杭州淳安区', '13565445125', 3, 10250, '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES (52, '20133646', '卿珊奇', 1, '1983-06-13 00:00:00', 4, '贵州', '武汉青山区', '11548842345', 10, 20302, '/static/images/icon/m9.jpg');
INSERT INTO `engineer` VALUES (53, '20165897', '秦少久', 1, '1986-06-10 00:00:00', 2, '无锡', '武汉江岸区', '13654544113', 2, 10320, '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES (54, '2001644', '陆倩地', 0, '1985-12-28 00:00:00', 5, '无锡', '武汉青山区', '13545264226', 8, 20021, '/static/images/icon/m6.jpg');
INSERT INTO `engineer` VALUES (55, '2015458', '罗三秋', 0, '1991-04-08 00:00:00', 2, '内蒙古', '武汉江岸区', '13546402441', 9, 20156, '/static/images/icon/m2.jpg');
INSERT INTO `engineer` VALUES (56, '2014656', '罗志宇', 1, '1988-06-06 00:00:00', 5, '哈尔滨', '舟山岱山县', '13654655945', 4, 14554, '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES (57, '2018778', '钱素琴', 0, '1986-09-15 00:00:00', 2, '杭州', '杭州萧山区', '13564545122', 5, 15645, '/static/images/icon/m7.jpg');
INSERT INTO `engineer` VALUES (58, '2016564', '卢卡斯', 1, '2004-10-18 16:56:02', 3, '扬州', '北京西城区', '13565451212', 8, 20321, '/static/images/icon/m11.jpg');
INSERT INTO `engineer` VALUES (59, '2016989', '鲁菜色', 1, '1985-12-30 00:00:00', 2, '无锡', '无锡惠山区', '13565984512', 9, 20300, '/static/images/icon/m14.jpg');
INSERT INTO `engineer` VALUES (60, '2019856', '陆千元', 1, '1993-07-19 00:00:00', 3, '镇江', '无锡新吴区', '18985451365', 8, 19561, '/static/images/icon/m6.jpg');
INSERT INTO `engineer` VALUES (64, '20170527', '熊星琼', 1, '1978-11-03 00:00:00', 2, '绍兴', '杭州西湖区', '17322861458', 20, 43800, '/static/images/icon/m3.jpg');
INSERT INTO `engineer` VALUES (66, 'test', 'test', 0, '2007-01-01 00:00:00', 1, 'test', 'test', '123456', 1, 19456, NULL);
COMMIT;

-- ----------------------------
-- Table structure for opeartions
-- ----------------------------
DROP TABLE IF EXISTS `opeartions`;
CREATE TABLE `opeartions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `re_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opeartions
-- ----------------------------
BEGIN;
INSERT INTO `opeartions` VALUES (35, '2020-05-09 13:46:50', '管理员', '增加了编号为test, 名字为test的数据', 1, 94);
INSERT INTO `opeartions` VALUES (36, '2020-05-09 13:47:23', '管理员', '修改了编号为test, 名字为test的数据', 3, 95);
INSERT INTO `opeartions` VALUES (37, '2020-05-09 13:48:00', '管理员', '增加了编号为232, 名字为已被删除的数据的数据', 1, 96);
INSERT INTO `opeartions` VALUES (38, '2020-05-09 13:48:08', '管理员', '删除了编号为232, 名字为已被删除的数据的数据', 2, 97);
COMMIT;

-- ----------------------------
-- Table structure for recovered_engineer
-- ----------------------------
DROP TABLE IF EXISTS `recovered_engineer`;
CREATE TABLE `recovered_engineer` (
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
  `origin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of recovered_engineer
-- ----------------------------
BEGIN;
INSERT INTO `recovered_engineer` VALUES (94, 'test', 'test', 0, '2007-01-01 00:00:00', 1, 'test', 'test', '123456', 1, 12345, NULL, 66);
INSERT INTO `recovered_engineer` VALUES (95, 'test', 'test', 0, '2007-01-01 00:00:00', 1, 'test', 'test', '123456', 1, 12345, NULL, 66);
INSERT INTO `recovered_engineer` VALUES (96, '232', '已被删除的数据', 0, '2007-01-01 00:00:00', 1, 'ew', '23', '17322861234', 1, 32, NULL, 67);
INSERT INTO `recovered_engineer` VALUES (97, '232', '已被删除的数据', 0, '2007-01-01 00:00:00', 1, 'ew', '23', '17322861234', 1, 32, NULL, 67);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
