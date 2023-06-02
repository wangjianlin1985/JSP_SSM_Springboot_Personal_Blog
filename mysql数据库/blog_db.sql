/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : blog_db

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2018-07-17 14:24:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL default '',
  `password` varchar(32) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('a', 'a');

-- ----------------------------
-- Table structure for `t_blog`
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `blogId` int(11) NOT NULL auto_increment COMMENT '博客id',
  `blogClassObj` int(11) NOT NULL COMMENT '博客分类',
  `title` varchar(80) NOT NULL COMMENT '博客标题',
  `blogPhoto` varchar(60) NOT NULL COMMENT '博客图片',
  `content` varchar(5000) NOT NULL COMMENT '博客内容',
  `hitNum` int(11) NOT NULL COMMENT '浏览量',
  `userObj` varchar(30) NOT NULL COMMENT '发布用户',
  `addTime` varchar(20) default NULL COMMENT '发布时间',
  `shzt` varchar(20) NOT NULL COMMENT '审核状态',
  PRIMARY KEY  (`blogId`),
  KEY `blogClassObj` (`blogClassObj`),
  KEY `userObj` (`userObj`),
  CONSTRAINT `t_blog_ibfk_1` FOREIGN KEY (`blogClassObj`) REFERENCES `t_blogclass` (`blogClassId`),
  CONSTRAINT `t_blog_ibfk_2` FOREIGN KEY (`userObj`) REFERENCES `t_userinfo` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES ('1', '1', '《极限挑战4》将播，六大成员现状PK谁是赢家', 'upload/996f313d-e2f5-4f7e-bc02-4d7f21e11f2a.jpg', '<p style=\"margin-top: 0px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; color: rgb(50, 62, 50); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, SimSun; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(220, 236, 204);\"><span style=\"word-wrap: normal; word-break: normal; line-height: 21px; font-family: 微软雅黑;\"><span style=\"\">《极限挑战》第四季即将播出，黄磊、孙红雷、黄渤、罗志祥、张艺兴、王迅六大成员欢乐重聚，令观众期待满满。</span></span><span style=\"word-wrap: normal; word-break: normal; line-height: 27px; font-size: 18px; font-family: 微软雅黑; text-indent: 2em;\">&nbsp;</span></p><p style=\"margin-top: 0px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 21px; color: rgb(50, 62, 50); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, SimSun; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(220, 236, 204);\"><span style=\"word-wrap: normal; word-break: normal; line-height: 21px; font-family: 微软雅黑;\"><span style=\"\">众所周知，《极限挑战》于2015年首播，无论收视率还是口碑均领先其它真人秀，六位明星也因此圈粉无数，事业一路走高，下面一床情书不妨来扒扒六大明星之生存现状吧。</span></span></p><p><br/></p>', '12', 'user1', '2018-03-30 14:35:04', '已审核');
INSERT INTO `t_blog` VALUES ('2', '1', '谢霆锋周杰伦！《新歌声》能破七年之痒吗', 'upload/205dd61a-552e-4486-8144-d13c377fff5a.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp;2月28日，浙江卫视春推会举行，相关负责人在会上透露新一季《中国新歌声》将在浙江卫视2018年第三季度每周五晚21点播出。随后，灿星宣传总监陆伟在朋友圈发文称“浙江卫视《2018中国新歌声》全新导师阵容揭秘：周杰伦、谢霆锋、李健三位导师已确认加盟！还有第四位神秘大咖导师，敬请期待！”</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, SimSun, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp;这是《新歌声》对导师阵容改造动静最大的一次，此前尽管每一季导师阵容不断有调整，但很少一次性换上两位重量级导师，而让人略感意外的是，除了之前宣布退场的六年导师那英之外，上一季的陈奕迅、刘欢暂时也都没有在官宣阵容之列。</span></p>', '3', 'user1', '2018-04-05 14:36:41', '已审核');
INSERT INTO `t_blog` VALUES ('3', '2', '这样的荷兰配不上世界杯 更配不上玩命的罗本', 'upload/b7fc54bb-7761-4168-92d9-82e9f380b47e.jpg', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px 0px 10px; border: 0px; list-style: none; text-indent: 2em; word-wrap: normal; word-break: normal; line-height: 24px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"word-wrap: normal; word-break: normal; line-height: 24px;\">在日益寒冷的欧洲冬天，70岁的老帅艾德沃卡特随着比赛的进行，不断向上拉着大衣的拉链，抵御内心的寒冷。艾德沃卡特已经老了，他已经都不会算净胜球了，之前打法国10打11且落后的情况下，还要大举进攻，结果被法国人干了个4-0。在瑞典打卢森堡前，更是豪言瑞典不会打卢森堡8-0，结果事实啪啪打脸之余，自己的球队在白俄罗斯又只能艰难只赢2个。难道他不知道世界杯同分首先要算净胜球的吗？艾德沃卡特的一系列指挥，让我想起了04年那个同样也不会算进球数的阿里汉，也是一个荷兰人。</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px 0px 10px; border: 0px; list-style: none; text-indent: 2em; word-wrap: normal; word-break: normal; line-height: 24px; color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"word-wrap: normal; word-break: normal; line-height: 24px;\">现在罗本的身边，举目四望，没有一个队友能够配得上他。雷打不动的主力中锋扬森，这是我见过最烂的一个荷兰中锋，停球能停出3米外的扬森，在热刺就是绝对的水货，最终也被波切蒂诺忙不迭地送走。但就是这样一位技术粗糙，跑位也不行，做球射门技术更烂的扬森，居然坐稳了荷兰主力中锋的位置，好嘛，这是在中超都不要的外援好吗？就是这么一货，居然还在比赛时忙着怼罗本，也不愿意积极参与回防。对了，补充一下，扬森可是荷甲金靴，可见如今的荷甲水平差到什么样的地步了。</span></p><p><br/></p>', '0', 'user1', '2018-04-05 16:38:46', '已审核');
INSERT INTO `t_blog` VALUES ('4', '2', '梅西封神，阿根廷需要的比神还多', 'upload/951fb92d-e0ed-474d-bfb7-028c0a5a7dd9.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">&nbsp; 这一个凌晨，围绕俄罗斯世界杯的巨星悬念解除，C罗的葡萄牙和梅西的阿根廷，直接晋级，划时代的两大巨星，都将随各自国家队征战世界杯</span></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><br/></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp;葡萄牙最后一战打败瑞士，更顺理成章，大多注意力，关心的是攀上高原对阵厄瓜多尔的阿根廷，以及南美预选赛，直到最后一轮仍然只有巴西一支球队提前出线的乱局。没想到这样一个凌晨，梅西的帽子戏法，让阿根廷直接出线，反倒是在其他赛场不断传出新闻：近两届美洲杯冠军智利在巴西客场惨败，折戟世预赛；中北美的美国，主场不敌特立尼达和多巴哥，连附加赛的名额都没能争到。</span></p>', '9', 'user2', '2018-04-05 16:41:06', '已审核');
INSERT INTO `t_blog` VALUES ('5', '4', '西红柿鸡蛋拌面吃不够的家常好味道', 'upload/3de490b6-0d5f-4984-9c97-618476677791.jpg', '<p style=\"margin-top: 0px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 23pt; color: rgb(50, 62, 50); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, SimSun; font-size: 14px; white-space: normal; background-color: rgb(217, 229, 190);\"><span style=\"\"><span style=\"word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体;\">&nbsp; &nbsp; 什么叫家常饭菜？家常饭菜就是利用常见的普通食材烹制的日常食用的饭菜。使用的调料也是常见的油盐酱醋，葱姜蒜，花椒八角桂皮之类的。特点是：用料简单，操作简便，</span><span style=\"word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体;\">口耳相传且</span><span style=\"word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体;\">好吃忘不掉的饭菜。</span></span></p><p style=\"margin-top: 0px; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 23pt; color: rgb(50, 62, 50); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, SimSun; font-size: 14px; white-space: normal; background-color: rgb(217, 229, 190);\"><span style=\"\"><span style=\"word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体;\">&nbsp;&nbsp;</span>&nbsp;<span style=\"word-wrap: normal; word-break: normal; line-height: 24px; font-family: 宋体;\">“西红柿鸡蛋拌面”就是一款饭菜合一的家常饭菜。别看用料做法简单，味道却不简单。这是我们隔三差五经常吃的饭菜，不只是因为做法简单口感好，关键是营养健康。</span></span></p><p style=\"margin: 0cm 0cm 0.0001pt; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 23pt; color: rgb(50, 62, 50); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, SimSun; font-size: 14px; white-space: normal; text-align: justify; text-indent: 24pt; background: white;\"><span style=\"\">西红柿是公认的健康食品，“具有抗氧化成分的番茄红素，已被证实能减少动脉阻塞，降低患心血管疾病的机会。”特别是老年人经常吃些西红柿对保健身体还是很有好处的！</span></p><p style=\"margin: 0cm 0cm 0.0001pt; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 23pt; color: rgb(50, 62, 50); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, SimSun; font-size: 14px; white-space: normal; text-align: justify; text-indent: 24pt; background: white;\"><span style=\"\">不要小瞧“西红柿鸡蛋拌面”的简单做法，我敢肯定每个人做出来的味道是不一样的，因为家常饭菜更需要烹制小技巧。</span></p><p style=\"margin: 0cm 0cm 0.0001pt; padding: 0px; border: 0px; list-style: none; word-wrap: normal; word-break: normal; line-height: 23pt; color: rgb(50, 62, 50); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, SimSun; font-size: 14px; white-space: normal; text-align: justify; text-indent: 24pt; background: white;\"><span style=\"\">做饭需要用心，用心才能做出让家人吃不够的家常饭</span></p><p><br/></p>', '23', 'user1', '2018-04-05 16:43:19', '已审核');
INSERT INTO `t_blog` VALUES ('6', '4', '黄豆焖猪蹄一锅满满香浓的胶质蛋白', 'upload/a083bbfc-84b0-40d8-8e5a-ccedcb223fc0.jpg', '<p><span style=\"color: rgb(50, 62, 50); font-family: 宋体; font-size: 20px; background-color: rgb(255, 255, 255);\">女人爱美，那是天性，每天面膜，护肤品那叫外在的调理。平时也得注意内在的调理！黄豆营养全面，其含有的大豆蛋白含量高，质量还好！其营养可以和蛋、奶媲美！而且大豆中还含有很高的大豆异黄酮，这一一种结构与雌激素相似，具有雌激素活性的植物性雌激素，能延迟女性细胞衰老、使皮肤保持弹性、养颜！而且能美白肌肤！延缓缓解更年期综合征，所以广大女性朋友应该经常吃些黄豆制品。 &nbsp;</span><span style=\"color: rgb(50, 62, 50); font-family: 宋体; font-size: 20px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;</span><span style=\"color: rgb(50, 62, 50); font-family: 宋体; font-size: 20px; background-color: rgb(255, 255, 255);\">猪蹄就更不用说了，富有丰富的胶原蛋白，脂肪含量相对还低，是美容养颜的佳品！黄豆和猪蹄一起烧，黄豆软糯，吸收了肉得香气，不但好吃，而且对女性好处多多！所以爱美的女神们，行动起来吧！做一道成本又低，又好吃，又美容的黄豆烧猪蹄吧！</span><br/></p>', '15', 'user1', '2018-04-05 16:44:20', '已审核');

-- ----------------------------
-- Table structure for `t_blogclass`
-- ----------------------------
DROP TABLE IF EXISTS `t_blogclass`;
CREATE TABLE `t_blogclass` (
  `blogClassId` int(11) NOT NULL auto_increment COMMENT '博客分类id',
  `blogClassName` varchar(20) NOT NULL COMMENT '博客分类名称',
  `blogClassDesc` varchar(800) NOT NULL COMMENT '博客分类介绍',
  PRIMARY KEY  (`blogClassId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_blogclass
-- ----------------------------
INSERT INTO `t_blogclass` VALUES ('1', '娱乐', '娱乐类，娱乐类');
INSERT INTO `t_blogclass` VALUES ('2', '体育', '体育类，娱乐类');
INSERT INTO `t_blogclass` VALUES ('3', '女性', '女性类');
INSERT INTO `t_blogclass` VALUES ('4', '美食', '美食类');
INSERT INTO `t_blogclass` VALUES ('5', '设计', '设计类');
INSERT INTO `t_blogclass` VALUES ('6', '时尚', '时尚类');
INSERT INTO `t_blogclass` VALUES ('7', '其他', '其他类');

-- ----------------------------
-- Table structure for `t_comment`
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `commentId` int(11) NOT NULL auto_increment COMMENT '回复id',
  `blogObj` int(11) NOT NULL COMMENT '被评博客',
  `content` varchar(2000) NOT NULL COMMENT '评论内容',
  `userObj` varchar(30) NOT NULL COMMENT '评论人',
  `commentTime` varchar(20) default NULL COMMENT '评论时间',
  PRIMARY KEY  (`commentId`),
  KEY `blogObj` (`blogObj`),
  KEY `userObj` (`userObj`),
  CONSTRAINT `t_comment_ibfk_1` FOREIGN KEY (`blogObj`) REFERENCES `t_blog` (`blogId`),
  CONSTRAINT `t_comment_ibfk_2` FOREIGN KEY (`userObj`) REFERENCES `t_userinfo` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('1', '1', '很期待观看！', 'user1', '2018-03-30 14:35:48');
INSERT INTO `t_comment` VALUES ('3', '1', '我也想看这个！', 'user2', '2018-04-05 16:59:41');

-- ----------------------------
-- Table structure for `t_leaveword`
-- ----------------------------
DROP TABLE IF EXISTS `t_leaveword`;
CREATE TABLE `t_leaveword` (
  `leaveWordId` int(11) NOT NULL auto_increment COMMENT '留言id',
  `leaveTitle` varchar(80) NOT NULL COMMENT '留言标题',
  `leaveContent` varchar(2000) NOT NULL COMMENT '留言内容',
  `userObj` varchar(30) NOT NULL COMMENT '留言人',
  `leaveTime` varchar(20) default NULL COMMENT '留言时间',
  `replyContent` varchar(1000) default NULL COMMENT '管理回复',
  `replyTime` varchar(20) default NULL COMMENT '回复时间',
  PRIMARY KEY  (`leaveWordId`),
  KEY `userObj` (`userObj`),
  CONSTRAINT `t_leaveword_ibfk_1` FOREIGN KEY (`userObj`) REFERENCES `t_userinfo` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_leaveword
-- ----------------------------
INSERT INTO `t_leaveword` VALUES ('1', '太好了以后可以发博文了', '来到这里就可以发布自己的日常博文了', 'user1', '2018-03-30 14:35:57', '是的你很正确', '2018-03-30 14:35:59');
INSERT INTO `t_leaveword` VALUES ('2', '这个网站我喜欢', '我能欣赏到各种美食', 'user1', '2018-04-05 00:46:22', '喜欢就好', '2018-04-05 16:47:02');

-- ----------------------------
-- Table structure for `t_notice`
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `noticeId` int(11) NOT NULL auto_increment COMMENT '公告id',
  `title` varchar(80) NOT NULL COMMENT '标题',
  `content` varchar(5000) NOT NULL COMMENT '公告内容',
  `publishDate` varchar(20) default NULL COMMENT '发布时间',
  PRIMARY KEY  (`noticeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES ('1', '多用户博客网站成立了', '<p>朋友们可以在这里注册成为博客主，分享你自己的博客文章！</p>', '2018-03-30 14:36:09');

-- ----------------------------
-- Table structure for `t_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `t_userinfo`;
CREATE TABLE `t_userinfo` (
  `user_name` varchar(30) NOT NULL COMMENT 'user_name',
  `password` varchar(30) NOT NULL COMMENT '登录密码',
  `name` varchar(20) NOT NULL COMMENT '姓名',
  `gender` varchar(4) NOT NULL COMMENT '性别',
  `birthDate` varchar(20) default NULL COMMENT '出生日期',
  `userPhoto` varchar(60) NOT NULL COMMENT '用户照片',
  `telephone` varchar(20) NOT NULL COMMENT '联系电话',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `address` varchar(80) default NULL COMMENT '家庭地址',
  `regTime` varchar(20) default NULL COMMENT '注册时间',
  PRIMARY KEY  (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userinfo
-- ----------------------------
INSERT INTO `t_userinfo` VALUES ('user1', '123', '张晓芬', '女', '2018-03-05', 'upload/3fd33f66-5d16-423f-94dc-6f7ae46ff486.jpg', '13573598343', 'xioaofen@163.com', '四川成都红星路13号', '2018-03-30 14:34:44');
INSERT INTO `t_userinfo` VALUES ('user2', '123', '王晓梅', '女', '2018-04-02', 'upload/d07575b0-ef00-4773-aff6-bce64e0464e5.jpg', '15980083529', 'xiaomei@163.com', '四川南充滨江路', '2018-04-05 16:57:58');
