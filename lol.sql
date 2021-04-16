/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50732
Source Host           : 127.0.0.1:3306
Source Database       : lol

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2021-04-14 18:41:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `title1` varchar(255) DEFAULT NULL,
  `title2` varchar(255) DEFAULT NULL,
  `body1` varchar(255) DEFAULT NULL,
  `body2` varchar(255) DEFAULT NULL,
  `body3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', 'image/index_image/actlist1.jpg', 'LPL春季賽售票開啓', '83天后結束', '季中英雄大禮', '試煉2019爲榮譽而戰', '2019-05-04 - 2019-09-01');
INSERT INTO `activity` VALUES ('2', 'image/index_image/actlist1.jpg', '試煉法球限時銷售', '83天后结束', '試煉法球限時銷售', '試煉2019爲榮譽而戰', '2019-05-04 - 2019-09-01');
INSERT INTO `activity` VALUES ('3', 'image/index_image/actlist1.jpg', 'iG大禮包限時售賣', '83天后结束', 'iG大禮包限時售賣', '試煉2019爲榮譽而戰', '2019-05-04 - 2019-09-01');
INSERT INTO `activity` VALUES ('4', 'image/index_image/actlist1.jpg', '集MSI明星選手卡', '83天后结束', '集MSI明星選手卡', '試煉2019爲榮譽而戰', '2019-05-04 - 2019-09-01');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', 'image/index_image/banner1.jpg');
INSERT INTO `banner` VALUES ('2', 'image/index_image/banner2.jpg');
INSERT INTO `banner` VALUES ('3', 'image/index_image/banner3.jpg');
INSERT INTO `banner` VALUES ('4', 'image/index_image/banner4.jpg');
INSERT INTO `banner` VALUES ('5', 'image/index_image/banner5.jpg');

-- ----------------------------
-- Table structure for competition
-- ----------------------------
DROP TABLE IF EXISTS `competition`;
CREATE TABLE `competition` (
  `id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `datetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of competition
-- ----------------------------
INSERT INTO `competition` VALUES ('1', '#', '2019LPL夏季賽賽程公佈', '04-08');
INSERT INTO `competition` VALUES ('2', '#', '2019LPL夏季賽賽程公佈', '04-08');
INSERT INTO `competition` VALUES ('3', '#', '2019LPL夏季賽賽程公佈', '04-08');
INSERT INTO `competition` VALUES ('4', '#', '2019LPL夏季賽賽程公佈', '04-08');
INSERT INTO `competition` VALUES ('5', '#', '2019LPL夏季賽賽程公佈', '04-08');
INSERT INTO `competition` VALUES ('6', '#', '2019LPL夏季賽賽程公佈', '04-08');
INSERT INTO `competition` VALUES ('7', '#', '2019LPL夏季賽賽程公佈', '04-08');
INSERT INTO `competition` VALUES ('8', '#', '2019LPL夏季賽賽程公佈', '04-08');

-- ----------------------------
-- Table structure for issue
-- ----------------------------
DROP TABLE IF EXISTS `issue`;
CREATE TABLE `issue` (
  `id` int(11) NOT NULL,
  `name_img` varchar(255) DEFAULT NULL,
  `datetime` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `author_img` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of issue
-- ----------------------------

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of link
-- ----------------------------

-- ----------------------------
-- Table structure for newhero
-- ----------------------------
DROP TABLE IF EXISTS `newhero`;
CREATE TABLE `newhero` (
  `id` int(11) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of newhero
-- ----------------------------

-- ----------------------------
-- Table structure for newskin
-- ----------------------------
DROP TABLE IF EXISTS `newskin`;
CREATE TABLE `newskin` (
  `id` int(11) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of newskin
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `datetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '#', '全場半價客戶端商城入口恢復公告', '04-08');
INSERT INTO `notice` VALUES ('2', '#', '全場半價客戶端商城入口恢復公告', '04-08');
INSERT INTO `notice` VALUES ('3', '#', '全場半價客戶端商城入口恢復公告', '04-08');
INSERT INTO `notice` VALUES ('4', '#', '全場半價客戶端商城入口恢復公告', '04-08');
INSERT INTO `notice` VALUES ('5', '#', '全場半價客戶端商城入口恢復公告', '04-08');
INSERT INTO `notice` VALUES ('6', '#', '全場半價客戶端商城入口恢復公告', '04-08');
INSERT INTO `notice` VALUES ('7', '#', '全場半價客戶端商城入口恢復公告', '04-08');
INSERT INTO `notice` VALUES ('8', '#', '全场半价客户端商城入口恢复公告', '04-08');

-- ----------------------------
-- Table structure for psp
-- ----------------------------
DROP TABLE IF EXISTS `psp`;
CREATE TABLE `psp` (
  `id` int(11) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of psp
-- ----------------------------
INSERT INTO `psp` VALUES ('1', '/image/psp_image/Thresh.png');
INSERT INTO `psp` VALUES ('2', 'image/psp_image/LeeSin.png');
INSERT INTO `psp` VALUES ('3', 'image/psp_image/LeeSin.png');
INSERT INTO `psp` VALUES ('4', 'image/psp_image/LeeSin.png');
INSERT INTO `psp` VALUES ('5', 'image/psp_image/LeeSin.png');
INSERT INTO `psp` VALUES ('6', 'image/psp_image/LeeSin.png');
INSERT INTO `psp` VALUES ('7', 'image/psp_image/LeeSin.png');

-- ----------------------------
-- Table structure for tophero
-- ----------------------------
DROP TABLE IF EXISTS `tophero`;
CREATE TABLE `tophero` (
  `id` int(11) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `heroname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tophero
-- ----------------------------
INSERT INTO `tophero` VALUES ('1', 'image/psp_image/Darius.png', '諾克薩斯之手');
INSERT INTO `tophero` VALUES ('2', 'image/psp_image/Darius.png', '諾克薩斯之手');
INSERT INTO `tophero` VALUES ('3', 'image/psp_image/Darius.png', '諾克薩斯之手');
INSERT INTO `tophero` VALUES ('4', 'image/psp_image/Darius.png', '諾克薩斯之手');
INSERT INTO `tophero` VALUES ('5', 'image/psp_image/Darius.png', '諾克薩斯之手');
INSERT INTO `tophero` VALUES ('6', 'image/psp_image/Darius.png', '諾克薩斯之手');
INSERT INTO `tophero` VALUES ('7', 'image/psp_image/Darius.png', '諾克薩斯之手');
INSERT INTO `tophero` VALUES ('8', 'image/psp_image/Darius.png', '諾克薩斯之手');
INSERT INTO `tophero` VALUES ('9', 'image/psp_image/Darius.png', '諾克薩斯之手');
INSERT INTO `tophero` VALUES ('10', 'image/psp_image/Darius.png', '諾克薩斯之手');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `datetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of video
-- ----------------------------
