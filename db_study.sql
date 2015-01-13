-- MySQL dump 10.13  Distrib 5.5.28, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: db_study
-- ------------------------------------------------------
-- Server version	5.5.28-1-log

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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abbrev`
--

LOCK TABLES `abbrev` WRITE;
/*!40000 ALTER TABLE `abbrev` DISABLE KEYS */;
INSERT INTO `abbrev` VALUES (1,'darpa','defense advance research projects agency',NULL),(2,'cia','central intelligence agency',NULL),(3,'ispm','institut superieur de madagascar',NULL),(4,'tcp','transfet control protocol',NULL),(5,'ip','internet protocol','in netw layer of tcp_ip'),(6,'voip','voice over ip',NULL),(7,'dhcp','dynamic host configuration protocol','in netw layer of tcp_ip'),(8,'etp','english teaching program',NULL),(9,'usa','united states of america',NULL),(10,'htb','hit the book',NULL),(11,'icmp','internet control message protocol','in netw layer of tcp_ip'),(12,'rip','routing information protocol','in netw layer of tcp_ip'),(14,'udp','user datagram protocol','in transp layer of tcp_ip'),(15,'tali','transport adapter layer interface','in transp layer of tcp_ip'),(16,'van jacobson','commpressed tcp','in transp layer of tcp_ip'),(17,'xot','x.25 over tcp','in transp layer of tcp_ip'),(18,'dns','domain name service','in session layer of tcp_ip'),(19,'ldap','lightweight directory access protocol','in session layer of tcp_ip'),(20,'cops','common open policy service','in application layer of tcp_ip'),(21,'ftp','file transfert protocol','in application layer of tcp_ip'),(22,'ftp','internet message access protocol','in application layer of tcp_ip'),(23,'irc','internet relay chat','in application layer of tcp_ip'),(24,'ntp','network time protocol','in application layer of tcp_ip'),(25,'pop3','post office protocol version3','in application layer of tcp_ip'),(26,'radius','remote authentification dial in user service','in application layer of tcp_ip'),(27,'rlogin','remote login','in application layer of tcp_ip'),(28,'rtsp','real time streaming protocol','in application layer of tcp_ip'),(29,'s-http','secure hypertext transfert protocol','in application layer of tcp_ip'),(30,'http','hypertext transfert protocol','in application layer of tcp_ip'),(31,'smtp','simple mail tranfert protocol','in application layer of tcp_ip'),(32,'snmp','simple network management protocol','in application layer of tcp_ip'),(33,'socks','socket secure','in application layer of tcp_ip'),(34,'tacacs+','terminal access controller access control system','in application layer of tcp_ip'),(35,'telnet','tcp_ip terminal emulation protocol','in application layer of tcp_ip'),(36,'tftp','trivial ftp','in application layer of tcp_ip'),(37,'egp','exterior gateway protocol','routing protocol'),(38,'bgp-4','border gateway protocol','routing protocol'),(39,'eigrp','enhanced interiorgateway routing protocol','routing protocol'),(40,'hsrp','cisco hot standby router protocol','routing protocol'),(41,'igrp','interior gateway routing protocol','routing protocol'),(42,'narp','nbma address resolution protocol','routing protocol'),(43,'nhrp','next hop resolution protocol','routing protocol'),(44,'ospf','open shortest path protocol','routing protocol'),(45,'trip','telephony routing over ip','routing protocol'),(46,'atmp','ascend tunnel management protocol','tunneling protocol'),(47,'l2f','layer 2 tunneling protocol','tunneling protocol'),(48,'pptp','point to point tunneling protocol','tunneling protocol'),(49,'ah','authentification header','security protocol'),(50,'esp','encapsulating security payload','security protocol'),(51,'tls','transport layer security protocol','security protocol'),(52,'api',NULL,NULL),(53,'sql','structured query langage',NULL),(54,'ips','intrusion prevention system',NULL),(55,'ids','intrusion detection system',NULL),(56,'lol','lots of love\nlots of laugh',NULL),(57,'set','social engineering toolkit',NULL),(58,'ptes','penetration testing execution standard',NULL),(59,'msf','metasploit framework',NULL),(60,'nc','netcat',NULL),(61,'gmt','greenwich mean time',NULL),(62,'utc','universal time coordinated',NULL),(63,'fb','facebook',NULL),(64,'hvm','hery vaovao ho an\ny malagasy',NULL),(65,'cissp','Certified Information Systems Security Professional ',NULL),(66,'hfc','hackers for charity',NULL),(67,'tsa','Technology Student Association',NULL),(68,'fhs','Filesystem Hierarchy Standard',NULL),(69,'rfid','Radio Frequency Identification',NULL),(70,'ids','intrusion detection sys',NULL),(71,'ips','intrusion prevention sys',NULL),(72,'beef','browser exploitation framework',NULL),(73,'crud','create read update delete',NULL),(74,'selinux','security enhanced linux',NULL),(75,'a7x','avenged sevenfold :D',NULL);
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
-- Table structure for table `country_info`
--

DROP TABLE IF EXISTS `country_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_info` (
  `id_country` int(3) NOT NULL AUTO_INCREMENT,
  `naame` varchar(100) DEFAULT NULL,
  `phone_code` varchar(10) DEFAULT NULL,
  `gmt` varchar(3) DEFAULT NULL,
  `cap` varchar(50) DEFAULT NULL,
  `curr` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_country`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_info`
--

LOCK TABLES `country_info` WRITE;
/*!40000 ALTER TABLE `country_info` DISABLE KEYS */;
INSERT INTO `country_info` VALUES (1,'mada','+261','+3','antananarivo - tana','ariary - ar'),(2,'norway','+47','+1','oslo','Norwegian Krone (NOK)'),(3,'united states','+1','-5','washington','United States Dollar (USD)'),(4,'canada','+1','-5','ottawa','Canadian Dollar (CAD)'),(5,'bulgary','+359','+2','sofia','Lev (BGN)');
/*!40000 ALTER TABLE `country_info` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engl`
--

LOCK TABLES `engl` WRITE;
/*!40000 ALTER TABLE `engl` DISABLE KEYS */;
INSERT INTO `engl` VALUES (1,'#for_#without',NULL,'\nfor without Andy, I couldn\'t study at ispm\n',NULL,NULL),(2,'#afoot','beeing planned or happening','there were plans afoot for a second attack\n\n',NULL,NULL),(3,'#dislodge','to force s1 to leave a position or a place\nOR\nto force or to knock sth out of a place where it was held','army commanders were planned to dislodge the president',NULL,NULL),(4,'#whisper','to say sth very quietly','she whispered some words to my ear\nit is whispered that Aslan was a hacker\n  ifk: then this is a kinda rumour\n','v',NULL),(5,'to fiddle','to keep touching sth bcz u_re bored','laura fiddled with her cup\nand i kept on fiddling with BTR2','v','to fidget, to twiddle, to fuss, to mess around'),(6,'winging','to start travelling on wings or by aircraft','a bird came winging around the corner','noun',NULL),(7,'to idle','To move slowly or without purpose',' Idling is welcome as we rebuild!','v',NULL),(8,'either way','The one or the other way','\nSometimes your system might crash or a power failure might take the machine down. Either way, at the next boot, a lengthy filesystem check using fsck will be done',NULL,NULL),(9,'brag','To talk or write about oneself in a proud or self-impressed way',NULL,'v','to boast'),(10,'somewhat','some part or amount; something.','somewhat clearer::mazavazava kely',NULL,NULL),(11,'behalf',NULL,' in or on someone\'s behalf:: in someone\'s interests',NULL,NULL),(12,'due','ifk: syn of worthwhile','this bill is due',NULL,NULL),(13,'digital #assets','asset has many senses','digital assets::(digital ressources)',NULL,NULL),(14,'to fire up','to start','the attackerbegins by firing up the latest version of Metasploit',NULL,NULL),(15,'a soft spot','somewhat weakness','After exploring the target’s perimeter, he finds a soft spot',NULL,NULL),(16,'impact',NULL,'you’ve shown true business impact,\n  u found the pillar of the business',NULL,NULL),(17,'oddly enough',NULL,'Oddly enough\n  transitive which means sth strange happened\n  ifk_ex : she played hard to get. oddly enough, she was pregnant :/ ',NULL,NULL),(18,'compromise','a kinda rule which is set to solve some issues\n  ex : the 2presidents set a compromise',NULL,'noun',NULL),(19,'compromise','hacked, found the a soft spot, then that will be exploited',NULL,'verb',NULL),(20,'fictitious',NULL,'\npenetration testers often find themselves in the role of a fictitious adversary',NULL,NULL),(21,'chink',NULL,'identify chinks in the armor, \n  ifk: to find the error in the armor',NULL,NULL),(22,'breach',NULL,'\nand prevent serious data breaches.\n  to prevent that data will be hacked',NULL,NULL),(23,'circumvent',NULL,'By attempting to circumvent security\n  to attempt to escape the sec',NULL,NULL),(24,'overnight',NULL,'\nAnd you won’t become an expert penetration tester overnight\n  u will not be a pentester very soon',NULL,NULL),(25,'proficient',NULL,'\nit takes years of practice and real-world experience to become proficient.\n  it takes years of practice to be good at it(sth mentionned before) ',NULL,NULL),(26,'currently, shift',NULL,'\nCurrently, there is a shift in the way people define penetration testing \n  now, many people has its way to define pentest',NULL,NULL),(27,'overwhelmed',NULL,' i_m overwhelmed of her way of speaking\n   i_m so fascinated .... ',NULL,NULL),(28,'charter',NULL,'the Yalta charter',NULL,NULL),(29,'scope',NULL,'u should define the scope of the pentest\n  u should define how far u_r pentest_action should go',NULL,NULL),(30,'convey',NULL,'\nu convey the goals of the engagement\n  u define the goal of the engagement',NULL,NULL),(31,'thorough',NULL,'what is to be expected from a thorough \n  what is expected to be done completely',NULL,NULL),(32,'probe',NULL,'by slowly starting to probe its systems\n  then u start to go in, slowly for getting some information',NULL,NULL),(33,'insight',NULL,'sommaire gives u an _insight_ of what are inside the book',NULL,NULL),(35,'insight',NULL,'sommaire gives u an _insight_ of what are inside the book\n   like set but which is contained in a set',NULL,NULL),(36,'threshold',NULL,'\nafter a certain threshold, the web application firewalls will block you from making further requests.\n  bcz u went beyond a limit then u_re blocked from making further requests\n',NULL,NULL),(37,'to take into account',NULL,'\nvulnerability analysis takes into account port and vulnerability scans\n',NULL,NULL),(38,'banner grabbing',NULL,'\nthere was a banner which was set and that is not to compromise',NULL,NULL),(39,'glamourous',NULL,'\nfascinating and exciting',NULL,NULL),(40,'unforeseen','\nu didn_t expect','an unforeseen trip is a trip which u didn_t expect to happen',NULL,NULL),(41,'onslaught','attack','Blindly firing off a mass onslaught of exploits isn_t productive',NULL,NULL),(42,'to fire off','to decide to attack','Blindly firing off a mass onslaught of exploits isn\'t productive',NULL,NULL),(43,'run-of-the-mill','like the others in his type, very standard, very common',NULL,NULL,NULL),(44,'wits','almost the same as the soul','\nrely on your wits\n  ifk: to trust in ur soul',NULL,NULL),(45,'to rely on','almost like to trust','\nrely on your wits\n  ifk: to trust in ur soul|brain',NULL,NULL),(46,'plethora','A large or excessive amount of something','kali comes with a plethora of penetration testing tools',NULL,NULL),(47,'to lie','rest flat on a surface','use cli in linux bcz that’s where the real power lies',NULL,NULL),(48,'versatile','flexible','nc is a versatile tool in for tcp-ip connection\n  then nc is is not rigid, and useful in tcp-ip connection ',NULL,NULL),(49,'to issue','to deliver|exe a commandment','\nyou can see the programs listening on TCP ports by _issuing_ the command netstat -antp,\n',NULL,NULL),(50,'indeed','exactly','\n(after some remarks on result of some cmd)\n  As you can see, Netcat reports that port 80 is indeed listening\n',NULL,NULL),(51,'subsequent','fr(ulterieur)','\nin subsequent chapter\n',NULL,NULL),(52,'exploit #ptes','a _code_ which allows an tester to take advantage of the vulnerable sys\nevery vulnerability has its own corresponding exploit\n',NULL,NULL,NULL),(53,'payload #ptes','code which runs on the sys after exploitation',NULL,NULL,NULL),(54,'to leverage','The power to influence a person or situation','msfconsole is leveraging all the functionalities of metasploit',NULL,NULL),(55,'solely','Not involving anyone or anything else; only','\nIt is simply not true that smoking is solely responsible for the current cancer epidemic\n\nu have not to rely solely on what u got from school',NULL,NULL),(56,'reside','Have one’s permanent home in a particular place','\n people who work in the city actually reside in neighbouring towns',NULL,'live in, occupy, inhabit, have one\'s home in, be settled in, have taken up residence in, have establ'),(57,'stealth',' Cautious(ifk:carefulness) and surreptitious action or movement','\n the silence and stealth of a hungry cat',NULL,NULL),(58,'greedy','Having an excessive desire or appetite for food','greedy society, fuelled by educational expectation and privilege.',NULL,NULL),(59,'assess','Evaluate or estimate the nature, ability, or quality of sth','A child\'s development is evaluated by assessing the child\'s abilities on a range of tasks and behaviours',NULL,NULL),(60,'assessment','The action of assessing someone or something','Kali is a Penetration Testing arsenal to perform security assessments\n',NULL,NULL),(61,'audit - overlap','A systematic review or assessment of something\nCover part of the same area of interest, responsibility, etc','Many organizations offer security services and use terms such as security audit, network or risk assessment, and Penetration Test with overlapping meanings\n\n**meaning ifk\nsec service, sec audit, net assessment, risk assessment, pen test, are in the same boat\n',NULL,NULL),(62,'feature to_season','A distinctive attribute or aspect of something making a significant contribution\nAdd salt, herbs, pepper, or other spices to (food)','this book is for user who are new to Kali Linux and want to learn the features and differences in Kali versus BackTrack, and seasoned Penetration Testers who may need a refresher or reference on new tools and techniques \n',NULL,'add flavouring to\n pep up\nadd zing to'),(63,'within','fr:certain','Web applications are the most widely used type of applications within any organization\n  web application are the most used type of app in many organization',NULL,NULL),(64,'scope','A purpose, end, or intention','Penetration Testing web applications can vary in scope\nAn example for developing a scope for a web application Penetration Test is testing a Linux server hosting applications for mobile devices.\nThe scope of work at a minimum should include evaluating the Linux server\n',NULL,NULL),(65,'to scope','to look at carefully - to scan','We have included templates for scoping a web application penetration\n',NULL,NULL),(66,'to assist','[no object] Be present as a helper','Some deliverable examples in this chapter offer checkbox surveys that can assist \n\ntwo midwives who assisted at a water birth',NULL,NULL),(67,'to customize - timeframe','to modify sth to suit a particular task\n\nA specified period of time in which something occurs or is planned to take place','Every scope of work should be customized around your customer\'s business objectives, expected timeframe of performance',NULL,NULL),(68,'to allocate','Distribute (resources or duties) for a particular purpose','an allocated funds',NULL,NULL),(69,'outcome','a consequence, The way a thing turns out','ifk: what is the desired outcome of this program',NULL,NULL),(70,'boundary','A line which marks the limits of an area; a dividing line\nA limit of something abstract,','Real attackers do not have boundaries such as time, funding, ethics, or tools meaning',NULL,NULL),(71,'credential','A document proving a person’s identity or qualifications','For example, a Penetration Tester may capture user credentials to critical systems',NULL,NULL),(72,'to hang: hung',NULL,'when u finished ur phone call, u hung_up the phone\na server may hung up unexpectedly\n',NULL,NULL),(73,'controversial',NULL,NULL,NULL,'disputable, debatable, arguable, moot, at issue, contentious'),(74,'to disclose - to give away','to reveal - to divulge','Many security professionals believe if they disclose their tools they will be giving away their secret sauce\n',NULL,'to reveal'),(75,'beforehand','in advance','Are they briefed beforehand and able to prepare?\n',NULL,NULL),(76,'to kick off','to start, to get going, to get off the ground','What type of information and access is provided prior to kicking off the Penetration Test?\n',NULL,NULL),(77,'to grant','allow, accord, permit, afford, concede, vouchsafe','What type of initial account\nlevel access is granted? Is this a Black, White, or Gray box assignment foreach target?\n',NULL,NULL),(78,'pooter','sth makes sound like farting',NULL,NULL,NULL),(79,'to get',NULL,'\nupdating your profile with your name, location, and a profile picture helps other GitHub users get to know you',NULL,NULL),(80,'baseline','A line serving as a basis, as for measurement, calculation, or location','Standards and baselines achieve consistency in security\n',NULL,NULL),(81,'consistent','Acting or done in the same way over time, especially so as to be fair or accurate','Standards and baselines achieve consistency in security\n',NULL,NULL),(82,'outweigh','Be heavier, greater, or more significant than','\nIt is up to the customer to decide if the risk associated to vulnerability found justifies\nor outweighs the cost of controls required to reduce the risk to an acceptable level\n',NULL,NULL),(84,'aficionados - dork','A person who is very knowledgeable and enthusiastic about an activity, subject, or pastime\ndefinition of dork is set in the ex','\nThe aficionados who have categorized the Google searches are affectingly known as Google dorks\n  dork is a contemptible, socially inept person\n  dork is a man_s penis in the north of america\n',NULL,NULL),(85,'hood - hoody','A covering for the head and neck with an opening for the face\nhoodies are the cloth with hood','u can buy shirt and hoodies from hackersforcharity.org',NULL,NULL),(86,'snide','mocking in an indirect way','\nYou’ll be amazed at the dirty looks and snide comments you’ll get when you wear this shirt from hackersforcharity.org',NULL,NULL),(87,'straight',NULL,'You’ll get a chance to set people straight when u wear shirt from hfc\ngo straight, u_ll see the house after 100meters',NULL,NULL),(88,'foothold','A place where a person’s foot can be lodged to support them securely, especially while climbing','Twice she had to stop to rest, her arms trembling with the strain, locking her feet into semi-secure footholds and leaning into the rock.',NULL,NULL),(89,'footprint','The impression left by a foot or shoe on the ground or a surface',NULL,NULL,NULL),(90,'incentive - to line up','A thing that motivates or encourages someone to do something\n\nArrange a number of people or things in a straight row','\nyou may even qualify for some wicked incentives we’re lining up:\n  conference passes, free training courses and much more.\n',NULL,NULL),(91,'deceit - conceal',' The action or practice of deceiving someone by concealing or misrepresenting the truth\n  to conceal sth is to hide it','\nduring times of universal deceit, telling the truth becomes a revolutionary act... george orwell\n',NULL,NULL),(92,'takeaway','A key fact, point, or idea to be remembered, typically one emerging from a discussion or meeting',NULL,NULL,NULL),(93,'upfront','in the front','Providing the potential toolset upfront also reduces the likelihood of the customer having a negative reaction when a negative impact occurs due to the use of a tool.',NULL,NULL),(94,'an issue - to issue','An important topic or problem for debate\nPersonal problems or difficultie\n\ndistribute (something) for use or sale','the issue of racism\nwith an account you are issued an individual workspace to use\n',NULL,NULL),(95,'stakeholder','A person with an interest in sth, especially in business','writing sow is typically the first step you would want to complete with your _stakeholders_ before starting a project\n',NULL,NULL),(96,'dock','An enclosed area of water in a port for the loading, unloading, and repair of ships','A port is piece of software which is used as docking point in your machine, where remote application can communicate. This is analogy to the physical ports for entering in to a country from different sea ports.',NULL,NULL),(97,'socket','combination of software Port and IP address',NULL,NULL,NULL),(98,'to consolidate','to bring together (separate parts) into a single or unified','They consolidated their three companies,\n\nMagicTree is a Penetration Tester productivity tool designed for data consolidation',NULL,NULL),(99,'to trip up','Make a mistake','so you can check to see the next table if any of the same mistakes have been tripping you up',NULL,NULL),(100,'sufficient','Enough; adequate','In the past, these common defenses were sufficient; however, threats are becoming more sophisticated nowadays',NULL,NULL),(101,'mundane','Lacking interest or excitement; dull',NULL,NULL,NULL),(102,'to bond - means','Join or be joined securely to something else, especially by means of an adhesive substance, heat, or pressure',NULL,NULL,NULL),(103,'to embed','Fix (an object) firmly and deeply in a surrounding mass','he had an operation to remove a bullet embedded in his chest',NULL,NULL),(104,'rear - decent','The back part of something, especially a building or vehicle\nConforming with generally accepted standards of respectable ','< lewellyn> embedding lua is a pain in the _rear_ :D\n< mniip > I haven\'t had any rear pains when embedding lua\n< lewellyn> you\'re not doing complex enough things then :D\n< mniip> maybe not\n< dx> i\'d still consider lua a decent option for embedding ',NULL,NULL),(105,'to strive','Make great efforts to achieve or obtain something',NULL,NULL,NULL),(106,'#suffix ener',NULL,'shortener \nfastener',NULL,NULL);
/*!40000 ALTER TABLE `engl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engl_not_understood`
--

DROP TABLE IF EXISTS `engl_not_understood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `engl_not_understood` (
  `id_e_n_u` int(4) NOT NULL AUTO_INCREMENT,
  `txt` text,
  `exp` text,
  PRIMARY KEY (`id_e_n_u`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engl_not_understood`
--

LOCK TABLES `engl_not_understood` WRITE;
/*!40000 ALTER TABLE `engl_not_understood` DISABLE KEYS */;
INSERT INTO `engl_not_understood` VALUES (1,'\nadditional areas of evaluation that could be included in the scope of\nwork are how devices are obtained by employees, how devices are used outside of\naccessing the application, the surrounding network(s), maintenance of the systems, and the users of the systems.\n\nSome examples of why these other areas of scope matter are having the Linux server compromised by permitting connection from a mobile device infected by other means or obtaining an authorized mobile device\nthrough social media to capture confidential information\n',NULL);
/*!40000 ALTER TABLE `engl_not_understood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_prog`
--

DROP TABLE IF EXISTS `error_prog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `error_prog` (
  `id_e_m` int(4) NOT NULL AUTO_INCREMENT,
  `err` varchar(50) DEFAULT NULL,
  `descr` text,
  `_datet` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_e_m`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_prog`
--

LOCK TABLES `error_prog` WRITE;
/*!40000 ALTER TABLE `error_prog` DISABLE KEYS */;
/*!40000 ALTER TABLE `error_prog` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'/root/dvl/lin/sed01',NULL,NULL),(2,'/root/dvl/lin/ds','#mmt #script',NULL),(3,'/root/dvl/lin/dump_mysql.sh','#mmt #script',NULL),(4,'/root/ms_conf/os_tool',NULL,NULL),(5,'/root/ms_conf/git_tools','#tuto #sourced_ability',NULL),(12,'/root/pic/lin/Wallpapers_de_Linux_Ubuntronics_011.png','dldd','http://thelinuxgod.net/wp-content/uploads/2014/04/Wallpapers_de_Linux_Ubuntronics_011.png'),(13,'/root/pic/lin/a05f0fab1b3436db08a93e192b8b4402_large.jpeg','dldd','http://img0.mxstatic.com/wallpapers/a05f0fab1b3436db08a93e192b8b4402_large.jpeg'),(14,'/usr/share/icons/gnome-colors-common/scalable/apps','#path dldd #icons added sth',NULL),(15,'/var/log/postgresql/postgresql-9.1-main.log',NULL,NULL),(16,'/var/log/postgresql/postgresql-9.1-main.log','#log #pg #postgres',NULL),(17,'/root/my_log',NULL,NULL),(18,'/root/my_log','#log that my prg will write',NULL),(19,'/root/.bashrc',NULL,NULL),(20,'/root/.bashrc','#conf of #bash',NULL),(21,'/root/.tmux.conf',NULL,NULL),(22,'/root/.tmux.conf','#conf of #tmux',NULL),(23,'/etc/rc.local',NULL,NULL),(24,'/etc/rc.local','#script_on#starting#linux',NULL),(25,'/usr/share/set',NULL,NULL),(26,'/usr/share/set','#set #emplacement in #kali',NULL),(27,'/usr/share/set-update',NULL,NULL),(29,'/usr/share/set/set-update',NULL,NULL),(30,'/usr/share/set/set-update','#set #update in #kali',NULL),(31,'/usr/share/set/config/set_config',NULL,NULL),(32,'/usr/share/set/config/set_config','#conf of #set',NULL),(33,'/etc/passwd',NULL,NULL),(34,'/etc/passwd','store #users_information\n  user00:x:504:504:user00',NULL),(35,'/etc/passwd',NULL,NULL),(36,'/etc/passwd','store #users_information\n  user00:x:504:504:user00:/home/user00:/bin/bash\n    username\n    related to pwd but i don_t understand well\n    User ID\n    Group ID\n    user_info (optional)\n    home_dir of the user\n    shell used by the user',NULL),(37,'/etc/shadow',NULL,NULL),(38,'/etc/shadow','to save encrypted passwd of all linux-users',NULL),(39,'/etc/sudoers',NULL,NULL),(40,'/etc/sudoers','to add some user into #sudoer',NULL),(41,'/var/log/mysql/mysql.log',NULL,NULL),(42,'/var/log/mysql/mysql.log','default#log #mysql to#set in conf_mysql',NULL),(43,'/srv/doc/h/webPenTestWithKali.pdf',NULL,NULL),(44,'/srv/doc/h/webPenTestWithKali.pdf','#doc #pentest#web #pdf #kali',NULL),(45,'/root/ms_conf','dldd','https://raw.githubusercontent.com/nonicken/conf_home/master/.vimrc'),(46,'/root/.irssi/config',NULL,NULL),(47,'/root/.irssi/config','#irssi #conf',NULL),(48,'/root/.conkyrc',NULL,NULL),(49,'/root/.conkyrc','#conf #conky',NULL),(50,'/root/.bashrc.fromHdd',NULL,NULL),(51,'/root/.bashrc.fromHdd','#del #after#long_time',NULL),(52,'/opt/mysql/mysql-server_5.6.22-1debian7_i386.deb-bundle.tar','dldd','http://dev.mysql.com/get/Downloads/MySQL-5.6/mysql-server_5.6.22-1debian7_i386.deb-bundle.tar');
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
  `lng` varchar(10) DEFAULT NULL,
  `_datet` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_link`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,'wikivs.com','\nfor comparing something...\n  ex : mysql vs pg\n       twitter vs fb\n       ....\n','en','2015-01-13 08:30:54'),(2,'http://stackoverflow.com','\n#question/#answer site #q_a','en','2015-01-13 08:30:54'),(3,'http://www.crack-wifi.com','ifk: about tuto of #hacking',NULL,'0000-00-00 00:00:00'),(4,'bing.com/translator','#translator_site',NULL,'0000-00-00 00:00:00'),(5,'http://dictionary.reference.com','#dico #dictionary','en','2015-01-13 08:30:54'),(6,'http://itranslate4.eu','#translator_site, one of the best',NULL,'0000-00-00 00:00:00'),(7,'http://www.oxforddictionaries.com/definition','dictionary on the internet','en','2015-01-13 08:30:54'),(8,'http://www.cyberciti.biz/faq/howto-linux-add-user-to-group/','about #user and #group in #linux #tuto','en','2015-01-13 08:30:54'),(9,'acronyms.thefreedictionary.com/','for acronyms\nfor abbreviation','en','2015-01-13 08:30:54'),(10,'http://en.wikipedia.org/wiki/List_of_national_capitals_in_alphabetical_order','capital of all countries all over the world','en','2015-01-13 08:30:54'),(11,'http://hackersforcharity.org/','for_#poor#hackers in #africa','en','2015-01-13 08:30:54'),(12,'http://www.exploit-db.com/google-dorks/','ghdb, google hack database#dork #google','en','2015-01-13 08:30:54'),(13,'http://www.exploit-db.com/','A great resource for penetration testers, vulnerability researchers, and security addicts alike','en','2015-01-13 08:30:54'),(14,'www.impots.mg','#national #mada #impot',NULL,'0000-00-00 00:00:00'),(15,'www.banque-centrale.mg/','#bank #mada',NULL,'0000-00-00 00:00:00'),(16,'www.bni.mg','#bank #mada',NULL,'0000-00-00 00:00:00'),(17,'www.boa.mg','#bank #mada',NULL,'0000-00-00 00:00:00'),(18,'ispm-edu.com/','#ispm #college #univ #mada',NULL,'0000-00-00 00:00:00'),(19,'http://webcheatsheet.com','#cheatsheet','en','2015-01-13 08:30:54'),(20,'http://www.cyberciti.biz','#linux #tuto','en','2015-01-13 08:30:54'),(21,'https://wiki.debian-facile.org/doc:systeme:commandes:alphabetique','#tuto #debian #df #cmd',NULL,'0000-00-00 00:00:00'),(22,'http://www.linuxnix.com/','#tuto #linux','en','2015-01-13 08:30:54'),(23,'http://www.oxforddictionaries.com/words/common-misspellings','#english#mistake#spelling','en','2015-01-13 08:30:54'),(24,'http://www.avengedsevenfoldnews.com/','a7x rija_akira_angelo','en','2015-01-13 08:14:00'),(26,'http://sql.sh/','learning sql','fr','2015-01-13 08:12:31'),(27,'http://scripts.irssi.org/','script for irssi','en','2015-01-13 08:32:16'),(28,'http://tinyurl.com','url_shortener\n one of the best, bcz u can define the final result',NULL,'2015-01-13 09:31:45');
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
-- Table structure for table `notes_tech`
--

DROP TABLE IF EXISTS `notes_tech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes_tech` (
  `id_n_t` int(4) NOT NULL AUTO_INCREMENT,
  `tiitle` varchar(200) DEFAULT NULL,
  `_datet` datetime DEFAULT NULL,
  `exp` text,
  `cmd` varchar(200) DEFAULT NULL,
  `cmd_exp` text,
  `orrder` varchar(10) DEFAULT NULL,
  `src` text,
  `rel_file` varchar(100) DEFAULT NULL,
  `timest` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_n_t`),
  KEY `title_` (`tiitle`)
) ENGINE=MyISAM AUTO_INCREMENT=259 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes_tech`
--

LOCK TABLES `notes_tech` WRITE;
/*!40000 ALTER TABLE `notes_tech` DISABLE KEYS */;
INSERT INTO `notes_tech` VALUES (1,'#crontab do not forget to add ; after all command in crontab','2014-12-15 13:51:54',NULL,'not mentioned',NULL,NULL,'-p 12 /srv/doc/h/webPenTestWithKali.pdf',NULL,'0000-00-00 00:00:00'),(2,'#git hooks in git is used for scripting about the local repo','2014-12-15 13:51:54',NULL,'not mentioned',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(3,'#git #central #important files:HEAD index objects refs','2014-12-15 13:51:54',NULL,'not mentioned',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(4,'#git #refs stocke les pointeurs vers les objets','2014-12-15 13:51:54',NULL,'not mentioned',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(5,'#git #head pointe sur le branche qui est en cours','2014-12-15 13:51:54',NULL,'not mentioned',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(8,'#if [ -z \"$1\" ]',NULL,'true if $1 is null','not mentioned',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(9,'\nthis is a tes of \nhow to do it \n',NULL,NULL,'not mentioned',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(10,'#if [ -n \"$1\" ]',NULL,'this is true if $1 is NOT null','not mentioned',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(11,'#mysql #for a in $(mysql_out_w/only_one_col) ; do ..... ; done',NULL,'this is how to #scan a result of mysql_select\n  ex:\n    for valXX in $(msql \"select note from notes;\")\n    do\n      echo $valXX\n    done\n','not mentioned',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(12,'#script #bash #policy #var_name','2014-12-16 22:36:01','\nthose are some policy for variable name in #bash\n  error_var have to start with e_xxx\n','not mentioned',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(13,'#script #bash #policy #body_of_script','2014-12-16 22:38:49','\n\nshabang\nsome description of the script\nvariables which will be used in the body of the script\ntreat the error which can be caught by the script like error in argument\n....\nbody\n....\nexit X\n','not mentioned',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(14,'#git #reset #commit but _without_ changing the modification in file','2014-12-16 22:54:45',NULL,'git reset HEAD^',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(15,'#git #reset #commit WITH cancelling the modification in file','2014-12-16 22:55:13',NULL,'git reset --hard HEAD^',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(16,'#git #cancel #modification #ifk like #stash to go back in the modif of a file which has been commited','2014-12-16 22:57:31',NULL,'git checkout file00',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(17,'#git #cancel #add in tracking','2014-12-16 23:08:37',NULL,'git reset HEAD -- file00',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(19,'#git #revert','2014-12-16 23:13:13','if u made a push to the server\n  it is not possible to cancel definetely that push\n  u have to make a new push which revert the previous push','git revert 45444cz',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(20,'#git #branch #create','2014-12-16 23:17:08',NULL,'git branch new_branch00',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(21,'#git #branch #utility','2014-12-16 23:21:45','branch: il y a des modification que vous voulez faire mais vous n_etes pas sure des modification...... 1-stoppez et commitez par la ou vous etes sures que le code marche.... 2-creez une branche (@this__id_n_t=20)....3-passez dans une autre branche grace a git checkout branch00\n','not mentioned',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(22,'#git #branch #fusion #merge','2014-12-16 23:23:34','pour fusionner une branche avec la branche master..... va dans la branch master d_abord(__git checkout master__)... faite la fusion(__git merge branch00__)','git merge branch00',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(23,'#git #branch #delete ','2014-12-16 23:29:08','\nu did a fusion to branch00 to branch_master\nu want to delete branch00(__git branch -d branch00__)','git branch -d branch00',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(24,'#git #branch #check ','2014-12-16 23:29:47','\nto see what are the branch which are in ur repo','git branch',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(25,'#git #branch #delete without merging to master ','2014-12-16 23:31:17',NULL,'git branch -D branch00',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(26,'#git #stash ','2014-12-17 00:11:55','u wanted to change to another branch but u made a modif in the current_br which is NOT commited, u don_t want to commit bcz it is a small changement........ u have to stash........then check the stash list(__git stash list__)...... to go back in the previ modif (__git stash apply stash@{5}__) that is for instance','git stash',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(27,'#git #stash ','2014-12-17 00:13:25','to remove some stash which is being saved.... note that a stash is a saving which is not commited','git stash drop stash@{2}',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(28,'#mysql #rename_table','2014-12-19 10:09:39','the title explains everything','rename table db00.table00 to db00.newName',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(29,'#mysql #rename_user','2014-12-19 10:19:23','the title explains everything','rename user \"user00\"@\"host00\" to \"user01\"@\"host01\"',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(30,'#mysql #change_pass','2014-12-19 10:21:46','the user00 must be logged into mysql;....the title explains everything','set password for \"user00\"@\"host00\" = password(\"your new pass\")',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(31,'#sed #intro','2014-12-19 13:30:04','sed fonctionne en mode line par line',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(32,'#sed #intro','2014-12-19 13:30:47','sed fonctionne en mode line par line\ncela a des bonnes et des mauvaises consequences',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(33,'#sed #intro','2014-12-19 13:33:56','sed s\'utilise de deux facons\n  classique : on exe une cmd_sed sur un fichier puis on recupere la sortie sur une autre fichier \n  directe : on exe une cmd_sed sur un fichier puis le resultat s\'applique sur le fichier passee en entree',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(34,'#sed #intro','2014-12-19 13:37:11','sed peut recevoir un script:\n  il y a 2facons de passer un scrip a sed:\n    sed -e __ici_le_script_uniligne__\n    sed -f __script_file__',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(35,'#sed #important #basis',NULL,'2014-12-19 17:04:40','','\nsed -e __script_uniline__\n  ex: sed -e \'4d; 7d \' test.txt                 \n    -e : for the fact that the script \'4d; 7d \' will be performed in file_test.txt\n    -d : to delete\n      so \'4d; 7d \' meant to delete the line 4 AND 7    \n\n  ex : sed -e \'4,7 d\' test.txt\n  	to delete the line from 4 TILL 7\n\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(36,'#sed #regex #intro','2014-12-19 17:45:24',NULL,NULL,'\nsed \'/^# / d\' test.txt',NULL,NULL,NULL,'0000-00-00 00:00:00'),(37,'#mysql #cluster #introduction #nodes',NULL,'MySQL Clusters are built from three different types of node.\n  cluster = sum(3nodes)\n  3nodes:\n    management node\n    storage node\n    api node\n      used to extract data from db\n      most common is __mysqld__\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(38,'#mysql #cluster #install',NULL,'\nu have to dl and install 2files\n  MySQL-Cluster-gpl-server-7.a.b-c.rhel5.x86_64.rpm\n  	this is about the server of the cluster\n  MySQL-client-community-5.a.b-c.rhel5.x86_64.rpm   	this is about the client of the cluster  \n\nafter installing these rpms, a file is created:\n  /etc/my.cnf\n\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(39,'#mysql #status check',NULL,'\n$ service mysql status\nOR\n$ /etc/init.d mysql status\nOR\n$ telnet host00 3306\n  this is check if the server is up\n    and listening for connections on the port\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(40,'#mysql #log check',NULL,'\nthe file of log is in:\n  /var/log/mysql/mysql.log\n    that is defined on the confFile in #general-log-file',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(41,'#sec #iptables #intro','2014-12-20 09:54:56','u really need iptables to filter traffic which are permitted in ur serv\n  without ipt all traffics are almost allowed which is not good ',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(42,'#sec #iptables #intro #firewall','2014-12-20 09:58:30','firewall do the analyse all packets.. do they respect the rules',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(43,'#sec #iptables #intro #firewall','2014-12-20 10:02:23','criteria of filter are many: ports, protocols, addrIP, and more\n\niptables is very strict. then, if u want to activate iptables, u have to block everything, and right after, open what u want little by little',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(44,'#sec #log #auth #sys','2014-12-20 10:41:41','to see who was logged into ur sys','/var/log/auth.log',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(45,'#sec #log #stuff #sys','2014-12-20 10:47:34','stuff of log... errors, bugs, informations, .....','/var/log/message\n/var/log/syslog',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(46,'#sec #log #fail2ban','2014-12-20 10:48:37','log of fail2ban... ','/var/log/fail2ban',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(47,'#sec #log #snort','2014-12-20 10:49:21','log of snort... ','/var/log/snort/alert',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(48,'#sec #log #rkhunter','2014-12-20 10:52:21','log of rkhunter... ','/var/log/rkhunter',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(49,'#sec #rkhunter #intro','2014-12-20 11:02:08','if someone hacked ur sys, maybe he installed a backdoor in ur sys then he can rehack ur sys, and a rootkit to hide the hack\n\nrkhunter can detect rootkits on the server ',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(50,'#sec #conf #rkhunter','2014-12-20 11:03:31','configuration_file of rkhunter','/etc/default/rkhunter',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(51,'#sec #intro','2014-12-20 11:08:07','firewall had to block some connections, but the connections which are opened had to be controlled too,....\n  then we have ids (intrusion detection sys) and ips (intrustion prevention sys)\n    they are types of software which will detect all attempt of intrusion',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(52,'#sec #intro','2014-12-20 11:11:32','those are the steps to do a classic intrusion:\n  scan port\n  simple attack\n  intrusion\n  how to log in the server on the purpose',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(53,'#sec #intro #portsentry','2014-12-20 11:13:40','\nto block|manage who can scan ur port',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(54,'#sec #conf_file #portsentry','2014-12-20 11:14:53','conf file of #portsentry','/usr/local/psionic/portsentry/portsentry.conf',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(55,'#sec #conf_file #portsentry','2014-12-20 11:15:19','conf file of #portsentry','/etc/portsentry/portsentry.conf',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(57,'#sec #fail2ban #intro','2014-12-20 11:27:25','\nit is based on blocking ip which tried to log into some services and which it was failed\n  it will block the ip with iptables',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(58,'#sec #fail2ban #conf','2014-12-20 11:28:17',NULL,'/etc/fail2ban/jail.conf',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(59,'#sec #snort #intro','2014-12-20 11:47:05','it is powerful and analyse the traffic in live, then ur sys can slow down with this\nhttp://www.trustonme.net/didactels/187.html\nhttp://doc.ubuntu-fr.org/snort\n    \n when bug appears, check /var/log/syslog\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(60,'#sec #log #logwatch #conf_file',NULL,NULL,'/usr/share/logwatch/default.conf/logwatch.conf',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(61,'#sys #conf_file #ssh',NULL,NULL,'/etc/ssh/sshd_config',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(62,'#sys #conf_file #apache2',NULL,NULL,'/etc/apache2/apache2.conf',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(63,'#nmap','2014-12-20 12:15:23','to scan port on a server and to make it verbose','nmap -v ip00',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(64,'#nessus #intro #sec','2014-12-20 12:32:05','to scan vulnerabilities in ur sys',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(65,'#osi #memo #aide_memo',NULL,'all people seems to need data processing\nOR\nplease, do not throw sausage pizza away',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(66,'#mysql #query #ifnull',NULL,'this will select col00 and col01, but if col01 is null then it will be replaced by \'newVal\'','select col00, IFNULL(col01,\'newVal\')',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(67,'#postfix #conf_file',NULL,NULL,'/etc/postfix/main.cf',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(68,'#postfix #package_to_install',NULL,NULL,'postfix postfix-mysql libasl2-2 libasl2-modules sasl2-bin libpam-mysql procmail',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(69,'#cisco #basis #intro #info #default','2014-12-20 15:24:52','by default, all pc connected to sw are in vlan1. u can check it by: sw#show vlan',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(70,'#cisco #create_vlan','2014-12-20 15:26:15','sw_conf#vlan 15\nxxxxxx#name vlanName\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(71,'#bash #preserve_space #space','2014-12-20 15:49:40','\njust put ur string inside \"\"\nor inside \'\'\n  ex: echo \' this preserve space \'\n  ex: echo this will    not preserve     the space \n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(72,'#bash #printf #basis','2014-12-20 15:51:18','\nprintf \'%s = %d\n\' lines: $line\nout__\n  lines: 245\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(73,'#bash #echo #newline_no','2014-12-20 15:53:57','echo -n \'this need \n to do a newline\'',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(74,'#bash #echo #character_special','2014-12-20 15:55:57','echo -e \'u can write here sth like \n to make a newline......do not forget the -e with echo\'',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(75,'#linux #ls',NULL,'to write the result only one file per line ','ls -1',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(76,'#linux #basic #output',NULL,'to write normal_out of a cmd to file01 and the error_out of a cmd to file02','cmd00 1>fileForNormal 2>fileForError',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(77,'#linux #basic #output #same_file',NULL,'to write normal_out and error of a cmd to file01 ','cmd00 &> fileForNormAndErr',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(78,'#linux #tail',NULL,NULL,NULL,'\nthis is to print from the bottom of the file00\n  ex: tail file00\n    will print the 10last lines of file00\n  ex: tail -n 25 \n    will print the 25last lines of file00',NULL,NULL,NULL,'0000-00-00 00:00:00'),(79,'#git #ignore_file','2014-12-20 18:19:34','\nadd the files in .gitignore',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(80,'#git #list #tag',NULL,'the order of the result do not tell as well the ?historic of the tag','git tag',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(81,'#git #list #tag #specification',NULL,'to list all v1.4.1 ... v1.4.5 ... v1.4.10000','git tag -l \'v1.4.*\'',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(82,'#git #tag #types','2014-12-20 21:25:27','\n2types of git_tag:\n  light:\n    almost like branch, doesn_t change\n  noted\n    stored as an object, stored in db of git\n    could checked and signed by gnu_guard\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(83,'#git #tag #create','2014-12-20 21:32:28',NULL,NULL,'git tag -a v1.0.2 -m \'this is the comment of the tag\' \n	\n	-a	:	to create the tag\n	-m	:	to set a comment for the tag\n\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(84,'#git #tag #show','2014-12-20 21:36:06',NULL,'git show v1.5',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(85,'#git #tagging_after_commit #baliser_apres_coup','2014-12-20 21:59:57',NULL,NULL,'git tag -a v1.2 9fec56',NULL,NULL,NULL,'0000-00-00 00:00:00'),(86,'#git #push #all_tag #tag','2014-12-20 22:02:09',NULL,NULL,'git push origin --tags\n  that is to push all tags into remote server',NULL,NULL,NULL,'0000-00-00 00:00:00'),(87,'#git #install on #windows','2014-12-20 22:30:59','\nu have to install msysgit\n  http://code.google.com/p/msysgit',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(88,'#pg #basic #intro','2014-12-21 03:25:01','\nto create a new db\n  in ur sys, u have to be the user postgres\n  $ createdb db00\nnow it is created\nto connect to it, u have to be the user postgres to do this\n  $ psql db00\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(89,'#linux #read #end_of_file #eof','2014-12-21 03:50:24',NULL,NULL,'\nread << eof\n  u will type sth till u type eof\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(90,'#bash #case #basic','2014-12-21 05:16:00','\n#decl_var\n# all variables which u will use in ur script should be declared before the body of the function \nlocal choice ;\nlocal answer=\' ;\nlocal question=\'do u want to play a game ? [y/n]\'\nread -p \"$question\" answer\ncase \"$answer\" in\n	[yY] ) choice=\'y\' ;;\n	[nN] ) choice=\'n\' ;;\n	*	 ) choice=\"$answer\"\n		# here if the answer is different than y/n\nesac\n\n\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(91,'#bash #arithmetic #operation','2014-12-21 06:09:22',NULL,NULL,'\n# declaration of variable\ndeclare -i var00\nvar00=$((5+9))\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(92,'#bash #give_value_if_null','2014-12-21 06:32:01',NULL,NULL,'\n${var00:=\'default_val\'}',NULL,NULL,NULL,'0000-00-00 00:00:00'),(93,'#bash #give_value_if_null','2014-12-21 06:48:47',NULL,NULL,'\n${var00:=\'default_val\'}\n${var00:=\"$(pwd)\"}\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(94,'#mysql #offset #limit #query','2014-12-21 06:53:30',NULL,NULL,'\nselect * from table00 limit 5 offset 10\n  the query will start from the result number_10\n  and will show 5 rows only',NULL,NULL,NULL,'0000-00-00 00:00:00'),(96,'#bash #declare_var_type #type','2014-12-21 07:03:08',NULL,NULL,'\nto declare an integer \n  then u can compare the variable using -ge or -lt or .......\n    $ declare -i varInt\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(97,'#mysql #dummy #safe-update #update','2015-01-08 10:14:08',NULL,NULL,'edit:/etc/mysql/my.cnf\n  [mysql]\n  safe-updates\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(98,'#mysql #date #day','2015-01-08 10:47:15',NULL,NULL,'to get the day, and some info of today\n  select day(now());\n    val: 1-31\n  dayofweek()\n    val: 1 = sunday\n         ...\n         7 = saturday\n  dayname()\n    val: Thursday, Monday, ......\n  dayofyear\n    val: 1 - 366\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(99,'#mysql #date #str_to_date','2015-01-08 11:05:50',NULL,NULL,'\nselect str_to_date(\'2015-11-28\', \'%Y-%m-%d\');\n  %Y  year\n    YYYY\n  %m  month\n    mm\n  %d  day\n    dd\n  %y  year\n    yy\n  %h  hour\n    hh\n  %i  mn\n    ii\n  %s  sec\n    ss\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(100,'#mysql #save_all_db_in_server #server #save','2015-01-08 11:10:26',NULL,NULL,'\n$ mysqldump --user=root --password --all-databases > dump.sql\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(101,'#mysql #save_table_into_file00.sql #table #save','2015-01-08 11:12:27',NULL,NULL,'\n$ mysqldump --user=root --password db00 table00 > table00.sql\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(102,'#mysql #select #save #outfile',NULL,NULL,NULL,'select * from table00 into outfile \'/path/file00\'',NULL,NULL,NULL,'0000-00-00 00:00:00'),(103,'\n#lvm #intro ',NULL,'3 basic terms:\n  physical volume \n    any block device. hdd or software_RAID_volume\n  volume group\n    collection of physical volume\n    physical volume can be added or removed from volume_group\n  logical volume\n    volume_group doesn_t have OS on it, then it needs logical_volume\n    used to mount, create file sys\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(104,'#linux #grub #version #check',NULL,NULL,NULL,'grub-install --version',NULL,NULL,NULL,'0000-00-00 00:00:00'),(105,'#linux #grub #change_bg #background #bg',NULL,'edit:/etc/default/grub\n  GRUB_BACKGROUND=\"/path/img00.png\"\n  sudo update-grub\n\nthat worked on grub_1.99-26',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(106,'#mysql #change_pass #pwd #password',NULL,'set password=password(\'pass00\')',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(107,'#linux #mmt #reinit_kali #kali #os',NULL,NULL,NULL,'those folders should be set when I just installed a new linuxOS\n  /repos\n  /opt\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(108,'#irc #log_in #identify',NULL,NULL,NULL,'/msg nickserv identify pseudo00 pass00',NULL,NULL,NULL,'0000-00-00 00:00:00'),(109,'#mysql #order_by',NULL,NULL,NULL,'SELECT col01, col02, col03, col04 FROM driver_log ORDER BY 3',NULL,NULL,NULL,'0000-00-00 00:00:00'),(110,'#linux #firefox #ff #flash #install',NULL,NULL,'','\n  ø dl: http://get.adobe.com/flashplayer/\n  ø extract the .tar.gz \n  ø cp libflashplayer.so /usr/lib/mozilla/plugins/\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(111,'#linux #filesystem #purpose_of_folder #root_folder',NULL,'\n/dev:   raha hiAcceder peripherique: partitions, disk, carte son, ports SCSI, ...\n    /etc:   ato ny daholo ny fichiers de configuration des logiciels\n    /media: fimontena peripherique amovible(ho an\'ny OS sasany)\n     /usr:   fisian\'ny fichier hoPartagena en reseau, na natao en lecture seule\n    /opt:   misy ny apps complementaire, izan hoe tsy anle distro installee\n    /var:   ao no misy ny fichiers temporaires, miasa am logiciel ka ho supprimena rhf fermena ny logiciel\n    /boot:  ao no misy ny fichiers mampademarre ny machine,\n            ao koa no misy ny fichiersde configuration GRUB \n    /lib:   ao no misy ny librairie izay ampiasain\'ny utilisateur\n   /sbin:  mitovtov am /bin,\n   /bin:   ato no misy ny prg apesain_user\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(112,'#linux #filesystem #purpose_of_folder #root_folder',NULL,'\n/srv contains site-specific data which is served by this system.\n/initrd provides the capability to load a RAM disk by the boot loader\n/dev is the location of special or device files.\n  everything is a file or a directory.\n  inside this: hda1, hda2, ...  which represent the various which represent the various\n     /dev/cdrom represent your CD-ROM\n    /dev/fd0 represent floppy disk \n\n/lost+found\n  Sometimes your system might crash or a power failure might take the machine down. Either way, at the next boot, a lengthy filesystem check using fsck will be done.\n    The files recovered are not likely to be complete\n      but there always is a chance that something worthwhile is recovered\n  Each partition has its own lost+found directory\n    If you find files in there, try to move them back to their original location\n\n/mnt\n  u should mount ur devices here like cd\n    mount /dev/cdrom /mnt/cdrom\n\n/proc\n  It doesn_t contain _real_ files but runtime system information\n    e.g. system memory, devices mounted, hardware configuration, etc\n  for the information centre for the kernel\n  e.g   \'lsmod\' is the same as \'cat /proc/modules\' while \'lspci\' is a synonym for \'cat /proc/pci\'\n\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(113,'to #extract some range of lines in file00 #sed',NULL,NULL,'sed -n 2,4p file00',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(114,'#mplayer #interval_playing',NULL,NULL,NULL,'\nto run a media from 90sec and 30sec which are after\n  mplayer -ss 90 -endpos 30 file00.mp3\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(115,'#youtube-dl #install ',NULL,NULL,NULL,'\nhttp://rg3.github.io/youtube-dl/download.html\n\n  sudo curl https://yt-dl.org/downloads/2015.01.08/youtube-dl -o /usr/local/bin/youtube-dl\n  sudo chmod a+x /usr/local/bin/youtube-dl\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(116,'#ffprobe #install',NULL,NULL,NULL,'this is installed with ffmpeg\n  apt-get install ffmpeg\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(117,'#os#installation',NULL,NULL,NULL,'tune2fs -l /dev/sda5 |grep  \'Filesystem created\'\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(118,'#latest_created_file #linux #ls',NULL,NULL,'ls -1t | head -1',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(119,'#linux #readlink',NULL,NULL,NULL,'readlink -f file00\n  to get the fullpath of file00',NULL,NULL,NULL,'0000-00-00 00:00:00'),(120,'#find #linux',NULL,NULL,NULL,'find /path/folder00 -iname \'*pattern00*\'\n  to find file_folder having pattern00 in its name inside folder00',NULL,NULL,NULL,'0000-00-00 00:00:00'),(121,'#mysql #update #append','2015-01-09 10:38:45',NULL,NULL,'\nupdate table00 set col00=concat(col00, \'appended00\') ',NULL,NULL,NULL,'0000-00-00 00:00:00'),(122,'#pg #architecture #basis #intro\nserver and client could be on different hosts. They will communicat over tcp_ip netw connection',NULL,'\npg works on server/client\n  server is called postgres\n  client could be cli, graphical app, webserver that accesses the db',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(123,'#pg #basis #intro #linux #create_db',NULL,NULL,NULL,'\ncreatedb db00 # that is a linux cmd\n  remember that the _root_ of pg_db is called: postgres\n  then before doing the previous cmd, do this one\n    su postgres\n  then do the previous cmd:createdb',NULL,NULL,NULL,'0000-00-00 00:00:00'),(124,'#pg #basis #intro #linux #delete_db',NULL,NULL,NULL,'\ndropdb db00 # that is a linux cmd\n  remember that the _root_ of pg_db is called: postgres\n  then before doing the previous cmd, do this one\n    su postgres\n  then do the previous cmd:createdb',NULL,NULL,NULL,'0000-00-00 00:00:00'),(125,'#pg #basis #intro #create_user',NULL,NULL,NULL,'\ncreateuser user00 # that is a linux cmd\n  remember that the _root_ of pg_db is called: postgres\n  then before doing the previous cmd, do this one\n    su postgres\n  then do the previous cmd:',NULL,NULL,NULL,'0000-00-00 00:00:00'),(126,'#pg #basis #intro #delete_user',NULL,NULL,NULL,'\ndeleteuser user00 # that is a linux cmd\n  remember that the _root_ of pg_db is called: postgres\n  then before doing the previous cmd, do this one\n    su postgres\n  then do the previous cmd:',NULL,NULL,NULL,'0000-00-00 00:00:00'),(127,'#pg #basis #intro #role #explanation',NULL,NULL,NULL,'\nPostgreSQL manages database access permissions using the concept of roles\nA role can be thought of as either a database user, or a group of database users,',NULL,NULL,NULL,'0000-00-00 00:00:00'),(128,'#pg #basis #intro #exit #go_out',NULL,NULL,NULL,'\ndb0==> q\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(129,'#pg #basis #intro #help #get_help',NULL,NULL,NULL,'\ndb0==> h\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(130,'#pg #basis #intro #create #table',NULL,NULL,NULL,'\nCREATE TABLE weather (\n    city            varchar(80),\n    temp_lo         int,           -- low temperature\n    temp_hi         int,           -- high temperature\n    prcp            real,          -- precipitation\n    date            date\n);\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(131,'#pg #basis #intro #auto_increment #increment #serial#primary#key',NULL,NULL,NULL,'\nCREATE TABLE foo (\nid SERIAL PRIMARY KEY,\nbar varchar);\n\nthen col(id) will auto_increment\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(132,'#pg #basis #insert',NULL,NULL,NULL,'\nINSERT INTO COMPANY (col_int, col_str)\nVALUES (100, \'str00\');\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(133,'#pg #basis #drop #table',NULL,NULL,NULL,'\nDROP TABLE table_name;\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(134,'#pg #basis #show #table #show_table',NULL,NULL,NULL,'\nd;\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(135,'#pg #basis #list #show #db #database #show_databases','2015-01-09 11:31:32',NULL,NULL,'\\list\n OR\n\\dt',NULL,NULL,NULL,'0000-00-00 00:00:00'),(136,'#pg #describe#table ',NULL,NULL,'\n\\d+ table00;',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(137,'#pg #\\G ',NULL,NULL,NULL,'\n\\x \n  then it is now activated\n  and do it again to deactivate it',NULL,NULL,NULL,'0000-00-00 00:00:00'),(138,'#irc #search#chan #list',NULL,NULL,NULL,'/msg alis list * -topic *topic00*',NULL,NULL,NULL,'0000-00-00 00:00:00'),(139,'#metasploit #start #intro',NULL,NULL,NULL,'remember to start #pg\n  /etc/init.d/postgresql start\nu should understand the basis of pg\n\nstart #metasploit\n  /etc/init.d/metasploit start\n  # at the first time u run that cmd, metasploit will create a db(msf3)\n  # ifk: there are many cmd in #metasploit, one of them is #msfconsole\nstart #msfconsole\n  msfconsole # cmd lin\n  # now u have the prompt of msfconsole which look like this\n  #### msf >\n\ncheck that msfconsole is connected to db(msf3)\n  msf > db_status\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(140,'#script #linux #starting#os',NULL,NULL,NULL,'edit:/etc/rc.local\n  # put ur script on that file\n\nOR\n\nifk: if the script to run the service is in /etc/init.d/\n  then, u can do\n  update-rc.d postgresql enable\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(141,'#set #update',NULL,NULL,'/usr/share/set/set-update\n  and it will update automatically',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(142,'#ptes #intro #basics #phases #7phases',NULL,'\nThe penetration testing execution standard consists of seven (7) main sections\n  Pre-engagement Interactions\n    when you discuss the _scope and terms\n      of the pentest with ur client\n    u should _convey the goal of the pentest\n\n  Intelligence Gathering\n    gather any information you can about the organization you are attacking by using social-media networks\n    how it behaves, how it operates, and how it ultimately can be attacked.\n    that will give you valuable _insight into the types of security controls in place.\n    ex : org00 has some ports opened, then they will be used when u query sth\n      try to query sth from another port, then u will be blocked\n      _probe that way of blocking sys\n    \n  Threat Modeling\n    uses the information you acquired in the intelligence-gathering\n    Threat modeling involves looking at an organization as an adversary and attempting to exploit weaknesses as an attacker would.\n      then, try to get the most powerful attack\n    xxxxxxxxx __important__ u just define the type of attack but u don_t attack yet xxxxxxxxxxxxxxxx\n\n  Vulnerability Analysis\n    after getting the way to attack, think about \n      how will you access the target \n    _takes into account_ port and vulnerability scans\n\n  Exploitation\n    this should be done when you know almost beyond a shadow of a doubt that an exploit will be successful.\n\n  Post-Exploitation\n    begins after you have compromised one or more systems\n    where u diffentiate urself from the average \n    targets information or data that the company values most\n    When you exploit one system after another, you are trying to demonstrate attacks that would have the greatest business impact\n\n  Reporting\n    use reports to communicate what you did, how you did it, and, most impor- tant, how the organization should fix it\n    At a minimum,\n      divide your report into an \n        executive summary, \n        executive presentation, \n        and technical findings\n          will be used by the client to remediate security holes\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(143,'#ptes #types #intro #2types',NULL,'\novert pentesting\n  u have access from the organisation to pentest the sys of the org00\n  then, u have many information about the org_target\n\ncovert pentesting\n  to attack or to simulate an attacker towards an organisation\n    without the knowledge for the org_target that they are attacked :/\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(144,'#linux #group #list',NULL,NULL,NULL,'cut -d: -f1 /etc/group\n  that is to list all group in ur sys',NULL,NULL,NULL,'0000-00-00 00:00:00'),(145,'#linux #user #list',NULL,NULL,NULL,'\ncut -d: -f1 /etc/passwd\n  to list all user in ur linux',NULL,NULL,NULL,'0000-00-00 00:00:00'),(146,'#linux #user #create#useradd',NULL,NULL,NULL,'\nuseradd -d /path/home_user00 user00\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(147,'#linux #create#user #specifi#uid#useradd',NULL,NULL,NULL,'useradd -u 127 user00',NULL,NULL,NULL,'0000-00-00 00:00:00'),(148,'#linux #create#user #specifi#gid#useradd',NULL,NULL,NULL,'useradd -u 1000 -g 500 user00',NULL,NULL,NULL,'0000-00-00 00:00:00'),(149,'#create#user to #multiple#groups',NULL,NULL,NULL,'useradd -G grp00,grp01,grp02 user00',NULL,NULL,NULL,'0000-00-00 00:00:00'),(150,'#user to #check in #multiple#groups #id',NULL,NULL,NULL,'id user00',NULL,NULL,NULL,'0000-00-00 00:00:00'),(151,'#useradd #create#user #specific#group',NULL,NULL,'useradd -G grp00 user00',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(152,'#linux #make a #user #sudoer',NULL,NULL,NULL,'edit:/etc/sudoers\n  add\n  user00 ALL=(ALL) ALL\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(153,'#linux #cut #delimiter #column',NULL,NULL,NULL,'ls -l|cut -d -f4;\n  the delimiter is whitespace after -d and take the 4th col',NULL,NULL,NULL,'0000-00-00 00:00:00'),(154,'#nc #check #port#listening',NULL,NULL,'nc -v 192.168.20.9 80',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(155,'#nc #check #port #incoming#connection',NULL,NULL,'nc -lvp 1234',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(156,'#nc #connection #chat #teamviewer #cli_only',NULL,NULL,NULL,'in pc who will listen\n  nc -lvp 1234 # 1234 is a port\n\nin pc who will send txt\n  nc 127.0.0.1 1234\n\nthen the second pc can send msg to the first, \n  change 127.0.0.1 by the ip of the first pc',NULL,NULL,NULL,'0000-00-00 00:00:00'),(157,'#python #read#interactively',NULL,NULL,NULL,'#python #read#interactively #string',NULL,NULL,NULL,'0000-00-00 00:00:00'),(158,'#python #read#interactively #integer',NULL,NULL,NULL,'p = input(\"integer: \") \n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(159,'#update #metasploit',NULL,NULL,NULL,'sudo msfupdate',NULL,NULL,NULL,'0000-00-00 00:00:00'),(162,'#firewall #iptable #intro',NULL,'firewall is the first line of defense\nto have a secure netw from outside attack\n  install a firewall between ur lin sys and the connection to the internet\n\nfirewall can be installed in:\n  router\n  computer',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(163,'#iptables #list#rules',NULL,NULL,NULL,'iptables --list',NULL,NULL,NULL,'0000-00-00 00:00:00'),(164,'#iptables #intro #important#object',NULL,NULL,NULL,'\nR u l e s\n======================================================================================\n  perform the packetfiltering or manipulation\n  made of several parts\n    the table to which this rule should be added\n      If no table is defined the rule will be added to the “filter” table\n    The Chain to which this rule should be added\n    The filtering or manipulation instructions\n    The target of the rule\n      This target decides what should be done with the packet if it matches the rule.\n      ex : DROP : to drop the packets if the packets matched the rule\n           ACCEPT\n           LOG  : to write sth(...) if it matched\n\nC h a i n s\n==========================================================================================\nrules are organized in “chains”\nThere are some built-in chains that are always available for the user like the INPUT or the OUTPUT in the filter_table\n\nT a b l e s\n==========================================================================================\nchains themselves are organized in so called “tables”\n\nThere are three tables available \n  filter,\n    used for packet filtering\n  nat  \n    made for all kind of “Network Address Translation” technology\n  mangle\n    designed to hold chains and rules that change other attributes of the packets or sending them into the userspace to be processed by any other application\n    this is very complex',NULL,NULL,NULL,'0000-00-00 00:00:00'),(161,'#metasploit #architecture',NULL,'\n				  xxxxxxxx			    xxxxxxxxxxx\n                                  x  lib x              --------->  x  interf x\n				  xxxxxxxx              |           xxxxxxxxxxx\ntools    --------------->            rex		|	       console	\n			    	      ^			|		\n				      |			|		cli\n				   msfcore              |\n				      ^			|		web\n				      |                 |\nplugins  --------------->          msfbase    <---------|		gui\n				      ^             \n				      |\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\nx                                  modules					x\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\npayloads    |      exploits      |      encoders      |      nops      |      aux\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(165,'#firewall #iptable #intro #basic#functionalities',NULL,'\nthose are some basic functionnality of firewall \n  Stealth Mode - Discarding Pings\n  bcz ping can find out if a particular sys is up\n    it can be discarded\n\n   Port Forwarding and Blocking\n     the most fundamental level of firewall security and will be the most used\n\n  Packet Filtering\n    much more advanced mechanism for providing security and is not available in typical small business or home use router devices\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(166,'#metasploit #architecture',NULL,'many libs are used to keep msf functioning, the most important is (part of the framework) REX(ruby extension) lib\nmsf_core lib extends rex',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(167,'#metasploit #interface',NULL,'\n/usr/share/metasploit-framework/msfgui\n  for the gui of msf\n/usr/share/metasploit-framework/msfconsole   for the console of msf  they are right for kali-linux1.0.8 ',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(168,'#msf #save_to#db #db_nmap #scan',NULL,NULL,NULL,'msf > db_nmap 192.168.56.102',NULL,NULL,NULL,'0000-00-00 00:00:00'),(169,'#mysql #create#procedure #basic',NULL,NULL,NULL,'\ndelimiter |\nCREATE PROCEDURE proc00()\nbegin\n...\nend|\n\ndo not do the creation of a procedure inside \\e of mysql',NULL,NULL,NULL,'0000-00-00 00:00:00'),(170,'#mysql #procedure #proc #call',NULL,NULL,NULL,'call proc00()',NULL,NULL,NULL,'0000-00-00 00:00:00'),(171,'#mysql #procedure #proc #parameter #argument #in',NULL,NULL,NULL,'\nCREATE PROCEDURE proc00 (IN param00 INT)\nbegin\n...\nend\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(172,'#mysql #procedure #proc #parameter #argument#in #call',NULL,NULL,NULL,'call proc00(1)\nOR\nSET @var00 := 2;\ncall proc00(@var00)\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(173,'#mysql #procedure #proc #parameter #argument',NULL,NULL,NULL,'\nCREATE PROCEDURE proc00 (IN param00 INT, OUT param01 int)\nbegin\n...\nend\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(174,'#mysql #conf #activate#log',NULL,NULL,NULL,'edit:/etc/mysql/my.cnf, add\n  [mysql]\n  general_log_file        = /var/log/mysql/mysql.log\n  general_log             = 1\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(175,'#definition #pen_testing',NULL,'Penetration Testing goes beyond an assessment by evaluating identified vulnerabilities\nA Penetration Test would attempt to attack those vulnerabilities in the same manner as a malicious hacker to verify which vulnerabilities are genuine reducing the real list of system vulnerabilities\n\n\nPenetration Testing does not make networks more secure!\nPenetration Testing evaluates the effectiveness of existing security\nIf\nIf a customer does not have strong security then they will receive little value from Penetration Testing services ',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(176,'#ptes #terminology #methodology',NULL,'The most common terminology defining the starting state is Black box testing, White box testing, or a blend between White and Black box testing known as Gray box testing\n\nBlack box assumes the Penetration Tester has no prior knowledge of the target\nStarting a Black box project requires a lot of reconnaissance\n\nWhite box is when a Penetration Tester has intimate knowledge about the system.\n\ngray box is between white and blackbox\n\nAn internal security group usually performs white box testing',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(177,'#git #add #remote#repo',NULL,NULL,'git remote add origin https://github.com/user/repo.git',NULL,'aa02',NULL,NULL,'0000-00-00 00:00:00'),(178,'#git #version #check',NULL,NULL,'git --version',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(179,'#git #remote#repo #tip',NULL,'\nedit: .git/config\n  change: url=https://MichaelDrogalis@github.com/derekerdmann/lunch_call.git\n  to:     url=ssh://git@github.com/derekerdmann/lunch_call.git\n',NULL,NULL,'aa02',NULL,NULL,'0000-00-00 00:00:00'),(180,'#git #mail #add #global',NULL,NULL,NULL,'git config --global user.email \"your_email@youremail.com\"',NULL,NULL,NULL,'0000-00-00 00:00:00'),(181,'#git #add #username #name #global',NULL,NULL,NULL,'git config --global user.name \"Firstname Lastname\"',NULL,NULL,NULL,'0000-00-00 00:00:00'),(186,'#pentest #methodology#think_about',NULL,'Definition of Target System(s)\n  the location on the network, types of systems, and business of those systems\n\nTimeframe of the testing\n  \nHow Targets Are Evaluated\n  What types of testing, exploitation are not permitted\n  Examples are; using social networking by pretending to be an employee\n\nTools and software\n\nnotified parties\n  may s1 should be informed about the test\n\nInitial Access Level\n  What type of information and access is provided prior to _kicking off_ the Penetration Test?\n\nDefinition of Target Space\n\nIdentification of Critical Operation Areas\n  which area should not be touched\n\nDeliverable:\n  What type of final report is expected?\n  Remediation expectations:\n\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(187,'#pastebinit #install',NULL,NULL,'apt-get install pastebinit',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(188,'#pastebinit #manual',NULL,NULL,'\npastebinit file00\nls -a | pastebinit\n  # do not do this next one: \n  # ls -a|pastebinit\n',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(189,'#kali #pentest #sec #intro #basic #concepts #steps #reconnaissance',NULL,'\nRegardless if the starting point is White, Black, or Gray box testing\n  there is a set of steps that should be followed \n\nReconnaissance\n  learn as much as possible about a target\'s environment\n  The more information you can identify about a target, the better chance you have to identify the easiest and fastest path to success.\n  Black box testing requires more reconnaissance than White box testing\n  can include researching a target\'s Internet footprint,\n\n  The deliverable of a reconnaissance assignment should include a list of all the assets being targeted\n\n  Kali Linux offers a category labeled Information Gathering that serves as a Reconnaissance resource\n  Tools include methods to research network, data center, wireless, and host systems\n\n  The following is the list of Reconnaissance goals:\n•	 Identify target(s)\n•	 Define applications and business use\n•	 Identify system types\n•	 Identify available ports\n•	 Identify running services\n•	 Passively social engineer information\n•	 Document findings\n\n\nTarget evaluation\n  next step is evaluating the target for vulnerabilities.\n\nExploitation\n  the hack\n\nPrivilege escalation\n  think about how to go higher in the hierarchy of the system\n\nMaintaining a foothold\n  think about how I could go back to this hacked_sys at next time\n\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(190,'#git #ssh #remote#repo',NULL,NULL,NULL,'\ncd ~/.ssh && ssh-keygen\n  to create a pub/private_ssh_key\ncat id_rsa.pub | xclip\n  or copy(ctrl_c) the public key created in ~/.ssh/\ngo in github.com, log_in\ngo to: settings(on right_up of ur profile)\n  ssh_key in the left_middle\n  click add_ssh_key\ncopy the id_rsa.pub \n  add title\n  copy it to key\n','aa01',NULL,NULL,'0000-00-00 00:00:00'),(191,'#mysql #check #version',NULL,NULL,NULL,'mysql -h localhost -V\n  -h to determine the host\n  -V to tell that u want the version \n\n\ninside mysql\n	show variable like \'*version*\';\n	select version() ;\n','',NULL,NULL,'0000-00-00 00:00:00'),(192,'#kali #methodology #hack #steps #exo #phase #tool#category',NULL,'\nreconnaissance\n  information gathering:\n    Tools range from identifying devices to protocols used\n  sniffing_spoofing tools\n\ntarget vulnerabilities\n  Vulnerability Analysis: \n\nexploitation\n  Web Applications\n  password attacks\n  exploitation tools\n\nescalading the hierarchy\n  password attacks\nfootholding\nreport\n\nnot yet done\n',NULL,NULL,NULL,'-p 31 /srv/doc/h/webPenTestWithKali.pdf',NULL,'0000-00-00 00:00:00'),(193,'#irc #connect #server #freenode #irssi',NULL,NULL,'/connect irc.freenode.net',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(196,'#conky #intro #monit#sys #linux',NULL,NULL,NULL,'surveiller de nombreux paramètres systèmes (charge processeur, occupation mémoire, températures, vitesse ventilateurs, charge batterie, trafic réseau). ',NULL,NULL,NULL,'0000-00-00 00:00:00'),(195,'#linux #bash #test#existance#folder #file #if',NULL,NULL,'test -e /path/file00 && echo \'file is there\' || echo \'missing file\'',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(197,'#pentest #sow #methodology',NULL,'\nBefore you offer Penetration services, write a sow(statement of work)\n  will outlines the work you are going to perform \n',NULL,NULL,NULL,'-p 295 webPenTestWithKali.pdf',NULL,'0000-00-00 00:00:00'),(198,'#dradis #kali #intro',NULL,'Dradis is an open source framework for information _sharing_.\nDradis provides a centralized repository of information to keep track of:\n  what has been done and\n  still needs to be completed\n\nu can access dradis by running\n  dradis\n  and check at https://127.0.0.1:3004/\n\nfirstime u run dradis,\n  set up a passw for user::root\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(199,'default#port',NULL,NULL,NULL,'\nfrom: http://web.mit.edu/rhel-doc/4/RH-DOCS/rhel-sg-en-4/ch-ports.html\n\n\nif not mentioned, then it can use udp and tcp \n\ndradis:127.0.0.1:3004\n13 	daytime 	Sends date and time to requesting host \n20 	ftp-data 	FTP data port \n21 	ftp 		File Transfer Protocol (FTP) port; sometimes used by File Service Protocol (FSP) \n22 	ssh 		Secure Shell (SSH) service \n23 	telnet 	The Telnet service\n25 	smtp 	Simple Mail Transfer Protocol (SMTP) \n42 	nameserver 	Internet Name Service \n43 	nicname 	WHOIS directory service \n49 	tacacs 	Terminal Access Controller Access Control System for TCP/IP based authentication and access \n53 	domain 	domain name services (such as BIND) \n63 	whois++ 	WHOIS++, extended WHOIS services \n69 	tftp 	Trivial File Transfer Protocol (TFTP) \n80 	http 	HyperText Transfer Protocol (HTTP) for World Wide Web (WWW) services\n88 	kerberos 	Kerberos network authentication system \n107 	rtelnet 	Remote Telnet \n109 	pop2 	Post Office Protocol version 2\n110 	pop3 	Post Office Protocol version 3 \n115 	sftp 	Secure File Transfer Protocol (SFTP) services \n123 	ntp 	Network Time Protocol (NTP) \n137 	netbios-ns 	NETBIOS Name Service used in Red Hat Enterprise Linux by Samba \n143 	imap 	Internet Message Access Protocol (IMAP)\n161 	snmp 	Simple Network Management Protocol (SNMP) \n174 	mailq 	MAILQ email transport queue \n194 	irc 	Internet Relay Chat (IRC) \n213 	ipx 	Internetwork Packet Exchange (IPX), a datagram protocol commonly used in Novell Netware environments\n220 	imap3 	Internet Message Access Protocol version 3 \n389 	ldap 	Lightweight Directory Access Protocol (LDAP) \n443 	https 	Secure Hypertext Transfer Protocol (HTTP) \n546 	dhcpv6-client 	Dynamic Host Configuration Protocol (DHCP) version 6 client\n547 	dhcpv6-server 	Dynamic Host Configuration Protocol (DHCP) version 6 Service \n565 	whoami 	whoami user ID listing \n631 	ipp 	Internet Printing Protocol (IPP) \n636 	ldaps 	Lightweight Directory Access Protocol over Secure Sockets Layer (LDAPS) \n873 	rsync 	rsync file transfer services \n992 	telnets 	Telnet over Secure Sockets Layer (TelnetS) \n993 	imaps 	Internet Message Access Protocol over Secure Sockets Layer (IMAPS) \n994 	ircs 	Internet Relay Chat over Secure Sockets Layer (IRCS) \n995 	pop3s 	Post Office Protocol version 3 over Secure Sockets Layer (POP3S) \ndradis:127.0.0.1:3004\n3306 	mysql 	MySQL database service \n\n15/tcp 	netstat 	Network Status (netstat) \n\ncheck more at: http://web.mit.edu/rhel-doc/4/RH-DOCS/rhel-sg-en-4/ch-ports.html\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(200,'socket',NULL,'combination of software Port and IP address',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(201,'#ports #well-known #assigned #default ',NULL,'Well known ports are from 0 to 1023(total 2^10=1024 ports)\nDefault port is a designated port for particular well-known service such as web server, mail server, ftp server etc. By default FTP uses 21 port, DNS uses 53 and Apache uses 80 port',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(202,'#protocol_number #prot_nb #number',NULL,'Do not confuse protocol_number with port numbers\n   TCP protocol number:6\n   UDP protocol number:17 \n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(203,'#port #samba',NULL,'199',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(204,'#port #pop3s',NULL,'995',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(205,'NFS(nfsd, rpc.nfsd, rpc, portmap)',NULL,'2049',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(206,'#linux #ls #get#size #awk',NULL,NULL,'ls -nlh file00 | awk \'{print $5}\'',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(207,'#casefile #maltegoi #info#gathering',NULL,'to determine the relationships and real world links between hundreds of different types of information.\ncan be used in information gathering\n',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(208,'#casefile #maltegoi #info#gathering #execution#kali',NULL,'\ncasefile',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(209,'#magictree #report #execution#kali',NULL,NULL,NULL,'\nMagicTree is a Penetration Tester productivity tool designed for data consolidation, external command execution, and report generation\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(210,'#mysql #create#user',NULL,NULL,NULL,'\nCREATE USER \'max\'@\'localhost\' IDENTIFIED BY \'maxisthebest\';\n  max peut se connecter au_a partir du localhost(l_ordi qui possede mysql)\nCREATE USER \'elodie\'@\'194.28.12.4\' IDENTIFIED BY \'ginko1\';\n  elodie ne peut pas se connecter sur localhost si @localhost diff de 194.28.12.4\nCREATE USER \'gabriel\'@\'arb.brab.net\' IDENTIFIED BY \'chinypower\';\n  a partir d_un @dns\nCREATE USER \'thibault\'@\'194.28.12.%\' IDENTIFIED BY \'basketball8\';\n  peut se connecter sur 194.168.12.2-3-4-....\nCREATE USER \'hannah\'@\'%\' IDENTIFIED BY \'looking4sun\';\n  peut se connecter a partir de _tout_ machine\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(211,'#mysql #rename#user',NULL,NULL,NULL,'rename user \'user00\'@\'host00\' to \'user01\'@\'host01\' ;\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(212,'#mysql #change#pass from#root #pwd #password',NULL,NULL,NULL,'set password for \'user00\'@\'192.164.1.%\' = password(\'pass00\') ;\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(213,'#mysql #privilege #intro',NULL,NULL,NULL,'\nau debut, user00 sans privilege donc peut _rien_(select, insert, ...) faire, se connecte selmnt\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(214,'#mysql #privilege #exemple',NULL,NULL,NULL,'\nGRANT SELECT,\n	UPDATE (nom, sexe, commentaires),\n	DELETE,\n	INSERT\nON elevage.Animal\nTO \'john\'@\'localhost\' IDENTIFIED BY \'exemple2012\';\n	action de john sur db(elevage)table(animal): \n		tt selecter\n		updater(nom, sexe, commentaires)\n		tt delete\n		tt insert\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(215,'#mysql #privilege #exemple',NULL,NULL,NULL,'\ngrant all on table db00.* to \'user00\'@\'192.168.1.%\' identified by \'pass00\'\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(216,'#mysql #date #now',NULL,NULL,NULL,'\nselect curdate() ;\nselect current_date() ;\nselect now() ;\nselect current_date ;\nselect curtime();\n\nselect now();\n  ret datetime\nselect date(now());\nselect time(now());\nselect day(now());\n  1 - 31\nselect dayofweek(now());\n  1 - 7\n  1: sunday\n  2: monday\n  6: friday\n  7: saturday\nselect weekday(now()) ;\n  0 - 6\n  0: sunday\n  1: mon\n  7: sunday\nselect dayname(now());\n  ret sunday | monday | ...\nselect dayofyear(now());\n  ret 1 - 366\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(217,'#mysql #time #lang #langue #language',NULL,NULL,NULL,'\nset lc_time_names=\'fr_FR\'\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(218,'#mysql #date #more_options #month',NULL,NULL,NULL,'\nselect monthname(now());\nselect year(now());\n\nselect hour(now());\nselect minute(now());\nselect second(now());\n\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(219,'#mysql #date_format #format',NULL,NULL,NULL,'\nselect date_format(now(), \'le %W %e %M %Y\') ;\n	le Dimanche 16 Fevrier 2014\n  	%d Jour du mois (nombre à deux chiffres, de 00 à 31)\n	%W Nom du jour de la semaine\n	%a Nom du jour de la semaine en abrégé\n	%m Mois (nombre de deux chiffres, de 00 à 12)\n	%c Mois (nombre de un ou deux chiffres, de 0 à 12)\n	%M Nom du mois\n	%b Nom du mois en abrégé\n	%Y Année, sur quatre chiffres\n	%r Heure complète, format 12h (hh:mm:ss AM/PM)\n	%T Heure complète, format 24h (hh:mm:ss)\n	%H Heure sur deux chiffres et sur 24 heures (de 00 à 23)\n	%i Minutes (de 00 à 59)\n	%e Jour du mois (nombre à un ou deux chiffres, de 0 à 31)\n	%p AM/PM\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(220,'#mysql #str_to_date #get_format',NULL,NULL,NULL,'\n\nSELECT STR_TO_DATE(\'11.21.2011\', GET_FORMAT(DATE, \'USA\')) ;\n  11.21.2011 is a date the get_format(date, ...)\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(221,'#mysql #datediff #difference #date',NULL,NULL,NULL,'\nSELECT DATEDIFF(\'2011-12-25\',\'2011-11-10\') AS nb_jours;\n  out: 45',NULL,NULL,NULL,'0000-00-00 00:00:00'),(222,'#mysql #timediff #difference #time',NULL,NULL,NULL,'\nSELECT TIMEDIFF(\'2011-12-25 21:34:55\',\'2011-11-10 04:54:44\') AS difftime;\n  out: 20:35:20',NULL,NULL,NULL,'0000-00-00 00:00:00'),(223,'#mysql #date #interval',NULL,NULL,NULL,'\nselect now() + interval 4 day;\ninsert into table00(col00) values (now() + interval 4 day) ;\n\nselect now() + interval 4 hour;\nselect now() + interval 4 minute;\nselect now() + interval 4 month;\nselect now() + interval 4 year;\n\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(224,'#mysql #show#procedure',NULL,NULL,'SHOW PROCEDURE STATUS;',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(225,'#mysql #show#function',NULL,NULL,'SHOW FUNCTION STATUS;',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(226,'#mysql #drop#procedure #delete',NULL,NULL,NULL,'drop procedure if exists\n  do not forget the \"s\" in \"if exists\"',NULL,NULL,NULL,'0000-00-00 00:00:00'),(227,'#mysql #drop#function #delete',NULL,NULL,NULL,'drop function if exists\n  do not forget the \"s\" in \"if exists\"',NULL,NULL,NULL,'0000-00-00 00:00:00'),(228,'#mysql #create#procedure #tip',NULL,'do not do the creation of a procedure inside \\e of mysql',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(229,'#mysql #inquery #table #notes_tech',NULL,NULL,NULL,'select id_n_t, tiitle from notes_tech where tiitle like \'%mysql%\' and tiitle like \'%procedure%\' G',NULL,NULL,NULL,'0000-00-00 00:00:00'),(230,'#mysql #show#db#all',NULL,NULL,'show databases;',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(231,'#mysql #show#table#all',NULL,NULL,'show tables;',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(232,'#mysql #timestamp #convert to#datetime #from_unixtime',NULL,NULL,NULL,'SELECT FROM_UNIXTIME(1325595287)',NULL,NULL,NULL,'0000-00-00 00:00:00'),(233,'#firefox #addons #ads #adblock_edge',NULL,'Adblock Edge is a fork of the Adblock Plus version 2.1.2 extension for blocking advertisements on the web.',NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(234,'#mysql #datetime#convert_to#timestamp #from_unixtime #unix_timestamp',NULL,NULL,NULL,'SELECT UNIX_TIMESTAMP(\'2012-01-03 13:54:47\');\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(235,'#mysql #convert#time#second #time_to_sec #sec_to_time',NULL,NULL,NULL,'select SEC_TO_TIME(102569), TIME_TO_SEC(\'01:00:30\');\n',NULL,NULL,NULL,'0000-00-00 00:00:00'),(236,'#mysql #last #day#month',NULL,NULL,NULL,'select last_day(\'2012-02-03\'',NULL,NULL,NULL,'0000-00-00 00:00:00'),(237,'#mysql #show#create#table',NULL,NULL,NULL,'show create table table00;\n  that_s show the cmd used to create the table00',NULL,NULL,NULL,'0000-00-00 00:00:00'),(238,'#mysql #create#view',NULL,NULL,'create view v_name_view as select * from notes_tech where tiitle like \'%mysql%\'',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(239,'#mysql #create#view #replace',NULL,NULL,'create view or replace v_name_view as select * from notes_tech where tiitle like \'%mysql%\'',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(240,'#mysql #drop#view #delete',NULL,NULL,'drop view view00',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(241,'#mysql #show#view #list #all',NULL,NULL,'SHOW FULL TABLES IN db00 WHERE TABLE_TYPE LIKE \'VIEW\';',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(242,'#mysql #distinct',NULL,NULL,'select distinct col00 from table00 ;',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00'),(243,'test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-01-13 07:22:03'),(247,'#mysql #order_of#order_by#limit#offset',NULL,'already in col::tiitle',NULL,NULL,NULL,NULL,NULL,'2015-01-13 07:36:28'),(248,'#mysql #select #where #like #elargir #extend',NULL,NULL,NULL,'\nselect * from table00 where col00 like \'%patt00%\';\n  -- then all lines with col00 in (xxxpatt00xxx) will be selected\n\nselect * from table00 where col00 like \'%patt00%patt01\';\n  -- then all lines with col00 in (xxxpatt00xxxpatt01) will be selected\n\nselect * from table00 where col00 like \'_patt00_\';\n  -- then all lines with col00 in (xpatt00x) will be selected\n  -- only one char\n\nselect * from table00 where col00 like \'_patt00_patt01\';\n  -- then all lines with col00 in (xpatt00Xpatt02) will be selected\n\n',NULL,NULL,NULL,'2015-01-13 07:41:19'),(246,'#mysql #create#procedure #tip',NULL,NULL,NULL,'\ndelimiter |\ncreate procedure srch_table_name (in patt varchar(50)) \nbegin \n	set @real_patt=concat(\'%\', patt, \'%\'); \n		-- u shouldn\'t add \'\' inside the real_patt\n		-- this next one is wrong \n		-- set @real_patt=concat(\'\\\'%\', patt, \'%\\\'\');\n	select * from engl where keey like @real_patt ; \nend|\ndelimiter ;\n',NULL,NULL,NULL,'2015-01-13 07:33:44'),(252,'#mysql #select #between #date #and',NULL,NULL,NULL,'\nSELECT * FROM table00 WHERE col00 BETWEEN \'2008-01-05\' AND \'2009-03-23\';\n',NULL,NULL,NULL,'2015-01-13 07:53:10'),(250,'#mysql #sensitive#case #casse#sensible #select',NULL,NULL,NULL,'\nselect * from table00 where col00 like binary \'%patt00%\';\n',NULL,NULL,NULL,'2015-01-13 07:49:27'),(251,'#mysql #not_like #like #select',NULL,NULL,NULL,'\nselect * from table00 where col00 not like \'%patt00%\';\n  it will select all lines _NOT_ containing patt00 in col00\n',NULL,NULL,NULL,'2015-01-13 07:50:18'),(253,'#mysql #count #like #select',NULL,NULL,NULL,'\nselect count(id_n_t) from notes_tech where tiitle like \'%patt00%\'\n  it will count all lines which contains patt00\n',NULL,NULL,NULL,'2015-01-13 07:56:27'),(254,'#mysql #select #in',NULL,NULL,NULL,'\nselect count(id_n_t) from notes_tech where col00 in (7, 1, 56, 74, 3);\n  it will pick lines with col00=7 1 56 ...\n',NULL,NULL,NULL,'2015-01-13 07:58:13'),(255,'#mysql #dump #mysqldump #save#db',NULL,NULL,NULL,'\nmysqldump -u user00 -p --opt base00 > save00.sql # this is a cmd_linux\n  --opt		then the cmd is very fast to exe\n\nUSE nom_base;\nsource file00.sql;\n	# those prev 2 cmd are mysql_cmd, inside: mysql>\n# ifk, u should be in folder00 where file00.sql is in\n',NULL,NULL,NULL,'2015-01-13 08:03:25'),(256,'#mysql #dump #restore#db',NULL,NULL,NULL,'\nmysql db00 < file00.sql # this is a cmd_linux\n',NULL,NULL,NULL,'2015-01-13 08:05:39'),(257,'#mysql #conf #order',NULL,'\nlinux\n	/etc/my.cnf\n	/etc/mysql/my.cnf\n	~/.my.cnf\nwindows\n	WINDIRmy.ini, \n	WINDIRmy.cnf \n		echo %WINDIR% # to check what is WINDIR\n	-\n	C:my.ini ou C:my.cnf \n	-\n	INSTALLDIRmy.ini \n	ou \n	INSTALLDIRmy.cnf \n		INSTALLDIR est le dossier dans lequel MySQL a été installé.\n',NULL,NULL,NULL,NULL,NULL,'2015-01-13 08:37:15'),(258,'#mysql #create#table #insert#default#timestamp #datetime',NULL,NULL,NULL,'\ncreate table table00 (\n...\ncol00 timestamp on default current_timestamp on update current_timestamp ;\n...\n',NULL,NULL,NULL,'2015-01-13 09:13:40');
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
  `mail` varchar(100) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_person`),
  UNIQUE KEY `alias` (`alias`,`addr`),
  KEY `index01` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'first_name','middle_name','last_name','alias',NULL,NULL,NULL,NULL,NULL,NULL),(2,'','','','mahefa','IIH21 nanisana tana',NULL,'m',NULL,NULL,NULL),(3,'','','','noro','norway',NULL,'f',NULL,NULL,NULL),(4,'','','','tsiry','IIH21 nanisana tana',NULL,'f',NULL,NULL,NULL),(5,'','','','ndrola_dtoa','majunga',NULL,'m',NULL,NULL,NULL),(6,'','','','betty','nanisana','dana','f',NULL,NULL,NULL),(7,'','','','heryTonton','nanisana',NULL,'m',NULL,NULL,NULL),(8,'','','','fetra','ambohidahy',NULL,'m',NULL,NULL,NULL),(9,'','','','dimby','ambohidahy','mongman','m',NULL,NULL,NULL),(10,'','','','dada','diego',NULL,'m',NULL,NULL,NULL),(11,'','','','neny','tranobozaka diego',NULL,'f',NULL,NULL,NULL),(12,'','','','harisson','ambondraserika vs 52 pr ter a',NULL,'m',NULL,NULL,NULL),(13,'','','','menja',NULL,NULL,'m',NULL,NULL,NULL),(14,'','','','fy','nanisana',NULL,'f',NULL,NULL,NULL),(15,'','','','oswald',NULL,NULL,'m',NULL,NULL,NULL),(16,NULL,NULL,NULL,'nosy','ivato',NULL,'f',NULL,NULL,NULL),(17,NULL,NULL,NULL,'jerome','ivato',NULL,'m',NULL,NULL,NULL),(18,NULL,NULL,NULL,'nasser','67',NULL,'m',NULL,NULL,NULL),(19,NULL,NULL,NULL,'matthieu',NULL,NULL,'m',NULL,NULL,NULL),(20,NULL,NULL,NULL,'toto_perle','amparibe',NULL,'f',NULL,NULL,NULL),(21,NULL,NULL,NULL,'ravaka_dtoa','antsirabe',NULL,'m',NULL,NULL,NULL),(22,NULL,NULL,NULL,'ole-johan','norway',NULL,'m',NULL,NULL,NULL),(23,NULL,NULL,NULL,'hary','diego',NULL,'f',NULL,NULL,NULL),(24,NULL,NULL,NULL,'elodie',NULL,'fleur','f',NULL,NULL,NULL),(25,NULL,NULL,NULL,'lefa','vr 52 ps ter a - ambondraserika',NULL,'m',NULL,NULL,NULL),(26,NULL,NULL,NULL,'lova','vr 52 ps ter a - ambondraserika',NULL,'f',NULL,NULL,NULL),(27,NULL,NULL,NULL,'amit','ambohidahy',NULL,'m',NULL,NULL,NULL),(28,NULL,NULL,NULL,'hermine','ambohidahy','hermine_maman','f',NULL,NULL,NULL),(32,NULL,NULL,NULL,'ando','67',NULL,'f',NULL,NULL,NULL),(33,NULL,NULL,NULL,'ando','sabnam',NULL,'m',NULL,NULL,NULL),(34,NULL,NULL,NULL,'ando','diego',NULL,'m',NULL,NULL,NULL),(35,NULL,NULL,NULL,'andry_coiffeur','ampasapito',NULL,'m',NULL,NULL,NULL),(36,NULL,NULL,NULL,'ainnaSweetie',NULL,NULL,'f',NULL,NULL,NULL),(37,NULL,NULL,NULL,'antsa','ambolokandrina',NULL,'m',NULL,NULL,NULL),(38,NULL,NULL,NULL,'boof','anosy',NULL,'0',NULL,NULL,NULL),(39,NULL,NULL,NULL,'brenda','67',NULL,'f',NULL,NULL,NULL),(40,NULL,NULL,NULL,'chamassi','ambolokandrina',NULL,'m',NULL,NULL,NULL),(41,NULL,NULL,NULL,'didi','antsirabe',NULL,'m',NULL,NULL,NULL),(42,NULL,NULL,NULL,'ellia','ambositra',NULL,'f',NULL,NULL,NULL),(43,NULL,NULL,NULL,'armand_tonton','ambositra',NULL,'m',NULL,NULL,NULL),(44,NULL,NULL,NULL,'daniella',NULL,NULL,'f',NULL,NULL,NULL),(45,NULL,NULL,NULL,'herve','sabnam',NULL,'m',NULL,NULL,NULL),(46,NULL,NULL,NULL,'steph','ambohimangakely',NULL,'m',NULL,NULL,NULL),(47,NULL,NULL,NULL,'tah','ambohidahy',NULL,'m',NULL,NULL,NULL),(48,NULL,NULL,NULL,'tah',NULL,NULL,'m',NULL,NULL,NULL),(49,NULL,NULL,NULL,'john',NULL,NULL,NULL,NULL,NULL,NULL),(50,NULL,NULL,NULL,'nambine',NULL,NULL,NULL,NULL,NULL,NULL),(51,NULL,NULL,NULL,'maman_john',NULL,NULL,NULL,NULL,NULL,NULL),(52,NULL,NULL,NULL,'dadan_john',NULL,NULL,NULL,NULL,NULL,NULL),(53,NULL,NULL,NULL,'mbola',NULL,NULL,NULL,NULL,NULL,NULL),(54,NULL,NULL,NULL,'bela',NULL,NULL,NULL,NULL,NULL,NULL),(55,NULL,NULL,NULL,'lanto_cousin','fianarantsoa',NULL,'m',NULL,NULL,NULL),(56,NULL,NULL,NULL,'sissi_cousin',NULL,NULL,NULL,NULL,NULL,NULL),(57,NULL,NULL,NULL,'gaetan',NULL,NULL,NULL,NULL,NULL,NULL),(58,NULL,NULL,NULL,'lucien',NULL,NULL,NULL,NULL,NULL,NULL),(59,NULL,NULL,NULL,'maholy',NULL,NULL,NULL,NULL,NULL,NULL),(60,NULL,NULL,NULL,'mahentsoa',NULL,NULL,NULL,NULL,NULL,NULL),(61,NULL,NULL,NULL,'fidel',NULL,NULL,NULL,NULL,NULL,NULL),(62,NULL,NULL,NULL,'fitia',NULL,NULL,NULL,NULL,NULL,NULL),(63,NULL,NULL,NULL,'haja','67',NULL,NULL,NULL,NULL,NULL),(64,NULL,NULL,NULL,'hary_aunt','manakara',NULL,NULL,NULL,NULL,NULL),(65,NULL,NULL,NULL,'hasina_mar',NULL,NULL,NULL,NULL,NULL,NULL),(66,NULL,NULL,NULL,'rova','ambondrona',NULL,NULL,NULL,NULL,NULL),(67,'razafindrahety',NULL,NULL,'ispm_rectrice',NULL,NULL,NULL,NULL,NULL,NULL),(68,NULL,NULL,NULL,'jim',NULL,NULL,NULL,NULL,NULL,NULL),(69,NULL,NULL,NULL,'july',NULL,NULL,NULL,NULL,NULL,NULL),(70,NULL,NULL,NULL,'karino',NULL,NULL,NULL,NULL,NULL,NULL),(71,NULL,NULL,NULL,'laura',NULL,NULL,'f',NULL,NULL,NULL),(72,NULL,NULL,NULL,'laza',NULL,NULL,'m',NULL,NULL,NULL),(73,NULL,NULL,NULL,'linda',NULL,NULL,'f',NULL,NULL,NULL),(74,NULL,NULL,NULL,'lody',NULL,NULL,'m',NULL,NULL,NULL),(75,NULL,NULL,NULL,'mahafaly',NULL,NULL,NULL,NULL,NULL,NULL),(76,NULL,NULL,NULL,'mamitiana',NULL,NULL,'m',NULL,NULL,NULL),(77,NULL,NULL,NULL,'maman_vero',NULL,NULL,'f',NULL,NULL,NULL),(78,NULL,NULL,NULL,'manda',NULL,NULL,'m',NULL,NULL,NULL),(79,NULL,NULL,NULL,'mampionona',NULL,NULL,'f',NULL,NULL,NULL),(80,NULL,NULL,NULL,'marcelin',NULL,NULL,'m',NULL,NULL,NULL),(81,NULL,NULL,NULL,'maman_tatamo',NULL,'mbinina',NULL,NULL,NULL,NULL),(82,NULL,NULL,NULL,'mika','67',NULL,'m',NULL,NULL,NULL),(83,NULL,NULL,NULL,'mirana',NULL,NULL,'f',NULL,NULL,NULL),(84,NULL,NULL,NULL,'msgVoc',NULL,NULL,'0',NULL,NULL,NULL),(85,NULL,NULL,NULL,'tiantsoa',NULL,NULL,NULL,NULL,NULL,NULL),(86,NULL,NULL,NULL,'doc_nelly',NULL,NULL,NULL,NULL,NULL,NULL),(87,NULL,NULL,NULL,'herylanto','tana',NULL,'m','doctor',NULL,NULL),(88,'williams','dean',NULL,'no_alias_yet',NULL,NULL,NULL,NULL,'dean_williams@harvard.edu Dean_Williams@hks.harvard.edu','dean williams'),(89,NULL,NULL,NULL,'m.shadows',NULL,NULL,NULL,NULL,NULL,'Matthew Charles Sanders @a7x');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES (1,'03654213',1,0),(2,'phone',NULL,0),(3,'+261 34 04 462 68',27,0),(4,'+261 33 31 825 47',27,0),(5,'+261 34 52 067 01',33,0),(6,'+261 34 45 647 86',36,0),(7,'+261 33 14 776 81',37,0),(8,'+261 33 41 039 61',41,0),(9,'+261 33 71 253 13',10,0),(10,'+261 32 07 714 87',6,0),(11,'+261 34 18 661 79',6,0),(12,'+261 34 29 559 44',42,0),(13,'+261 34 47 877 39',8,0),(14,'+261 34 41 677 32',57,0),(15,'+261 33 05 435 25',12,0),(16,'+261 34 50 394 32',28,1),(18,'+261 32 78 955 31',58,0),(19,'+261 34 27 744 45',59,0),(21,'+261 32 04 457 12',2,0),(22,'+261 34 20 457 12',2,0),(23,'+261 34 03 535 35',9,0),(24,'+261 34 29 559 44',42,0),(25,'+261 34 47 877 39',8,0),(26,'+261 33 62 248 46',8,0),(27,'+261 34 18 061 89',61,0),(28,'+261 34 86 459 94',62,0),(29,'+261 33 24 529 34',24,0),(30,'+261 33 89 535 24',14,0),(31,'+261 34 89 535 24 ',14,0),(32,'+261 33 83 570 03',14,0),(33,'+261 34 15 031 66',63,0),(34,'+261 33 06 741 03',63,0),(35,'+261 33 05 435 25',12,0),(36,'+261 34 55 593 92',64,0),(37,'+261 33 83 297 54',65,0),(38,'+261 33 73 736 70',45,0),(39,'+261 33 09 711 51',7,0),(40,'+261 34 70 973 61',67,0),(41,'+261 33 09 848 96',67,0),(42,'+261 34 55 200 66',68,0),(43,'+261 33 74 747 47',68,0),(44,'+261 33 12 157 75',51,0),(45,'+261 32 83 487 18',49,0),(46,'+261 33 21 857 88',69,0),(47,'+261 33 08 583 72',70,0),(48,'+261 34 38 024 01',55,0),(49,'+261 33 41 585 72',55,0),(50,'+261 33 20 810 11',71,0),(51,'+261 33 79 247 95',72,0),(52,'+261 33 83 532 11',73,0),(53,'+261 33 41 766 18',74,0),(55,'+261 33 73 201 16',75,0),(56,'+261 33 28 661 25',60,0),(57,'+261 33 68 036 40',76,0),(58,'+261 33 14 181 77',77,0),(59,'+261 33 75 775 27',78,0),(60,'+261 34 95 784 96',79,0),(61,'+261 33 83 764 87',80,0),(62,'+261 34 61 946 63',53,0),(63,'+261 34 13 637 35',13,0),(64,'+261 32 24 522 25',13,0),(65,'+261 33 75 112 08',81,0),(66,'+261 33 64 173 94',82,0),(67,'+261 33 03 283 79',82,0),(68,'+261 34 00 003 69',83,0),(69,'+47 94 98 26 48',3,0);
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `readme`
--

DROP TABLE IF EXISTS `readme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `readme` (
  `id_e_l` int(4) NOT NULL AUTO_INCREMENT,
  `descr` text,
  `tiitle` varchar(100) DEFAULT NULL,
  `taable` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_e_l`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readme`
--

LOCK TABLES `readme` WRITE;
/*!40000 ALTER TABLE `readme` DISABLE KEYS */;
INSERT INTO `readme` VALUES (1,'this is a test',NULL,NULL),(2,'here i will set how to use this db',NULL,NULL),(3,'all abbreviation that i found should be saved here',NULL,'abbrev'),(4,'some files should be saved in the db',NULL,'files'),(5,'to saave my git repos',NULL,'git_repos'),(6,'for some research that i did about english',NULL,'engl'),(7,'i_ve wrote into some books then i will need this when i_m going to erase those i wrote on the book',NULL,'book_marked'),(8,'some files of configuration has some tuto, then,\n  table(files)::descr','#tuto #pedagogy #autodoc',NULL),(9,'table(files) col(descr) val(sourced_ability) \n  then, it u can append that file to bashrc\n','#table#files #col#descr',NULL),(10,'dl if the file was dldd','tables(files) col(descr) val(dl)',NULL),(11,'to save some links which are important in the internet',NULL,'links'),(12,'some file(s) are related to some cmd\n  then there is notes_tech::rel_file','notes_tech',NULL);
/*!40000 ALTER TABLE `readme` ENABLE KEYS */;
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
  `_datet` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tiitle` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_stuff`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuffs`
--

LOCK TABLES `stuffs` WRITE;
/*!40000 ALTER TABLE `stuffs` DISABLE KEYS */;
INSERT INTO `stuffs` VALUES (1,'tcp_ip7 to 1: please do not throw sausage pizza away','0000-00-00 00:00:00',NULL),(2,'tcp_ip1 to 7: all people seems to need data processing','0000-00-00 00:00:00',NULL),(3,'tcp_ipplease do not throw sausage pizza away','0000-00-00 00:00:00',NULL),(4,'////','0000-00-00 00:00:00',NULL),(5,'\nformed in 1999\namerican\nfrom Huntington Beach, California\nThe band\'s members are\n 	lead vocalist M. Shadows,\n 	lead guitarist and backing vocalist Synyster Gates\n	rhythm guitarist and backing vocalist Zacky Vengeance\n	...\n	those 3 people never left a7x\n	...\n 	Johnny Christ\n	Arin Ilejay\n\n	Matt Wendt\n	Justin Sane 	\n	Dameon Ash ','2015-01-13 10:00:31','a7x members history');
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
-- Table structure for table `todo`
--

DROP TABLE IF EXISTS `todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todo` (
  `id_todo` int(4) NOT NULL AUTO_INCREMENT,
  `tiitle` varchar(150) DEFAULT NULL,
  `todo` text,
  `state` varchar(10) DEFAULT 'todo',
  `_datet` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_todo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo`
--

LOCK TABLES `todo` WRITE;
/*!40000 ALTER TABLE `todo` DISABLE KEYS */;
INSERT INTO `todo` VALUES (1,'#mysql #log #activate','have to activate','todo','2015-01-13 09:26:29'),(2,'#mysql #activate #load_data#local#infile','have to activate, \n  http://www.tech-recipes.com/rx/1475/save-mysql-query-results-into-a-text-or-csv-file/','todo','2015-01-13 09:27:19');
/*!40000 ALTER TABLE `todo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_mysql`
--

DROP TABLE IF EXISTS `v_mysql`;
/*!50001 DROP VIEW IF EXISTS `v_mysql`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_mysql` (
  `id_n_t` tinyint NOT NULL,
  `tiitle` tinyint NOT NULL,
  `_datet` tinyint NOT NULL,
  `exp` tinyint NOT NULL,
  `cmd` tinyint NOT NULL,
  `cmd_exp` tinyint NOT NULL,
  `orrder` tinyint NOT NULL,
  `src` tinyint NOT NULL,
  `rel_file` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

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
-- Final view structure for view `v_mysql`
--

/*!50001 DROP TABLE IF EXISTS `v_mysql`*/;
/*!50001 DROP VIEW IF EXISTS `v_mysql`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`nonickn`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_mysql` AS select `notes_tech`.`id_n_t` AS `id_n_t`,`notes_tech`.`tiitle` AS `tiitle`,`notes_tech`.`_datet` AS `_datet`,`notes_tech`.`exp` AS `exp`,`notes_tech`.`cmd` AS `cmd`,`notes_tech`.`cmd_exp` AS `cmd_exp`,`notes_tech`.`orrder` AS `orrder`,`notes_tech`.`src` AS `src`,`notes_tech`.`rel_file` AS `rel_file` from `notes_tech` where (`notes_tech`.`tiitle` like '%mysql%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-13 12:05:01
