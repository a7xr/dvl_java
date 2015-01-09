-- MySQL dump 10.13  Distrib 5.5.28, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: db_study
-- ------------------------------------------------------
-- Server version	5.5.28-1

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
-- Table structure for table `0e_l`
--

DROP TABLE IF EXISTS `0e_l`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `0e_l` (
  `id_e_l` int(4) NOT NULL AUTO_INCREMENT,
  `descr` text,
  `title_` varchar(100) DEFAULT NULL,
  `taable` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_e_l`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `0e_l`
--

LOCK TABLES `0e_l` WRITE;
/*!40000 ALTER TABLE `0e_l` DISABLE KEYS */;
INSERT INTO `0e_l` VALUES (1,'this is a test',NULL,NULL),(2,'here i will set how to use this db',NULL,NULL),(3,'all abbreviation that i found should be saved here',NULL,'abbrev'),(4,'some files should be saved in the db',NULL,'files'),(5,'to saave my git repos',NULL,'git_repos'),(6,'for some research that i did about english',NULL,'engl'),(7,'i_ve wrote into some books then i will need this when i_m going to erase those i wrote on the book',NULL,'book_marked'),(8,'some files of configuration has some tuto, then,\n  table(files)::descr','#tuto #pedagogy #autodoc',NULL),(9,'table(files) col(descr) val(sourced_ability) \n  then, it u can append that file to bashrc\n','#table#files #col#descr',NULL),(10,'dl if the file was dldd','tables(files) col(descr) val(dl)',NULL),(11,'to save some links which are important in the internet',NULL,'links');
/*!40000 ALTER TABLE `0e_l` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abbrev`
--

DROP TABLE IF EXISTS `abbrev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abbrev` (
  `id_abbrev` int(4) NOT NULL AUTO_INCREMENT,
  `abbrev` varchar(25) NOT NULL,
  `stand_for` varchar(200) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`id_abbrev`),
  UNIQUE KEY `abbrev` (`abbrev`,`stand_for`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abbrev`
--

LOCK TABLES `abbrev` WRITE;
/*!40000 ALTER TABLE `abbrev` DISABLE KEYS */;
INSERT INTO `abbrev` VALUES (1,'darpa','defense advance research projects agency',NULL),(2,'cia','central intelligence agency',NULL),(3,'ispm','institut superieur de madagascar',NULL),(4,'tcp','transfet control protocol',NULL),(5,'ip','internet protocol','in netw layer of tcp_ip'),(6,'voip','voice over ip',NULL),(7,'dhcp','dynamic host configuration protocol','in netw layer of tcp_ip'),(8,'etp','english teaching program',NULL),(9,'usa','united states of america',NULL),(10,'htb','hit the book',NULL),(11,'icmp','internet control message protocol','in netw layer of tcp_ip'),(12,'rip','routing information protocol','in netw layer of tcp_ip'),(14,'udp','user datagram protocol','in transp layer of tcp_ip'),(15,'tali','transport adapter layer interface','in transp layer of tcp_ip'),(16,'van jacobson','commpressed tcp','in transp layer of tcp_ip'),(17,'xot','x.25 over tcp','in transp layer of tcp_ip'),(18,'dns','domain name service','in session layer of tcp_ip'),(19,'ldap','lightweight directory access protocol','in session layer of tcp_ip'),(20,'cops','common open policy service','in application layer of tcp_ip'),(21,'ftp','file transfert protocol','in application layer of tcp_ip'),(22,'ftp','internet message access protocol','in application layer of tcp_ip'),(23,'irc','internet relay chat','in application layer of tcp_ip'),(24,'ntp','network time protocol','in application layer of tcp_ip'),(25,'pop3','post office protocol version3','in application layer of tcp_ip'),(26,'radius','remote authentification dial in user service','in application layer of tcp_ip'),(27,'rlogin','remote login','in application layer of tcp_ip'),(28,'rtsp','real time streaming protocol','in application layer of tcp_ip'),(29,'s-http','secure hypertext transfert protocol','in application layer of tcp_ip'),(30,'http','hypertext transfert protocol','in application layer of tcp_ip'),(31,'smtp','simple mail tranfert protocol','in application layer of tcp_ip'),(32,'snmp','simple network management protocol','in application layer of tcp_ip'),(33,'socks','socket secure','in application layer of tcp_ip'),(34,'tacacs+','terminal access controller access control system','in application layer of tcp_ip'),(35,'telnet','tcp_ip terminal emulation protocol','in application layer of tcp_ip'),(36,'tftp','trivial ftp','in application layer of tcp_ip'),(37,'egp','exterior gateway protocol','routing protocol'),(38,'bgp-4','border gateway protocol','routing protocol'),(39,'eigrp','enhanced interiorgateway routing protocol','routing protocol'),(40,'hsrp','cisco hot standby router protocol','routing protocol'),(41,'igrp','interior gateway routing protocol','routing protocol'),(42,'narp','nbma address resolution protocol','routing protocol'),(43,'nhrp','next hop resolution protocol','routing protocol'),(44,'ospf','open shortest path protocol','routing protocol'),(45,'trip','telephony routing over ip','routing protocol'),(46,'atmp','ascend tunnel management protocol','tunneling protocol'),(47,'l2f','layer 2 tunneling protocol','tunneling protocol'),(48,'pptp','point to point tunneling protocol','tunneling protocol'),(49,'ah','authentification header','security protocol'),(50,'esp','encapsulating security payload','security protocol'),(51,'tls','transport layer security protocol','security protocol'),(52,'api',NULL,NULL),(53,'sql','structured query langage',NULL),(54,'ips','intrusion prevention system',NULL),(55,'ids','intrusion detection system',NULL),(56,'lol','lots of love\nlots of laugh',NULL),(57,'set','social engineering toolkit',NULL),(58,'ptes','penetration testing execution standard',NULL),(59,'msf','metasploit framework',NULL),(60,'nc','netcat',NULL);
/*!40000 ALTER TABLE `abbrev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_marked`
--

DROP TABLE IF EXISTS `book_marked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_marked` (
  `id_b_m` int(4) NOT NULL AUTO_INCREMENT,
  `book` varchar(50) DEFAULT NULL,
  `page` int(4) DEFAULT NULL,
  PRIMARY KEY (`id_b_m`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_marked`
--

LOCK TABLES `book_marked` WRITE;
/*!40000 ALTER TABLE `book_marked` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_marked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engl`
--

DROP TABLE IF EXISTS `engl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `engl` (
  `id_engl` int(5) NOT NULL AUTO_INCREMENT,
  `keey` varchar(50) DEFAULT NULL,
  `vaalue` text,
  `ex` text,
  `tyype` varchar(10) DEFAULT NULL,
  `syn` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_engl`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engl`
--

LOCK TABLES `engl` WRITE;
/*!40000 ALTER TABLE `engl` DISABLE KEYS */;
INSERT INTO `engl` VALUES (1,'#for_#without',NULL,'\nfor without Andy, I couldn\'t study at ispm\n',NULL,NULL),(2,'#afoot','beeing planned or happening','there were plans afoot for a second attack\n\n',NULL,NULL),(3,'#dislodge','to force s1 to leave a position or a place\nOR\nto force or to knock sth out of a place where it was held','army commanders were planned to dislodge the president',NULL,NULL),(4,'#whisper','to say sth very quietly','she whispered some words to my ear\nit is whispered that Aslan was a hacker\n  ifk: then this is a kinda rumour\n','v',NULL),(5,'to fiddle','to keep touching sth bcz u_re bored','laura fiddled with her cup\nand i kept on fiddling with BTR2','v','to fidget, to twiddle, to fuss, to mess around'),(6,'winging','to start travelling on wings or by aircraft','a bird came winging around the corner','noun',NULL),(7,'to idle','To move slowly or without purpose',' Idling is welcome as we rebuild!','v',NULL),(8,'either way','The one or the other way','\nSometimes your system might crash or a power failure might take the machine down. Either way, at the next boot, a lengthy filesystem check using fsck will be done',NULL,NULL),(9,'brag','To talk or write about oneself in a proud or self-impressed way',NULL,'v','to boast'),(10,'somewhat','some part or amount; something.','somewhat clearer::mazavazava kely',NULL,NULL),(11,'behalf',NULL,' in or on someone\'s behalf:: in someone\'s interests',NULL,NULL),(12,'due','ifk: syn of worthwhile','this bill is due',NULL,NULL),(13,'digital #assets','asset has many senses','digital assets::(digital ressources)',NULL,NULL),(14,'to fire up','to start','the attackerbegins by firing up the latest version of Metasploit',NULL,NULL),(15,'a soft spot','somewhat weakness','After exploring the target’s perimeter, he finds a soft spot',NULL,NULL),(16,'impact',NULL,'you’ve shown true business impact,\n  u found the pillar of the business',NULL,NULL),(17,'oddly enough',NULL,'Oddly enough\n  transitive which means sth strange happened\n  ifk_ex : she played hard to get. oddly enough, she was pregnant :/ ',NULL,NULL),(18,'compromise','a kinda rule which is set to solve some issues\n  ex : the 2presidents set a compromise',NULL,'noun',NULL),(19,'compromise','hacked, found the a soft spot, then that will be exploited',NULL,'verb',NULL),(20,'fictitious',NULL,'\npenetration testers often find themselves in the role of a fictitious adversary',NULL,NULL),(21,'chink',NULL,'identify chinks in the armor, \n  ifk: to find the error in the armor',NULL,NULL),(22,'breach',NULL,'\nand prevent serious data breaches.\n  to prevent that data will be hacked',NULL,NULL),(23,'circumvent',NULL,'By attempting to circumvent security\n  to attempt to escape the sec',NULL,NULL),(24,'overnight',NULL,'\nAnd you won’t become an expert penetration tester overnight\n  u will not be a pentester very soon',NULL,NULL),(25,'proficient',NULL,'\nit takes years of practice and real-world experience to become proficient.\n  it takes years of practice to be good at it(sth mentionned before) ',NULL,NULL),(26,'currently, shift',NULL,'\nCurrently, there is a shift in the way people define penetration testing \n  now, many people has its way to define pentest',NULL,NULL),(27,'overwhelmed',NULL,' i_m overwhelmed of her way of speaking\n   i_m so fascinated .... ',NULL,NULL),(28,'charter',NULL,'the Yalta charter',NULL,NULL),(29,'scope',NULL,'u should define the scope of the pentest\n  u should define how far u_r pentest_action should go',NULL,NULL),(30,'convey',NULL,'\nu convey the goals of the engagement\n  u define the goal of the engagement',NULL,NULL),(31,'thorough',NULL,'what is to be expected from a thorough \n  what is expected to be done completely',NULL,NULL),(32,'probe',NULL,'by slowly starting to probe its systems\n  then u start to go in, slowly for getting some information',NULL,NULL),(33,'insight',NULL,'sommaire gives u an _insight_ of what are inside the book',NULL,NULL),(35,'insight',NULL,'sommaire gives u an _insight_ of what are inside the book\n   like set but which is contained in a set',NULL,NULL),(36,'threshold',NULL,'\nafter a certain threshold, the web application firewalls will block you from making further requests.\n  bcz u went beyond a limit then u_re blocked from making further requests\n',NULL,NULL),(37,'to take into account',NULL,'\nvulnerability analysis takes into account port and vulnerability scans\n',NULL,NULL),(38,'banner grabbing',NULL,'\nthere was a banner which was set and that is not to compromise',NULL,NULL),(39,'glamourous',NULL,'\nfascinating and exciting',NULL,NULL),(40,'unforeseen','\nu didn_t expect','an unforeseen trip is a trip which u didn_t expect to happen',NULL,NULL),(41,'onslaught','attack','Blindly firing off a mass onslaught of exploits isn_t productive',NULL,NULL),(42,'to fire off','to decide to attack','Blindly firing off a mass onslaught of exploits isn\'t productive',NULL,NULL),(43,'run-of-the-mill','like the others in his type, very standard, very common',NULL,NULL,NULL),(44,'wits','almost the same as the soul','\nrely on your wits\n  ifk: to trust in ur soul',NULL,NULL),(45,'to rely on','almost like to trust','\nrely on your wits\n  ifk: to trust in ur soul|brain',NULL,NULL),(46,'plethora','A large or excessive amount of something','kali comes with a plethora of penetration testing tools',NULL,NULL),(47,'to lie','rest flat on a surface','use cli in linux bcz that’s where the real power lies',NULL,NULL),(48,'versatile','flexible','nc is a versatile tool in for tcp-ip connection\n  then nc is is not rigid, and useful in tcp-ip connection ',NULL,NULL),(49,'to issue','to deliver|exe a commandment','\nyou can see the programs listening on TCP ports by _issuing_ the command netstat -antp,\n',NULL,NULL),(50,'indeed','exactly','\n(after some remarks on result of some cmd)\n  As you can see, Netcat reports that port 80 is indeed listening\n',NULL,NULL),(51,'subsequent','fr(ulterieur)','\nin subsequent chapter\n',NULL,NULL);
/*!40000 ALTER TABLE `engl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id_file` int(5) NOT NULL AUTO_INCREMENT,
  `path` varchar(200) DEFAULT NULL,
  `descr` text,
  `lnk` text,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'/root/dvl/lin/sed01',NULL,NULL),(2,'/root/dvl/lin/ds','#mmt #script',NULL),(3,'/root/dvl/lin/dump_mysql.sh','#mmt #script',NULL),(4,'/root/ms_conf/os_tool',NULL,NULL),(5,'/root/ms_conf/git_tools','#tuto #sourced_ability',NULL),(12,'/root/pic/lin/Wallpapers_de_Linux_Ubuntronics_011.png','dldd','http://thelinuxgod.net/wp-content/uploads/2014/04/Wallpapers_de_Linux_Ubuntronics_011.png'),(13,'/root/pic/lin/a05f0fab1b3436db08a93e192b8b4402_large.jpeg','dldd','http://img0.mxstatic.com/wallpapers/a05f0fab1b3436db08a93e192b8b4402_large.jpeg'),(14,'/usr/share/icons/gnome-colors-common/scalable/apps','#path dldd #icons added sth',NULL),(15,'/var/log/postgresql/postgresql-9.1-main.log',NULL,NULL),(16,'/var/log/postgresql/postgresql-9.1-main.log','#log #pg #postgres',NULL),(17,'/root/my_log',NULL,NULL),(18,'/root/my_log','#log that my prg will write',NULL),(19,'/root/.bashrc',NULL,NULL),(20,'/root/.bashrc','#conf of #bash',NULL),(21,'/root/.tmux.conf',NULL,NULL),(22,'/root/.tmux.conf','#conf of #tmux',NULL),(23,'/etc/rc.local',NULL,NULL),(24,'/etc/rc.local','#script_on#starting#linux',NULL),(25,'/usr/share/set',NULL,NULL),(26,'/usr/share/set','#set #emplacement in #kali',NULL),(27,'/usr/share/set-update',NULL,NULL),(29,'/usr/share/set/set-update',NULL,NULL),(30,'/usr/share/set/set-update','#set #update in #kali',NULL),(31,'/usr/share/set/config/set_config',NULL,NULL),(32,'/usr/share/set/config/set_config','#conf of #set',NULL),(33,'/etc/passwd',NULL,NULL),(34,'/etc/passwd','store #users_information\n  user00:x:504:504:user00',NULL),(35,'/etc/passwd',NULL,NULL),(36,'/etc/passwd','store #users_information\n  user00:x:504:504:user00:/home/user00:/bin/bash\n    username\n    related to pwd but i don_t understand well\n    User ID\n    Group ID\n    user_info (optional)\n    home_dir of the user\n    shell used by the user',NULL),(37,'/etc/shadow',NULL,NULL),(38,'/etc/shadow','to save encrypted passwd of all linux-users',NULL),(39,'/etc/sudoers',NULL,NULL),(40,'/etc/sudoers','to add some user into #sudoer',NULL);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `git_repos`
--

DROP TABLE IF EXISTS `git_repos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `git_repos` (
  `id_g_r` int(3) NOT NULL AUTO_INCREMENT,
  `loc_rep` varchar(200) DEFAULT NULL,
  `remote_rep` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_g_r`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `git_repos`
--

LOCK TABLES `git_repos` WRITE;
/*!40000 ALTER TABLE `git_repos` DISABLE KEYS */;
/*!40000 ALTER TABLE `git_repos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imp_cmd`
--

DROP TABLE IF EXISTS `imp_cmd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imp_cmd` (
  `id_imp_cmd` int(5) NOT NULL AUTO_INCREMENT,
  `cmd` varchar(150) DEFAULT NULL,
  `cmt` text,
  `_datet` datetime DEFAULT NULL,
  PRIMARY KEY (`id_imp_cmd`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imp_cmd`
--

LOCK TABLES `imp_cmd` WRITE;
/*!40000 ALTER TABLE `imp_cmd` DISABLE KEYS */;
INSERT INTO `imp_cmd` VALUES (3,'potatoes','a comment for the potatoes',NULL);
/*!40000 ALTER TABLE `imp_cmd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `life_evt`
--

DROP TABLE IF EXISTS `life_evt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `life_evt` (
  `id_l_e` int(5) NOT NULL AUTO_INCREMENT,
  `life_evt` text,
  `_datet` datetime DEFAULT NULL,
  `title_` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_l_e`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `life_evt`
--

LOCK TABLES `life_evt` WRITE;
/*!40000 ALTER TABLE `life_evt` DISABLE KEYS */;
INSERT INTO `life_evt` VALUES (1,'#tsiry #bad_humour_me do_not_speak_to_him__bcz_he_is_a_XXX.............I_m from doing a very hot basket_ball',NULL,NULL),(2,'nanome manga_3 an_#lefa',NULL,NULL),(4,'#tsiry #bad_humour_me do_not_speak_to_him__bcz_he_is_a_XXX.............I_m from doing a very hot basket_ball','2014-12-15 13:51:54',NULL),(5,'nanome manga_3 an_#lefa','2014-12-15 13:46:24',NULL),(6,'#dad nande tany am doctera nelly','2014-12-17 12:28:12',NULL),(7,'2014-12-20 16:41:03','0000-00-00 00:00:00','#blooper #girl #ptsabMkamban'),(8,'\nando nten we az manadino fa tsy norarahiko izy tamzai\n','2009-12-20 16:55:36','#blooper #girl #ando'),(9,'nis ady teo apasapito ar za otrn tsnnw nininn :/','2010-12-20 16:57:25','#ady #herve #steph #dix #apasapito'),(10,'mis sipa ak3 ao ambadk ao fa otrn tstaf resak amndreo mintsn :/','2014-12-20 16:58:50','#girl #dad #? #hospital_ptsabMkambn'),(11,'misy infirmiera tkn kotina ato fa otrn tstaf mintsn le iresak anle iz amny','2014-12-20 21:05:44','#girl #dad_marar #infirmiera #blooper'),(12,'isakn nody hariv niarak tam_brenda dia otrn tspoinsa fona ny resakanay','2014-07-20 21:06:34','#girl #etp #brenda #blooper'),(13,'tsy norarahiko lotra ilay soratra kel nataon_fitia ana tam annifko','2013-12-20 21:07:48','#girl #etp #fitia #blooper #birthday');
/*!40000 ALTER TABLE `life_evt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id_link` int(4) NOT NULL AUTO_INCREMENT,
  `lnk` text,
  `descr` text,
  PRIMARY KEY (`id_link`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,'wikivs.com','\nfor comparing something...\n  ex : mysql vs pg\n       twitter vs fb\n       ....\n'),(2,'http://stackoverflow.com','\n#question/#answer site #q_a'),(3,'http://www.crack-wifi.com','ifk: about tuto of #hacking'),(4,'bing.com/translator','#translator_site'),(5,'http://dictionary.reference.com','#dico #dictionary'),(6,'http://itranslate4.eu','#tranlator_site, one of the best'),(7,'http://www.oxforddictionaries.com/definition','dictionary on the internet'),(8,'http://www.cyberciti.biz/faq/howto-linux-add-user-to-group/','about #user and #group in #linux');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_`
--

DROP TABLE IF EXISTS `m_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_` (
  `id_m` int(5) NOT NULL AUTO_INCREMENT,
  `_datet` datetime DEFAULT NULL,
  `cause` text,
  PRIMARY KEY (`id_m`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_`
--

LOCK TABLES `m_` WRITE;
/*!40000 ALTER TABLE `m_` DISABLE KEYS */;
INSERT INTO `m_` VALUES (1,'0000-00-00 00:00:00',''),(2,'0000-00-00 00:00:00',''),(3,'0000-00-00 00:00:00',''),(4,'0000-00-00 00:00:00',''),(5,'0000-00-00 00:00:00',''),(6,'0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `m_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail` (
  `id_mail` int(4) NOT NULL AUTO_INCREMENT,
  `mail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_mail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail`
--

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_in`
--

DROP TABLE IF EXISTS `money_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_in` (
  `id_mi` int(4) NOT NULL AUTO_INCREMENT,
  `cost` int(8) DEFAULT NULL,
  `comment` text,
  `_datet` datetime DEFAULT NULL,
  PRIMARY KEY (`id_mi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_in`
--

LOCK TABLES `money_in` WRITE;
/*!40000 ALTER TABLE `money_in` DISABLE KEYS */;
INSERT INTO `money_in` VALUES (1,5,'no',NULL),(2,2,'test',NULL),(3,2,'test',NULL),(4,2,'test',NULL);
/*!40000 ALTER TABLE `money_in` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`nonickn`@`localhost`*/ /*!50003 trigger after_insert_money_in after insert on money_in for each row  begin set @last_cost_in=(select cost from money_state where id_money_state=(select max(id_money_state) from money_state)); insert into money_state(cost, dtime, comment, i_o) values (@last_cost_in+new.cost, now(), new.comment, '1'); end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `money_out`
--

DROP TABLE IF EXISTS `money_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_out` (
  `id_mo` int(4) NOT NULL AUTO_INCREMENT,
  `cost` int(8) DEFAULT NULL,
  `comment` text,
  `_datet` datetime DEFAULT NULL,
  PRIMARY KEY (`id_mo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_out`
--

LOCK TABLES `money_out` WRITE;
/*!40000 ALTER TABLE `money_out` DISABLE KEYS */;
INSERT INTO `money_out` VALUES (1,100,'no comment',NULL),(2,100,'no comment',NULL),(3,5,'no comment',NULL),(4,5,'no comment',NULL),(5,2,'test',NULL);
/*!40000 ALTER TABLE `money_out` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`nonickn`@`localhost`*/ /*!50003 trigger after_insert_money_out after insert on money_out for each row   begin  set @last_cost=(select cost from money_state where id_money_state=(select max(id_money_state) from money_state)); insert into money_state (cost, dtime, comment, i_o) values (@last_cost-new.cost, now(), new.comment, '2'); end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `money_state`
--

DROP TABLE IF EXISTS `money_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_state` (
  `id_money_state` int(5) NOT NULL AUTO_INCREMENT,
  `cost` int(8) DEFAULT NULL,
  `_datet` datetime DEFAULT NULL,
  `comment` text,
  `i_o` varchar(1) NOT NULL DEFAULT '3' COMMENT 'to define if cost which is defined is in or out',
  PRIMARY KEY (`id_money_state`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_state`
--

LOCK TABLES `money_state` WRITE;
/*!40000 ALTER TABLE `money_state` DISABLE KEYS */;
INSERT INTO `money_state` VALUES (1,50000,NULL,NULL,'0');
/*!40000 ALTER TABLE `money_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id_notes` int(5) NOT NULL AUTO_INCREMENT,
  `note` varchar(200) DEFAULT NULL,
  `_datet` datetime NOT NULL,
  `exp` text,
  PRIMARY KEY (`id_notes`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (2,'#tsiry #bad_humour_me do_not_speak_to_him__bcz_he_is_a_XXX.............I_m from doing a very hot basket_ball','2014-12-15 13:51:54',NULL),(3,'#crontab do not forget to add ; after all command in crontab','2014-12-15 13:51:54',NULL),(4,'testing notes','2014-12-15 13:51:54',NULL),(5,'#git hooks in git is used for scripting about the local repo','2014-12-15 13:51:54',NULL),(6,'#git #central #important files:HEAD index objects refs','2014-12-15 13:51:54',NULL),(7,'#git #refs stocke les pointeurs vers les objets','2014-12-15 13:51:54',NULL),(8,'#git #head pointe sur le branche qui est en cours','2014-12-16 12:06:46',NULL),(9,'nanome manga_3 an_#lefa','2014-12-15 13:46:24',NULL),(10,'#dada #za #garde #start','2014-12-16 21:37:43','\nnanomboka nanao garde an_i dada za,\n'),(11,'#dada #medicine #fanafody','2014-12-16 21:53:54','\natacand|candesartan(16mg) & furosemide(40mg) & digoxine & aspirine & omeprazole\n'),(12,'#dada #aretina #fanombohany','2014-12-16 21:58:15','\ntaraiky ny fanafodiny hono (loxen)\n#mahefa no nividy anlé loxen\navy natory hariva dia rhf nifoha dia fanina\n'),(13,'#dada #aretina #fanombohany','2014-12-16 21:58:58','\nefa manomboka tsy mahita tsara ny #masony #eye\n'),(14,'#dada #aretina #sakafony #food','2014-12-16 22:01:11','\nmofo bread tea mangoes\ni think he should eat foods to make him stronger like vegetables\nbut he couldn\'t eat salt\nthen i think that rawFood is better for him like salad....'),(15,'#sakafo #ndrola_tt #marcellin','2014-12-16 22:04:00','\nireo nisakafo fa za efa nihinana tany am #mahefa'),(16,'#dada #marary','2014-12-17 14:48:44','ividi ventilateur'),(17,'#blueline #simba','2014-12-17 14:48:44','tsy lasa fa rapitso vao mande');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes_tech`
--

DROP TABLE IF EXISTS `notes_tech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes_tech` (
  `id_n_t` int(4) NOT NULL AUTO_INCREMENT,
  `title_` varchar(200) DEFAULT NULL,
  `_datet` datetime DEFAULT NULL,
  `exp` text,
  `cmd` varchar(200) DEFAULT NULL,
  `cmd_exp` text,
  PRIMARY KEY (`id_n_t`),
  KEY `title_` (`title_`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes_tech`
--

LOCK TABLES `notes_tech` WRITE;
/*!40000 ALTER TABLE `notes_tech` DISABLE KEYS */;
INSERT INTO `notes_tech` VALUES (1,'#crontab do not forget to add ; after all command in crontab','2014-12-15 13:51:54',NULL,'not mentioned',NULL),(2,'#git hooks in git is used for scripting about the local repo','2014-12-15 13:51:54',NULL,'not mentioned',NULL),(3,'#git #central #important files:HEAD index objects refs','2014-12-15 13:51:54',NULL,'not mentioned',NULL),(4,'#git #refs stocke les pointeurs vers les objets','2014-12-15 13:51:54',NULL,'not mentioned',NULL),(5,'#git #head pointe sur le branche qui est en cours','2014-12-15 13:51:54',NULL,'not mentioned',NULL),(8,'#if [ -z \"$1\" ]',NULL,'true if $1 is null','not mentioned',NULL),(9,'\nthis is a tes of \nhow to do it \n',NULL,NULL,'not mentioned',NULL),(10,'#if [ -n \"$1\" ]',NULL,'this is true if $1 is NOT null','not mentioned',NULL),(11,'#mysql #for a in $(mysql_out_w/only_one_col) ; do ..... ; done',NULL,'this is how to #scan a result of mysql_select\n  ex:\n    for valXX in $(msql \"select note from notes;\")\n    do\n      echo $valXX\n    done\n','not mentioned',NULL),(12,'#script #bash #policy #var_name','2014-12-16 22:36:01','\nthose are some policy for variable name in #bash\n  error_var have to start with e_xxx\n','not mentioned',NULL),(13,'#script #bash #policy #body_of_script','2014-12-16 22:38:49','\n\nshabang\nsome description of the script\nvariables which will be used in the body of the script\ntreat the error which can be caught by the script like error in argument\n....\nbody\n....\nexit X\n','not mentioned',NULL),(14,'#git #reset #commit but _without_ changing the modification in file','2014-12-16 22:54:45',NULL,'git reset HEAD^',NULL),(15,'#git #reset #commit WITH cancelling the modification in file','2014-12-16 22:55:13',NULL,'git reset --hard HEAD^',NULL),(16,'#git #cancel #modification #ifk like #stash to go back in the modif of a file which has been commited','2014-12-16 22:57:31',NULL,'git checkout file00',NULL),(17,'#git #cancel #add in tracking','2014-12-16 23:08:37',NULL,'git reset HEAD -- file00',NULL),(19,'#git #revert','2014-12-16 23:13:13','if u made a push to the server\n  it is not possible to cancel definetely that push\n  u have to make a new push which revert the previous push','git revert 45444cz',NULL),(20,'#git #branch #create','2014-12-16 23:17:08',NULL,'git branch new_branch00',NULL),(21,'#git #branch #utility','2014-12-16 23:21:45','branch: il y a des modification que vous voulez faire mais vous n_etes pas sure des modification...... 1-stoppez et commitez par la ou vous etes sures que le code marche.... 2-creez une branche (@this__id_n_t=20)....3-passez dans une autre branche grace a git checkout branch00\n','not mentioned',NULL),(22,'#git #branch #fusion #merge','2014-12-16 23:23:34','pour fusionner une branche avec la branche master..... va dans la branch master d_abord(__git checkout master__)... faite la fusion(__git merge branch00__)','git merge branch00',NULL),(23,'#git #branch #delete ','2014-12-16 23:29:08','\nu did a fusion to branch00 to branch_master\nu want to delete branch00(__git branch -d branch00__)','git branch -d branch00',NULL),(24,'#git #branch #check ','2014-12-16 23:29:47','\nto see what are the branch which are in ur repo','git branch',NULL),(25,'#git #branch #delete without merging to master ','2014-12-16 23:31:17',NULL,'git branch -D branch00',NULL),(26,'#git #stash ','2014-12-17 00:11:55','u wanted to change to another branch but u made a modif in the current_br which is NOT commited, u don_t want to commit bcz it is a small changement........ u have to stash........then check the stash list(__git stash list__)...... to go back in the previ modif (__git stash apply stash@{5}__) that is for instance','git stash',NULL),(27,'#git #stash ','2014-12-17 00:13:25','to remove some stash which is being saved.... note that a stash is a saving which is not commited','git stash drop stash@{2}',NULL),(28,'#mysql #rename_table','2014-12-19 10:09:39','the title explains everything','rename table db00.table00 to db00.newName',NULL),(29,'#mysql #rename_user','2014-12-19 10:19:23','the title explains everything','rename user \"user00\"@\"host00\" to \"user01\"@\"host01\"',NULL),(30,'#mysql #change_pass','2014-12-19 10:21:46','the user00 must be logged into mysql;....the title explains everything','set password for \"user00\"@\"host00\" = password(\"your new pass\")',NULL),(31,'#sed #intro','2014-12-19 13:30:04','sed fonctionne en mode line par line',NULL,NULL),(32,'#sed #intro','2014-12-19 13:30:47','sed fonctionne en mode line par line\ncela a des bonnes et des mauvaises consequences',NULL,NULL),(33,'#sed #intro','2014-12-19 13:33:56','sed s\'utilise de deux facons\n  classique : on exe une cmd_sed sur un fichier puis on recupere la sortie sur une autre fichier \n  directe : on exe une cmd_sed sur un fichier puis le resultat s\'applique sur le fichier passee en entree',NULL,NULL),(34,'#sed #intro','2014-12-19 13:37:11','sed peut recevoir un script:\n  il y a 2facons de passer un scrip a sed:\n    sed -e __ici_le_script_uniligne__\n    sed -f __script_file__',NULL,NULL),(35,'#sed #important #basis',NULL,'2014-12-19 17:04:40','','\nsed -e __script_uniline__\n  ex: sed -e \'4d; 7d \' test.txt                 \n    -e : for the fact that the script \'4d; 7d \' will be performed in file_test.txt\n    -d : to delete\n      so \'4d; 7d \' meant to delete the line 4 AND 7    \n\n  ex : sed -e \'4,7 d\' test.txt\n  	to delete the line from 4 TILL 7\n\n'),(36,'#sed #regex #intro','2014-12-19 17:45:24',NULL,NULL,'\nsed \'/^# / d\' test.txt'),(37,'#mysql #cluster #introduction #nodes',NULL,'MySQL Clusters are built from three different types of node.\n  cluster = sum(3nodes)\n  3nodes:\n    management node\n    storage node\n    api node\n      used to extract data from db\n      most common is __mysqld__\n',NULL,NULL),(38,'#mysql #cluster #install',NULL,'\nu have to dl and install 2files\n  MySQL-Cluster-gpl-server-7.a.b-c.rhel5.x86_64.rpm\n  	this is about the server of the cluster\n  MySQL-client-community-5.a.b-c.rhel5.x86_64.rpm   	this is about the client of the cluster  \n\nafter installing these rpms, a file is created:\n  /etc/my.cnf\n\n',NULL,NULL),(39,'#mysql #status check',NULL,'\n$ service mysql status\nOR\n$ /etc/init.d mysql status\nOR\n$ telnet host00 3306\n  this is check if the server is up\n    and listening for connections on the port\n',NULL,NULL),(40,'#mysql #log check',NULL,'\nthe file of log is in:\n  /var/log/mysql/mysql.log\n    that is defined on the confFile in #general-log-file',NULL,NULL),(41,'#sec #iptables #intro','2014-12-20 09:54:56','u really need iptables to filter traffic which are permitted in ur serv\n  without ipt all traffics are almost allowed which is not good ',NULL,NULL),(42,'#sec #iptables #intro #firewall','2014-12-20 09:58:30','firewall do the analyse all packets.. do they respect the rules',NULL,NULL),(43,'#sec #iptables #intro #firewall','2014-12-20 10:02:23','criteria of filter are many: ports, protocols, addrIP, and more\n\niptables is very strict. then, if u want to activate iptables, u have to block everything, and right after, open what u want little by little',NULL,NULL),(44,'#sec #log #auth #sys','2014-12-20 10:41:41','to see who was logged into ur sys','/var/log/auth.log',NULL),(45,'#sec #log #stuff #sys','2014-12-20 10:47:34','stuff of log... errors, bugs, informations, .....','/var/log/message\n/var/log/syslog',NULL),(46,'#sec #log #fail2ban','2014-12-20 10:48:37','log of fail2ban... ','/var/log/fail2ban',NULL),(47,'#sec #log #snort','2014-12-20 10:49:21','log of snort... ','/var/log/snort/alert',NULL),(48,'#sec #log #rkhunter','2014-12-20 10:52:21','log of rkhunter... ','/var/log/rkhunter',NULL),(49,'#sec #rkhunter #intro','2014-12-20 11:02:08','if someone hacked ur sys, maybe he installed a backdoor in ur sys then he can rehack ur sys, and a rootkit to hide the hack\n\nrkhunter can detect rootkits on the server ',NULL,NULL),(50,'#sec #conf #rkhunter','2014-12-20 11:03:31','configuration_file of rkhunter','/etc/default/rkhunter',NULL),(51,'#sec #intro','2014-12-20 11:08:07','firewall had to block some connections, but the connections which are opened had to be controlled too,....\n  then we have ids (intrusion detection sys) and ips (intrustion prevention sys)\n    they are types of software which will detect all attempt of intrusion',NULL,NULL),(52,'#sec #intro','2014-12-20 11:11:32','those are the steps to do a classic intrusion:\n  scan port\n  simple attack\n  intrusion\n  how to log in the server on the purpose',NULL,NULL),(53,'#sec #intro #portsentry','2014-12-20 11:13:40','\nto block|manage who can scan ur port',NULL,NULL),(54,'#sec #conf_file #portsentry','2014-12-20 11:14:53','conf file of #portsentry','/usr/local/psionic/portsentry/portsentry.conf',NULL),(55,'#sec #conf_file #portsentry','2014-12-20 11:15:19','conf file of #portsentry','/etc/portsentry/portsentry.conf',NULL),(57,'#sec #fail2ban #intro','2014-12-20 11:27:25','\nit is based on blocking ip which tried to log into some services and which it was failed\n  it will block the ip with iptables',NULL,NULL),(58,'#sec #fail2ban #conf','2014-12-20 11:28:17',NULL,'/etc/fail2ban/jail.conf',NULL),(59,'#sec #snort #intro','2014-12-20 11:47:05','it is powerful and analyse the traffic in live, then ur sys can slow down with this\nhttp://www.trustonme.net/didactels/187.html\nhttp://doc.ubuntu-fr.org/snort\n    \n when bug appears, check /var/log/syslog\n',NULL,NULL),(60,'#sec #log #logwatch #conf_file',NULL,NULL,'/usr/share/logwatch/default.conf/logwatch.conf',NULL),(61,'#sys #conf_file #ssh',NULL,NULL,'/etc/ssh/sshd_config',NULL),(62,'#sys #conf_file #apache2',NULL,NULL,'/etc/apache2/apache2.conf',NULL),(63,'#nmap','2014-12-20 12:15:23','to scan port on a server and to make it verbose','nmap -v ip00',NULL),(64,'#nessus #intro #sec','2014-12-20 12:32:05','to scan vulnerabilities in ur sys',NULL,NULL),(65,'#osi #memo #aide_memo',NULL,'all people seems to need data processing\nOR\nplease, do not throw sausage pizza away',NULL,NULL),(66,'#mysql #query #ifnull',NULL,'this will select col00 and col01, but if col01 is null then it will be replaced by \'newVal\'','select col00, IFNULL(col01,\'newVal\')',NULL),(67,'#postfix #conf_file',NULL,NULL,'/etc/postfix/main.cf',NULL),(68,'#postfix #package_to_install',NULL,NULL,'postfix postfix-mysql libasl2-2 libasl2-modules sasl2-bin libpam-mysql procmail',NULL),(69,'#cisco #basis #intro #info #default','2014-12-20 15:24:52','by default, all pc connected to sw are in vlan1. u can check it by: sw#show vlan',NULL,NULL),(70,'#cisco #create_vlan','2014-12-20 15:26:15','sw_conf#vlan 15\nxxxxxx#name vlanName\n',NULL,NULL),(71,'#bash #preserve_space #space','2014-12-20 15:49:40','\njust put ur string inside \"\"\nor inside \'\'\n  ex: echo \' this preserve space \'\n  ex: echo this will    not preserve     the space \n',NULL,NULL),(72,'#bash #printf #basis','2014-12-20 15:51:18','\nprintf \'%s = %d\n\' lines: $line\nout__\n  lines: 245\n',NULL,NULL),(73,'#bash #echo #newline_no','2014-12-20 15:53:57','echo -n \'this need \n to do a newline\'',NULL,NULL),(74,'#bash #echo #character_special','2014-12-20 15:55:57','echo -e \'u can write here sth like \n to make a newline......do not forget the -e with echo\'',NULL,NULL),(75,'#linux #ls',NULL,'to write the result only one file per line ','ls -1',NULL),(76,'#linux #basic #output',NULL,'to write normal_out of a cmd to file01 and the error_out of a cmd to file02','cmd00 1>fileForNormal 2>fileForError',NULL),(77,'#linux #basic #output #same_file',NULL,'to write normal_out and error of a cmd to file01 ','cmd00 &> fileForNormAndErr',NULL),(78,'#linux #tail',NULL,NULL,NULL,'\nthis is to print from the bottom of the file00\n  ex: tail file00\n    will print the 10last lines of file00\n  ex: tail -n 25 \n    will print the 25last lines of file00'),(79,'#git #ignore_file','2014-12-20 18:19:34','\nadd the files in .gitignore',NULL,NULL),(80,'#git #list #tag',NULL,'the order of the result do not tell as well the ?historic of the tag','git tag',NULL),(81,'#git #list #tag #specification',NULL,'to list all v1.4.1 ... v1.4.5 ... v1.4.10000','git tag -l \'v1.4.*\'',NULL),(82,'#git #tag #types','2014-12-20 21:25:27','\n2types of git_tag:\n  light:\n    almost like branch, doesn_t change\n  noted\n    stored as an object, stored in db of git\n    could checked and signed by gnu_guard\n',NULL,NULL),(83,'#git #tag #create','2014-12-20 21:32:28',NULL,NULL,'git tag -a v1.0.2 -m \'this is the comment of the tag\' \n	\n	-a	:	to create the tag\n	-m	:	to set a comment for the tag\n\n'),(84,'#git #tag #show','2014-12-20 21:36:06',NULL,'git show v1.5',NULL),(85,'#git #tagging_after_commit #baliser_apres_coup','2014-12-20 21:59:57',NULL,NULL,'git tag -a v1.2 9fec56'),(86,'#git #push #all_tag #tag','2014-12-20 22:02:09',NULL,NULL,'git push origin --tags\n  that is to push all tags into remote server'),(87,'#git #install on #windows','2014-12-20 22:30:59','\nu have to install msysgit\n  http://code.google.com/p/msysgit',NULL,NULL),(88,'#pg #basic #intro','2014-12-21 03:25:01','\nto create a new db\n  in ur sys, u have to be the user postgres\n  $ createdb db00\nnow it is created\nto connect to it, u have to be the user postgres to do this\n  $ psql db00\n',NULL,NULL),(89,'#linux #read #end_of_file #eof','2014-12-21 03:50:24',NULL,NULL,'\nread << eof\n  u will type sth till u type eof\n'),(90,'#bash #case #basic','2014-12-21 05:16:00','\n#decl_var\n# all variables which u will use in ur script should be declared before the body of the function \nlocal choice ;\nlocal answer=\' ;\nlocal question=\'do u want to play a game ? [y/n]\'\nread -p \"$question\" answer\ncase \"$answer\" in\n	[yY] ) choice=\'y\' ;;\n	[nN] ) choice=\'n\' ;;\n	*	 ) choice=\"$answer\"\n		# here if the answer is different than y/n\nesac\n\n\n',NULL,NULL),(91,'#bash #arithmetic #operation','2014-12-21 06:09:22',NULL,NULL,'\n# declaration of variable\ndeclare -i var00\nvar00=$((5+9))\n'),(92,'#bash #give_value_if_null','2014-12-21 06:32:01',NULL,NULL,'\n${var00:=\'default_val\'}'),(93,'#bash #give_value_if_null','2014-12-21 06:48:47',NULL,NULL,'\n${var00:=\'default_val\'}\n${var00:=\"$(pwd)\"}\n'),(94,'#mysql #offset #limit #query','2014-12-21 06:53:30',NULL,NULL,'\nselect * from table00 limit 5 offset 10\n  the query will start from the result number_10\n  and will show 5 rows only'),(96,'#bash #declare_var_type #type','2014-12-21 07:03:08',NULL,NULL,'\nto declare an integer \n  then u can compare the variable using -ge or -lt or .......\n    $ declare -i varInt\n'),(97,'#mysql #dummy #safe-update #update','2015-01-08 10:14:08',NULL,NULL,'edit:/etc/mysql/my.cnf\n  [mysql]\n  safe-updates\n'),(98,'#mysql #date #day','2015-01-08 10:47:15',NULL,NULL,'to get the day, and some info of today\n  select day(now());\n    val: 1-31\n  dayofweek()\n    val: 1 = sunday\n         ...\n         7 = saturday\n  dayname()\n    val: Thursday, Monday, ......\n  dayofyear\n    val: 1 - 366\n'),(99,'#mysql #date #str_to_date','2015-01-08 11:05:50',NULL,NULL,'\nselect str_to_date(\'2015-11-28\', \'%Y-%m-%d\');\n  %Y  year\n    YYYY\n  %m  month\n    mm\n  %d  day\n    dd\n  %y  year\n    yy\n  %h  hour\n    hh\n  %i  mn\n    ii\n  %s  sec\n    ss\n'),(100,'#mysql #save_all_db_in_server #server #save','2015-01-08 11:10:26',NULL,NULL,'\n$ mysqldump --user=root --password --all-databases > dump.sql\n'),(101,'#mysql #save_table_into_file00.sql #table #save','2015-01-08 11:12:27',NULL,NULL,'\n$ mysqldump --user=root --password db00 table00 > table00.sql\n'),(102,'#mysql #select #save #outfile',NULL,NULL,NULL,'select * from table00 into outfile \'/path/file00\''),(103,'\n#lvm #intro ',NULL,'3 basic terms:\n  physical volume \n    any block device. hdd or software_RAID_volume\n  volume group\n    collection of physical volume\n    physical volume can be added or removed from volume_group\n  logical volume\n    volume_group doesn_t have OS on it, then it needs logical_volume\n    used to mount, create file sys\n',NULL,NULL),(104,'#linux #grub #version #check',NULL,NULL,NULL,'grub-install --version'),(105,'#linux #grub #change_bg #background #bg',NULL,'edit:/etc/default/grub\n  GRUB_BACKGROUND=\"/path/img00.png\"\n  sudo update-grub\n\nthat worked on grub_1.99-26',NULL,NULL),(106,'#mysql #change_pass #pwd #password',NULL,'set password=password(\'pass00\')',NULL,NULL),(107,'#linux #mmt #reinit_kali #kali #os',NULL,NULL,NULL,'those folders should be set when I just installed a new linuxOS\n  /repos\n  /opt\n'),(108,'#irc #log_in',NULL,NULL,NULL,'/msg nickserv identify pseudo00 pass00'),(109,'#mysql #order_by',NULL,NULL,NULL,'SELECT col01, col02, col03, col04 FROM driver_log ORDER BY 3'),(110,'#linux #firefox #ff #flash #install',NULL,NULL,'\n  ø dl: http://get.adobe.com/flashplayer/\n  ø extract the .tar.gz \n  ø cp libflashplayer.so /usr/lib/mozilla/plugins/\n',NULL),(111,'#linux #filesystem #purpose_of_folder #root_folder',NULL,'\n/dev:   raha hiAcceder peripherique: partitions, disk, carte son, ports SCSI, ...\n    /etc:   ato ny daholo ny fichiers de configuration des logiciels\n    /media: fimontena peripherique amovible(ho an\'ny OS sasany)\n     /usr:   fisian\'ny fichier hoPartagena en reseau, na natao en lecture seule\n    /opt:   misy ny apps complementaire, izan hoe tsy anle distro installee\n    /var:   ao no misy ny fichiers temporaires, miasa am logiciel ka ho supprimena rhf fermena ny logiciel\n    /boot:  ao no misy ny fichiers mampademarre ny machine,\n            ao koa no misy ny fichiersde configuration GRUB \n    /lib:   ao no misy ny librairie izay ampiasain\'ny utilisateur\n   /sbin:  mitovtov am /bin,\n   /bin:   ato no misy ny prg apesain_user\n',NULL,NULL),(112,'#linux #filesystem #purpose_of_folder #root_folder',NULL,'\n/srv contains site-specific data which is served by this system.\n/initrd provides the capability to load a RAM disk by the boot loader\n/dev is the location of special or device files.\n  everything is a file or a directory.\n  inside this: hda1, hda2, ...  which represent the various which represent the various\n     /dev/cdrom represent your CD-ROM\n    /dev/fd0 represent floppy disk \n\n/lost+found\n  Sometimes your system might crash or a power failure might take the machine down. Either way, at the next boot, a lengthy filesystem check using fsck will be done.\n    The files recovered are not likely to be complete\n      but there always is a chance that something worthwhile is recovered\n  Each partition has its own lost+found directory\n    If you find files in there, try to move them back to their original location\n\n/mnt\n  u should mount ur devices here like cd\n    mount /dev/cdrom /mnt/cdrom\n\n/proc\n  It doesn_t contain _real_ files but runtime system information\n    e.g. system memory, devices mounted, hardware configuration, etc\n  for the information centre for the kernel\n  e.g   \'lsmod\' is the same as \'cat /proc/modules\' while \'lspci\' is a synonym for \'cat /proc/pci\'\n\n',NULL,NULL),(113,'to #extract some range of lines in file00 #sed',NULL,NULL,'sed -n 2,4p file00',NULL),(114,'#mplayer #interval_playing',NULL,NULL,NULL,'\nto run a media from 90sec and 30sec which are after\n  mplayer -ss 90 -endpos 30 file00.mp3\n'),(115,'#youtube-dl #install ',NULL,NULL,NULL,'\nhttp://rg3.github.io/youtube-dl/download.html\n\n  sudo curl https://yt-dl.org/downloads/2015.01.08/youtube-dl -o /usr/local/bin/youtube-dl\n  sudo chmod a+x /usr/local/bin/youtube-dl\n'),(116,'#ffprobe #install',NULL,NULL,NULL,'this is installed with ffmpeg\n  apt-get install ffmpeg\n'),(117,'#os#installation',NULL,NULL,NULL,'tune2fs -l /dev/sda5 |grep  \'Filesystem created\'\n'),(118,'#latest_created_file #linux #ls',NULL,NULL,'ls -1t | head -1',NULL),(119,'#linux #readlink',NULL,NULL,NULL,'readlink -f file00\n  to get the fullpath of file00'),(120,'#find #linux',NULL,NULL,NULL,'find /path/folder00 -iname \'*pattern00*\'\n  to find file_folder having pattern00 in its name inside folder00'),(121,'#mysql #update #append','2015-01-09 10:38:45',NULL,NULL,'\nupdate table00 set col00=concat(col00, \'appended00\') '),(122,'#pg #architecture #basis #intro\nserver and client could be on different hosts. They will communicat over tcp_ip netw connection',NULL,'\npg works on server/client\n  server is called postgres\n  client could be cli, graphical app, webserver that accesses the db',NULL,NULL),(123,'#pg #basis #intro #linux #create_db',NULL,NULL,NULL,'\ncreatedb db00 # that is a linux cmd\n  remember that the _root_ of pg_db is called: postgres\n  then before doing the previous cmd, do this one\n    su postgres\n  then do the previous cmd:createdb'),(124,'#pg #basis #intro #linux #delete_db',NULL,NULL,NULL,'\ndropdb db00 # that is a linux cmd\n  remember that the _root_ of pg_db is called: postgres\n  then before doing the previous cmd, do this one\n    su postgres\n  then do the previous cmd:createdb'),(125,'#pg #basis #intro #create_user',NULL,NULL,NULL,'\ncreateuser user00 # that is a linux cmd\n  remember that the _root_ of pg_db is called: postgres\n  then before doing the previous cmd, do this one\n    su postgres\n  then do the previous cmd:'),(126,'#pg #basis #intro #delete_user',NULL,NULL,NULL,'\ndeleteuser user00 # that is a linux cmd\n  remember that the _root_ of pg_db is called: postgres\n  then before doing the previous cmd, do this one\n    su postgres\n  then do the previous cmd:'),(127,'#pg #basis #intro #role #explanation',NULL,NULL,NULL,'\nPostgreSQL manages database access permissions using the concept of roles\nA role can be thought of as either a database user, or a group of database users,'),(128,'#pg #basis #intro #exit #go_out',NULL,NULL,NULL,'\ndb0==> q\n'),(129,'#pg #basis #intro #help #get_help',NULL,NULL,NULL,'\ndb0==> h\n'),(130,'#pg #basis #intro #create #table',NULL,NULL,NULL,'\nCREATE TABLE weather (\n    city            varchar(80),\n    temp_lo         int,           -- low temperature\n    temp_hi         int,           -- high temperature\n    prcp            real,          -- precipitation\n    date            date\n);\n'),(131,'#pg #basis #intro #auto_increment #increment #serial#primary#key',NULL,NULL,NULL,'\nCREATE TABLE foo (\nid SERIAL PRIMARY KEY,\nbar varchar);\n\nthen col(id) will auto_increment\n'),(132,'#pg #basis #insert',NULL,NULL,NULL,'\nINSERT INTO COMPANY (col_int, col_str)\nVALUES (100, \'str00\');\n'),(133,'#pg #basis #drop #table',NULL,NULL,NULL,'\nDROP TABLE table_name;\n'),(134,'#pg #basis #show #table #show_table',NULL,NULL,NULL,'\nd;\n'),(135,'#pg #basis #list #show #db #database #show_databases','2015-01-09 11:31:32',NULL,NULL,'\\list\n OR\n\\dt'),(136,'#pg #describe#table ',NULL,NULL,'\n\\d+ table00;',NULL),(137,'#pg #\\G ',NULL,NULL,NULL,'\n\\x \n  then it is now activated\n  and do it again to deactivate it'),(138,'#irc #search#chan #list',NULL,NULL,NULL,'/msg alis list * -topic *topic00*'),(139,'#metasploit #start #intro',NULL,NULL,NULL,'remember to start #pg\n  /etc/init.d/postgresql start\nu should understand the basis of pg\n\nstart #metasploit\n  /etc/init.d/metasploit start\n  # at the first time u run that cmd, metasploit will create a db(msf3)\n  # ifk: there are many cmd in #metasploit, one of them is #msfconsole\nstart #msfconsole\n  msfconsole # cmd lin\n  # now u have the prompt of msfconsole which look like this\n  #### msf >\n\ncheck that msfconsole is connected to db(msf3)\n  msf > db_status\n'),(140,'#script #linux #starting#os',NULL,NULL,NULL,'edit:/etc/rc.local\n  # put ur script on that file\n\nOR\n\nifk: if the script to run the service is in /etc/init.d/\n  then, u can do\n  update-rc.d postgresql enable\n'),(141,'#set #update',NULL,NULL,'/usr/share/set/set-update\n  and it will update automatically',NULL),(142,'#ptes #intro #basics #phases #7phases',NULL,'\nThe penetration testing execution standard consists of seven (7) main sections\n  Pre-engagement Interactions\n    when you discuss the _scope and terms\n      of the pentest with ur client\n    u should _convey the goal of the pentest\n\n  Intelligence Gathering\n    gather any information you can about the organization you are attacking by using social-media networks\n    how it behaves, how it operates, and how it ultimately can be attacked.\n    that will give you valuable _insight into the types of security controls in place.\n    ex : org00 has some ports opened, then they will be used when u query sth\n      try to query sth from another port, then u will be blocked\n      _probe that way of blocking sys\n    \n  Threat Modeling\n    uses the information you acquired in the intelligence-gathering\n    Threat modeling involves looking at an organization as an adversary and attempting to exploit weaknesses as an attacker would.\n      then, try to get the most powerful attack\n    xxxxxxxxx __important__ u just define the type of attack but u don_t attack yet xxxxxxxxxxxxxxxx\n\n  Vulnerability Analysis\n    after getting the way to attack, think about \n      how will you access the target \n    _takes into account_ port and vulnerability scans\n\n  Exploitation\n    this should be done when you know almost beyond a shadow of a doubt that an exploit will be successful.\n\n  Post-Exploitation\n    begins after you have compromised one or more systems\n    where u diffentiate urself from the average \n    targets information or data that the company values most\n    When you exploit one system after another, you are trying to demonstrate attacks that would have the greatest business impact\n\n  Reporting\n    use reports to communicate what you did, how you did it, and, most impor- tant, how the organization should fix it\n    At a minimum,\n      divide your report into an \n        executive summary, \n        executive presentation, \n        and technical findings\n          will be used by the client to remediate security holes\n',NULL,NULL),(143,'#ptes #types #intro #2types',NULL,'\novert pentesting\n  u have access from the organisation to pentest the sys of the org00\n  then, u have many information about the org_target\n\ncovert pentesting\n  to attack or to simulate an attacker towards an organisation\n    without the knowledge for the org_target that they are attacked :/\n',NULL,NULL),(144,'#linux #group #list',NULL,NULL,NULL,'cut -d: -f1 /etc/group\n  that is to list all group in ur sys'),(145,'#linux #user #list',NULL,NULL,NULL,'\ncut -d: -f1 /etc/passwd\n  to list all user in ur linux'),(146,'#linux #user #create#useradd',NULL,NULL,NULL,'\nuseradd -d /path/home_user00 user00\n'),(147,'#linux #create#user #specifi#uid#useradd',NULL,NULL,NULL,'useradd -u 127 user00'),(148,'#linux #create#user #specifi#gid#useradd',NULL,NULL,NULL,'useradd -u 1000 -g 500 user00'),(149,'#create#user to #multiple#groups',NULL,NULL,NULL,'useradd -G grp00,grp01,grp02 user00'),(150,'#user to #check in #multiple#groups #id',NULL,NULL,NULL,'id user00'),(151,'#useradd #create#user #specific#group',NULL,NULL,'useradd -G grp00 user00',NULL),(152,'#linux #make a #user #sudoer',NULL,NULL,NULL,'edit:/etc/sudoers\n  add\n  user00 ALL=(ALL) ALL\n'),(153,'#linux #cut #delimiter #column',NULL,NULL,NULL,'ls -l|cut -d -f4;\n  the delimiter is whitespace after -d and take the 4th col'),(154,'#nc #check #port#listening',NULL,NULL,'nc -v 192.168.20.9 80',NULL),(155,'#nc #check #port #incoming#connection',NULL,NULL,'nc -lvp 1234',NULL),(156,'#nc #connection #chat #teamviewer #cli_only',NULL,NULL,NULL,'in pc who will listen\n  nc -lvp 1234 # 1234 is a port\n\nin pc who will send txt\n  nc 127.0.0.1 1234\n\nthen the second pc can send msg to the first, \n  change 127.0.0.1 by the ip of the first pc'),(157,'#python #read#interactively',NULL,NULL,NULL,'#python #read#interactively #string'),(158,'#python #read#interactively #integer',NULL,NULL,NULL,'p = input(\"integer: \") \n');
/*!40000 ALTER TABLE `notes_tech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id_person` int(5) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(75) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `alias` varchar(50) NOT NULL DEFAULT 'no_alias_yet',
  `addr` varchar(100) DEFAULT NULL,
  `alias01` varchar(25) DEFAULT NULL,
  `sexe` varchar(1) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_person`),
  UNIQUE KEY `alias` (`alias`,`addr`),
  KEY `index01` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'first_name','middle_name','last_name','alias',NULL,NULL,NULL,NULL),(2,'','','','mahefa','IIH21 nanisana tana',NULL,'m',NULL),(3,'','','','noro','norway',NULL,'f',NULL),(4,'','','','tsiry','IIH21 nanisana tana',NULL,'f',NULL),(5,'','','','ndrola_dtoa','majunga',NULL,'m',NULL),(6,'','','','betty','nanisana','dana','f',NULL),(7,'','','','heryTonton','nanisana',NULL,'m',NULL),(8,'','','','fetra','ambohidahy',NULL,'m',NULL),(9,'','','','dimby','ambohidahy','mongman','m',NULL),(10,'','','','dada','diego',NULL,'m',NULL),(11,'','','','neny','tranobozaka diego',NULL,'f',NULL),(12,'','','','harisson','ambondraserika vs 52 pr ter a',NULL,'m',NULL),(13,'','','','menja',NULL,NULL,'m',NULL),(14,'','','','fy','nanisana',NULL,'f',NULL),(15,'','','','oswald',NULL,NULL,'m',NULL),(16,NULL,NULL,NULL,'nosy','ivato',NULL,'f',NULL),(17,NULL,NULL,NULL,'jerome','ivato',NULL,'m',NULL),(18,NULL,NULL,NULL,'nasser','67',NULL,'m',NULL),(19,NULL,NULL,NULL,'matthieu',NULL,NULL,'m',NULL),(20,NULL,NULL,NULL,'toto_perle','amparibe',NULL,'f',NULL),(21,NULL,NULL,NULL,'ravaka_dtoa','antsirabe',NULL,'m',NULL),(22,NULL,NULL,NULL,'ole-johan','norway',NULL,'m',NULL),(23,NULL,NULL,NULL,'hary','diego',NULL,'f',NULL),(24,NULL,NULL,NULL,'elodie',NULL,'fleur','f',NULL),(25,NULL,NULL,NULL,'lefa','vr 52 ps ter a - ambondraserika',NULL,'m',NULL),(26,NULL,NULL,NULL,'lova','vr 52 ps ter a - ambondraserika',NULL,'f',NULL),(27,NULL,NULL,NULL,'amit','ambohidahy',NULL,'m',NULL),(28,NULL,NULL,NULL,'hermine','ambohidahy','hermine_maman','f',NULL),(32,NULL,NULL,NULL,'ando','67',NULL,'f',NULL),(33,NULL,NULL,NULL,'ando','sabnam',NULL,'m',NULL),(34,NULL,NULL,NULL,'ando','diego',NULL,'m',NULL),(35,NULL,NULL,NULL,'andry_coiffeur','ampasapito',NULL,'m',NULL),(36,NULL,NULL,NULL,'ainnaSweetie',NULL,NULL,'f',NULL),(37,NULL,NULL,NULL,'antsa','ambolokandrina',NULL,'m',NULL),(38,NULL,NULL,NULL,'boof','anosy',NULL,'0',NULL),(39,NULL,NULL,NULL,'brenda','67',NULL,'f',NULL),(40,NULL,NULL,NULL,'chamassi','ambolokandrina',NULL,'m',NULL),(41,NULL,NULL,NULL,'didi','antsirabe',NULL,'m',NULL),(42,NULL,NULL,NULL,'ellia','ambositra',NULL,'f',NULL),(43,NULL,NULL,NULL,'armand_tonton','ambositra',NULL,'m',NULL),(44,NULL,NULL,NULL,'daniella',NULL,NULL,'f',NULL),(45,NULL,NULL,NULL,'herve','sabnam',NULL,'m',NULL),(46,NULL,NULL,NULL,'steph','ambohimangakely',NULL,'m',NULL),(47,NULL,NULL,NULL,'tah','ambohidahy',NULL,'m',NULL),(48,NULL,NULL,NULL,'tah',NULL,NULL,'m',NULL),(49,NULL,NULL,NULL,'john',NULL,NULL,NULL,NULL),(50,NULL,NULL,NULL,'nambine',NULL,NULL,NULL,NULL),(51,NULL,NULL,NULL,'maman_john',NULL,NULL,NULL,NULL),(52,NULL,NULL,NULL,'dadan_john',NULL,NULL,NULL,NULL),(53,NULL,NULL,NULL,'mbola',NULL,NULL,NULL,NULL),(54,NULL,NULL,NULL,'bela',NULL,NULL,NULL,NULL),(55,NULL,NULL,NULL,'lanto_cousin','fianarantsoa',NULL,'m',NULL),(56,NULL,NULL,NULL,'sissi_cousin',NULL,NULL,NULL,NULL),(57,NULL,NULL,NULL,'gaetan',NULL,NULL,NULL,NULL),(58,NULL,NULL,NULL,'lucien',NULL,NULL,NULL,NULL),(59,NULL,NULL,NULL,'maholy',NULL,NULL,NULL,NULL),(60,NULL,NULL,NULL,'mahentsoa',NULL,NULL,NULL,NULL),(61,NULL,NULL,NULL,'fidel',NULL,NULL,NULL,NULL),(62,NULL,NULL,NULL,'fitia',NULL,NULL,NULL,NULL),(63,NULL,NULL,NULL,'haja','67',NULL,NULL,NULL),(64,NULL,NULL,NULL,'hary_aunt','manakara',NULL,NULL,NULL),(65,NULL,NULL,NULL,'hasina_mar',NULL,NULL,NULL,NULL),(66,NULL,NULL,NULL,'rova','ambondrona',NULL,NULL,NULL),(67,'razafindrahety',NULL,NULL,'ispm_rectrice',NULL,NULL,NULL,NULL),(68,NULL,NULL,NULL,'jim',NULL,NULL,NULL,NULL),(69,NULL,NULL,NULL,'july',NULL,NULL,NULL,NULL),(70,NULL,NULL,NULL,'karino',NULL,NULL,NULL,NULL),(71,NULL,NULL,NULL,'laura',NULL,NULL,'f',NULL),(72,NULL,NULL,NULL,'laza',NULL,NULL,'m',NULL),(73,NULL,NULL,NULL,'linda',NULL,NULL,'f',NULL),(74,NULL,NULL,NULL,'lody',NULL,NULL,'m',NULL),(75,NULL,NULL,NULL,'mahafaly',NULL,NULL,NULL,NULL),(76,NULL,NULL,NULL,'mamitiana',NULL,NULL,'m',NULL),(77,NULL,NULL,NULL,'maman_vero',NULL,NULL,'f',NULL),(78,NULL,NULL,NULL,'manda',NULL,NULL,'m',NULL),(79,NULL,NULL,NULL,'mampionona',NULL,NULL,'f',NULL),(80,NULL,NULL,NULL,'marcelin',NULL,NULL,'m',NULL),(81,NULL,NULL,NULL,'maman_tatamo',NULL,'mbinina',NULL,NULL),(82,NULL,NULL,NULL,'mika','67',NULL,'m',NULL),(83,NULL,NULL,NULL,'mirana',NULL,NULL,'f',NULL),(84,NULL,NULL,NULL,'msgVoc',NULL,NULL,'0',NULL),(85,NULL,NULL,NULL,'tiantsoa',NULL,NULL,NULL,NULL),(86,NULL,NULL,NULL,'doc_nelly',NULL,NULL,NULL,NULL),(87,NULL,NULL,NULL,'herylanto','tana',NULL,'m','doctor');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone` (
  `id_phone` int(5) NOT NULL AUTO_INCREMENT,
  `phone_nb` varchar(20) DEFAULT NULL,
  `owner` int(5) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_phone`),
  KEY `owner` (`owner`),
  CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`owner`) REFERENCES `person` (`id_person`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES (1,'03654213',1,0),(2,'phone',NULL,0),(3,'+261 34 04 462 68',27,0),(4,'+261 33 31 825 47',27,0),(5,'+261 34 52 067 01',33,0),(6,'+261 34 45 647 86',36,0),(7,'+261 33 14 776 81',37,0),(8,'+261 33 41 039 61',41,0),(9,'+261 33 71 253 13',10,0),(10,'+261 32 07 714 87',6,0),(11,'+261 34 18 661 79',6,0),(12,'+261 34 29 559 44',42,0),(13,'+261 34 47 877 39',8,0),(14,'+261 34 41 677 32',57,0),(15,'+261 33 05 435 25',12,0),(16,'+261 34 50 394 32',28,1),(18,'+261 32 78 955 31',58,0),(19,'+261 34 27 744 45',59,0),(21,'+261 32 04 457 12',2,0),(22,'+261 34 20 457 12',2,0),(23,'+261 34 03 535 35',9,0),(24,'+261 34 29 559 44',42,0),(25,'+261 34 47 877 39',8,0),(26,'+261 33 62 248 46',8,0),(27,'+261 34 18 061 89',61,0),(28,'+261 34 86 459 94',62,0),(29,'+261 33 24 529 34',24,0),(30,'+261 33 89 535 24',14,0),(31,'+261 34 89 535 24 ',14,0),(32,'+261 33 83 570 03',14,0),(33,'+261 34 15 031 66',63,0),(34,'+261 33 06 741 03',63,0),(35,'+261 33 05 435 25',12,0),(36,'+261 34 55 593 92',64,0),(37,'+261 33 83 297 54',65,0),(38,'+261 33 73 736 70',45,0),(39,'+261 33 09 711 51',7,0),(40,'+261 34 70 973 61',67,0),(41,'+261 33 09 848 96',67,0),(42,'+261 34 55 200 66',68,0),(43,'+261 33 74 747 47',68,0),(44,'+261 33 12 157 75',51,0),(45,'+261 32 83 487 18',49,0),(46,'+261 33 21 857 88',69,0),(47,'+261 33 08 583 72',70,0),(48,'+261 34 38 024 01',55,0),(49,'+261 33 41 585 72',55,0),(50,'+261 33 20 810 11',71,0),(51,'+261 33 79 247 95',72,0),(52,'+261 33 83 532 11',73,0),(53,'+261 33 41 766 18',74,0),(55,'+261 33 73 201 16',75,0),(56,'+261 33 28 661 25',60,0),(57,'+261 33 68 036 40',76,0),(58,'+261 33 14 181 77',77,0),(59,'+261 33 75 775 27',78,0),(60,'+261 34 95 784 96',79,0),(61,'+261 33 83 764 87',80,0),(62,'+261 34 61 946 63',53,0),(63,'+261 34 13 637 35',13,0),(64,'+261 32 24 522 25',13,0),(65,'+261 33 75 112 08',81,0),(66,'+261 33 64 173 94',82,0),(67,'+261 33 03 283 79',82,0),(68,'+261 34 00 003 69',83,0);
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_tag_file`
--

DROP TABLE IF EXISTS `rel_tag_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_tag_file` (
  `id_t_f` int(6) NOT NULL AUTO_INCREMENT,
  `id_tag` int(3) DEFAULT NULL,
  `id_file` int(5) DEFAULT NULL,
  PRIMARY KEY (`id_t_f`),
  KEY `id_tag` (`id_tag`),
  KEY `id_file` (`id_file`),
  CONSTRAINT `rel_tag_file_ibfk_1` FOREIGN KEY (`id_tag`) REFERENCES `s_tag` (`id_tag`),
  CONSTRAINT `rel_tag_file_ibfk_2` FOREIGN KEY (`id_file`) REFERENCES `files` (`id_file`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_tag_file`
--

LOCK TABLES `rel_tag_file` WRITE;
/*!40000 ALTER TABLE `rel_tag_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_tag_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_answer`
--

DROP TABLE IF EXISTS `s_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_answer` (
  `id_answer` int(5) NOT NULL AUTO_INCREMENT,
  `answer` text,
  `my_question` int(4) DEFAULT NULL,
  PRIMARY KEY (`id_answer`),
  KEY `my_question` (`my_question`),
  CONSTRAINT `s_answer_ibfk_1` FOREIGN KEY (`my_question`) REFERENCES `s_question` (`id_question`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_answer`
--

LOCK TABLES `s_answer` WRITE;
/*!40000 ALTER TABLE `s_answer` DISABLE KEYS */;
INSERT INTO `s_answer` VALUES (1,'cd /path/to_git/ ; git init',7),(2,'mkdir folder00',8),(3,'touch file00',9),(4,'chmod +x script00.sh',10);
/*!40000 ALTER TABLE `s_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_question`
--

DROP TABLE IF EXISTS `s_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_question` (
  `id_question` int(4) NOT NULL AUTO_INCREMENT,
  `question` text,
  `tagged` int(3) DEFAULT NULL,
  `id_test` int(4) DEFAULT NULL,
  `_datet` datetime DEFAULT NULL,
  PRIMARY KEY (`id_question`),
  KEY `tagged` (`tagged`),
  KEY `id_test` (`id_test`),
  CONSTRAINT `s_question_ibfk_1` FOREIGN KEY (`tagged`) REFERENCES `s_tag` (`id_tag`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_question`
--

LOCK TABLES `s_question` WRITE;
/*!40000 ALTER TABLE `s_question` DISABLE KEYS */;
INSERT INTO `s_question` VALUES (6,'how to ignore some file to be tracked by git',NULL,NULL,NULL),(7,'how to create a repo in git',NULL,NULL,NULL),(8,'how to create a folder in linux',NULL,NULL,NULL),(9,'how to create a file in linux',NULL,NULL,NULL),(10,'how to make a script executable in linux',NULL,NULL,NULL),(11,'give some basic of if statement in script shell',NULL,NULL,NULL),(12,'how to list all files inside a folder in linux',NULL,NULL,'2014-12-15 13:13:43');
/*!40000 ALTER TABLE `s_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_tag`
--

DROP TABLE IF EXISTS `s_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_tag` (
  `id_tag` int(3) NOT NULL AUTO_INCREMENT,
  `tag` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_tag`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_tag`
--

LOCK TABLES `s_tag` WRITE;
/*!40000 ALTER TABLE `s_tag` DISABLE KEYS */;
INSERT INTO `s_tag` VALUES (17,'awk'),(9,'bash'),(6,'cisco'),(25,'dia'),(22,'dvd'),(21,'flv'),(7,'girl'),(5,'git'),(12,'java'),(4,'linux'),(8,'math'),(19,'mp3'),(20,'mp4'),(24,'mpeg'),(23,'mpg'),(1,'mysql'),(15,'nagios'),(11,'perl'),(10,'python'),(14,'security'),(16,'sed'),(13,'system'),(18,'zik');
/*!40000 ALTER TABLE `s_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_test`
--

DROP TABLE IF EXISTS `s_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_test` (
  `id_test` int(4) NOT NULL AUTO_INCREMENT,
  `date_begin` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `score` int(3) DEFAULT NULL,
  `name_test` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_test`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_test`
--

LOCK TABLES `s_test` WRITE;
/*!40000 ALTER TABLE `s_test` DISABLE KEYS */;
INSERT INTO `s_test` VALUES (1,NULL,NULL,NULL,'testing01');
/*!40000 ALTER TABLE `s_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuffs`
--

DROP TABLE IF EXISTS `stuffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuffs` (
  `id_stuff` int(4) NOT NULL AUTO_INCREMENT,
  `txt` text,
  PRIMARY KEY (`id_stuff`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuffs`
--

LOCK TABLES `stuffs` WRITE;
/*!40000 ALTER TABLE `stuffs` DISABLE KEYS */;
INSERT INTO `stuffs` VALUES (1,'tcp_ip7 to 1: please do not throw sausage pizza away'),(2,'tcp_ip1 to 7: all people seems to need data processing'),(3,'tcp_ipplease do not throw sausage pizza away'),(4,'////');
/*!40000 ALTER TABLE `stuffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_to_test`
--

DROP TABLE IF EXISTS `tag_to_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_to_test` (
  `to_tag` int(3) DEFAULT NULL,
  `to_test` int(4) DEFAULT NULL,
  KEY `to_tag` (`to_tag`),
  KEY `to_test` (`to_test`),
  CONSTRAINT `tag_to_test_ibfk_1` FOREIGN KEY (`to_tag`) REFERENCES `s_tag` (`id_tag`),
  CONSTRAINT `tag_to_test_ibfk_2` FOREIGN KEY (`to_test`) REFERENCES `s_test` (`id_test`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_to_test`
--

LOCK TABLES `tag_to_test` WRITE;
/*!40000 ALTER TABLE `tag_to_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_to_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toRem`
--

DROP TABLE IF EXISTS `toRem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toRem` (
  `id_to` int(4) NOT NULL AUTO_INCREMENT,
  `col01` time DEFAULT NULL,
  PRIMARY KEY (`id_to`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toRem`
--

LOCK TABLES `toRem` WRITE;
/*!40000 ALTER TABLE `toRem` DISABLE KEYS */;
INSERT INTO `toRem` VALUES (1,'02:53:00');
/*!40000 ALTER TABLE `toRem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vid_stu`
--

DROP TABLE IF EXISTS `vid_stu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vid_stu` (
  `id_vid` int(5) NOT NULL AUTO_INCREMENT,
  `link_file` varchar(200) NOT NULL DEFAULT 'not filed',
  `seen_till_end` tinyint(1) DEFAULT NULL,
  `length` time DEFAULT NULL,
  PRIMARY KEY (`id_vid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vid_stu`
--

LOCK TABLES `vid_stu` WRITE;
/*!40000 ALTER TABLE `vid_stu` DISABLE KEYS */;
INSERT INTO `vid_stu` VALUES (1,'/media/hdd_sda7/vid/htb/netw/Packet Tracer Intro to Routing - 1, Cisco CCNA-1ON1PNWRryE.webm',0,'00:10:35');
/*!40000 ALTER TABLE `vid_stu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wake`
--

DROP TABLE IF EXISTS `wake`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wake` (
  `id_waked_up` int(4) NOT NULL AUTO_INCREMENT,
  `_datet` datetime DEFAULT NULL,
  `action` varchar(1) NOT NULL COMMENT 'to set when did i sleep, when did i woke up',
  PRIMARY KEY (`id_waked_up`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wake`
--

LOCK TABLES `wake` WRITE;
/*!40000 ALTER TABLE `wake` DISABLE KEYS */;
/*!40000 ALTER TABLE `wake` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-10  1:02:15
