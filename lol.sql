/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50732
Source Host           : 127.0.0.1:3306
Source Database       : lol

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2021-04-19 18:05:08
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
INSERT INTO `issue` VALUES ('1', 'image/index_image/banner1.jpg', '04-08', '1', 'image/index_image/0(19).jpg', '2019LPL夏季赛赛程公布');
INSERT INTO `issue` VALUES ('2', 'image/index_image/banner2.jpg', '04-08', '1', 'image/index_image/0(19).jpg', '2019LPL夏季赛赛程公布');
INSERT INTO `issue` VALUES ('3', 'image/index_image/banner3.jpg', '04-08', '1', 'image/index_image/0(19).jpg', '2019LPL夏季赛赛程公布');
INSERT INTO `issue` VALUES ('4', 'image/index_image/banner4.jpg', '04-08', '0', 'image/index_image/0(19).jpg', '2019LPL夏季赛赛程公布');
INSERT INTO `issue` VALUES ('5', 'image/index_image/banner5.jpg', '04-08', '0', 'image/index_image/0(19).jpg', '2019LPL夏季赛赛程公布');
INSERT INTO `issue` VALUES ('6', 'image/index_image/banner1.jpg', '04-08', '1', 'image/index_image/0(19).jpg', '2019LPL夏季赛赛程公布');

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
INSERT INTO `link` VALUES ('1', '在线客服');
INSERT INTO `link` VALUES ('2', '秩序殿堂');
INSERT INTO `link` VALUES ('3', '游戏资料');

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
INSERT INTO `newhero` VALUES ('1', 'image/index_image/free1.png');
INSERT INTO `newhero` VALUES ('2', 'image/index_image/free1.png');
INSERT INTO `newhero` VALUES ('3', 'image/index_image/free2.png');
INSERT INTO `newhero` VALUES ('4', 'image/index_image/free3.png');
INSERT INTO `newhero` VALUES ('5', 'image/index_image/free4.png');
INSERT INTO `newhero` VALUES ('6', 'image/index_image/free5.png');
INSERT INTO `newhero` VALUES ('7', 'image/index_image/free6.png');
INSERT INTO `newhero` VALUES ('8', 'image/index_image/free7.png');
INSERT INTO `newhero` VALUES ('9', 'image/index_image/free8.png');
INSERT INTO `newhero` VALUES ('10', 'image/index_image/free9.png');
INSERT INTO `newhero` VALUES ('11', 'image/index_image/free10.png');
INSERT INTO `newhero` VALUES ('12', 'image/index_image/free11.png');
INSERT INTO `newhero` VALUES ('13', 'image/index_image/free12.png');
INSERT INTO `newhero` VALUES ('14', 'image/index_image/free13.png');

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
INSERT INTO `newskin` VALUES ('1', 'image/index_image/champion2.jpg', '我们的冠军皮肤');
INSERT INTO `newskin` VALUES ('2', 'image/index_image/champion2.jpg', '我们的冠军皮肤');
INSERT INTO `newskin` VALUES ('3', 'image/index_image/champion2.jpg', '我们的冠军皮肤');
INSERT INTO `newskin` VALUES ('4', 'image/index_image/champion2.jpg', '我们的冠军皮肤');
INSERT INTO `newskin` VALUES ('5', 'image/index_image/champion2.jpg', '我们的冠军皮肤');
INSERT INTO `newskin` VALUES ('6', 'image/index_image/champion2.jpg', '我们的冠军皮肤');
INSERT INTO `newskin` VALUES ('7', 'image/index_image/champion2.jpg', '我们的冠军皮肤');
INSERT INTO `newskin` VALUES ('8', 'image/index_image/champion2.jpg', '我们的冠军皮肤');
INSERT INTO `newskin` VALUES ('9', 'image/index_image/champion2.jpg', '我们的冠军皮肤');
INSERT INTO `newskin` VALUES ('10', 'image/index_image/champion2.jpg', '我们的冠军皮肤');
INSERT INTO `newskin` VALUES ('11', 'image/index_image/champion2.jpg', '我们的冠军皮肤');
INSERT INTO `newskin` VALUES ('12', 'image/index_image/champion2.jpg', '我们的冠军皮肤');
INSERT INTO `newskin` VALUES ('13', 'image/index_image/champion2.jpg', '我们的冠军皮肤');
INSERT INTO `newskin` VALUES ('14', 'image/index_image/champion2.jpg', '我们的冠军皮肤');

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
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `avater` varchar(255) DEFAULT NULL,
  `motto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123@123.com', 'Larry', '123456', '', '男', '0', null, '');
INSERT INTO `user` VALUES ('2', '12323@qq.com', 'qwerty', 'qwerty', '110', null, null, null, null);
INSERT INTO `user` VALUES ('9', '444@11.com', '635434', '444444', '132622253434', null, null, null, null);
INSERT INTO `user` VALUES ('10', '444@11.com', '635434', '444444', '132622253434', null, null, null, null);
INSERT INTO `user` VALUES ('11', '123@dd.cc', '131', '12345623', '12312', '男', '1', null, '123123123');

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
INSERT INTO `video` VALUES ('1', 'image/index_image/258(3).jpg', '试炼2019为荣誉而战', '234', '04-08');
INSERT INTO `video` VALUES ('2', 'image/index_image/258(3).jpg', '试炼2019为荣誉而战', '434', '04-08');
INSERT INTO `video` VALUES ('3', 'image/index_image/258(3).jpg', '试炼2019为荣誉而战', '543', '04-08');
INSERT INTO `video` VALUES ('4', 'image/index_image/258(3).jpg', '试炼2019为荣誉而战', '234', '04-08');
INSERT INTO `video` VALUES ('5', 'image/index_image/258(3).jpg', '试炼2019为荣誉而战', '8', '04-08');
INSERT INTO `video` VALUES ('6', 'image/index_image/258(3).jpg', '试炼2019为荣誉而战', '67', '04-08');
INSERT INTO `video` VALUES ('7', 'image/index_image/258(3).jpg', '试炼2019为荣誉而战', '45', '04-08');
INSERT INTO `video` VALUES ('8', 'image/index_image/258(3).jpg', '试炼2019为荣誉而战', '23', '04-08');
