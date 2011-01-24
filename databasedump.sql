-- MySQL dump 10.13  Distrib 5.1.54, for apple-darwin10.3.0 (i386)
--
-- Host: localhost    Database: sushmita_website_development
-- ------------------------------------------------------
-- Server version	5.1.54

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
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `project_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `mediatype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_images_on_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (21,'welcomepage.png','Opening welcome page of the application',6,'2010-12-30 19:45:50','2011-01-20 22:06:23',0),(23,'myinformation.png','Profile management system where a user can view, add, or modify their professional information.',6,'2010-12-30 19:49:18','2011-01-20 22:06:23',0),(24,'documentslist.png','Repository of a user\'s CVs and applications. From this page, they can output new grant applications or other documents as needed.',6,'2010-12-30 19:49:18','2011-01-20 22:06:23',0),(25,'documentrequest.png','User can request a document from or by another researcher..',6,'2010-12-30 19:49:18','2011-01-23 21:11:57',0),(26,'search.png','User can search for other researchers by a specific specialty, research method, or publication.',6,'2011-01-20 22:06:23','2011-01-20 22:06:23',0),(27,'mycolleagues.png','An online professional network for a user\'s contacts and collaborators.',6,'2011-01-20 22:06:23','2011-01-20 22:06:23',0),(28,'profilepage.png','A sample researcher\'s profile page.',6,'2011-01-20 22:06:23','2011-01-20 22:06:23',0),(29,'spendingtrends_month.png','A view of a person\'s spending by month, highlighting their experiences through the month.',12,'2011-01-20 22:38:37','2011-01-20 22:38:37',0),(30,'spendingtrends_season.png','A view of a person\'s spending by season, highlighting their experiences over the season.',12,'2011-01-20 22:38:37','2011-01-20 22:38:37',0),(31,'moodboard.png','We created a moodboard to think through design concepts and expressions of this system.',12,'2011-01-20 22:38:37','2011-01-20 22:38:37',0),(32,'paperprototype.png','We created a paper prototype to test out our initial ideas and to play with the overall layout before developing a mockup in javascript.',12,'2011-01-20 22:40:36','2011-01-20 22:40:36',0),(33,'mentalflow.png','We thought through the architecture of the system based on the mental flow that a user would have when approaching their statement.',12,'2011-01-20 22:40:36','2011-01-20 22:40:36',0),(34,'JanuaryStatement.jpg','A sample monthly statement',12,'2011-01-20 22:52:29','2011-01-20 22:52:29',0),(35,'statementgraphs.gif','A closer look at the graphs and categorizations shown in a monthly statement.',12,'2011-01-20 22:52:29','2011-01-20 22:52:29',0),(37,'scenariosketch.png','Initial storyboard sketch that we presented to roommates for concept validation.',13,'2011-01-20 23:19:26','2011-01-20 23:19:26',0),(38,'affinity.jpg','An affinity diagram we created to identify themes in our initial set of 50+ concepts. ',13,'2011-01-20 23:19:26','2011-01-20 23:19:26',0),(39,'PhysForm.jpg','Mockup of our digital frame that is used to display/playback photos and video, to capture moments, and to control the playback on another device, such as the TV.',13,'2011-01-20 23:21:13','2011-01-20 23:21:13',0),(40,'alerts_grocerystore.png','Sample storyboard of the phone responding when the user is in a specific situation (entering a grocery store in this case)',14,'2011-01-20 23:40:30','2011-01-20 23:40:30',0),(41,'newbloginterface.jpg','Prototype of the new Blogger interface',11,'2011-01-21 00:29:38','2011-01-21 00:29:38',0),(42,'newbloginterface2.jpg','Prototype of the new Blogger interface',11,'2011-01-21 00:29:38','2011-01-21 00:29:38',0),(43,'newbloginterface3.jpg','Prototype of the new Blogger interface',11,'2011-01-21 00:29:38','2011-01-21 00:29:38',0),(44,'GoNow_kiosk1.png','',16,'2011-01-21 00:47:43','2011-01-21 00:47:43',0),(45,'GoNow_kiosk21.png','',16,'2011-01-21 00:47:43','2011-01-21 00:47:43',0),(46,'kiosk_driversettings.png','',16,'2011-01-21 00:47:43','2011-01-23 23:40:39',0),(47,'kiosk_riderequest.png','',16,'2011-01-21 00:48:04','2011-01-23 23:40:39',0),(48,'affinity.jpg','',16,'2011-01-21 00:50:22','2011-01-23 23:40:39',0),(49,'mapview.png','',16,'2011-01-21 00:50:22','2011-01-23 23:40:39',0),(50,'storyboards2.png','',16,'2011-01-23 23:40:39','2011-01-23 23:40:39',0),(51,'taskbar_notify.png','',16,'2011-01-23 23:40:39','2011-01-23 23:40:39',0),(52,'taskbar_notify2.png','',16,'2011-01-23 23:40:39','2011-01-23 23:40:39',0),(54,'alerts_storyboard.png','Sample storyboard of the phone\'s response when the user is running late.',14,'2011-01-23 23:43:08','2011-01-23 23:43:08',0),(55,'screenshot1.png','',15,'2011-01-24 04:54:05','2011-01-24 04:54:05',0),(56,'screenshot2.png','',15,'2011-01-24 04:54:05','2011-01-24 04:54:05',0);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personals`
--

DROP TABLE IF EXISTS `personals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `imgs_folder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personals`
--

LOCK TABLES `personals` WRITE;
/*!40000 ALTER TABLE `personals` DISABLE KEYS */;
/*!40000 ALTER TABLE `personals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `short_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `imgs_folder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proj_beg_date` date DEFAULT NULL,
  `proj_end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_projects_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (6,'Digital Vita','<!-- Column 1 -->\r\n<div class=\"span-7\">\r\n<img alt=\"Digital Vita Logo\" src=\"/images/projects/orca/LogoImage.png\" title=\"Digital Vita Logo\" class=\"project_logo\"/>\r\n<b>Research/Design Methods:</b><br />\r\ncontextual inquiry/design, concept validation, think aloud interviews, wireframes, high fidelity prototyping, and heuristic evaluation\r\n</div>\r\n\r\n<!-- Column 2 -->\r\n<div class=\"prepend-1 span-10 last\">\r\n<div class=\"project_text\">\r\n<p>This 9 month capstone project involved designing and developing a system for the University of Pittsburgh Medical Center to help researchers initiate cross-disciplinary collaboration. I worked as Project Lead with 4 other students to design a solution called Digital Vita that provided researchers an online repository for their professional information. From this, they are able to easily generate grant applications and also search through others\' information to find relevant collaborators. I set up and conducted contextual interviews, ran concept validation and think aloud sessions with participants, created wireframes and paper prototypes, and conducted heuristic evaluation of our end system. I also co-developed our prototype with another technical member on the team.\r\n</p>\r\n\r\n<p>\r\nDigital Vita is currently in use at the University of Pittsburgh Medical Center. For more details on our solution, go here.\r\n</p>\r\n\r\n<p>\r\nFinal deliverables: <a href=\"/files/projects/orca/ORCA_Final Booklet.pdf\">(booklet)</a> \r\n<a href=\"/files/projects/orca/ORCA_FinalPresentation.pdf\">(presentation)</a> \r\n<a href=\"/files/projects/orca/ORCA_FinalReport_noappendix.pdf\">(report)</a>\r\n</p>\r\n</div>\r\n</div>\r\n\r\n\r\n<div class = \"label span-18\">\r\n<br />\r\nMedia:\r\n\r\n<br />\r\n<iframe src=\"http://player.vimeo.com/video/19116549\" width=\"500\" height=\"373\" frameborder=\"0\"></iframe>\r\n</p></div>\r\n\r\n','System to help medical researchers initiate collaboration','2010-12-07 00:45:26','2011-01-24 07:27:31','orca','2007-01-01','2007-08-01'),(11,'Walk Up & Blog','<!-- Column 1 -->\r\n<div class=\"span-7\">\r\n<img alt=\"Walk Up & Blog Logo\" src=\"/images/projects/blogger/LogoImage.png\" title=\"Walk Up & Blog Logo\" class=\"project_logo\"/>\r\n<b>Research/Design Methods:</b><br />\r\ncontextual inquiry/design, think aloud interviews, keystroke level modeling, cognitive walkthrough, wireframes, high fidelity prototyping, and heuristic evaluation\r\n</div>\r\n\r\n<!-- Column 2 -->\r\n<div class=\"prepend-1 span-10 last\">\r\n<div class=\"project_text\">\r\n<p>After a semester of exploring and evaluating the current Blogger website, we redesigned the site to solve the usability issues discovered along the way. I worked with three other designers to conduct contextual inquiry analysis and modeling, heuristic evaluation, cognitive walkthroughs, keystroke-level modeling, and think-aloud usability studies. As a result of these studies, we created a more intuitive interface that allows users to edit a blog within the context of a blog preview so they can immediately see how their blog will look once published.  This final design improved the user experience by meeting user expectations, leveraging existing norms and knowledge, and by providing real-time feedback. \r\n</p>\r\n\r\n\r\n<p>\r\nFinal deliverables: <a href=\"/files/projects/blogger/BloggerRedesign.pdf\">(report)</a>\r\n</p>\r\n</div>\r\n</div>','Improving the blogging experience','2011-01-20 20:35:37','2011-01-21 21:10:22','blogger','2006-09-01','2006-12-01'),(12,'Bill Master','<!-- Column 1 -->\r\n<div class=\"span-7\">\r\n<img alt=\"Bill Master Logo\" src=\"/images/projects/billmaster/LogoImage.png\" title=\"Bill Master Logo\" class=\"project_logo\"/>\r\n<b>Research/Design Methods:</b><br />\r\ndirected storytelling, personas, paper prototyping, web prototyping\r\n</div>\r\n\r\n<!-- Column 2 -->\r\n<div class=\"prepend-1 span-10 last\">\r\n<div class=\"project_text\">\r\n<p>I proposed and designed a new format for an online credit card statement that provides a more meaningful view of the information users need when paying their bills. I worked with two other designers to create a solution that we called Bill Master. I conducted interviews and directed storytelling with several money micromanagers to better understand the domain of expense management. We then generated a set of 20+ concepts that addressed the practical and emotional needs of money management. Based on our research, I came up with the idea to create a credit card statement that is not solely a list of expenses, but one that connects expenses to experiences. I worked together with my teammates to generate wireframes and mockups of the final design.\r\n</p>\r\n\r\n<p>\r\nFinal deliverables: <a href=\"/files/projects/billmaster/index.html\">(project website)</a>\r\n<a href=\"/files/projects/billmaster/BillMasterPresentation.ppt\">(presentation ppt)</a>\r\n</p>\r\n</div>\r\n</div>','A more personal approach to online credit card statements','2011-01-20 22:34:22','2011-01-21 21:09:55','billmaster','2007-02-01','2007-03-01'),(13,'Picture Pal','<!-- Column 1 -->\r\n<div class=\"span-7\">\r\n<img alt=\"Picture Pal Logo\" src=\"/images/projects/picturepal/LogoImage.png\" title=\"Picture Pal Logo\" class=\"project_logo\"/>\r\n<b>Research/Design Methods:</b><br />\r\naffinity diagramming, directed storytelling, concept validation, storyboarding, and video sketching\r\n</div>\r\n\r\n<!-- Column 2 -->\r\n<div class=\"prepend-1 span-10 last\">\r\n<div class=\"project_text\">\r\n<p>I worked with two other designers to design a system to improve the quality of people\'s lives at home (primarily focused on roommates). I came up with the concept for Picture Pal, which was  a system to capture and share significant events in roommates\' lives to allow roommates to reminisce on past events and to share snapshots of their lives with visitors. We interviewed several sets of roommates and identified a common expression of pride in many roommates\' homes. We designed this system to allow roommates a way to stay connected and to share their sense of pride with others. I designed the storyboard for our video sketch and created the photo overlays for the video. \r\n</p>\r\n\r\n<p>\r\nFinal deliverables: <a href=\"/files/projects/picturepal/files/PicturePalFinal.ppt\">(presentation)</a> \r\n<a href=\"/files/projects/picturepal/index.html\">(project website)</a>\r\n</p>\r\n</div>\r\n</div>\r\n\r\n<div class = \"label span-18\">\r\n<br />\r\nMedia:\r\n\r\n<br />\r\n<iframe src=\"http://player.vimeo.com/video/19116702\" width=\"500\" height=\"375\" frameborder=\"0\"></iframe>\r\n\r\n<!--object CLASSID=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" width=\"600\" height=\"400\" CODEBASE=\"http://www.apple.com/qtactivex/qtplugin.cab\">\r\n<param name=\"src\" value=\"/files/projects/picturepal/files/VidSketchFinal.wmv\">\r\n<param name=\"autoplay\" value=\"false\">\r\n<param name=\"loop\" value=\"false\">\r\n<param name=\"controller\" value=\"true\">\r\n<embed src=\"/files/projects/picturepal/files/VidSketchFinal.wmv\" width=\"600\" height=\"400\" autoplay=\"false\" loop=\"false\" controller=\"true\" pluginspage=\"http://www.apple.com/quicktime/\"></embed>\r\n</object-->\r\n\r\n</div>','A new way to keep roommates connected','2011-01-20 22:58:56','2011-01-24 07:27:15','picturepal','2007-03-01','2007-05-01'),(14,'Instant Hoot','<!-- Column 1 -->\r\n<div class=\"span-7\">\r\n<img alt=\"Instant Hoot Logo\" src=\"/images/projects/instanthoot/LogoImage.png\" title=\"Instant Hoot Logo\" class=\"project_logo\"/>\r\n<b>Research/Design Methods:</b><br />\r\nsurvey/questionnaire, think aloud interviews, cognitive walkthrough, high fidelity prototyping, and heuristic evaluation\r\n</div>\r\n\r\n<!-- Column 2 -->\r\n<div class=\"prepend-1 span-10 last\">\r\n<div class=\"project_text\">\r\n<p>I developed a proof-of-concept text messaging system that improved efficiency and ease of use while text messaging. I worked with two other students to design and test this system, which we called Instant Hoot. I designed a questionnaire that we distributed to over 100+ online participants to understand the current usages and issues with text messaging. Based on the results, we designed a system that integrates contextual information, calendar events, and texting history to identify the relevant communication scenario and suggest a set of likely user responses. I was the lead developer and tester of the prototype. I ran informal think-aloud studies with potential users and as a team, we conducted a heuristic evaluation and cognitive walkthrough of the system.  \r\n</p>\r\n\r\n<p>\r\nFinal deliverables: <a href=\"/files/projects/instanthoot/Instant Hoot.pdf\">(report)</a>\r\n</p>\r\n</div>\r\n</div>','Improves efficiency and ease of use in text messaging','2011-01-20 23:40:09','2011-01-21 21:10:35','instanthoot','2006-11-01','2006-12-01'),(15,'Night Owl','<!-- Column 1 -->\r\n<div class=\"span-7\">\r\n<img alt=\"Night Owl Logo\" src=\"/images/projects/nightowl/LogoImage.png\" title=\"Night Owl Logo\" class=\"project_logo\"/>\r\n<b>Research/Design Methods:</b><br />\r\npersonas, wireframes, Flash prototyping\r\n</div>\r\n\r\n<!-- Column 2 -->\r\n<div class=\"prepend-1 span-10 last\">\r\n<div class=\"project_text\">\r\n<p>I designed a mobile device interface to help users complete the task of finding tourist sites to explore. I worked with two other designers to craft a persona with goals and a need for mobile information. We designed a service to allow users to find nightlife in a new city based on their preferences in their home city regarding prices, friends/community recommendations, and genre. My role included creating the icons and example content for our application, along with storyboard development for our demonstration. Our final deliverable was a Flash demo of the interface.\r\n</p>\r\n\r\n\r\n<p>\r\nFinal deliverables: <a href=\"/files/projects/nightowl/NightOwl.swf\">(Flash presentation)</a>\r\n</p>\r\n</div>\r\n</div>','A system to help people find places they\'d like in a new city','2011-01-20 23:43:37','2011-01-21 21:10:08','nightowl','2007-03-01','2007-03-01'),(16,'GoNow RideShare','<!-- Column 1 -->\r\n<div class=\"span-7\">\r\n<img alt=\"GoNow Logo\" src=\"/images/projects/gonow/LogoImage.png\" title=\"GoNow Logo\" class=\"project_logo\"/>\r\n<b>Research/Design Methods:</b><br />\r\ndiary studies, concept validation, think aloud interviews, (custom) map activity, card sorting, paper prototyping, video sketching, and heuristic evaluation\r\n</div>\r\n\r\n<!-- Column 2 -->\r\n<div class=\"prepend-1 span-10 last\">\r\n<div class=\"project_text\">\r\n<p>I, along with two other designers, created a system to allow individuals to easily coordinate ridesharing to and from a shared location. We designed a multiplatform system that utilizes a web interface, a client-side toolbar application, as well as a kiosk placed at the entrance/exit of a shared location. I designed and distributed an online survey and also conducted directed storytelling to better understand the motivations and factors that influence people to carpool. I sketched storyboards and created a script that we presented in the form of a videosketch to demonstrate our concept in use.\r\n</p>\r\n\r\n<p>\r\nFinal deliverables: <a href=\"/files/projects/gonow/GoNow_FinalPaper.pdf\">(report)</a> <a href=\"/files/projects/gonow/GoNow_FinalPresentation_HighQuality.pdf\">(presentation)</a>\r\n<a href=\"/videos/projects/gonow/GoNow_VideoSketch.mov\">(video)</a>\r\n</p>\r\n\r\n</div>\r\n</div>\r\n\r\n\r\n\r\n<div class = \"label span-18\">\r\n<p><br />\r\nMedia:\r\n\r\n<br />\r\n<iframe src=\"http://player.vimeo.com/video/19114201\" width=\"600\" height=\"450\" frameborder=\"0\"></iframe>\r\n\r\n<!--object CLASSID=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" width=\"600\" height=\"400\" CODEBASE=\"http://www.apple.com/qtactivex/qtplugin.cab\">\r\n<param name=\"src\" value=\"/videos/projects/gonow/GoNow_VideoSketch2/GoNow_VideoSketch2.mov\">\r\n<param name=\"autoplay\" value=\"true\">\r\n<param name=\"loop\" value=\"false\">\r\n<param name=\"controller\" value=\"true\">\r\n<embed src=\"/videos/projects/gonow/GoNow_VideoSketch2/GoNow_VideoSketch2.mov\" width=\"600\" height=\"400\" autoplay=\"true\" loop=\"false\" controller=\"true\" pluginspage=\"http://www.apple.com/quicktime/\"></embed>\r\n</object-->\r\n\r\n</p>\r\n</div>\r\n','A system to help people coordinate rideshares to/from shared locations','2011-01-21 00:36:10','2011-01-24 06:40:58','gonow','2007-02-01','2007-05-01'),(17,'Virtual Reality Mindstorms','<!-- Column 1 -->\r\n<div class=\"span-7\">\r\n<img alt=\"Virtual Reality Lego Mindstorms Logo\" src=\"/images/projects/lego/LogoImage.png\" title=\"Virtual Reality Lego Mindstorms Logo\" class=\"project_logo\"/>\r\n<b>Research/Design Methods:</b><br />\r\nsoftware development\r\n</div>\r\n\r\n<!-- Column 2 -->\r\n<div class=\"prepend-1 span-10 last\">\r\n<div class=\"project_text\">\r\n<p>For my undergrad senior thesis, I developed a virtual reality simulation for the Lego Mindstorms Robotics Kit that was designed to help students learn engineering concepts through graphical programming and also to enable long distance collaboration between students in different locations. \r\n\r\n</p>\r\n\r\n\r\n<p>\r\nFinal deliverables: <a href=\"/files/projects/lego/SpringSeniorThesis.pdf\">(thesis)</a>\r\n</p>\r\n</div>\r\n</div>','Virtual reality simulation for the Lego Mindstorms Robotics Kit.','2011-01-21 00:53:19','2011-01-24 06:55:34','lego','2002-01-01','2004-06-01');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20101105230404'),('20101106194601'),('20101111212034'),('20101119041216'),('20101119041544'),('20101119045459'),('20101130013210'),('20101130014002'),('20101130015012'),('20101130015350'),('20101130232259'),('20101207211657'),('20101207231449'),('20101208231237'),('20101208233739'),('20101209214901'),('20101210221251'),('20101228005543'),('20110122203858'),('20110122205957');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Sushmita','ssubrama@gmail.com','2010-12-04 22:24:32','2011-01-20 07:50:01','6f094ddff16555b50118d1f409d2a59368b9b5eefac726be79ee8099fa830f09','9bc821b14104f8451ca6400bf39e75ae66256c3e57583bf3e068708c568012e9',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-01-24  0:04:32
