/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : graduationdesign

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-05-23 16:39:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `a_id` varchar(30) NOT NULL,
  `a_pwd` varchar(16) NOT NULL,
  `a_name` varchar(10) NOT NULL,
  `a_gender` varchar(2) NOT NULL,
  `a_phone` bigint(11) DEFAULT NULL,
  `a_mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('2015111000', '123456', '刘思林', '男', '13411114444', 'admin@mail.com');
INSERT INTO `admin` VALUES ('2015111001', '123456', '刘思林2', '男', '13411110001', 'admin@mail.com');
INSERT INTO `admin` VALUES ('2015111003', '123456', '刘思林3', '男', '13411110003', '0003@mail.com');
INSERT INTO `admin` VALUES ('2015111004', '123456', '李莉', '女', '13411110004', '0004@mail.com');
INSERT INTO `admin` VALUES ('2015111005', '123456', '李莉1', '女', '13411110005', '0005@mail.com');

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement` (
  `id` varchar(36) NOT NULL,
  `admin_id` varchar(30) NOT NULL,
  `admin_name` varchar(10) NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES ('3929cbb57d3611e9a1c1e86a647a1b24', '123456', '李莉', '这是公告标题！', '这是公告内容！');

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `collegeId` int(2) NOT NULL,
  `college` varchar(30) NOT NULL,
  PRIMARY KEY (`collegeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('1', '马克思主义学院');
INSERT INTO `college` VALUES ('2', '政法学院');
INSERT INTO `college` VALUES ('3', '教育学院');
INSERT INTO `college` VALUES ('4', '体育学院');
INSERT INTO `college` VALUES ('5', '文学与传媒学院');
INSERT INTO `college` VALUES ('6', '外国语学院');
INSERT INTO `college` VALUES ('7', '数学与统计学院');
INSERT INTO `college` VALUES ('8', '物理与电子工程学院');
INSERT INTO `college` VALUES ('9', '计算机工程学院');
INSERT INTO `college` VALUES ('10', '汽车与交通工程学院');
INSERT INTO `college` VALUES ('11', '机械工程学院');
INSERT INTO `college` VALUES ('12', '土木工程与建筑学院');
INSERT INTO `college` VALUES ('13', '食品科学技术学院·化学工程学院');
INSERT INTO `college` VALUES ('14', '医学院');
INSERT INTO `college` VALUES ('15', '资源环境与旅游学院');
INSERT INTO `college` VALUES ('16', '经济管理学院');
INSERT INTO `college` VALUES ('17', '美术学院');
INSERT INTO `college` VALUES ('18', '音乐与舞蹈学院');

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `collegeId` int(2) NOT NULL,
  `majorId` int(2) NOT NULL,
  `major` varchar(30) NOT NULL,
  PRIMARY KEY (`collegeId`,`majorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES ('1', '1', '马克思主义学');
INSERT INTO `major` VALUES ('2', '1', '法学');
INSERT INTO `major` VALUES ('2', '2', '社会工作学');
INSERT INTO `major` VALUES ('3', '1', '教育技术学');
INSERT INTO `major` VALUES ('3', '2', '学前教育学');
INSERT INTO `major` VALUES ('4', '1', '体育教育');
INSERT INTO `major` VALUES ('4', '2', '社会体育指导与管理');
INSERT INTO `major` VALUES ('5', '1', '广播电视编导');
INSERT INTO `major` VALUES ('5', '2', '广播电视学');
INSERT INTO `major` VALUES ('5', '3', '汉语言文学');
INSERT INTO `major` VALUES ('6', '1', '日语');
INSERT INTO `major` VALUES ('6', '2', '英语');
INSERT INTO `major` VALUES ('7', '1', '数学与应用数学');
INSERT INTO `major` VALUES ('8', '1', '电子信息工程');
INSERT INTO `major` VALUES ('8', '2', '电子信息科学与技术');
INSERT INTO `major` VALUES ('8', '3', '电子信息科学与技术(专升本)');
INSERT INTO `major` VALUES ('8', '4', '通信工程');
INSERT INTO `major` VALUES ('8', '5', '物理学');
INSERT INTO `major` VALUES ('9', '1', '计算机科学与技术');
INSERT INTO `major` VALUES ('9', '2', '软件工程');
INSERT INTO `major` VALUES ('9', '3', '物联网工程');
INSERT INTO `major` VALUES ('10', '1', '车辆工程');
INSERT INTO `major` VALUES ('10', '2', '汽车服务工程');
INSERT INTO `major` VALUES ('10', '3', '自动化');
INSERT INTO `major` VALUES ('11', '1', '工业工程');
INSERT INTO `major` VALUES ('11', '2', '机械设计制造及其自动化');
INSERT INTO `major` VALUES ('11', '3', '机械设计制造及其自动化(高端装备)');
INSERT INTO `major` VALUES ('11', '4', '机械设计制造及其自动化(中外合作办学)');
INSERT INTO `major` VALUES ('11', '5', '机械设计制造及其自动化(专升本)');
INSERT INTO `major` VALUES ('12', '1', '工程管理');
INSERT INTO `major` VALUES ('12', '2', '工程管理(专升本)');
INSERT INTO `major` VALUES ('12', '3', '工程造价');
INSERT INTO `major` VALUES ('12', '4', '建筑学');
INSERT INTO `major` VALUES ('12', '5', '土木工程');
INSERT INTO `major` VALUES ('13', '1', '化学工程与工艺');
INSERT INTO `major` VALUES ('13', '2', '化学工程与工艺(专升本)');
INSERT INTO `major` VALUES ('13', '3', '食品科学与工程');
INSERT INTO `major` VALUES ('13', '4', '食品科学与工程类');
INSERT INTO `major` VALUES ('13', '5', '食品质量与安全');
INSERT INTO `major` VALUES ('14', '1', '护理学');
INSERT INTO `major` VALUES ('14', '2', '临床医学');
INSERT INTO `major` VALUES ('15', '1', '地理科学');
INSERT INTO `major` VALUES ('15', '2', '旅游管理');
INSERT INTO `major` VALUES ('15', '3', '旅游管理(专升本)');
INSERT INTO `major` VALUES ('16', '1', '财务管理');
INSERT INTO `major` VALUES ('16', '2', '工商企业管理');
INSERT INTO `major` VALUES ('16', '3', '国际经济与贸易');
INSERT INTO `major` VALUES ('16', '4', '国际经济与贸易(专升本)');
INSERT INTO `major` VALUES ('16', '5', '市场营销');
INSERT INTO `major` VALUES ('16', '6', '市场营销(专升本)');
INSERT INTO `major` VALUES ('16', '7', '物流管理');
INSERT INTO `major` VALUES ('17', '1', '环境设计');
INSERT INTO `major` VALUES ('17', '2', '绘画');
INSERT INTO `major` VALUES ('17', '3', '设计学类');
INSERT INTO `major` VALUES ('17', '4', '视觉传达设计');
INSERT INTO `major` VALUES ('18', '1', '舞蹈表演');
INSERT INTO `major` VALUES ('18', '2', '音乐表演');
INSERT INTO `major` VALUES ('18', '3', '音乐学');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `p_id` int(10) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `p_leader_user` int(10) NOT NULL,
  `p_leader_name` varchar(10) NOT NULL,
  `p_member` varchar(50) DEFAULT NULL,
  `p_tutor_user` int(10) NOT NULL,
  `p_tutor_name` varchar(10) NOT NULL,
  `p_time` varchar(30) NOT NULL,
  `p_funding` varchar(10) NOT NULL,
  `p_approval` varchar(10) NOT NULL,
  `p_Aapplication` mediumblob,
  `p_Mdocument` mediumblob,
  `p_Capplication` mediumblob,
  `p_over` varchar(10) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `s_id` int(10) NOT NULL,
  `s_pwd` varchar(16) NOT NULL,
  `s_name` varchar(10) NOT NULL,
  `s_gender` varchar(2) NOT NULL,
  `s_collegeId` int(2) NOT NULL,
  `s_majorId` int(2) NOT NULL,
  `s_tutorId` int(10) DEFAULT NULL,
  `s_tutorName` varchar(10) DEFAULT NULL,
  `s_phone` bigint(11) DEFAULT NULL,
  `s_mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('21', '000', '21312', '男', '1', '1', null, null, '13441142344', 'sd@qq.com');
INSERT INTO `student` VALUES ('31', '000', '231', '男', '1', '1', null, null, '13441513412', 'rew@cv.com');
INSERT INTO `student` VALUES ('2010150155', '000000', '233', '男', '1', '1', null, null, '13441454254', '00@g.com');
INSERT INTO `student` VALUES ('2015108101', '000000', '01', '男', '1', '1', null, null, '13774185353', 'j@vb.com');
INSERT INTO `student` VALUES ('2015108102', '000000', '21312', '男', '1', '1', null, null, '13447645211', 'gfd@bnb.com');
INSERT INTO `student` VALUES ('2015108103', '000000', '21321', '男', '1', '1', null, null, '13774185353', 'gfd@cgxx.com');
INSERT INTO `student` VALUES ('2015108104', '000000', '321321', '男', '1', '1', null, null, '13774185353', 'asd@b.com');
INSERT INTO `student` VALUES ('2015108105', '000000', '111', '男', '1', '1', null, null, '13774185353', 'sde@dfs.com');
INSERT INTO `student` VALUES ('2015108106', '000000', '21312', '男', '1', '1', null, null, '13114185353', '112@d.com');
INSERT INTO `student` VALUES ('2015108110', '000000', '21', '男', '1', '1', null, null, '13774345312', 'dsdf@vcb.com');
INSERT INTO `student` VALUES ('2015108120', '000000', '21', '男', '1', '1', null, null, '13774345312', 'dsdf@vcb.com');
INSERT INTO `student` VALUES ('2015108154', '000000', '212', '男', '1', '1', null, null, '13774185353', 'dsf@mn.com');
INSERT INTO `student` VALUES ('2015108155', '000000', '234', '男', '1', '1', null, null, '1424524231', 'weq@qq.com');
INSERT INTO `student` VALUES ('2015111111', '111111', '李莉', '女', '4', '2', null, null, '13411111111', '111@qq.com');
INSERT INTO `student` VALUES ('2015111222', '123456', '张三', '男', '3', '1', null, null, '13411112222', 'admin@mail.com');
INSERT INTO `student` VALUES ('2015111333', '46423', '李四', '男', '3', '2', null, null, '13911112222', 'admin2@mail.com');
INSERT INTO `student` VALUES ('2015111444', '1234567', '李雷', '男', '3', '1', null, null, '13411114444', 'admin@mail.com');
INSERT INTO `student` VALUES ('2015111555', '123456', '韩梅梅', '女', '2', '1', null, null, '13411115555', '123@qq.com');
INSERT INTO `student` VALUES ('2015111666', '111666', '赵丽', '女', '6', '1', null, null, '13411116666', '11166@qq.com');
INSERT INTO `student` VALUES ('2015412111', '000000', '21313', '男', '1', '1', null, null, '1311553121', 'gh@gfd.com');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `t_id` int(10) NOT NULL,
  `t_pwd` varchar(16) NOT NULL,
  `t_name` varchar(10) NOT NULL,
  `t_gender` varchar(2) NOT NULL,
  `t_collegeId` int(2) NOT NULL,
  `t_majorId` int(2) NOT NULL,
  `t_phone` bigint(11) DEFAULT NULL,
  `t_mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('2015111000', '123456', '童雷', '男', '3', '1', '13411110000', '123456@qq.com');
INSERT INTO `teacher` VALUES ('2015111001', '123456', '肖凡', '男', '3', '1', '13411110001', '123456@qq.com');
INSERT INTO `teacher` VALUES ('2015111002', '123456', '单玉刚', '男', '3', '1', '13411110002', '12345@qq.com');
INSERT INTO `teacher` VALUES ('2015111003', '123456', '杨芳', '女', '3', '1', '13411110003', '0003@qq.com');
INSERT INTO `teacher` VALUES ('2015111004', '123456', '赵丽', '女', '5', '2', '13411110004', '0004@qq.com');
