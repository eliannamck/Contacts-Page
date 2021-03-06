
DROP DATABASE IF EXISTS contacts;
/*CREATE DATABASE IF NOT EXISTS contacts;*/
USE 142090m_db;

/*CREATE USER 'contactapp'@'localhost' IDENTIFIED BY 'apppwd';
*/
GRANT ALL PRIVILEGES ON * . * TO 'contactapp'@'localhost';

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `street_num` varchar(10) NOT NULL,
  `street_name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `added` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
);

INSERT INTO `contact` VALUES ('1','Darron','Koss','dhettinger@example.com','1-494-930-1982x7689','9','Colt Creek','North Madalineton','OK','17643-0135','1990-11-14 21:01:42'),
('2','Kevin','Gerlach','schneider.prudence@example.net','979.107.5971','4','Jennings Ferry','Schmelerfurt','NY','54872-5994','1986-09-27 11:02:20'),
('3','Antoinette','Sporer','botsford.giovanni@example.net','(790)236-9778x22161','5','Glover Freeway','Lake Josefinaville','KY','58219','1990-12-31 17:28:37'),
('4','Emerald','Dooley','candice14@example.net','+65(3)5866916083','1','Gayle Crossing','Port Abigailberg','AZ','21789-7185','2012-12-11 08:18:58'),
('5','Shyanne','Rohan','lehner.nathanial@example.com','1-128-060-5648','2','Williamson Stravenue','Jacquelynview','OH','95103','2009-05-17 15:16:16'),
('6','Brenden','Muller','emilie.rau@example.com','385-531-8045x974','1','Jon Light','New Katlynn','DC','60530-7636','2011-06-10 11:10:44'),
('7','Ray','Lemke','eladio35@example.com','520-295-0299','5','Micheal Islands','New Evangelinefort','AK','37721-4337','1996-04-07 02:51:57'),
('8','Marianna','Olson','hharris@example.org','901-511-0950','3','Gerlach Isle','Kihnton','MS','26804-1904','1978-08-04 03:12:25'),
('9','Kayley','Lynch','jjaskolski@example.net','(845)305-5993','9','Sibyl Ville','Tillmanview','CO','90674','1977-07-08 23:22:36'),
('10','Mark','Braun','nolan.ole@example.com','151-704-5753x047','5','Willa Rapids','Violachester','MT','95320-5976','2000-05-19 04:41:46'),
('11','Vita','Bosco','shad67@example.com','+55(7)6674604690','7','Metz Lane','Elliehaven','RI','58050-1863','2007-07-25 03:19:49'),
('12','Amira','Reichert','alysson11@example.org','1-873-230-0725','4','Jose Pike','Port Felipe','MI','78893-5965','1999-09-19 16:24:25'),
('13','Chance','Gulgowski','jarvis38@example.org','1-719-592-9794x9657','5','Brenda Spring','East Keith','GA','01841-6841','1972-03-16 01:06:13'),
('14','Georgiana','Braun','feil.norval@example.com','826-513-1476','1','Kayli Mills','Norafort','FL','86623-1691','2016-03-25 12:34:25'),
('15','Bernita','Armstrong','brendan50@example.org','1-820-314-3681','8','Rodriguez Union','Faheyfort','OK','22145','2010-12-06 01:28:07'),
('16','Ralph','Quitzon','xrunte@example.org','115.573.5778','6','Electa Parkways','Waltontown','IN','49626-3825','1987-04-27 09:56:03'),
('17','Nicolas','Heller','jhirthe@example.net','06411842990','6','Stamm Port','East Muhammad','NC','70638','2013-12-09 02:41:16'),
('18','Adrianna','Boyer','farrell.ines@example.com','305-039-6397','7','McKenzie Ridge','West Terrencefurt','MI','51213','1979-04-14 01:58:02'),
('19','Maria','Roberts','clifford.nader@example.net','785-407-4824','2','Dooley Squares','Lake Drewside','PA','67685-4398','2009-04-17 21:04:22'),
('20','Amira','Reilly','kole.reinger@example.com','+78(3)9456745971','3','Hodkiewicz Inlet','Port Ken','AR','82599','2012-10-19 10:27:52'),
('21','Arch','Dare','ulowe@example.com','372-702-2251','1','Ward Key','Franeckiland','MS','93511-3761','1978-02-20 08:26:55'),
('22','Leanne','Bogisich','kunze.jamey@example.com','(661)071-2688','6','Kutch Knolls','Jacobsonberg','WY','12840','1985-05-04 02:28:41'),
('23','Leatha','Kirlin','esta62@example.com','01260991402','5','Augusta Parks','North Warren','DC','36709','2008-02-02 06:51:20'),
('24','Jeff','Satterfield','fausto.yost@example.com','(835)044-7604x09628','9','Carson Parkways','Jaylanborough','PA','50156','1973-04-18 12:46:26'),
('25','Dalton','Wilkinson','eryn.barton@example.net','197.532.9712x5514','2','Ellsworth Run','Port Lyda','UT','36329-7467','2016-12-09 20:38:24'),
('26','Yolanda','Doyle','franco62@example.net','638.958.0570x83145','2','Isabella Turnpike','Filibertoside','UT','27614-9504','1980-12-26 11:08:13'),
('27','Nelle','Quitzon','mraz.ana@example.com','130.545.9140x5819','4','Tavares Ramp','Port Russel','NM','26879','1983-10-29 18:23:54'),
('28','Hailie','Deckow','cronin.roderick@example.net','1-187-648-3150','6','Declan Underpass','Hanefort','GA','76597','1977-09-11 20:59:53'),
('29','Agustina','Wolf','jaclyn.jones@example.com','746.918.0437','5','Reba Hill','Padbergville','AL','81228','1995-02-27 16:59:59'),
('30','Mercedes','Hackett','eve.wilkinson@example.com','967.823.0367','1','Barton Crest','Kimberlyhaven','MI','04852-7392','2007-08-07 01:18:12'),
('31','Jonathan','Price','jaida38@example.com','538-997-1077x324','9','Arjun Highway','Port Einar','IL','47230-8169','1983-07-17 20:00:34'),
('32','Tyshawn','Lockman','itillman@example.com','682-870-8765','8','Dennis Alley','New Kaylee','RI','81170','1979-08-11 08:08:56'),
('33','Sienna','Thiel','onikolaus@example.org','043.774.0960','1','Mohr Plains','Port Orrinton','TX','05783','1987-04-04 18:05:23'),
('34','Selina','Welch','jude.sawayn@example.net','1-693-693-9354','7','Eunice Fork','Arlostad','DE','14049','2018-06-20 17:52:06'),
('35','Sylvester','Beer','jacinthe28@example.org','034-816-9733x7688','9','Hoppe Manor','Jakaylaport','MA','59668','1992-08-06 05:14:40'),
('36','Will','Cruickshank','zzemlak@example.net','1-267-705-9056x89652','6','Polly Hills','New Queenstad','KY','49182','2018-09-15 14:46:55'),
('37','Joyce','Reichel','fparisian@example.org','07035732285','1','Candice Highway','New Celiaburgh','DE','36687','2012-09-01 04:24:04'),
('38','Kenyatta','Abshire','louie.legros@example.org','1-769-484-6228x60084','9','Barrett Crossroad','Dovieberg','WY','84307-6259','1983-09-26 15:46:47'),
('39','Lucio','Kunze','alexanne.lemke@example.org','05589633290','8','Renner Streets','Morissettetown','AL','57688','1990-11-18 11:03:49'),
('40','Jadyn','Gutkowski','kessler.eryn@example.com','536.420.4868','1','Kunde Park','Maudestad','WI','08163-6817','1984-10-27 07:44:45'),
('41','Ozella','Willms','reggie.purdy@example.org','(661)807-8052x889','3','Eugene Bypass','Siennaburgh','RI','70286-8383','1985-12-13 04:16:19'),
('42','Nigel','Trantow','dayton41@example.com','(178)213-1094x903','5','Norma Shoal','Hauckville','ME','59269','2018-07-26 02:25:10'),
('43','Eulalia','Morar','hoeger.lavonne@example.net','961.490.4133x339','1','Lois Ramp','Rohanfort','VA','63541-6038','1984-04-02 20:09:44'),
('44','Yasmine','Jacobs','mcglynn.delphia@example.net','954.600.3990x9494','8','Quitzon Ville','Shanelmouth','NM','16568','2004-02-18 22:05:50'),
('45','Cody','Doyle','trent04@example.net','1-565-005-4718','2','Jaron Divide','Gustmouth','AR','61472-5020','1992-07-04 10:16:51'),
('46','Nikki','Herman','nella96@example.org','587.744.7774','9','Alan Rapid','Port Glennashire','NH','43861','1989-03-15 22:57:39'),
('47','Idella','Botsford','jerald19@example.org','(360)970-4766x85150','6','Gayle Row','Lemketown','SC','42510','1991-03-28 02:16:44'),
('48','Mckayla','Ferry','rolfson.damien@example.net','+45(3)7428556046','7','Emelie Plain','Christinafurt','WV','33344','1974-09-13 00:36:16'),
('49','Morris','Beahan','juana80@example.net','1-773-779-0918x185','7','Rey Fords','New Domenico','NE','88705','1994-03-28 02:32:43'),
('50','Joel','Bartell','ocie15@example.net','152.504.7337','6','Wolff Courts','Aureliomouth','NY','93148','1995-07-03 19:26:01'),
('51','Reymundo','Schinner','murray.ellsworth@example.net','(919)245-1648','7','Deckow Motorway','Collinsshire','CO','83087','1995-09-28 17:10:22'),
('52','Madie','Emard','tgottlieb@example.com','1-877-681-7593x38374','1','Heidenreich Way','Cassidytown','IN','59848-2033','2018-12-04 10:37:14'),
('53','Mazie','Padberg','joanne17@example.net','+95(4)7746739519','6','Friesen Islands','Irvingfort','NM','85123-2907','2004-10-04 12:24:23'),
('54','Elvie','Mueller','johan.russel@example.org','(903)002-9871x8350','3','Eveline Greens','South Koryberg','KY','71921','1992-10-20 01:22:03'),
('55','Arlene','Moore','winifred.sawayn@example.org','(859)641-2670x3962','7','Kreiger Gardens','Hickleside','HI','47326-5268','2000-11-07 19:30:22'),
('56','Aron','Miller','lschuppe@example.com','1-372-522-8614x2759','4','Connelly Via','New Giles','NC','42110','1982-08-10 01:22:08'),
('57','Alicia','Collins','kathlyn11@example.org','1-713-758-1483x9792','6','Bogan Route','New Adrian','NE','86306-0307','1984-08-11 09:38:29'),
('58','Jarrod','Russel','olson.grady@example.org','113-859-6426','9','Lang Inlet','West Vicenteview','GA','37720-0483','1990-05-09 00:43:10'),
('59','Camren','Wuckert','mortimer.runte@example.net','789-874-8311','1','Raynor Highway','East Chaddburgh','WV','22437-4099','2017-04-01 05:06:05'),
('60','Dayana','Emmerich','berneice.reinger@example.net','328.855.4706','8','Leslie Parks','East Helgaton','MN','02992','2001-04-01 01:32:42'),
('61','Lukas','Swaniawski','botsford.janie@example.org','782-741-2320x04305','1','Goyette Roads','North Rosalind','OK','20851','1973-09-13 23:43:13'),
('62','Yazmin','Renner','ryleigh.west@example.org','(625)852-4740','9','Clare Burg','Rowenashire','HI','71456','1972-01-27 07:52:32'),
('63','Nicole','Feest','hackett.tobin@example.com','03518106859','3','Paucek Loaf','Mathiastown','OR','72513','1973-06-06 13:33:53'),
('64','Oran','Kulas','schmitt.viviane@example.net','04775343754','6','Rowena River','Adellaburgh','NC','12406-5258','1976-09-18 09:23:53'),
('65','Geraldine','Huel','dalton78@example.org','583.168.1725','6','Emilie Springs','Jocelynburgh','MN','21437','1981-09-16 09:51:23'),
('66','Herman','McKenzie','kassulke.dwight@example.org','020-939-4423x9159','4','Murazik Radial','East Reynold','ID','18547','2000-08-19 20:26:30'),
('67','Maxime','McDermott','zieme.don@example.com','(421)538-0333x4155','4','Cummerata Overpass','South Toby','GA','34500-0611','2012-02-22 12:36:43'),
('68','Brenna','Schaden','ondricka.teagan@example.com','+14(2)5420518151','5','Elwyn Plain','West Gabriella','MS','77538-0749','1991-06-20 15:23:08'),
('69','Jana','Aufderhar','dare.melyna@example.net','02133225486','9','Bethany Coves','Rolfsonberg','NM','97295','1989-03-12 03:13:22'),
('70','Stacy','Reichel','watson.christiansen@example.com','06528193153','9','Bailee Lakes','Port Reece','MT','90311-9290','1994-10-25 07:34:30'),
('71','Patrick','Ruecker','wfranecki@example.org','321.015.2661x610','8','Keely Mills','Nienowville','NY','58171-7941','2002-03-21 09:21:15'),
('72','Rae','Purdy','volkman.iva@example.org','05011770443','6','Ratke Squares','Port Norris','OH','25412-2739','1999-10-09 09:01:28'),
('73','Linda','Koepp','alverta89@example.net','09768058625','5','Laurence Inlet','Bartolettibury','IA','28438-2104','2006-07-08 03:17:22'),
('74','Lorine','Simonis','dibbert.marilou@example.com','1-559-785-8565','1','Ankunding Pine','Baileyland','DC','65837','1997-01-20 00:58:14'),
('75','Dangelo','Corwin','pollich.javon@example.com','01270847892','2','Romaguera Lodge','South Evangeline','KS','89413','1986-12-23 07:31:59'),
('76','Lily','Hansen','bednar.kamryn@example.net','1-847-792-1714x9066','2','Stark Squares','New Talonberg','AL','71001-3837','2010-03-06 09:46:12'),
('77','Victoria','Terry','ondricka.chris@example.com','806-372-2153','5','Murazik Harbors','Schadenport','NH','94880','1972-06-12 19:16:03'),
('78','Nova','Greenholt','glenda.dubuque@example.com','(111)209-4974x2402','6','Keeling Lights','New Maeve','NC','61594','2019-05-20 12:14:25'),
('79','Catherine','Wintheiser','yhartmann@example.org','771.108.0959','9','Lurline Meadow','Lake Florencemouth','MN','30189','1990-07-21 23:28:46'),
('80','Cali','Fritsch','morar.kendra@example.net','1-724-075-3164','9','Feest Rapid','South Christoptown','NH','35873','1973-11-02 18:45:00'),
('81','Karley','Altenwerth','zcarroll@example.net','921-347-7104','3','Schinner Camp','North Ezramouth','IA','30324-9598','1995-08-12 20:22:17'),
('82','Nathaniel','Abernathy','ydavis@example.com','1-189-981-3971','5','Carroll Cape','East Tonitown','NM','87357-9345','2012-04-12 15:50:03'),
('83','Demond','O\'Keefe','wbreitenberg@example.net','869.869.8980x0415','3','Barton Crest','Kelleytown','MT','70619-3905','2004-08-23 11:22:00'),
('84','Melody','Watsica','gislason.sabryna@example.com','1-381-958-7171','8','Lucious Run','Lake Forrestside','MA','79777-2951','2000-06-18 19:51:51'),
('85','Heaven','Lynch','william.kunde@example.com','01256310235','9','Marquardt Row','North Raquelhaven','OH','82929-6191','1997-09-22 14:07:27'),
('86','Stephen','Predovic','howe.cleora@example.com','(116)872-7358x8802','7','Destin Walks','Paxtonborough','MD','53608-9404','1991-02-24 09:14:41'),
('87','Kathryne','Denesik','to\'hara@example.net','+12(5)9560417382','7','Hilma Stravenue','Danielfort','FL','11016-8076','1997-05-26 09:48:37'),
('88','Camryn','Muller','kerluke.sienna@example.net','022.742.8254x9090','4','Carissa Shores','New Margarete','KY','74636-9078','1977-03-22 02:35:43'),
('89','Jordon','Kshlerin','kathryne.strosin@example.net','475-186-6815x694','6','O\'Hara Dale','Stehrside','DE','17960-1531','1980-05-13 11:45:58'),
('90','Marlon','Brekke','myrtis.schimmel@example.com','(651)668-8407x05586','9','Wilderman Oval','Granvilleton','MA','13167-9664','1989-11-22 07:53:33'),
('91','Gertrude','Wintheiser','murray.reyna@example.com','323.683.4616x467','6','Pacocha Junction','Shyanntown','OR','76902-4432','2000-09-16 04:56:58'),
('92','Sarina','Fadel','unique26@example.org','1-823-917-7469','9','Batz Fords','Oberbrunnerburgh','UT','57581-9095','1989-02-08 13:26:17'),
('93','Eugene','Greenfelder','fgoyette@example.net','(819)211-1351x368','4','Hackett Meadows','Port Tessie','MS','18704-4841','2001-04-16 02:13:49'),
('94','Giovanni','Nienow','stokes.alysa@example.org','1-203-907-0792','1','Hammes Lake','North Lillianafort','WY','30181-6930','1983-11-10 11:57:54'),
('95','Ruth','Huel','elisa85@example.net','02613580908','6','McLaughlin Loop','East Maxwellbury','ID','53378','1978-08-19 12:32:44'),
('96','Demarcus','Swift','johnson.sammie@example.net','401.548.0712','6','Wintheiser Valley','West Kameron','VT','25130','1981-03-03 09:50:41'),
('97','Shad','Schultz','upton.gay@example.com','338.379.7654','4','Holden Throughway','Reynoldsfurt','ME','50698','1982-08-13 15:20:13'),
('98','Aida','Torp','mwilliamson@example.net','+03(8)8703498591','8','Cayla Tunnel','Port Uriahshire','UT','97126','2019-07-16 07:24:54'),
('99','Ralph','Moore','nfritsch@example.com','(882)876-3752x54885','5','Pedro Islands','DuBuquestad','AR','11032-9186','1971-09-05 00:27:47'),
('100','Fredy','Baumbach','morar.faye@example.com','679.897.4673','3','Robel Ways','Mullerhaven','SC','24638-4058','1997-08-22 08:45:54'); 








