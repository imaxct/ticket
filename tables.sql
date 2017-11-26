-- MySQL dump 10.16  Distrib 10.1.29-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: ticket
-- ------------------------------------------------------
-- Server version	10.1.29-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ticket_movie`
--

DROP TABLE IF EXISTS `ticket_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_movie` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `eng_name` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `length` int(11) NOT NULL,
  `come_out` date NOT NULL,
  `country` varchar(20) NOT NULL,
  `intro` longtext NOT NULL,
  `url` varchar(200) NOT NULL,
  `actor` varchar(200) NOT NULL,
  `director` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_movie`
--

LOCK TABLES `ticket_movie` WRITE;
/*!40000 ALTER TABLE `ticket_movie` DISABLE KEYS */;
INSERT INTO `ticket_movie` (`id`, `name`, `eng_name`, `type`, `length`, `come_out`, `country`, `intro`, `url`, `actor`, `director`) VALUES (1,'寻梦环游记','Coco','动画,冒险,家庭',105,'2017-11-24','美国','本片讲述了小男孩米格尔（新人安东尼·冈萨雷斯 配音）一心梦想成为音乐家，更希望自己能和偶像埃内斯托·德拉克鲁兹（本杰明·布拉特 配音）一样，创造出打动人心的音乐，但他的家族世代却一直禁止族人接触音乐。米格痴迷音乐，无比渴望证明自己的音乐才能，却因为一系列怪事，来到了五彩斑斓又光怪陆离的神秘世界。在那里，米格遇见了魅力十足的落魄乐手埃克托（盖尔·加西亚·贝纳尔 配音），他们一起踏上了探寻米格家族不为人知往事的奇妙之旅，并开启了一段震撼心灵、感动非凡、永生难忘的旅程。','http://p1.meituan.net/movie/4ba0ebccc0e3115911bfecdcfbbafa1a5114683.jpg@177w_249h','米格尔（配音） Miguel (voice)','李·昂克里奇'),(2,'推理笔记','Inference Notes','剧情,悬疑',90,'2017-11-24','中国大陆','南洋大学的数学天才少女夏早安（陈都灵 饰）因一场换心手术后，被卷入了疑似器官买卖和蓄意杀人的悬案之中。与此同时，心脏原主人的好友——热血机车少年李小崇（林柏宏 饰）和夏早安倾慕的精英学长秦一凡（汪铎 饰），也和这场命案牵扯出千丝万缕的联系。救命的心脏竟成了锥心的利刃，真情与真相的抉择背后，还隐藏着更疯狂的阴谋——一个通过数学计算就可以掌控生杀的“拉普拉斯妖”！到底是谁实施了这场猎取心脏的完美谋杀？这场关于探寻真相与推导真爱的天才智商角逐战，始于人心，终于人心。','http://p0.meituan.net/movie/fe0224d3bde17520754f58f956232f68534526.png@177w_249h.webp','陈都灵','张天辉'),(3,'引爆者','Explosion','动作,犯罪',105,'2017-11-24','中国大陆','本片讲述了矿上的爆破工人赵旭东（段奕宏 饰）在一次矿难中侥幸逃生，却发现了这是一个巨大的阴谋。随着调查的深入，他也被逐渐卷入了漩涡中心。他的女友萧红（余男 饰）因此受到牵连成为人质，他的旧友徐警官（王景春 饰）也在追捕他的同时越陷越深。最后赵旭东在警方追捕下与当地幕后煤矿老板程飞（成泰燊 饰）及其手下，在危机重重的废弃工厂展开殊死搏斗！我的命，我说了算！','http://p1.meituan.net/movie/b0463d95e071532a4c5cd4eb4e8488631018469.jpg@177w_249h.webp','段奕宏','常征'),(4,'正义联盟','Justice League','动作,冒险,科幻',120,'2017-11-17','美国','本片讲述的是受到超人（亨利·卡维尔 饰）无私奉献的影响，蝙蝠侠（本·阿弗莱克 饰）重燃了对人类的信心，接受了新盟友神奇女侠（盖尔·加朵 饰）的帮助，去对抗更加强大的敌人。蝙蝠侠和神奇女侠一同寻找并招募了一支超人类联盟来抵挡新觉醒的威胁。但尽管这支队伍集结了超人、蝙蝠侠、神奇女侠、闪电侠（埃兹拉·米勒 饰）、海王（杰森·莫玛 饰）和钢骨（雷·费舍 饰）等人，他们似乎无法阻止敌人对地球的进攻……','http://p1.meituan.net/movie/b9395cd202a461303cf06cea89292071556090.png@177w_249h','本·阿弗莱克','扎克·施奈德'),(5,'追捕','Manhunt','动作,犯罪',107,'2017-11-24','中国香港,中国大陆','国际律师杜丘（张涵予 饰）清晨醒来，发现一个陌生女子被杀死在枕边，当所有证据皆指向自己就是凶手时，他拒捕逃离，决定自己查出真相。颇有名气的警探矢村（福山雅治 饰）在追捕过程中，察觉案件并不简单。一警一“匪” 在交手中竟发展出了一段惺惺相惜的情谊，探明真相的过程中，他们卷入了更大的阴谋，而屡次帮杜丘逃亡的神秘女子真由美（戚薇 饰）也另有隐情……','http://p1.meituan.net/movie/7797d45caf40fcfcdc0f88378850e2441016690.jpg@177w_249h.webp','张涵予','吴宇森'),(6,'嘉年华','Angels Wear White','剧情,悬疑',107,'2017-11-24','中国大陆,法国','本片讲述了少女小米（文淇 饰）在海边一家旅店做临时工，碰巧成为在旅店发生的一起案件的唯一知情者。为了保住收入微薄的工作，她决定保持沉默。与此同时，被卷入案件的小文（周美君 饰）却发现她的麻烦才刚刚开始。影片透过两个不同年龄段、不同成长背景下的女孩的视角，讲述了一个女性青春成长的故事，探讨一个良性的社会机制、人与人之间最终的和解，以及自我的坚强和勇敢，如何让成长的烦恼变为成长的契机。','http://p1.meituan.net/movie/6dc90ebc7b3b740f6242c55ef0ee4961815296.png@177w_249h.webp','文淇','文晏'),(7,'雷神3：诸神黄昏','Thor: Ragnarök','动作,冒险,奇幻',130,'2017-11-03','美国','本片讲述了雷神托尔（克里斯·海姆斯沃斯 饰）被囚禁于宇宙的另一端，竭尽全力想要赶回阿斯加德，阻止诸神黄昏的发生。残酷无情的海拉（凯特·布兰切特 饰）是诸神黄昏的发起者，她要借此毁掉阿斯加德和这里的所有人。在赶回阿斯加德前，托尔必须先在危险的角斗场上存活下来，他的对手竟是曾经的伙伴绿巨人（马克·鲁法洛 饰），而且托尔还失去了自己的神锤！','http://p0.meituan.net/movie/579a0919e926a80ad14c717c8d8a8394259181.jpg@177w_249h.webp','克里斯·海姆斯沃斯','塔伊加·维迪提'),(8,'羞羞的铁拳','Never Say Die','喜剧,爱情',100,'2017-09-30','中国大陆','本片讲述了靠打假拳混日子的艾迪生（艾伦 饰），本来和正义感十足的体育记者马小（马丽 饰）是一对冤家，没想到因为一场意外的电击，男女身体互换。性别错乱后，两人互坑互害，引发了拳坛的大地震，也揭开了假拳界的秘密，惹来一堆麻烦，最终两人在“卷莲门”副掌门张茱萸（沈腾 饰）的指点下，向恶势力挥起了羞羞的铁拳。','http://p1.meituan.net/movie/62e854fcfdae277751c3bae23ea110aa131670.jpg@177w_249h.webp','艾伦、沈腾、马丽','宋阳、张吃鱼'),(9,'刺杀盖世太保','HHhH','剧情,战争,历史',100,'2017-11-24','美国,法国','本片讲述了青年海德里希（杰森·克拉克 饰）在舞会上对女子丽娜（裴淳华 饰）一见钟情，并对丽娜的纳粹思想深表赞同。二人婚后，海德里希通过丽娜的帮助成为纳粹党卫军的一员，开始大肆虐杀犹太人，种种暴行让他成为了“类人猿”行动的清除目标。负责执行刺杀任务的扬·库比斯（杰克·奥康奈尔 饰）和约瑟夫·加比希克（杰克·莱诺 饰）孤身潜入布拉格，在捷克反抗组织的掩护下着手准备，扬还与少女安娜（米娅·华希科沃斯卡 饰）产生了一段凄美的爱情，但残酷的现实却提醒着每一个人时不我待。屠杀仍在继续，刺杀行动也终于开始……','http://p0.meituan.net/movie/c66bef60115f204d1385d93027979c9e5057446.jpg@177w_249h.webp','杰森·克拉克','赛德里克·吉门内兹');
/*!40000 ALTER TABLE `ticket_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_order`
--

DROP TABLE IF EXISTS `ticket_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_order` (
  `id` int(11) NOT NULL,
  `seats` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `session_id` int(11) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket_order_session_id_user_id_f53b71f9_uniq` (`session_id`,`user_id`),
  KEY `ticket_order_user_id_15969d45_fk_ticket_user_openid` (`user_id`),
  CONSTRAINT `ticket_order_session_id_003b6da6_fk_ticket_session_id` FOREIGN KEY (`session_id`) REFERENCES `ticket_session` (`id`),
  CONSTRAINT `ticket_order_user_id_15969d45_fk_ticket_user_openid` FOREIGN KEY (`user_id`) REFERENCES `ticket_user` (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_order`
--

LOCK TABLES `ticket_order` WRITE;
/*!40000 ALTER TABLE `ticket_order` DISABLE KEYS */;
INSERT INTO `ticket_order` (`id`, `seats`, `price`, `session_id`, `user_id`) VALUES (1,'0|39|20',29.99,1,'openid');
/*!40000 ALTER TABLE `ticket_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_session`
--

DROP TABLE IF EXISTS `ticket_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_session` (
  `id` int(11) NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `price` double NOT NULL,
  `seat` varchar(60) NOT NULL,
  `movie_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_session_movie_id_050d5e0d_fk_ticket_movie_id` (`movie_id`),
  CONSTRAINT `ticket_session_movie_id_050d5e0d_fk_ticket_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `ticket_movie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_session`
--

LOCK TABLES `ticket_session` WRITE;
/*!40000 ALTER TABLE `ticket_session` DISABLE KEYS */;
INSERT INTO `ticket_session` (`id`, `start_time`, `price`, `seat`, `movie_id`) VALUES (1,'2017-11-26 10:00:00.000000',29.99,'1000000000000000000010000000000000000001',1),(2,'2017-11-26 05:00:00.000000',29.89,'0000000100000000000000000000000000000000',1),(3,'2017-11-27 10:00:00.000000',19.99,'000000000000000000000000000000000000000000',2),(4,'2017-11-30 05:00:00.000000',20.99,'0000000000000000000000000000000000000000',3),(5,'2017-11-29 10:00:00.000000',25.88,'0000000000000000000000000000000000000000',4),(6,'2017-11-27 17:00:00.000000',22.99,'0000000000000000000000000000000000000000',4),(7,'2017-12-01 06:00:00.000000',29.98,'000000000000000000000000000000000000000000',5),(8,'2017-12-02 12:08:00.000000',23.99,'0000000000000000000000000000000000',6),(9,'2017-12-01 12:09:00.000000',21.88,'000000000000000000000000000000000000000000',7),(10,'2017-12-01 12:09:00.000000',29.01,'0000000000000000000000000000000000000000',8),(11,'2017-11-30 12:10:00.000000',11.99,'00000000000000000000000000000000',8),(12,'2017-11-29 12:10:00.000000',19.88,'000000000000000000000000000000000000000000',9);
/*!40000 ALTER TABLE `ticket_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_user`
--

DROP TABLE IF EXISTS `ticket_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_user` (
  `openid` varchar(64) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `nickname` varchar(64) NOT NULL,
  `head` varchar(200) NOT NULL,
  `remaining` double NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`openid`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_user`
--

LOCK TABLES `ticket_user` WRITE;
/*!40000 ALTER TABLE `ticket_user` DISABLE KEYS */;
INSERT INTO `ticket_user` (`openid`, `phone`, `nickname`, `head`, `remaining`, `score`) VALUES ('openid','','nickname','http://www.feizl.com/upload2007/2014_01/140116182482507.jpg',0,0);
/*!40000 ALTER TABLE `ticket_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-26 20:27:05
