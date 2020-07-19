#
# TABLE STRUCTURE FOR: address
#

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `building` int(11) NOT NULL,
  `apartment` int(11) NOT NULL,
  `street_details` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `special_marque` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_USER_ADDRESS` (`user_id`),
  CONSTRAINT `FK_USER_ADDRESS` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (1, 1, 8, 7, 'Hector Rest', 'Miltonview', 'Nevada', 'Port');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (2, 2, 6, 3, 'Neha Green', 'Port Billy', 'Nevada', 'Port');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (3, 3, 8, 7, 'Myrl Skyway', 'Elvisshire', 'Wisconsin', 'Lake');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (4, 4, 8, 2, 'Fletcher Land', 'Lake Brycenberg', 'Missouri', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (5, 5, 6, 9, 'Tara Brook', 'East Caterina', 'Indiana', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (6, 6, 1, 8, 'Adams Tunnel', 'Port Fritz', 'Oklahoma', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (7, 7, 1, 2, 'Murphy Island', 'Brisahaven', 'NewJersey', 'South');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (8, 8, 9, 6, 'Jerde Centers', 'New Rickybury', 'Utah', 'North');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (9, 9, 1, 1, 'Parker Trafficway', 'Kylerstad', 'Louisiana', 'Lake');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (10, 10, 7, 0, 'Jaquan Causeway', 'Lake Shanon', 'Wisconsin', 'West');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (11, 11, 2, 7, 'Leuschke Radial', 'Alberthaton', 'Pennsylvania', 'West');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (12, 12, 3, 5, 'Allie Trail', 'South Marlonberg', 'SouthCarolina', 'North');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (13, 13, 1, 2, 'Joelle Mall', 'East Dayton', 'Hawaii', 'Port');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (14, 14, 9, 4, 'Stroman Course', 'Lake Clarissamouth', 'Texas', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (15, 15, 2, 2, 'Genevieve Route', 'Katlynnborough', 'Oregon', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (16, 16, 7, 8, 'Harris Drive', 'Port Lucindastad', 'Florida', 'West');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (17, 17, 7, 4, 'Richard Ports', 'Lake Alyce', 'Delaware', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (18, 18, 8, 1, 'Elian Knolls', 'Tyrellfort', 'Idaho', 'Lake');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (19, 19, 5, 7, 'Block Spring', 'East Shayne', 'Arizona', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (20, 20, 9, 7, 'Schuster Fields', 'North Omarifort', 'California', 'Port');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (21, 21, 7, 3, 'Ashlee Meadows', 'South Simbury', 'Montana', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (22, 22, 7, 1, 'Prohaska Turnpike', 'Tatumtown', 'District of Columbia', 'West');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (23, 23, 9, 0, 'Antone Loaf', 'Annettehaven', 'Kentucky', 'West');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (24, 24, 8, 5, 'Miller Extensions', 'Savannahmouth', 'Maine', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (25, 25, 4, 3, 'Veum Motorway', 'Johannville', 'Connecticut', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (26, 26, 3, 5, 'Hilll Loop', 'South Brent', 'Alabama', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (27, 27, 5, 7, 'Shanna Islands', 'Port May', 'Nebraska', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (28, 28, 1, 1, 'Corwin Curve', 'New Ali', 'Alabama', 'North');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (29, 29, 8, 2, 'Bartoletti Neck', 'West Assuntafurt', 'Maine', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (30, 30, 1, 4, 'Idella Rue', 'Columbusstad', 'Arizona', 'South');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (31, 31, 2, 1, 'Schneider Loaf', 'Grahamport', 'Kentucky', 'West');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (32, 32, 9, 6, 'Carter Squares', 'Lake Christaville', 'Connecticut', 'West');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (33, 33, 8, 8, 'Benedict Squares', 'South Hattieside', 'NewHampshire', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (34, 34, 5, 2, 'Demond Corner', 'New Bernie', 'California', 'Lake');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (35, 35, 1, 4, 'Lindgren Tunnel', 'Port Bryana', 'California', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (36, 36, 6, 7, 'Paucek Dale', 'Port Haylie', 'NewJersey', 'South');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (37, 37, 5, 8, 'Osinski Drives', 'Kaileystad', 'Wisconsin', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (38, 38, 8, 3, 'Shea Mount', 'Orvilleton', 'Michigan', 'Lake');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (39, 39, 0, 7, 'Coby Coves', 'Thompsonbury', 'Colorado', 'North');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (40, 40, 3, 0, 'Kory Lock', 'Lake Violettetown', 'Maryland', 'South');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (41, 41, 4, 9, 'Damion Drive', 'Maybellfort', 'Arizona', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (42, 42, 3, 9, 'Chance Pass', 'Krajcikhaven', 'Minnesota', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (43, 43, 2, 6, 'Norberto Ramp', 'Kundemouth', 'District of Columbia', 'West');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (44, 44, 6, 9, 'Lonny Mall', 'Clemmietown', 'Nebraska', 'South');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (45, 45, 7, 9, 'Katrine Mission', 'West Coltontown', 'Vermont', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (46, 46, 6, 2, 'Turner Fords', 'Lake Bill', 'Kansas', 'Lake');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (47, 47, 0, 8, 'Hagenes Summit', 'Bogisichburgh', 'Kentucky', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (48, 48, 3, 1, 'Russel Way', 'Feeneyton', 'Utah', 'West');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (49, 49, 8, 7, 'Windler Valley', 'North Alexisberg', 'Michigan', 'Port');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (50, 50, 6, 6, 'Anabel Forest', 'South Rosemarie', 'Wyoming', 'Lake');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (51, 51, 0, 1, 'Beahan Gateway', 'Asaton', 'NewYork', 'South');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (52, 52, 7, 9, 'Marguerite Station', 'West Albinahaven', 'SouthDakota', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (53, 53, 2, 8, 'Kreiger Vista', 'New Vallieshire', 'California', 'Port');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (54, 54, 0, 0, 'Harris Trail', 'West Eloyfurt', 'SouthDakota', 'West');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (55, 55, 2, 2, 'Collier Mountain', 'Port Aaliyahchester', 'Kentucky', 'West');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (56, 56, 3, 1, 'Zoe Extensions', 'West Kenyon', 'Washington', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (57, 57, 5, 7, 'Scotty Port', 'Port Idell', 'Nevada', 'West');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (58, 58, 3, 3, 'Shana Highway', 'Spinkaton', 'Nebraska', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (59, 59, 6, 0, 'Predovic Turnpike', 'Maverickstad', 'Colorado', 'Lake');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (60, 60, 1, 9, 'Wuckert Heights', 'East Sammyland', 'Ohio', 'Lake');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (61, 61, 2, 4, 'Charlotte Pines', 'Morartown', 'Colorado', 'North');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (62, 62, 7, 1, 'Audra Creek', 'Port Jakobshire', 'NorthCarolina', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (63, 63, 9, 0, 'Misty Lodge', 'East Retashire', 'Colorado', 'North');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (64, 64, 2, 1, 'Breitenberg Viaduct', 'Fadelstad', 'Wyoming', 'South');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (65, 65, 3, 5, 'Hintz Pines', 'Schoenmouth', 'Wisconsin', 'Lake');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (66, 66, 0, 9, 'Yost Forge', 'Dietrichville', 'Hawaii', 'South');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (67, 67, 1, 8, 'Conroy Way', 'North Joan', 'Texas', 'West');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (68, 68, 1, 2, 'Victoria River', 'South Leopoldo', 'Mississippi', 'Port');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (69, 69, 4, 0, 'Legros Plains', 'Jenkinston', 'Iowa', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (70, 70, 5, 9, 'Chelsie Highway', 'Leschfurt', 'Arizona', 'North');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (71, 71, 9, 2, 'Sawayn Prairie', 'Port Rusty', 'Alaska', 'Lake');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (72, 72, 0, 9, 'Ullrich Stream', 'Hannahfort', 'Hawaii', 'Port');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (73, 73, 7, 2, 'Lueilwitz Summit', 'Ahmadville', 'Idaho', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (74, 74, 9, 3, 'Gusikowski Curve', 'New Susanna', 'Georgia', 'West');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (75, 75, 8, 4, 'Samantha Views', 'New Jeffery', 'Missouri', 'North');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (76, 76, 9, 4, 'Lizzie Grove', 'Natashaborough', 'Illinois', 'Lake');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (77, 77, 4, 1, 'Hickle Via', 'North Camren', 'Louisiana', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (78, 78, 8, 8, 'Ryan Mountain', 'East Gerdafort', 'Mississippi', 'Lake');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (79, 79, 5, 8, 'Karen Walks', 'Lake Edgar', 'Oregon', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (80, 80, 0, 2, 'Armstrong Forks', 'East Buddychester', 'Louisiana', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (81, 81, 1, 7, 'Botsford Bypass', 'Kutchbury', 'District of Columbia', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (82, 82, 9, 3, 'Hardy Lights', 'Paolohaven', 'NewYork', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (83, 83, 0, 8, 'Windler Mountains', 'Jaquelineport', 'Idaho', 'Lake');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (84, 84, 3, 8, 'Adelbert Estate', 'Michelefurt', 'Mississippi', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (85, 85, 1, 0, 'Alycia Falls', 'Janelletown', 'WestVirginia', 'South');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (86, 86, 3, 1, 'Bashirian Pine', 'East Leonorafurt', 'Montana', 'North');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (87, 87, 4, 2, 'Jed Island', 'East Antoniohaven', 'District of Columbia', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (88, 88, 6, 5, 'Aida Union', 'Port Luciennefurt', 'Kansas', 'Port');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (89, 89, 1, 7, 'Teresa Port', 'Hansenmouth', 'Kansas', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (90, 90, 3, 6, 'O\'Connell Locks', 'West Deionmouth', 'Alaska', 'Port');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (91, 91, 0, 0, 'Harrison Ranch', 'South Paytonborough', 'Nevada', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (92, 92, 2, 4, 'Francesca Burgs', 'Krystelville', 'Maryland', 'New');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (93, 93, 9, 1, 'Jaylan Vista', 'South Arvillaton', 'Louisiana', 'East');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (94, 94, 3, 2, 'Pat Road', 'Corrineborough', 'WestVirginia', 'North');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (95, 95, 2, 9, 'Effie Circles', 'East Kayleigh', 'Wyoming', 'North');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (96, 96, 3, 9, 'Mueller Groves', 'North Maximusberg', 'Michigan', 'South');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (97, 97, 1, 7, 'Arianna Dam', 'Clementshire', 'Pennsylvania', 'Lake');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (98, 98, 0, 3, 'Ara Mills', 'Willville', 'Georgia', 'Lake');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (99, 99, 7, 4, 'Veum Plains', 'Port Rogers', 'Minnesota', 'Lake');
INSERT INTO `address` (`id`, `user_id`, `building`, `apartment`, `street_details`, `city`, `state`, `special_marque`) VALUES (100, 100, 2, 0, 'Breitenberg Light', 'East Sylvesterborough', 'Ohio', 'Lake');


#
# TABLE STRUCTURE FOR: cart
#

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_update` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO `cart` (`id`, `last_update`) VALUES (1, '1998-02-21');
INSERT INTO `cart` (`id`, `last_update`) VALUES (2, '1980-11-11');
INSERT INTO `cart` (`id`, `last_update`) VALUES (3, '2019-02-23');
INSERT INTO `cart` (`id`, `last_update`) VALUES (4, '2006-02-07');
INSERT INTO `cart` (`id`, `last_update`) VALUES (5, '1987-01-01');
INSERT INTO `cart` (`id`, `last_update`) VALUES (6, '2010-10-12');
INSERT INTO `cart` (`id`, `last_update`) VALUES (7, '1973-09-30');
INSERT INTO `cart` (`id`, `last_update`) VALUES (8, '1986-05-13');
INSERT INTO `cart` (`id`, `last_update`) VALUES (9, '1990-02-19');
INSERT INTO `cart` (`id`, `last_update`) VALUES (10, '1997-07-21');
INSERT INTO `cart` (`id`, `last_update`) VALUES (11, '1986-08-10');
INSERT INTO `cart` (`id`, `last_update`) VALUES (12, '2013-08-30');
INSERT INTO `cart` (`id`, `last_update`) VALUES (13, '1990-09-30');
INSERT INTO `cart` (`id`, `last_update`) VALUES (14, '1977-05-23');
INSERT INTO `cart` (`id`, `last_update`) VALUES (15, '1999-09-27');
INSERT INTO `cart` (`id`, `last_update`) VALUES (16, '1999-10-20');
INSERT INTO `cart` (`id`, `last_update`) VALUES (17, '1991-11-17');
INSERT INTO `cart` (`id`, `last_update`) VALUES (18, '1985-06-08');
INSERT INTO `cart` (`id`, `last_update`) VALUES (19, '1977-04-01');
INSERT INTO `cart` (`id`, `last_update`) VALUES (20, '1974-08-25');
INSERT INTO `cart` (`id`, `last_update`) VALUES (21, '2011-09-10');
INSERT INTO `cart` (`id`, `last_update`) VALUES (22, '1988-06-13');
INSERT INTO `cart` (`id`, `last_update`) VALUES (23, '2016-05-08');
INSERT INTO `cart` (`id`, `last_update`) VALUES (24, '1974-12-08');
INSERT INTO `cart` (`id`, `last_update`) VALUES (25, '2011-01-21');
INSERT INTO `cart` (`id`, `last_update`) VALUES (26, '2015-11-16');
INSERT INTO `cart` (`id`, `last_update`) VALUES (27, '1979-01-29');
INSERT INTO `cart` (`id`, `last_update`) VALUES (28, '1989-04-28');
INSERT INTO `cart` (`id`, `last_update`) VALUES (29, '2009-04-24');
INSERT INTO `cart` (`id`, `last_update`) VALUES (30, '1974-10-29');
INSERT INTO `cart` (`id`, `last_update`) VALUES (31, '2003-07-17');
INSERT INTO `cart` (`id`, `last_update`) VALUES (32, '1992-08-10');
INSERT INTO `cart` (`id`, `last_update`) VALUES (33, '1975-05-06');
INSERT INTO `cart` (`id`, `last_update`) VALUES (34, '1998-06-15');
INSERT INTO `cart` (`id`, `last_update`) VALUES (35, '2003-04-18');
INSERT INTO `cart` (`id`, `last_update`) VALUES (36, '1975-11-01');
INSERT INTO `cart` (`id`, `last_update`) VALUES (37, '1987-06-03');
INSERT INTO `cart` (`id`, `last_update`) VALUES (38, '1992-06-14');
INSERT INTO `cart` (`id`, `last_update`) VALUES (39, '1972-07-19');
INSERT INTO `cart` (`id`, `last_update`) VALUES (40, '2012-01-24');
INSERT INTO `cart` (`id`, `last_update`) VALUES (41, '2018-01-06');
INSERT INTO `cart` (`id`, `last_update`) VALUES (42, '1982-07-07');
INSERT INTO `cart` (`id`, `last_update`) VALUES (43, '1982-03-21');
INSERT INTO `cart` (`id`, `last_update`) VALUES (44, '1994-01-03');
INSERT INTO `cart` (`id`, `last_update`) VALUES (45, '1988-11-04');
INSERT INTO `cart` (`id`, `last_update`) VALUES (46, '1985-07-10');
INSERT INTO `cart` (`id`, `last_update`) VALUES (47, '1976-03-04');
INSERT INTO `cart` (`id`, `last_update`) VALUES (48, '2012-10-25');
INSERT INTO `cart` (`id`, `last_update`) VALUES (49, '1983-10-18');
INSERT INTO `cart` (`id`, `last_update`) VALUES (50, '2014-04-11');
INSERT INTO `cart` (`id`, `last_update`) VALUES (51, '2017-11-11');
INSERT INTO `cart` (`id`, `last_update`) VALUES (52, '1982-01-27');
INSERT INTO `cart` (`id`, `last_update`) VALUES (53, '1997-07-23');
INSERT INTO `cart` (`id`, `last_update`) VALUES (54, '1982-07-26');
INSERT INTO `cart` (`id`, `last_update`) VALUES (55, '1979-01-17');
INSERT INTO `cart` (`id`, `last_update`) VALUES (56, '2020-03-04');
INSERT INTO `cart` (`id`, `last_update`) VALUES (57, '2020-03-19');
INSERT INTO `cart` (`id`, `last_update`) VALUES (58, '1980-09-04');
INSERT INTO `cart` (`id`, `last_update`) VALUES (59, '2008-07-03');
INSERT INTO `cart` (`id`, `last_update`) VALUES (60, '1999-10-23');
INSERT INTO `cart` (`id`, `last_update`) VALUES (61, '2007-07-15');
INSERT INTO `cart` (`id`, `last_update`) VALUES (62, '1997-01-13');
INSERT INTO `cart` (`id`, `last_update`) VALUES (63, '2000-05-06');
INSERT INTO `cart` (`id`, `last_update`) VALUES (64, '2018-05-12');
INSERT INTO `cart` (`id`, `last_update`) VALUES (65, '2002-02-01');
INSERT INTO `cart` (`id`, `last_update`) VALUES (66, '1982-07-16');
INSERT INTO `cart` (`id`, `last_update`) VALUES (67, '2019-01-05');
INSERT INTO `cart` (`id`, `last_update`) VALUES (68, '1977-10-26');
INSERT INTO `cart` (`id`, `last_update`) VALUES (69, '1981-04-09');
INSERT INTO `cart` (`id`, `last_update`) VALUES (70, '2002-10-12');
INSERT INTO `cart` (`id`, `last_update`) VALUES (71, '1973-03-08');
INSERT INTO `cart` (`id`, `last_update`) VALUES (72, '1993-06-13');
INSERT INTO `cart` (`id`, `last_update`) VALUES (73, '1992-04-14');
INSERT INTO `cart` (`id`, `last_update`) VALUES (74, '2006-01-28');
INSERT INTO `cart` (`id`, `last_update`) VALUES (75, '2014-03-02');
INSERT INTO `cart` (`id`, `last_update`) VALUES (76, '1986-11-18');
INSERT INTO `cart` (`id`, `last_update`) VALUES (77, '2019-09-12');
INSERT INTO `cart` (`id`, `last_update`) VALUES (78, '1978-01-23');
INSERT INTO `cart` (`id`, `last_update`) VALUES (79, '1983-09-23');
INSERT INTO `cart` (`id`, `last_update`) VALUES (80, '1995-06-10');
INSERT INTO `cart` (`id`, `last_update`) VALUES (81, '1998-03-04');
INSERT INTO `cart` (`id`, `last_update`) VALUES (82, '2020-01-07');
INSERT INTO `cart` (`id`, `last_update`) VALUES (83, '2010-12-09');
INSERT INTO `cart` (`id`, `last_update`) VALUES (84, '2003-08-03');
INSERT INTO `cart` (`id`, `last_update`) VALUES (85, '1975-06-08');
INSERT INTO `cart` (`id`, `last_update`) VALUES (86, '2012-04-12');
INSERT INTO `cart` (`id`, `last_update`) VALUES (87, '1979-01-13');
INSERT INTO `cart` (`id`, `last_update`) VALUES (88, '1998-10-01');
INSERT INTO `cart` (`id`, `last_update`) VALUES (89, '1985-08-12');
INSERT INTO `cart` (`id`, `last_update`) VALUES (90, '1982-09-10');
INSERT INTO `cart` (`id`, `last_update`) VALUES (91, '2015-08-12');
INSERT INTO `cart` (`id`, `last_update`) VALUES (92, '1984-10-18');
INSERT INTO `cart` (`id`, `last_update`) VALUES (93, '1979-12-18');
INSERT INTO `cart` (`id`, `last_update`) VALUES (94, '1974-04-28');
INSERT INTO `cart` (`id`, `last_update`) VALUES (95, '1982-07-13');
INSERT INTO `cart` (`id`, `last_update`) VALUES (96, '2018-12-07');
INSERT INTO `cart` (`id`, `last_update`) VALUES (97, '1998-06-28');
INSERT INTO `cart` (`id`, `last_update`) VALUES (98, '1993-02-16');
INSERT INTO `cart` (`id`, `last_update`) VALUES (99, '1976-01-15');
INSERT INTO `cart` (`id`, `last_update`) VALUES (100, '2003-04-28');


#
# TABLE STRUCTURE FOR: cart_item
#

DROP TABLE IF EXISTS `cart_item`;

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_PRODUCT_CART_ITEM` (`product_id`),
  KEY `FK_CART_CART_ITEM` (`cart_id`),
  CONSTRAINT `FK_CART_CART_ITEM` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PRODUCT_CART_ITEM` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (1, 1, 1, 544317918);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (2, 2, 2, 1937523);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (3, 3, 3, 12811138);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (4, 4, 4, 300787);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (5, 5, 5, 264184111);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (6, 6, 6, 173);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (7, 7, 7, 2693);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (8, 8, 8, 0);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (9, 9, 9, 2818);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (10, 10, 10, 406);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (11, 11, 11, 243);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (12, 12, 12, 481036);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (13, 13, 13, 6593872);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (14, 14, 14, 53460);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (15, 15, 15, 20);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (16, 16, 16, 2316322);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (17, 17, 17, 0);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (18, 18, 18, 0);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (19, 19, 19, 243043);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (20, 20, 20, 29);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (21, 21, 21, 18634902);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (22, 22, 22, 23422472);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (23, 23, 23, 0);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (24, 24, 24, 0);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (25, 25, 25, 380);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (26, 26, 26, 1);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (27, 27, 27, 47);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (28, 28, 28, 40880921);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (29, 29, 29, 0);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (30, 30, 30, 2037525);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (31, 31, 31, 1);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (32, 32, 32, 1);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (33, 33, 33, 3);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (34, 34, 34, 4);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (35, 35, 35, 23);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (36, 36, 36, 183);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (37, 37, 37, 11);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (38, 38, 38, 15876);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (39, 39, 39, 0);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (40, 40, 40, 2);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (41, 41, 41, 434);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (42, 42, 42, 563534743);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (43, 43, 43, 0);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (44, 44, 44, 59895551);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (45, 45, 45, 45665);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (46, 46, 46, 836);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (47, 47, 47, 633391);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (48, 48, 48, 32838);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (49, 49, 49, 1027274);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (50, 50, 50, 145924);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (51, 51, 51, 0);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (52, 52, 52, 29);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (53, 53, 53, 311045930);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (54, 54, 54, 4592402);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (55, 55, 55, 12);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (56, 56, 56, 0);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (57, 57, 57, 5850821);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (58, 58, 58, 1763533);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (59, 59, 59, 20734);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (60, 60, 60, 72);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (61, 61, 61, 255699043);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (62, 62, 62, 26979642);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (63, 63, 63, 114);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (64, 64, 64, 2078207);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (65, 65, 65, 88);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (66, 66, 66, 171039);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (67, 67, 67, 17211390);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (68, 68, 68, 29947);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (69, 69, 69, 69439502);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (70, 70, 70, 48835066);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (71, 71, 71, 69566596);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (72, 72, 72, 11473);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (73, 73, 73, 22);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (74, 74, 74, 21028840);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (75, 75, 75, 661977);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (76, 76, 76, 3916);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (77, 77, 77, 26963);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (78, 78, 78, 1551751);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (79, 79, 79, 2020620);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (80, 80, 80, 2);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (81, 81, 81, 30);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (82, 82, 82, 466);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (83, 83, 83, 1722574);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (84, 84, 84, 3);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (85, 85, 85, 0);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (86, 86, 86, 2);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (87, 87, 87, 70569800);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (88, 88, 88, 1854);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (89, 89, 89, 36194);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (90, 90, 90, 899240659);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (91, 91, 91, 244273);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (92, 92, 92, 64693);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (93, 93, 93, 36);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (94, 94, 94, 545);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (95, 95, 95, 55933);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (96, 96, 96, 688187357);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (97, 97, 97, 1892);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (98, 98, 98, 0);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (99, 99, 99, 267988763);
INSERT INTO `cart_item` (`id`, `product_id`, `cart_id`, `quantity`) VALUES (100, 100, 100, 4417);


#
# TABLE STRUCTURE FOR: category
#

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `image_url` varchar(250) NOT NULL DEFAULT 'https://blueskystores.com/wp-content/uploads/artist-group.jpg',
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (1, 'id', 'http://frami.org/', 'Quia in cum eius earum. Veniam consequatur unde debitis assumenda voluptas. Voluptates sint qui qui et qui.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (2, 'consectetur', 'http://www.lakinwitting.info/', 'Voluptatum officiis voluptatem sit consequatur. Molestiae dolore ea animi numquam officia et. Similique veritatis omnis inventor');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (3, 'fuga', 'http://www.gerhold.com/', 'Voluptatem est facilis veritatis recusandae. Qui tenetur et reprehenderit quos libero fugiat. Minima qui nobis omnis rerum.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (4, 'explicabo', 'http://www.altenwerth.biz/', 'Non quia minima optio aliquid aliquam. Sit placeat unde recusandae dignissimos excepturi. Fugiat voluptas repellat repellendus o');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (5, 'porro', 'http://carroll.info/', 'Voluptatem ut nam commodi corporis dicta. Odio doloribus placeat maiores in numquam et. At nisi fugiat quis deserunt est. Sed iu');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (6, 'iste', 'http://kuhlmanwyman.com/', 'Sint magnam amet inventore earum omnis labore. Dolores tenetur eos quos a illum enim. Ut ab distinctio tempora recusandae et. Qu');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (7, 'eius', 'http://www.goldner.com/', 'Et commodi consequatur nesciunt. Voluptas et id sit non ut dolores perferendis. Praesentium quia aut veritatis qui. Numquam qui ');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (8, 'minima', 'http://wymanullrich.biz/', 'Eos eos sit et unde. Nisi repellat doloribus eius quia placeat iure facere. Et qui eveniet eligendi.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (9, 'possimus', 'http://mann.com/', 'Consequatur placeat sed harum velit sit dolores quisquam. Quis itaque rem quisquam voluptas. Vitae quaerat libero et voluptate q');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (10, 'perferendis', 'http://morissettenienow.com/', 'Consequuntur voluptas repellat illo inventore autem perspiciatis cupiditate ratione. Non dignissimos dolorem fugit voluptas magn');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (11, 'sit', 'http://spinkacummings.com/', 'Quam laboriosam omnis ullam aut qui velit quam. Debitis fugiat culpa et debitis quidem dolor. Voluptas dolores perspiciatis mole');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (12, 'et', 'http://gleason.com/', 'Et et quibusdam non minus pariatur qui corrupti. Suscipit unde ea officia illo.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (13, 'rerum', 'http://www.morissettewilkinson.com/', 'Quis porro quam in corporis unde. Natus perspiciatis ut minus delectus. Nesciunt at quo omnis rerum qui. Sed culpa dolorem volup');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (14, 'sint', 'http://predovictowne.com/', 'Ab aut aut deleniti accusantium. Optio vitae deleniti nostrum. Similique aut sint doloribus facere. Ex sed et incidunt rerum acc');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (15, 'officiis', 'http://www.wehner.info/', 'Omnis fugiat delectus voluptatem dolor aliquam nisi corrupti. Ratione et quisquam quod aut dolorum cumque et quia. Iste rem alia');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (16, 'dolor', 'http://www.jonesweimann.com/', 'Quo occaecati veniam cupiditate qui deleniti voluptatibus. Praesentium dolor ut quod nihil qui nisi ut. Et non dolorem aspernatu');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (17, 'voluptate', 'http://www.schadenrenner.net/', 'Nostrum dolorum omnis minus itaque quibusdam numquam. Et beatae molestias rerum. Aut ut facere quos doloremque quia cum dignissi');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (18, 'aliquam', 'http://sanfordhowe.com/', 'Eos quaerat tempora nostrum quas quas velit ipsa. Qui quia vitae quos. Quo et facere illum iste cumque eum eligendi. Itaque ulla');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (19, 'at', 'http://www.quitzonfahey.biz/', 'Sed error et rem dolorum nam. Eum rerum enim aperiam quasi nihil. Quae atque aut vel vero dignissimos est laudantium.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (20, 'eum', 'http://www.rathlarkin.com/', 'Ipsum eum quia eveniet voluptatibus temporibus est. Velit corporis aperiam molestias modi neque ea. Quisquam aut voluptate eaque');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (21, 'ipsa', 'http://dicki.org/', 'Vel veritatis quia repellat sunt quam voluptatum nobis. Et et perferendis culpa iste. Fugit quas praesentium aliquid provident t');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (22, 'ut', 'http://fahey.org/', 'Quibusdam quos in velit est debitis sit soluta assumenda. Nihil corrupti corrupti sint nulla. Quo impedit necessitatibus aut eni');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (23, 'quia', 'http://bode.biz/', 'Eum et dignissimos et. Vero quasi magnam fugiat illo inventore perferendis. Eum assumenda voluptates quia similique voluptatem. ');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (24, 'aspernatur', 'http://ledner.com/', 'Deleniti cupiditate necessitatibus laudantium debitis eum est tenetur suscipit. Ea veritatis hic voluptas. Ut omnis at et pariat');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (25, 'velit', 'http://www.bailey.info/', 'Commodi quia excepturi sequi mollitia architecto aut reiciendis. Reprehenderit ipsa vel vitae quae voluptatem sunt maxime rerum.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (26, 'sit', 'http://www.pfefferbosco.com/', 'Neque quia blanditiis nemo dicta est. Earum voluptate officiis impedit dignissimos rerum ut ab. Beatae et vitae qui omnis rerum ');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (27, 'suscipit', 'http://kilback.com/', 'Consectetur repellendus id inventore aperiam deleniti nihil. Repudiandae nemo aspernatur non sed.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (28, 'odit', 'http://langworth.net/', 'Hic natus ad omnis ipsum rem. Odit quia repellat nam eaque quaerat vel eum. Suscipit cumque suscipit quo earum.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (29, 'modi', 'http://www.morissetteframi.info/', 'Doloremque repellendus voluptatem debitis blanditiis iusto accusamus doloribus repellat. Ut aut sed voluptatem perferendis nesci');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (30, 'explicabo', 'http://hilll.com/', 'Quia eligendi aliquid sed consequatur rerum expedita. Minus delectus dolores incidunt ipsum quam laudantium. Et eius qui enim ar');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (31, 'quis', 'http://www.feeney.com/', 'Nobis est et quidem laudantium. Ratione at quos rerum fuga in doloribus nulla.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (32, 'consequatur', 'http://boyer.com/', 'Qui natus fugiat eos. Autem est sint consequatur molestiae. Voluptatem et modi laborum est iste assumenda.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (33, 'dolore', 'http://nikolaus.com/', 'Repudiandae autem impedit nam deleniti vel aliquam. Velit dolor maxime consectetur consequuntur. Alias et qui expedita dolorum a');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (34, 'aperiam', 'http://farrell.com/', 'Sequi porro repellendus eum magnam laudantium perferendis. Ratione beatae quaerat ipsa consequatur sit natus. Accusamus autem vo');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (35, 'repudiandae', 'http://www.prosacco.com/', 'Id sed perspiciatis consequatur eligendi et iste qui laboriosam. Sapiente quas eos vel. Consequatur eius non dolore consequatur.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (36, 'consequatur', 'http://www.mitchell.info/', 'In vero aut architecto voluptatum enim natus quo. Reprehenderit qui distinctio excepturi ut cupiditate ex velit. Neque provident');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (37, 'rerum', 'http://strosin.com/', 'Neque repudiandae et consequatur rerum. Qui totam non sint harum sit eligendi. Nemo sint sint optio modi repudiandae veritatis a');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (38, 'totam', 'http://www.legros.com/', 'Ex cum nemo et quibusdam nulla repellat. Ex sunt aut repudiandae eius porro odio enim minus. Qui magni et praesentium quia nesci');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (39, 'sit', 'http://hilll.com/', 'Non ut asperiores sit quo labore. Vel dolorum exercitationem qui et sunt et est. Sed nesciunt quibusdam culpa.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (40, 'deleniti', 'http://collier.com/', 'Accusamus veniam omnis quos. Consequuntur et consequatur quasi ex voluptas eligendi doloribus. Et distinctio velit ut laudantium');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (41, 'suscipit', 'http://www.pacochakoelpin.net/', 'Voluptates nostrum maiores corrupti corporis nobis. Ex ipsa nisi magni possimus. Nihil iste ipsum ad est dolores.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (42, 'ipsa', 'http://www.schroederrau.biz/', 'Magnam ut quis voluptas id ipsam numquam commodi adipisci. Voluptate sint minima sequi quis. Qui aut reiciendis qui minima ut ad');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (43, 'et', 'http://konopelski.org/', 'Molestiae laboriosam et repudiandae sint et ea. Et consequatur quo voluptatibus. Debitis maiores omnis repellat sit. Quod cupidi');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (44, 'est', 'http://ankunding.biz/', 'Facilis quia et deleniti molestiae. Hic occaecati at et quis sit minima est deleniti. Quidem consequatur perferendis magni aut. ');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (45, 'quia', 'http://wilderman.com/', 'Nemo quia et explicabo quibusdam quisquam voluptate id. Qui quibusdam voluptatibus neque praesentium quisquam doloribus. Pariatu');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (46, 'voluptatem', 'http://wunsch.com/', 'Sequi expedita deserunt asperiores ut. Est dicta id unde similique dicta. Deleniti nisi et error pariatur sed. Temporibus suscip');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (47, 'repellendus', 'http://hessel.com/', 'Est totam rem tenetur. Tenetur ipsam saepe blanditiis et quas. Nesciunt vel aut voluptate ut a. Repudiandae ut quasi eveniet duc');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (48, 'expedita', 'http://hane.com/', 'Enim saepe perferendis reiciendis. Maxime ut ratione aperiam ut consequatur. Ratione eligendi est nemo nisi sed illum rem.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (49, 'cum', 'http://yundt.com/', 'Magni qui corporis ut modi debitis sapiente ducimus. Aspernatur optio totam ut non ipsam. Praesentium maiores doloribus eveniet ');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (50, 'neque', 'http://morissette.org/', 'Vel amet alias et aut aut fuga. Voluptatem incidunt nostrum facilis in est incidunt tempore. Maiores et minima tempora explicabo');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (51, 'ut', 'http://wehner.info/', 'Ea quia consequatur enim quidem. Impedit non inventore quo beatae illum laudantium iure. Assumenda voluptates ducimus quam assum');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (52, 'officia', 'http://goodwin.com/', 'Est et dicta atque distinctio porro et eligendi et. Qui quo corrupti assumenda sed ab est adipisci. Maiores id aspernatur magnam');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (53, 'consequuntur', 'http://jerdekonopelski.com/', 'Similique dolore quia iure est. Ut rerum ea ex magnam illum. Recusandae non voluptatem itaque. Id ut eum corrupti vel fugit.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (54, 'mollitia', 'http://www.pfannerstill.com/', 'Qui voluptatem repellendus voluptatem. Voluptatem quis qui neque distinctio non.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (55, 'iure', 'http://wyman.com/', 'Sit repellat nihil maiores. Ullam ipsa quaerat commodi perspiciatis in aut saepe. Veniam qui maiores cum at ad.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (56, 'in', 'http://auersipes.com/', 'Praesentium ea optio delectus et. Cumque voluptatem id est dolor. In enim et beatae aut sed necessitatibus. Laudantium quos veri');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (57, 'sit', 'http://auer.com/', 'Earum laborum numquam nesciunt sit. Ratione praesentium odit eaque quia. Dolorem et sed sed eius est.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (58, 'perspiciatis', 'http://www.kemmer.info/', 'Et praesentium unde illo nemo voluptas. Incidunt ipsa id consectetur molestias qui veniam. Voluptatem veniam dolor rerum aut eos');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (59, 'sed', 'http://rueckerrippin.com/', 'Omnis et aut magni ipsum. Omnis aperiam qui qui quibusdam. Vel tempora voluptatum omnis odio ut qui.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (60, 'a', 'http://www.marvin.com/', 'Beatae nihil et voluptatem unde omnis suscipit deleniti. Tempora reprehenderit vel distinctio ex omnis velit dolor velit. Quam q');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (61, 'quia', 'http://faymills.com/', 'Suscipit molestias amet a praesentium distinctio quisquam alias. Ad occaecati voluptatum consequatur. Repudiandae ipsam autem en');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (62, 'et', 'http://www.gusikowski.biz/', 'Accusamus officiis illum architecto totam et. Est dicta mollitia id modi cum qui. Beatae nostrum libero commodi consequatur aut.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (63, 'dolorum', 'http://sawayn.com/', 'Temporibus ad nisi ea et consequatur eligendi sit. Omnis praesentium porro ut in. Totam minima saepe illum nisi illo illo. Volup');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (64, 'et', 'http://kuvalisbergstrom.net/', 'Ea facere qui aut excepturi aperiam. Necessitatibus cum dolorem nisi labore sint deserunt unde. In aspernatur illum consequatur ');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (65, 'aut', 'http://blick.com/', 'Sit vel voluptatem dignissimos repudiandae reprehenderit enim minus. Quis veniam eaque eaque dolore ut voluptatem dolorem. Cupid');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (66, 'fugit', 'http://erdman.com/', 'Dolore mollitia et adipisci at qui impedit. Et reiciendis ratione possimus aut.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (67, 'tempora', 'http://www.bernier.com/', 'Vel blanditiis delectus molestiae et recusandae. In nesciunt nobis dolores cum. Est ut id laboriosam.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (68, 'earum', 'http://mcglynn.com/', 'Sit sunt ullam et cumque recusandae dolor vitae. Ad facere eius et quasi odit vel. Non dignissimos ipsa voluptatum quod. Velit e');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (69, 'ut', 'http://beahanbernhard.com/', 'Rerum quia quia facilis soluta ut aut aperiam voluptates. Quis delectus dolorum distinctio eum incidunt omnis voluptas. Dolor vo');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (70, 'praesentium', 'http://www.senger.com/', 'Quia autem aut cumque sit ratione quia et nulla. Non labore dolorem sit non qui occaecati. Quia omnis expedita et fuga blanditii');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (71, 'veritatis', 'http://kilback.com/', 'Odio quisquam eveniet odit consectetur et atque eveniet quo. Nesciunt nihil totam reiciendis quo. In sint veritatis at nulla imp');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (72, 'vero', 'http://www.carterhoeger.com/', 'Alias corrupti aspernatur nisi mollitia quis officia. Doloremque eum quia molestias nam sint. Consequuntur aut sint est fuga dol');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (73, 'repellendus', 'http://lindgrengutkowski.com/', 'Enim facere qui ut assumenda sed. Molestiae sed ipsam expedita quis. Hic repellendus numquam nulla voluptas assumenda cumque neq');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (74, 'deleniti', 'http://www.abernathywalter.biz/', 'Velit officiis quos cumque dolorem saepe. Ducimus consequatur quo consequatur eos ipsam aut beatae. Et ipsum blanditiis sequi au');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (75, 'vero', 'http://lindkuhlman.net/', 'Provident numquam temporibus ipsum qui iusto. Doloribus nostrum saepe illum et quis recusandae. Maxime est animi soluta et occae');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (76, 'aut', 'http://kerluke.com/', 'Molestias non architecto repellendus illo nihil architecto dolores. Et qui dolores repellendus nam voluptatibus eos.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (77, 'consequatur', 'http://dach.com/', 'Facere cum labore veritatis accusantium accusantium excepturi deserunt. Dicta cumque placeat est. Corporis beatae at dolor unde ');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (78, 'quidem', 'http://www.kozey.com/', 'Ut et et molestiae pariatur animi quam. Error impedit quisquam sint nihil quis iusto illo. Qui ut delectus eos et alias fugit qu');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (79, 'ipsa', 'http://www.hahn.com/', 'Est itaque aut quaerat esse sequi. Odio laboriosam deserunt adipisci ut. In suscipit nobis eos dolorem ut autem.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (80, 'similique', 'http://reichel.com/', 'Aliquid nulla consequatur sed praesentium natus optio ullam. Eum quas dolor qui ea ut molestias ex. Libero in cumque saepe nulla');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (81, 'sed', 'http://www.rolfson.com/', 'Est sint et autem vel. Asperiores labore ut ut. Aliquid est dolore incidunt recusandae.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (82, 'nisi', 'http://huels.org/', 'Debitis possimus tempora possimus saepe sint. Repellat quos est illum iure ducimus ullam est. Iste ut quidem animi.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (83, 'iste', 'http://smith.com/', 'Tempora harum explicabo ullam exercitationem eos sit. Voluptas quis voluptas id consectetur dolores quas fugiat aspernatur. Eius');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (84, 'quia', 'http://www.morar.biz/', 'Velit quia enim earum consequatur recusandae sint assumenda. Dolorum animi dolorem sed et totam. Voluptas nisi accusamus cum odi');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (85, 'explicabo', 'http://corwin.com/', 'Accusamus odit praesentium facere quaerat. Voluptatem magni eum cupiditate officia nihil quaerat ut. Ullam laudantium velit et m');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (86, 'est', 'http://botsford.info/', 'Consequatur rerum dolore explicabo possimus autem labore eius placeat. Inventore alias natus ab sit. Iste similique rem quisquam');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (87, 'aut', 'http://balistreri.com/', 'Consequatur aut laudantium et quisquam. Quasi ipsa id et et qui iste omnis. Aperiam et tempora accusantium. Saepe non nostrum co');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (88, 'et', 'http://heller.com/', 'Facere voluptas ut doloribus deserunt. Velit id omnis natus atque eos facilis sed. Consequatur ea quam ut. Non nisi qui aspernat');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (89, 'in', 'http://www.blanda.com/', 'Fuga quia ad debitis vel. Excepturi incidunt et debitis perspiciatis quibusdam quo voluptatem corporis. Voluptatem quaerat minim');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (90, 'sed', 'http://walterconnelly.com/', 'Ipsam dolores sit quae eaque. Incidunt deserunt vitae sint cumque. Provident illum est recusandae quis qui. Molestias perferendi');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (91, 'qui', 'http://rodriguezcummings.com/', 'At beatae impedit ut at dolores nihil. Pariatur at quibusdam dignissimos nemo aut iste nostrum. Et sapiente commodi ad modi enim');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (92, 'quos', 'http://turcotte.org/', 'Consequatur esse quia deleniti quis vel aliquam animi. Quis voluptatem quas sit quis sit ut. Omnis atque ut ut dolore.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (93, 'illum', 'http://www.christiansen.com/', 'Accusantium nam cumque est eos sunt voluptatum. Dolor impedit quas enim modi sequi quod odio accusantium. Rerum placeat id sed s');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (94, 'quos', 'http://www.gislason.com/', 'Maxime et repudiandae pariatur eos. Beatae distinctio ut repellat consequatur architecto minima. Repellat non vel et possimus id');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (95, 'porro', 'http://hessel.net/', 'Unde totam ea qui. Suscipit quisquam labore et et. Perferendis aliquam aperiam maiores eos ducimus eaque accusantium ea. Eum fug');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (96, 'iusto', 'http://emmerich.net/', 'Possimus voluptatem deserunt aut hic in nemo. Ratione eos doloremque dolor nisi esse debitis dolores voluptatem. Provident et ev');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (97, 'quae', 'http://www.tillman.com/', 'Similique nihil aliquam optio natus quod labore odit. Et aspernatur quas alias qui eos iure ut. Minima aut excepturi ipsum esse.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (98, 'et', 'http://www.feest.com/', 'Ad ad asperiores quis rerum ad aspernatur. Eius vel quo harum omnis ut.');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (99, 'expedita', 'http://www.wehner.com/', 'Et amet occaecati dolor ea quasi et. Culpa et dignissimos assumenda ut qui natus velit ut. Placeat esse nostrum cum velit itaque');
INSERT INTO `category` (`id`, `name`, `image_url`, `description`) VALUES (100, 'quisquam', 'http://mertz.org/', 'Earum impedit commodi earum vero omnis dolore exercitationem. Harum non et aut labore. Reprehenderit at sit ex quod cupiditate. ');


#
# TABLE STRUCTURE FOR: classified_product
#

DROP TABLE IF EXISTS `classified_product`;

CREATE TABLE `classified_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_GRADE_CLASSIFIED_PRODUCT` (`grade_id`),
  KEY `FK_PRODUCT_CLASSIFIED_PRODUCT` (`product_id`),
  CONSTRAINT `FK_GRADE_CLASSIFIED_PRODUCT` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PRODUCT_CLASSIFIED_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (1, 501, 1, 1);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (2, 502, 2, 23518);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (3, 503, 3, 52891);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (4, 504, 4, 0);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (5, 505, 5, 150854);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (6, 506, 6, 1);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (7, 507, 7, 6);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (8, 508, 8, 48573700);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (9, 509, 9, 4357082);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (10, 510, 10, 0);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (11, 511, 11, 356);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (12, 512, 12, 7349537);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (13, 513, 13, 84275081);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (14, 514, 14, 386);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (15, 515, 15, 29606374);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (16, 517, 16, 1);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (17, 518, 17, 121);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (18, 519, 18, 4025);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (19, 520, 19, 169374173);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (20, 521, 20, 37096751);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (21, 522, 21, 2);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (22, 523, 22, 619530880);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (23, 524, 23, 0);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (24, 525, 24, 62);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (25, 526, 25, 3998956);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (26, 527, 26, 34304);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (27, 528, 27, 5033);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (28, 529, 28, 14);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (29, 530, 29, 242);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (30, 531, 30, 4422);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (31, 532, 31, 48);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (32, 533, 32, 6752699);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (33, 534, 33, 46);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (34, 535, 34, 100);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (35, 536, 35, 4);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (36, 537, 36, 55303126);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (37, 538, 37, 1);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (38, 539, 38, 136);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (39, 540, 39, 0);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (40, 541, 40, 116394);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (41, 542, 41, 8039882);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (42, 543, 42, 752337);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (43, 544, 43, 78104);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (44, 545, 44, 76233);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (45, 546, 45, 198337);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (46, 547, 46, 0);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (47, 548, 47, 0);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (48, 550, 48, 1973428);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (49, 551, 49, 0);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (50, 552, 50, 0);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (51, 553, 51, 62587696);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (52, 554, 52, 76843810);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (53, 555, 53, 4);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (54, 556, 54, 88);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (55, 558, 55, 8800);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (56, 559, 56, 319);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (57, 560, 57, 24159);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (58, 561, 58, 277994498);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (59, 562, 59, 29937);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (60, 564, 60, 0);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (61, 565, 61, 752429471);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (62, 566, 62, 1396039);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (63, 567, 63, 567677);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (64, 568, 64, 376451);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (65, 569, 65, 2305);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (66, 570, 66, 351);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (67, 571, 67, 6890928);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (68, 572, 68, 228022026);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (69, 573, 69, 668);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (70, 574, 70, 0);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (71, 575, 71, 0);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (72, 576, 72, 5323808);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (73, 577, 73, 353);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (74, 578, 74, 7399840);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (75, 579, 75, 16023202);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (76, 580, 76, 8962998);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (77, 581, 77, 806);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (78, 582, 78, 0);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (79, 583, 79, 221);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (80, 586, 80, 0);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (81, 587, 81, 2388);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (82, 588, 82, 422452132);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (83, 589, 83, 1);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (84, 590, 84, 223516);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (85, 591, 85, 62);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (86, 592, 86, 4);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (87, 593, 87, 634027399);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (88, 594, 88, 49);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (89, 595, 89, 323);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (90, 596, 90, 524986);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (91, 598, 91, 306);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (92, 599, 92, 0);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (93, 600, 93, 871424452);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (94, 501, 94, 630);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (95, 502, 95, 778);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (96, 503, 96, 83818448);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (97, 504, 97, 171545);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (98, 505, 98, 3838);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (99, 506, 99, 57774);
INSERT INTO `classified_product` (`id`, `grade_id`, `product_id`, `quantity`) VALUES (100, 507, 100, 1);


#
# TABLE STRUCTURE FOR: grade
#

DROP TABLE IF EXISTS `grade`;

CREATE TABLE `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_level` int(11) NOT NULL,
  `grade_number` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_GRADE_LEVEL_GRADE` (`grade_level`),
  CONSTRAINT `FK_GRADE_LEVEL_GRADE` FOREIGN KEY (`grade_level`) REFERENCES `grade_level` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=latin1;

INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (501, 4, 3);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (502, 4, 1);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (503, 7, 8);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (504, 6, 1);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (505, 2, 1);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (506, 5, 5);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (507, 5, 8);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (508, 5, 1);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (509, 1, 7);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (510, 5, 2);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (511, 1, 4);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (512, 2, 6);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (513, 1, 9);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (514, 6, 7);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (515, 7, 4);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (517, 4, 7);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (518, 7, 7);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (519, 8, 8);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (520, 2, 1);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (521, 8, 2);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (522, 9, 9);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (523, 8, 9);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (524, 9, 5);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (525, 4, 5);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (526, 6, 7);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (527, 4, 5);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (528, 9, 6);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (529, 9, 4);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (530, 8, 8);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (531, 9, 8);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (532, 8, 4);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (533, 1, 1);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (534, 8, 3);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (535, 5, 3);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (536, 7, 5);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (537, 7, 2);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (538, 7, 3);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (539, 6, 6);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (540, 1, 3);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (541, 8, 4);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (542, 2, 2);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (543, 2, 1);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (544, 6, 7);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (545, 4, 8);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (546, 1, 9);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (547, 1, 4);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (548, 3, 1);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (550, 2, 5);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (551, 7, 8);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (552, 4, 3);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (553, 9, 4);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (554, 8, 7);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (555, 3, 6);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (556, 5, 8);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (558, 4, 8);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (559, 5, 3);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (560, 2, 7);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (561, 4, 1);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (562, 5, 3);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (564, 8, 8);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (565, 4, 2);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (566, 3, 5);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (567, 4, 7);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (568, 5, 8);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (569, 2, 1);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (570, 2, 3);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (571, 3, 5);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (572, 4, 1);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (573, 6, 3);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (574, 5, 3);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (575, 2, 3);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (576, 1, 1);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (577, 7, 3);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (578, 5, 4);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (579, 1, 8);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (580, 3, 8);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (581, 7, 3);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (582, 9, 7);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (583, 2, 9);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (586, 6, 3);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (587, 9, 2);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (588, 2, 7);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (589, 7, 4);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (590, 6, 9);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (591, 8, 1);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (592, 2, 3);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (593, 8, 2);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (594, 8, 2);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (595, 9, 7);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (596, 1, 3);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (598, 1, 6);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (599, 6, 6);
INSERT INTO `grade` (`id`, `grade_level`, `grade_number`) VALUES (600, 4, 4);


#
# TABLE STRUCTURE FOR: grade_level
#

DROP TABLE IF EXISTS `grade_level`;

CREATE TABLE `grade_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO `grade_level` (`id`, `level`) VALUES (1, '6');
INSERT INTO `grade_level` (`id`, `level`) VALUES (2, '7');
INSERT INTO `grade_level` (`id`, `level`) VALUES (3, '9');
INSERT INTO `grade_level` (`id`, `level`) VALUES (4, '1');
INSERT INTO `grade_level` (`id`, `level`) VALUES (5, '9');
INSERT INTO `grade_level` (`id`, `level`) VALUES (6, '8');
INSERT INTO `grade_level` (`id`, `level`) VALUES (7, '8');
INSERT INTO `grade_level` (`id`, `level`) VALUES (8, '8');
INSERT INTO `grade_level` (`id`, `level`) VALUES (9, '8');
INSERT INTO `grade_level` (`id`, `level`) VALUES (10, '6');
INSERT INTO `grade_level` (`id`, `level`) VALUES (11, '1');
INSERT INTO `grade_level` (`id`, `level`) VALUES (12, '2');
INSERT INTO `grade_level` (`id`, `level`) VALUES (13, '3');
INSERT INTO `grade_level` (`id`, `level`) VALUES (14, '5');
INSERT INTO `grade_level` (`id`, `level`) VALUES (15, '4');
INSERT INTO `grade_level` (`id`, `level`) VALUES (16, '3');
INSERT INTO `grade_level` (`id`, `level`) VALUES (17, '7');
INSERT INTO `grade_level` (`id`, `level`) VALUES (18, '2');
INSERT INTO `grade_level` (`id`, `level`) VALUES (19, '1');
INSERT INTO `grade_level` (`id`, `level`) VALUES (20, '4');
INSERT INTO `grade_level` (`id`, `level`) VALUES (21, '1');
INSERT INTO `grade_level` (`id`, `level`) VALUES (22, '2');
INSERT INTO `grade_level` (`id`, `level`) VALUES (23, '9');
INSERT INTO `grade_level` (`id`, `level`) VALUES (24, '9');
INSERT INTO `grade_level` (`id`, `level`) VALUES (25, '3');
INSERT INTO `grade_level` (`id`, `level`) VALUES (26, '8');
INSERT INTO `grade_level` (`id`, `level`) VALUES (27, '5');
INSERT INTO `grade_level` (`id`, `level`) VALUES (28, '4');
INSERT INTO `grade_level` (`id`, `level`) VALUES (29, '5');
INSERT INTO `grade_level` (`id`, `level`) VALUES (30, '9');
INSERT INTO `grade_level` (`id`, `level`) VALUES (31, '3');
INSERT INTO `grade_level` (`id`, `level`) VALUES (32, '6');
INSERT INTO `grade_level` (`id`, `level`) VALUES (33, '3');
INSERT INTO `grade_level` (`id`, `level`) VALUES (34, '6');
INSERT INTO `grade_level` (`id`, `level`) VALUES (35, '');
INSERT INTO `grade_level` (`id`, `level`) VALUES (36, '3');
INSERT INTO `grade_level` (`id`, `level`) VALUES (37, '4');
INSERT INTO `grade_level` (`id`, `level`) VALUES (38, '5');
INSERT INTO `grade_level` (`id`, `level`) VALUES (39, '8');
INSERT INTO `grade_level` (`id`, `level`) VALUES (40, '5');
INSERT INTO `grade_level` (`id`, `level`) VALUES (41, '4');
INSERT INTO `grade_level` (`id`, `level`) VALUES (42, '3');
INSERT INTO `grade_level` (`id`, `level`) VALUES (43, '6');
INSERT INTO `grade_level` (`id`, `level`) VALUES (44, '7');
INSERT INTO `grade_level` (`id`, `level`) VALUES (45, '7');
INSERT INTO `grade_level` (`id`, `level`) VALUES (46, '3');
INSERT INTO `grade_level` (`id`, `level`) VALUES (47, '5');
INSERT INTO `grade_level` (`id`, `level`) VALUES (48, '4');
INSERT INTO `grade_level` (`id`, `level`) VALUES (49, '7');
INSERT INTO `grade_level` (`id`, `level`) VALUES (50, '8');
INSERT INTO `grade_level` (`id`, `level`) VALUES (51, '');
INSERT INTO `grade_level` (`id`, `level`) VALUES (52, '');
INSERT INTO `grade_level` (`id`, `level`) VALUES (53, '2');
INSERT INTO `grade_level` (`id`, `level`) VALUES (54, '5');
INSERT INTO `grade_level` (`id`, `level`) VALUES (55, '1');
INSERT INTO `grade_level` (`id`, `level`) VALUES (56, '1');
INSERT INTO `grade_level` (`id`, `level`) VALUES (57, '4');
INSERT INTO `grade_level` (`id`, `level`) VALUES (58, '9');
INSERT INTO `grade_level` (`id`, `level`) VALUES (59, '4');
INSERT INTO `grade_level` (`id`, `level`) VALUES (60, '9');
INSERT INTO `grade_level` (`id`, `level`) VALUES (61, '4');
INSERT INTO `grade_level` (`id`, `level`) VALUES (62, '3');
INSERT INTO `grade_level` (`id`, `level`) VALUES (63, '6');
INSERT INTO `grade_level` (`id`, `level`) VALUES (64, '3');
INSERT INTO `grade_level` (`id`, `level`) VALUES (65, '5');
INSERT INTO `grade_level` (`id`, `level`) VALUES (66, '5');
INSERT INTO `grade_level` (`id`, `level`) VALUES (67, '');
INSERT INTO `grade_level` (`id`, `level`) VALUES (68, '3');
INSERT INTO `grade_level` (`id`, `level`) VALUES (69, '7');
INSERT INTO `grade_level` (`id`, `level`) VALUES (70, '7');
INSERT INTO `grade_level` (`id`, `level`) VALUES (71, '7');
INSERT INTO `grade_level` (`id`, `level`) VALUES (72, '3');
INSERT INTO `grade_level` (`id`, `level`) VALUES (73, '2');
INSERT INTO `grade_level` (`id`, `level`) VALUES (74, '');
INSERT INTO `grade_level` (`id`, `level`) VALUES (75, '1');
INSERT INTO `grade_level` (`id`, `level`) VALUES (76, '4');
INSERT INTO `grade_level` (`id`, `level`) VALUES (77, '9');
INSERT INTO `grade_level` (`id`, `level`) VALUES (78, '9');
INSERT INTO `grade_level` (`id`, `level`) VALUES (79, '5');
INSERT INTO `grade_level` (`id`, `level`) VALUES (80, '4');
INSERT INTO `grade_level` (`id`, `level`) VALUES (81, '5');
INSERT INTO `grade_level` (`id`, `level`) VALUES (82, '3');
INSERT INTO `grade_level` (`id`, `level`) VALUES (83, '4');
INSERT INTO `grade_level` (`id`, `level`) VALUES (84, '6');
INSERT INTO `grade_level` (`id`, `level`) VALUES (85, '');
INSERT INTO `grade_level` (`id`, `level`) VALUES (86, '4');
INSERT INTO `grade_level` (`id`, `level`) VALUES (87, '5');
INSERT INTO `grade_level` (`id`, `level`) VALUES (88, '7');
INSERT INTO `grade_level` (`id`, `level`) VALUES (89, '7');
INSERT INTO `grade_level` (`id`, `level`) VALUES (90, '8');
INSERT INTO `grade_level` (`id`, `level`) VALUES (91, '2');
INSERT INTO `grade_level` (`id`, `level`) VALUES (92, '1');
INSERT INTO `grade_level` (`id`, `level`) VALUES (93, '5');
INSERT INTO `grade_level` (`id`, `level`) VALUES (94, '6');
INSERT INTO `grade_level` (`id`, `level`) VALUES (95, '2');
INSERT INTO `grade_level` (`id`, `level`) VALUES (96, '4');
INSERT INTO `grade_level` (`id`, `level`) VALUES (97, '2');
INSERT INTO `grade_level` (`id`, `level`) VALUES (98, '1');
INSERT INTO `grade_level` (`id`, `level`) VALUES (99, '4');
INSERT INTO `grade_level` (`id`, `level`) VALUES (100, '9');


#
# TABLE STRUCTURE FOR: offers
#

DROP TABLE IF EXISTS `offers`;

CREATE TABLE `offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_PRODUCT_OFFERS` (`product_id`),
  CONSTRAINT `FK_PRODUCT_OFFERS` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (1, 1, 7321, '1975-02-15', '1981-08-07');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (2, 2, 7183, '1984-02-12', '1993-07-02');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (3, 3, 5113, '1971-10-19', '2009-03-18');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (4, 4, 4, '1987-12-15', '1977-11-18');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (5, 5, 0, '1990-04-30', '1987-11-11');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (6, 6, 0, '2013-11-24', '2014-07-23');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (7, 7, 8661675, '1991-07-22', '1988-05-07');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (8, 8, 34, '1991-08-30', '2006-02-04');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (9, 9, 6008, '1981-07-29', '2011-06-23');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (10, 10, 20, '1990-02-10', '2010-09-22');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (11, 11, 604, '1974-08-09', '2009-04-05');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (12, 12, 433101, '2005-07-17', '1975-10-14');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (13, 13, 2, '2012-11-04', '2017-05-16');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (14, 14, 35300470, '2010-07-08', '2002-03-04');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (15, 15, 976, '1985-12-01', '2014-01-05');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (16, 16, 4, '2009-06-10', '1970-08-03');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (17, 17, 22, '1989-10-24', '1993-07-14');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (18, 18, 314, '1987-11-08', '2001-04-23');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (19, 19, 9, '1980-07-09', '1988-09-20');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (20, 20, 3769038, '1998-06-29', '1973-01-30');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (21, 21, 78910686, '1972-04-25', '1995-07-23');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (22, 22, 4213, '2008-10-09', '1994-04-28');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (23, 23, 210772641, '2011-02-08', '1991-02-23');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (24, 24, 342, '2000-07-23', '1995-12-13');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (25, 25, 33959, '1990-01-07', '1976-06-09');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (26, 26, 3, '2003-10-21', '2011-07-15');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (27, 27, 94881085, '2003-04-21', '1988-10-04');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (28, 28, 2378, '1986-01-09', '2005-12-07');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (29, 29, 45801, '1981-10-17', '1982-02-10');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (30, 30, 941011324, '1979-10-15', '1979-06-06');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (31, 31, 961603566, '2017-06-06', '1971-01-02');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (32, 32, 278273004, '1970-08-08', '2006-03-16');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (33, 33, 0, '1974-06-21', '1986-02-01');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (34, 34, 28, '2019-09-22', '1981-12-15');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (35, 35, 0, '1998-08-18', '1970-02-04');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (36, 36, 7022, '2008-01-05', '1994-07-30');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (37, 37, 16, '1970-07-02', '2017-08-06');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (38, 38, 979301358, '2019-06-04', '2006-05-19');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (39, 39, 9003, '1985-11-20', '1981-04-10');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (40, 40, 357, '1986-09-29', '2019-05-16');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (41, 41, 0, '2014-04-30', '1978-05-24');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (42, 42, 543976060, '1993-01-28', '1990-10-07');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (43, 43, 25, '1991-12-02', '2012-10-31');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (44, 44, 11663701, '1988-10-28', '1995-09-18');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (45, 45, 687, '1976-11-15', '1995-08-02');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (46, 46, 2917516, '2020-05-21', '1993-11-12');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (47, 47, 24066, '1982-12-17', '1971-12-25');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (48, 48, 5605, '1997-12-04', '1973-10-19');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (49, 49, 2, '2019-01-25', '2010-04-21');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (50, 50, 55481, '1986-06-19', '2002-09-15');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (51, 51, 48588, '2006-10-13', '2003-08-23');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (52, 52, 5, '1978-05-06', '2015-11-14');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (53, 53, 24, '1980-08-29', '1983-07-16');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (54, 54, 2, '2013-01-12', '2010-05-21');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (55, 55, 624798876, '2017-03-02', '1994-11-01');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (56, 56, 51655515, '2008-03-21', '2016-10-11');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (57, 57, 78089237, '1990-09-13', '1979-09-29');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (58, 58, 175250, '1991-02-09', '1975-05-30');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (59, 59, 810, '1973-11-02', '1973-08-30');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (60, 60, 5, '1979-04-10', '1994-02-20');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (61, 61, 50, '2020-06-20', '1979-10-31');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (62, 62, 78500032, '1996-11-09', '1996-08-30');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (63, 63, 578978165, '1989-04-30', '1981-03-17');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (64, 64, 1756501, '1987-07-07', '1985-09-30');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (65, 65, 0, '1987-09-30', '2009-02-22');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (66, 66, 7715490, '2007-06-13', '1979-10-08');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (67, 67, 61562533, '2006-11-05', '1987-03-27');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (68, 68, 0, '1971-10-19', '1984-09-14');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (69, 69, 1793711, '1978-12-31', '1998-11-19');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (70, 70, 23599, '2007-07-29', '2010-09-25');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (71, 71, 77, '2009-07-29', '1988-05-20');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (72, 72, 0, '2007-01-16', '1980-06-01');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (73, 73, 27087411, '2011-09-29', '2000-10-12');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (74, 74, 297778, '1999-07-19', '2000-09-05');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (75, 75, 78, '1992-03-15', '1996-03-22');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (76, 76, 439411695, '1977-09-14', '1988-01-20');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (77, 77, 5587, '2017-09-27', '1978-02-11');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (78, 78, 69, '2005-05-14', '2007-11-22');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (79, 79, 298023340, '1980-08-14', '2009-06-03');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (80, 80, 35608328, '2006-05-10', '1980-08-02');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (81, 81, 51, '1990-11-05', '2009-02-03');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (82, 82, 397, '1975-07-08', '1987-02-03');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (83, 83, 34871730, '1987-10-01', '1970-01-30');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (84, 84, 31, '2009-11-20', '2019-06-05');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (85, 85, 0, '1995-02-03', '2009-05-21');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (86, 86, 485002, '1991-06-08', '2006-11-06');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (87, 87, 21744157, '1998-08-30', '1981-08-06');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (88, 88, 84679, '1977-07-02', '1981-02-28');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (89, 89, 182, '2016-06-13', '2009-01-05');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (90, 90, 6304, '1993-04-29', '1990-03-30');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (91, 91, 1, '1986-12-13', '2012-06-16');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (92, 92, 1, '2015-04-20', '1983-07-06');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (93, 93, 16, '1995-03-11', '1984-01-12');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (94, 94, 1, '1971-11-04', '1980-07-18');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (95, 95, 182919, '1989-08-13', '2000-03-08');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (96, 96, 0, '1974-03-17', '1980-02-05');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (97, 97, 747541514, '2015-09-14', '1996-10-21');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (98, 98, 658376, '2007-11-25', '2017-08-19');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (99, 99, 95608007, '2011-07-18', '1998-07-19');
INSERT INTO `offers` (`id`, `product_id`, `discount`, `start_date`, `end_date`) VALUES (100, 100, 7, '1989-08-20', '1973-07-03');


#
# TABLE STRUCTURE FOR: order_details
#

DROP TABLE IF EXISTS `order_details`;

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_USER_ORDER_DETAILS` (`user_id`),
  KEY `FK_ORDER_ORDER_DETAILS` (`order_id`),
  KEY `FK_ ADDRESS_ORDER_DETAILS` (`address_id`),
  CONSTRAINT `FK_ ADDRESS_ORDER_DETAILS` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ORDER_ORDER_DETAILS` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_USER_ORDER_DETAILS` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: order_item
#

DROP TABLE IF EXISTS `order_item`;

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `classified_product_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price_per_unit` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_PRODUCT_ORDER_ITEM` (`product_id`),
  KEY `FK_CLASSIFIED_PRODUCT_ORDER_ITEM` (`classified_product_id`),
  KEY `FK_ORDER_ORDER_ITEM` (`order_id`),
  CONSTRAINT `FK_CLASSIFIED_PRODUCT_ORDER_ITEM` FOREIGN KEY (`classified_product_id`) REFERENCES `classified_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ORDER_ORDER_ITEM` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PRODUCT_ORDER_ITEM` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1201 DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: order_status
#

DROP TABLE IF EXISTS `order_status`;

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO `order_status` (`id`, `status`) VALUES (1, 'Ut eligendi et labore occaecati saepe corrupt');
INSERT INTO `order_status` (`id`, `status`) VALUES (2, 'Distinctio ea dolor deleniti consequatur itaq');
INSERT INTO `order_status` (`id`, `status`) VALUES (3, 'Et sit et eum itaque voluptatem qui. Et aut s');
INSERT INTO `order_status` (`id`, `status`) VALUES (4, 'Dignissimos aliquam qui corporis magnam non e');
INSERT INTO `order_status` (`id`, `status`) VALUES (5, 'Nobis consequatur nihil a voluptatem. Iusto a');
INSERT INTO `order_status` (`id`, `status`) VALUES (6, 'Ratione eaque et voluptas rerum magni. Soluta');
INSERT INTO `order_status` (`id`, `status`) VALUES (7, 'Quam dolorum et voluptatum nemo doloribus et ');
INSERT INTO `order_status` (`id`, `status`) VALUES (8, 'Odit architecto laboriosam nihil fuga incidun');
INSERT INTO `order_status` (`id`, `status`) VALUES (9, 'Voluptas neque nam quia sunt voluptates aliqu');
INSERT INTO `order_status` (`id`, `status`) VALUES (10, 'Voluptates ut beatae error nihil possimus. Do');
INSERT INTO `order_status` (`id`, `status`) VALUES (11, 'Sunt tempora quia repellendus ea tenetur enim');
INSERT INTO `order_status` (`id`, `status`) VALUES (12, 'Est quis dolor fugiat. Doloribus ea et doloru');
INSERT INTO `order_status` (`id`, `status`) VALUES (13, 'Sed vel rerum veritatis sunt itaque aperiam d');
INSERT INTO `order_status` (`id`, `status`) VALUES (14, 'Facilis officia in nisi totam repudiandae qui');
INSERT INTO `order_status` (`id`, `status`) VALUES (15, 'Aut nesciunt libero impedit eaque dolorum. Te');
INSERT INTO `order_status` (`id`, `status`) VALUES (16, 'Animi eaque ducimus eos voluptatem ad occaeca');
INSERT INTO `order_status` (`id`, `status`) VALUES (17, 'Dolor in sed fugit reprehenderit repudiandae ');
INSERT INTO `order_status` (`id`, `status`) VALUES (18, 'Sit repellat iusto optio. Perspiciatis accusa');
INSERT INTO `order_status` (`id`, `status`) VALUES (19, 'Tempora natus nobis aliquid rerum eum numquam');
INSERT INTO `order_status` (`id`, `status`) VALUES (20, 'Debitis deserunt distinctio sapiente delectus');
INSERT INTO `order_status` (`id`, `status`) VALUES (21, 'Error quia eum quibusdam consequuntur rem mai');
INSERT INTO `order_status` (`id`, `status`) VALUES (22, 'Ut necessitatibus quasi nihil sequi libero cu');
INSERT INTO `order_status` (`id`, `status`) VALUES (23, 'Dignissimos fugiat et harum occaecati et. Aut');
INSERT INTO `order_status` (`id`, `status`) VALUES (24, 'Hic cumque provident earum. Dolorum voluptate');
INSERT INTO `order_status` (`id`, `status`) VALUES (25, 'Hic qui corrupti aut provident commodi. Illum');
INSERT INTO `order_status` (`id`, `status`) VALUES (26, 'Provident animi enim porro sint. Alias dolor ');
INSERT INTO `order_status` (`id`, `status`) VALUES (27, 'Numquam quod et quia. Nihil aliquid a impedit');
INSERT INTO `order_status` (`id`, `status`) VALUES (28, 'Eos officiis facere occaecati veniam eos. Vit');
INSERT INTO `order_status` (`id`, `status`) VALUES (29, 'Quo consequuntur ea explicabo et quia sint to');
INSERT INTO `order_status` (`id`, `status`) VALUES (30, 'Aliquid accusamus mollitia quae ea cumque qui');
INSERT INTO `order_status` (`id`, `status`) VALUES (31, 'Nobis dolorem sed sint voluptas. Excepturi qu');
INSERT INTO `order_status` (`id`, `status`) VALUES (32, 'Dicta dolores blanditiis consequatur temporib');
INSERT INTO `order_status` (`id`, `status`) VALUES (33, 'Provident eius ut aut corporis non. Odio expl');
INSERT INTO `order_status` (`id`, `status`) VALUES (34, 'Velit eos aut reiciendis aliquid unde consequ');
INSERT INTO `order_status` (`id`, `status`) VALUES (35, 'Reprehenderit asperiores voluptatem beatae pa');
INSERT INTO `order_status` (`id`, `status`) VALUES (36, 'Aut laborum nobis dolores. Voluptas ad nobis ');
INSERT INTO `order_status` (`id`, `status`) VALUES (37, 'Distinctio suscipit beatae unde inventore mol');
INSERT INTO `order_status` (`id`, `status`) VALUES (38, 'Exercitationem dignissimos omnis officia quia');
INSERT INTO `order_status` (`id`, `status`) VALUES (39, 'Nesciunt dignissimos reprehenderit reiciendis');
INSERT INTO `order_status` (`id`, `status`) VALUES (40, 'Fugiat sequi aut molestiae temporibus tempore');
INSERT INTO `order_status` (`id`, `status`) VALUES (41, 'A maiores exercitationem consequatur. Fugiat ');
INSERT INTO `order_status` (`id`, `status`) VALUES (42, 'Asperiores quia tempore architecto consequunt');
INSERT INTO `order_status` (`id`, `status`) VALUES (43, 'Odio incidunt officiis ut soluta. Voluptate e');
INSERT INTO `order_status` (`id`, `status`) VALUES (44, 'Fugiat et quas sint ea dolor magni ipsum. Ut ');
INSERT INTO `order_status` (`id`, `status`) VALUES (45, 'Nemo perspiciatis qui dolore rem dolorum illu');
INSERT INTO `order_status` (`id`, `status`) VALUES (46, 'Aliquam iusto quo ea qui fugit. Nihil porro d');
INSERT INTO `order_status` (`id`, `status`) VALUES (47, 'Voluptates voluptatem illo possimus dolor. Fu');
INSERT INTO `order_status` (`id`, `status`) VALUES (48, 'Placeat numquam laboriosam dolore omnis nobis');
INSERT INTO `order_status` (`id`, `status`) VALUES (49, 'Et ipsum sed repellat rerum labore excepturi ');
INSERT INTO `order_status` (`id`, `status`) VALUES (50, 'Quia et repellendus ex minus. Inventore tempo');
INSERT INTO `order_status` (`id`, `status`) VALUES (51, 'Eum et repudiandae magnam enim. Rerum sint vo');
INSERT INTO `order_status` (`id`, `status`) VALUES (52, 'Dolorem debitis sed et quia est totam. Consec');
INSERT INTO `order_status` (`id`, `status`) VALUES (53, 'Omnis impedit quis occaecati sit. Eius nihil ');
INSERT INTO `order_status` (`id`, `status`) VALUES (54, 'Debitis quis facilis praesentium impedit. Dol');
INSERT INTO `order_status` (`id`, `status`) VALUES (55, 'Omnis consequatur et laborum ducimus nemo. Su');
INSERT INTO `order_status` (`id`, `status`) VALUES (56, 'Et doloremque tenetur recusandae ea. Fugit ea');
INSERT INTO `order_status` (`id`, `status`) VALUES (57, 'Est rerum deleniti itaque ipsa laboriosam. Te');
INSERT INTO `order_status` (`id`, `status`) VALUES (58, 'Aperiam quos ab enim tempore. Voluptas ut tot');
INSERT INTO `order_status` (`id`, `status`) VALUES (59, 'Nisi voluptatibus qui voluptatem ea labore vo');
INSERT INTO `order_status` (`id`, `status`) VALUES (60, 'Quasi ut repudiandae maxime non. Alias unde v');
INSERT INTO `order_status` (`id`, `status`) VALUES (61, 'Minus eligendi magnam excepturi est sint itaq');
INSERT INTO `order_status` (`id`, `status`) VALUES (62, 'Occaecati rerum laboriosam non. Earum omnis d');
INSERT INTO `order_status` (`id`, `status`) VALUES (63, 'Molestiae explicabo ad et qui sunt itaque. Qu');
INSERT INTO `order_status` (`id`, `status`) VALUES (64, 'Non rerum possimus molestiae aspernatur volup');
INSERT INTO `order_status` (`id`, `status`) VALUES (65, 'Quo et tempora perspiciatis quae labore amet ');
INSERT INTO `order_status` (`id`, `status`) VALUES (66, 'Aliquid dolorem a fuga. Debitis enim eveniet ');
INSERT INTO `order_status` (`id`, `status`) VALUES (67, 'Earum perspiciatis illo architecto debitis at');
INSERT INTO `order_status` (`id`, `status`) VALUES (68, 'Et odit explicabo asperiores quis. Aliquid do');
INSERT INTO `order_status` (`id`, `status`) VALUES (69, 'Aut enim voluptatum quo. Qui voluptatum non e');
INSERT INTO `order_status` (`id`, `status`) VALUES (70, 'Vel et officiis soluta assumenda fugit. Aut s');
INSERT INTO `order_status` (`id`, `status`) VALUES (71, 'Id natus dolor quia sit et voluptatum quos. I');
INSERT INTO `order_status` (`id`, `status`) VALUES (72, 'Ut cumque aut commodi occaecati vitae ipsa. Q');
INSERT INTO `order_status` (`id`, `status`) VALUES (73, 'Ullam impedit non minima porro expedita. Dolo');
INSERT INTO `order_status` (`id`, `status`) VALUES (74, 'Et voluptates alias itaque. Quo placeat moles');
INSERT INTO `order_status` (`id`, `status`) VALUES (75, 'Voluptas perferendis nostrum eos quisquam eni');
INSERT INTO `order_status` (`id`, `status`) VALUES (76, 'Accusamus nesciunt aut laudantium fugiat itaq');
INSERT INTO `order_status` (`id`, `status`) VALUES (77, 'Similique molestiae vitae earum illo id dolor');
INSERT INTO `order_status` (`id`, `status`) VALUES (78, 'Illum ratione sunt ex recusandae ad nam. Eaqu');
INSERT INTO `order_status` (`id`, `status`) VALUES (79, 'Adipisci maiores quia hic et. Eum error quia ');
INSERT INTO `order_status` (`id`, `status`) VALUES (80, 'Voluptatem modi sint quia delectus voluptatum');
INSERT INTO `order_status` (`id`, `status`) VALUES (81, 'Dicta tenetur doloremque commodi minima. Cons');
INSERT INTO `order_status` (`id`, `status`) VALUES (82, 'Magnam hic aliquam assumenda eum et optio. Qu');
INSERT INTO `order_status` (`id`, `status`) VALUES (83, 'Omnis quisquam aut incidunt asperiores sed sa');
INSERT INTO `order_status` (`id`, `status`) VALUES (84, 'Atque fugit rerum praesentium libero est. Err');
INSERT INTO `order_status` (`id`, `status`) VALUES (85, 'Et dolores commodi et. Est ut quos nemo rerum');
INSERT INTO `order_status` (`id`, `status`) VALUES (86, 'Voluptas fuga ipsam aut aliquid laboriosam. A');
INSERT INTO `order_status` (`id`, `status`) VALUES (87, 'Eaque velit asperiores sed earum ratione dolo');
INSERT INTO `order_status` (`id`, `status`) VALUES (88, 'Animi molestias culpa amet eum. Beatae beatae');
INSERT INTO `order_status` (`id`, `status`) VALUES (89, 'Magnam quod dolorem quos sunt possimus rem re');
INSERT INTO `order_status` (`id`, `status`) VALUES (90, 'Ut modi quia voluptatem asperiores veniam. Qu');
INSERT INTO `order_status` (`id`, `status`) VALUES (91, 'Ut sunt nobis dolor nihil. Aut consectetur sa');
INSERT INTO `order_status` (`id`, `status`) VALUES (92, 'Culpa nihil doloremque non saepe. Consequatur');
INSERT INTO `order_status` (`id`, `status`) VALUES (93, 'Architecto veniam ducimus quia ut est. Debiti');
INSERT INTO `order_status` (`id`, `status`) VALUES (94, 'Non occaecati odit est qui ea veritatis. Impe');
INSERT INTO `order_status` (`id`, `status`) VALUES (95, 'Sequi dolorem est ut hic fugit. Iusto non odi');
INSERT INTO `order_status` (`id`, `status`) VALUES (96, 'Quaerat eum qui voluptatem veniam non. Aspern');
INSERT INTO `order_status` (`id`, `status`) VALUES (97, 'Similique est illum excepturi vel aut et repe');
INSERT INTO `order_status` (`id`, `status`) VALUES (98, 'Vel quaerat in odio unde omnis facilis ea. Re');
INSERT INTO `order_status` (`id`, `status`) VALUES (99, 'Harum corporis doloribus maxime non sequi qui');
INSERT INTO `order_status` (`id`, `status`) VALUES (100, 'Non iusto molestiae quia. Et nam ab molestias');


#
# TABLE STRUCTURE FOR: orders
#

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_status_id` int(11) NOT NULL,
  `shipper_id` int(11) NOT NULL,
  `submit_date` date NOT NULL,
  `estimated_days` int(11) NOT NULL,
  `delivery_date` date NOT NULL,
  `last_status_update_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ORDER_STATUS_ORDER` (`order_status_id`),
  KEY `FK_SHIPPER_ORDER` (`shipper_id`),
  CONSTRAINT `FK_ORDER_STATUS_ORDER` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_SHIPPER_ORDER` FOREIGN KEY (`shipper_id`) REFERENCES `shipper` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (1, 1, 1, '1989-02-05', 8, '2004-10-29', '1999-12-08');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (2, 2, 2, '2018-02-09', 4, '1983-06-26', '2013-08-26');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (3, 3, 3, '2018-06-14', 1, '2011-01-10', '1996-10-26');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (4, 4, 4, '2019-07-09', 8, '1994-03-13', '1997-08-09');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (5, 5, 5, '1988-02-17', 9, '1974-06-21', '1988-01-28');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (6, 6, 6, '1970-04-30', 4, '2019-04-15', '1973-06-17');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (7, 7, 7, '2015-07-16', 8, '1984-04-13', '2014-05-17');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (8, 8, 8, '2009-06-27', 6, '2007-08-02', '2020-05-17');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (9, 9, 9, '2016-10-23', 2, '2020-06-12', '2016-10-02');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (10, 10, 10, '1986-07-04', 2, '1987-01-04', '2004-07-24');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (11, 11, 11, '1975-05-19', 2, '2020-01-27', '1976-02-29');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (12, 12, 12, '1990-09-04', 8, '2010-11-27', '1988-01-17');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (13, 13, 13, '1980-01-10', 7, '2005-06-20', '2005-11-08');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (14, 14, 14, '2017-12-03', 7, '1979-04-15', '2004-12-29');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (15, 15, 15, '1986-01-14', 2, '1973-12-15', '1979-01-26');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (16, 16, 16, '2017-08-01', 5, '2007-05-03', '1996-02-22');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (17, 17, 17, '1971-02-01', 7, '1976-01-16', '1979-10-06');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (18, 18, 18, '1970-10-07', 2, '1983-05-24', '1976-05-16');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (19, 19, 19, '1982-08-26', 8, '1989-04-08', '1991-12-20');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (20, 20, 20, '1982-06-04', 4, '1971-09-02', '2011-04-25');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (21, 21, 21, '1979-05-03', 0, '1992-06-22', '1971-05-18');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (22, 22, 22, '1987-03-31', 1, '1990-07-09', '1983-11-24');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (23, 23, 23, '1986-08-01', 3, '2015-08-03', '1988-06-24');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (24, 24, 24, '2009-08-28', 5, '1973-04-14', '2005-12-22');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (25, 25, 25, '2013-10-17', 6, '1976-11-30', '1983-06-22');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (26, 26, 26, '1980-06-06', 2, '1975-10-22', '2009-04-09');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (27, 27, 27, '1976-02-06', 6, '1986-10-28', '1985-01-20');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (28, 28, 28, '1992-07-31', 8, '1982-10-08', '1987-08-16');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (29, 29, 29, '1974-03-08', 0, '2019-08-07', '2018-11-04');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (30, 30, 30, '1985-07-19', 0, '1981-12-07', '1970-07-14');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (31, 31, 31, '1982-12-23', 0, '1986-07-27', '2014-02-09');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (32, 32, 32, '1986-10-07', 8, '1975-07-23', '1981-05-05');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (33, 33, 33, '2012-04-09', 5, '2002-08-17', '1988-11-26');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (34, 34, 34, '2001-04-04', 3, '2014-09-17', '1982-03-15');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (35, 35, 35, '2003-08-05', 6, '1989-07-18', '1992-08-29');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (36, 36, 36, '1971-04-03', 7, '2007-07-25', '1991-06-28');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (37, 37, 37, '2010-07-11', 8, '1990-07-01', '1974-09-09');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (38, 38, 38, '2004-10-27', 3, '1970-11-24', '2008-03-19');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (39, 39, 39, '2008-01-16', 2, '1975-06-24', '1995-05-21');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (40, 40, 40, '2009-07-31', 2, '1991-03-23', '1989-04-20');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (41, 41, 41, '1999-04-08', 7, '1980-04-26', '2005-03-15');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (42, 42, 42, '1977-08-02', 7, '2007-01-15', '1982-02-05');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (43, 43, 43, '1981-11-10', 1, '1987-09-07', '1985-12-24');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (44, 44, 44, '1978-08-29', 3, '2015-10-08', '2009-12-22');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (45, 45, 45, '1986-08-14', 2, '2005-01-26', '2015-11-29');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (46, 46, 46, '1975-07-14', 9, '1993-06-24', '2013-01-05');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (47, 47, 47, '1996-07-17', 9, '1970-01-15', '1975-12-01');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (48, 48, 48, '1998-10-26', 0, '1995-02-18', '1999-07-08');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (49, 49, 49, '2011-06-23', 6, '2001-11-30', '1999-05-01');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (50, 50, 50, '1971-01-26', 6, '2012-04-18', '1989-02-13');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (51, 51, 51, '1981-08-09', 1, '1986-10-13', '1978-09-05');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (52, 52, 52, '1983-10-12', 5, '2019-07-02', '1997-12-27');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (53, 53, 53, '2005-10-08', 6, '1972-03-25', '1989-08-19');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (54, 54, 54, '2002-12-09', 7, '1989-06-12', '1983-12-23');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (55, 55, 55, '1982-10-23', 9, '2004-04-13', '2010-12-26');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (56, 56, 56, '1981-08-19', 9, '1984-01-13', '2019-10-01');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (57, 57, 57, '1999-09-03', 9, '1985-07-22', '1984-10-18');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (58, 58, 58, '1979-02-13', 3, '2018-12-26', '1971-07-21');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (59, 59, 59, '1994-07-05', 6, '2009-06-10', '1970-08-04');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (60, 60, 60, '2018-06-18', 6, '1998-04-05', '1997-03-07');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (61, 61, 61, '1988-11-12', 0, '2014-03-03', '1977-09-25');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (62, 62, 62, '2000-07-26', 4, '1993-12-18', '2005-09-04');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (63, 63, 63, '2011-06-04', 4, '1986-03-22', '1974-05-29');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (64, 64, 64, '1977-11-16', 9, '1985-05-15', '1977-09-23');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (65, 65, 65, '1998-12-27', 8, '2019-11-08', '1983-05-10');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (66, 66, 66, '2013-03-21', 5, '1981-06-15', '2012-06-25');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (67, 67, 67, '2008-06-26', 2, '1997-11-06', '1987-01-30');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (68, 68, 68, '2004-02-05', 2, '1986-11-14', '1988-02-20');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (69, 69, 69, '1980-11-12', 4, '2000-04-30', '2001-01-23');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (70, 70, 70, '2017-05-30', 5, '2010-06-10', '1992-06-02');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (71, 71, 71, '2002-05-17', 9, '2000-09-01', '2000-05-24');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (72, 72, 72, '2001-10-19', 6, '1973-08-14', '1970-10-11');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (73, 73, 73, '2014-08-08', 9, '1988-12-17', '1994-11-09');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (74, 74, 74, '2017-10-19', 3, '1979-09-02', '2011-09-30');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (75, 75, 75, '2003-01-28', 1, '1974-01-25', '1991-03-05');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (76, 76, 76, '1982-10-30', 2, '1986-03-16', '1973-10-10');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (77, 77, 77, '2018-12-18', 8, '2012-05-06', '2002-04-06');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (78, 78, 78, '2018-07-22', 0, '2010-06-04', '1980-01-31');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (79, 79, 79, '1985-10-04', 7, '1998-11-25', '1984-05-31');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (80, 80, 80, '1972-01-22', 0, '1993-06-10', '2018-03-06');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (81, 81, 81, '1980-02-14', 0, '1992-09-09', '1990-09-01');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (82, 82, 82, '2001-06-06', 7, '2001-12-27', '1984-03-03');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (83, 83, 83, '1977-05-17', 0, '1970-10-06', '1997-06-18');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (84, 84, 84, '1981-01-31', 8, '1985-09-17', '2002-06-12');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (85, 85, 85, '1990-09-11', 8, '2017-12-10', '1971-03-17');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (86, 86, 86, '1970-12-07', 0, '2013-06-16', '2004-02-09');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (87, 87, 87, '1981-02-04', 8, '2019-04-30', '1976-08-28');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (88, 88, 88, '2004-05-11', 5, '1991-09-21', '1992-12-29');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (89, 89, 89, '2011-06-07', 1, '1979-11-21', '1999-06-19');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (90, 90, 90, '1976-02-05', 4, '2019-10-15', '1985-12-12');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (91, 91, 91, '2010-09-30', 6, '1987-01-18', '1995-04-23');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (92, 92, 92, '2002-08-07', 0, '2018-10-18', '1980-03-16');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (93, 93, 93, '2012-05-30', 7, '1995-12-05', '1971-04-25');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (94, 94, 94, '1996-02-06', 8, '1995-03-18', '2007-04-25');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (95, 95, 95, '1978-11-07', 7, '1979-01-27', '2017-10-20');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (96, 96, 96, '1985-02-27', 9, '2006-01-23', '1970-01-29');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (97, 97, 97, '2001-05-12', 8, '1999-03-22', '1970-09-11');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (98, 98, 98, '1991-06-29', 7, '1997-04-21', '1981-01-12');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (99, 99, 99, '2010-06-17', 1, '1973-02-11', '1985-12-02');
INSERT INTO `orders` (`id`, `order_status_id`, `shipper_id`, `submit_date`, `estimated_days`, `delivery_date`, `last_status_update_date`) VALUES (100, 100, 100, '1998-04-07', 6, '1988-11-10', '1988-06-13');


#
# TABLE STRUCTURE FOR: product
#

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(250) NOT NULL,
  `min_stock` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_CATEGORY_PRODUCT` (`category_id`),
  CONSTRAINT `FK_CATEGORY_PRODUCT` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (1, 1, 'vel', 'Accusamus vero quibusdam corrupti aliquid voluptatum consequatur. Ex odio ex et non dolor facere corrupti. Eligendi earum dolores eligendi hic enim sed. Perferendis hic laudantium perferendis quia ut doloremque. Libero doloremque hic voluptas et simi', 8);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (2, 2, 'rerum', 'Aut provident aliquam iusto nihil tempora molestiae. Quam sed cumque occaecati voluptas quia eaque.', 9);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (3, 3, 'et', 'Explicabo deserunt rerum itaque officiis non aspernatur excepturi corporis. Aut et ullam eum sed. Alias aliquid quis asperiores. Architecto nisi assumenda laborum animi. Excepturi soluta veritatis et.', 7);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (4, 4, 'quia', 'Nisi aut dolore aut aspernatur natus iure possimus. Vel eos enim voluptates necessitatibus nisi et. Officiis ab cupiditate ut animi similique.', 6);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (5, 5, 'id', 'Sed nulla saepe et at corrupti quia sit. Qui officiis impedit exercitationem hic cumque. Et consequatur cumque iste assumenda. Nihil ex explicabo fugit ut rerum vel temporibus. Officiis quaerat magni quaerat iste numquam quaerat.', 7);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (6, 6, 'ab', 'Adipisci dolor atque sapiente aspernatur molestiae veritatis voluptas repellat. Eaque quaerat aut et qui a reprehenderit sed. Natus dicta dolor nostrum dignissimos. Non nobis eaque nam consectetur quaerat.', 4);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (7, 7, 'voluptas', 'Corporis sit est ut sequi magnam. Eius quas iure sequi repellendus quo ut. Eum doloremque iusto sed odio quo voluptatem. Iusto ea dolores debitis corporis.', 2);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (8, 8, 'repellat', 'Reprehenderit ipsam sunt dolorem quod nostrum quis quidem. Ut eaque et autem qui veritatis. Labore nihil quae tenetur ea omnis id vitae.', 8);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (9, 9, 'perspiciatis', 'Rerum quis error repellendus aperiam quo et. Et omnis eveniet quis consequatur. Fugiat non ducimus aut omnis. Sunt voluptate voluptate laudantium perspiciatis aut saepe.', 6);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (10, 10, 'velit', 'Sit sint mollitia incidunt nulla in totam incidunt in. Ipsam est enim ea reiciendis. Recusandae autem dolorem deleniti impedit fuga et. Alias tempore modi qui rerum at alias nam.', 3);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (11, 11, 'officiis', 'Repudiandae blanditiis delectus a ratione voluptatem voluptas autem. Sapiente maiores rem possimus harum aut. Soluta temporibus consequatur nobis qui maxime harum autem voluptatibus.', 9);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (12, 12, 'repellat', 'Et aut dolores illo pariatur magni vel expedita. Et nostrum ad voluptatem maxime consectetur atque. Minima et sequi voluptas.', 1);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (13, 13, 'eum', 'Ut neque deleniti maiores sed magnam eligendi. Eligendi occaecati voluptatem error quia et officia et. Laborum consectetur similique et tempora hic et eius.', 5);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (14, 14, 'facilis', 'Facilis recusandae enim magnam nihil suscipit minima corrupti explicabo. Minima ut est quas consequatur. Dolores excepturi vitae qui vitae et nesciunt eos.', 9);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (15, 15, 'optio', 'Fugiat omnis hic eum incidunt odit. Sed dignissimos neque dolores sapiente tempora nam. Amet deleniti quis nam sint sint.', 4);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (16, 16, 'sint', 'In maxime consequatur autem qui quasi qui aliquam. Molestiae necessitatibus non quis corrupti cum. Illum asperiores quas corporis. Odit sint assumenda voluptates voluptatum.', 1);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (17, 17, 'libero', 'Nesciunt eum aut illum rerum vero. Deserunt adipisci ad consequatur sunt.', 1);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (18, 18, 'quia', 'Aut quaerat consequatur maiores omnis error repellat id delectus. Aut dolor in ullam quae autem a at. Est sint amet harum. Eum perferendis praesentium illo eos commodi sed facere.', 6);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (19, 19, 'maxime', 'Est qui consequuntur quis quas voluptas quo dolorum. Ullam fugit et vel culpa nobis rerum cupiditate blanditiis. Omnis ipsum illum et. Est ipsam repellat velit sint.', 0);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (20, 20, 'beatae', 'Quia magni ea doloribus. Ex dignissimos quia omnis dolores.', 3);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (21, 21, 'et', 'Qui veritatis aut aut dicta debitis. Est sequi in porro vero inventore odit molestias. Voluptas ab aspernatur non dolores.', 9);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (22, 22, 'consequuntur', 'Eos praesentium culpa quas impedit animi architecto modi et. Facilis odit incidunt aut qui. Amet omnis ipsa officiis veritatis. Deserunt quia itaque quisquam at sunt et.', 8);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (23, 23, 'quidem', 'Labore qui illo fuga sunt in culpa aut ipsum. Rem in possimus sequi sed quo consequatur veritatis. Nesciunt quia nostrum corrupti tempora adipisci et.', 5);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (24, 24, 'voluptatem', 'Reiciendis similique itaque ratione nemo eos. Hic vitae ut quo quibusdam sit ex. Sed corporis impedit est sit laborum sed.', 0);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (25, 25, 'est', 'Sequi et sed eveniet nobis. Consectetur accusamus nisi eius et totam fuga vel. Sunt exercitationem nemo nam ut fugit ut quas fugit. Quis dolores et sint vitae provident.', 1);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (26, 26, 'atque', 'Consequuntur minus veniam facilis enim qui non et. Molestiae perspiciatis eos unde voluptas quia tempora dolor error. Ipsum enim voluptatem laboriosam ut id animi.', 0);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (27, 27, 'rem', 'Eius enim laboriosam laudantium. Iste aut libero pariatur illo mollitia.', 4);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (28, 28, 'necessitatibus', 'Eos eveniet necessitatibus quo nam non inventore. Eum quo neque autem magnam laboriosam hic. Tenetur omnis nisi sunt qui aut vel. Eos ut animi laborum totam.', 6);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (29, 29, 'recusandae', 'Ab et est beatae dicta. Et accusantium voluptatibus numquam qui reiciendis. Et saepe sunt quia.', 2);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (30, 30, 'facilis', 'Sed voluptatem delectus quam quia sapiente tempore est quasi. Non vitae autem id quam. Voluptas sint aliquam vel. Ullam eius error voluptate nihil.', 4);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (31, 31, 'excepturi', 'Eos molestiae ut ipsam ipsa dolor iusto. Provident voluptate impedit et quam quis ab. Fuga consequatur omnis illum.', 6);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (32, 32, 'est', 'In error eius aut architecto. Id in ut quisquam distinctio odio omnis dolore. Voluptates recusandae sit molestias sed non vitae perferendis et. Sint nulla vel omnis ad voluptatem officia.', 5);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (33, 33, 'ut', 'Laboriosam iste id sed optio sit odio corrupti. Dignissimos sit aut porro aut voluptas inventore. Totam dolores sed id provident dolorum.', 5);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (34, 34, 'beatae', 'Harum laudantium voluptatem unde sit facilis. Consequatur vel nesciunt repellat nobis laudantium inventore. Autem aperiam earum maxime fugit culpa eos. Aliquam ab odit officia praesentium.', 4);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (35, 35, 'aut', 'Id molestiae aperiam accusamus ea eius voluptatem expedita. Ut possimus ea fugit. Pariatur dolore doloremque officiis est voluptas. Et sint aut dolor. Ex ut qui quo earum vel odio saepe molestias.', 3);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (36, 36, 'unde', 'Repudiandae quo quo velit est facere quia. Pariatur at voluptatibus voluptatem reiciendis est excepturi. Aut quisquam possimus provident soluta. Unde sapiente ab recusandae maiores libero neque nobis.', 2);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (37, 37, 'aut', 'Ratione sed quibusdam voluptatem rem minus in. Aut vero non minus quia alias. Dolor ut distinctio odit tenetur est at veniam est. Quo ut sint amet.', 2);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (38, 38, 'dicta', 'Explicabo cumque vero autem autem. Necessitatibus facilis provident sint aliquid accusamus quod. Dicta non et dolor nemo.', 0);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (39, 39, 'quia', 'Dolor voluptatem maiores et dolorem. Voluptatem quasi qui voluptatem optio praesentium. Voluptatem sapiente itaque quo culpa ut.', 0);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (40, 40, 'ipsam', 'Occaecati et nihil ipsum rerum et aut. Eos ab est dolor nemo et deserunt nisi. Eius aliquid porro aut ea. Numquam porro et quas sed sunt dicta perspiciatis.', 4);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (41, 41, 'sapiente', 'Aut magni quis dignissimos quo. Dolores dolorum eum quaerat consequatur et dolorem ad perspiciatis. Ex veritatis aspernatur quos aut reprehenderit.', 9);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (42, 42, 'nostrum', 'Magni reprehenderit velit maxime eveniet dolor sed. Qui accusamus mollitia dolore quidem aut dolores eaque. Sequi molestiae error magnam assumenda sequi placeat perspiciatis. Eos asperiores laboriosam et ad dicta autem.', 2);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (43, 43, 'dicta', 'Quisquam modi enim sit praesentium. Dignissimos dolorem ipsam voluptatem dolorem sapiente architecto. Molestias rerum dolore soluta rerum distinctio quos.', 5);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (44, 44, 'illum', 'Vel vitae consequuntur qui atque quo doloribus eius dicta. Odio est corporis et et id expedita dicta. Voluptatem vitae harum ut qui id tenetur. Sed delectus nihil eos qui voluptatem aut. Omnis facilis enim ratione sit ut ut.', 4);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (45, 45, 'et', 'Dolor mollitia ut reprehenderit distinctio quo occaecati pariatur impedit. Qui labore quidem repellendus sit quia. In vitae est unde nihil est magnam nihil.', 3);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (46, 46, 'ut', 'Voluptates aperiam qui autem odit et recusandae. Aperiam voluptas quisquam eum earum quis.', 4);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (47, 47, 'minus', 'Sit quas consequatur enim nihil delectus commodi quo. Asperiores nostrum illo sit aut. Deserunt maiores earum reprehenderit quia qui. Exercitationem quo non autem sunt ut.', 1);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (48, 48, 'iure', 'Asperiores atque illo ut magnam. Vel quas in dolorem. Nihil qui quibusdam nostrum temporibus id adipisci temporibus autem. Dolor libero beatae at aut itaque.', 3);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (49, 49, 'earum', 'Laborum quia qui veritatis autem rem impedit. Eum esse totam nulla. Ab fugiat magnam aut sunt.', 6);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (50, 50, 'et', 'Sed et voluptatum labore quis. Quam incidunt veniam ut quo consequatur voluptates. Consequatur et voluptas architecto ex.', 7);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (51, 51, 'vitae', 'Similique a aut cupiditate quod ut. Fugiat qui nemo unde quod numquam eum voluptatum nesciunt.', 5);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (52, 52, 'iste', 'Error saepe laborum molestiae exercitationem. Aut nihil voluptas qui accusamus eum.', 3);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (53, 53, 'qui', 'Ducimus repellat nam iure non. Quia eum qui perferendis pariatur a. Et sunt ipsam tenetur vero beatae.', 2);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (54, 54, 'maiores', 'Facere ut quidem occaecati iste. Sed iure perspiciatis provident quia culpa. Sint nihil sed est et in ipsam nihil. Ratione dignissimos animi quos explicabo.', 8);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (55, 55, 'rerum', 'Commodi omnis sed ut culpa inventore ut totam. Libero neque ad illum deserunt quisquam esse.', 2);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (56, 56, 'nemo', 'Autem et nihil et. Illum et error nemo doloremque repellat iste. Nihil quaerat porro odio.', 7);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (57, 57, 'quidem', 'Rerum amet velit autem qui. Non asperiores et quia. Molestiae explicabo voluptate velit quia corrupti. Doloremque qui reprehenderit praesentium. Nihil repudiandae sunt autem quia qui qui.', 7);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (58, 58, 'voluptatum', 'Ipsam ullam rerum corporis ratione et. Harum excepturi porro totam et eum. Reprehenderit dolores nisi voluptas aut pariatur itaque dolorem. Unde molestias cumque in pariatur fugit ad. Odio pariatur quo sed.', 6);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (59, 59, 'doloribus', 'Voluptas consequatur fugit labore pariatur sapiente. Adipisci rerum perspiciatis et vero expedita ratione rem nam. Quibusdam dolorem natus iste et ut distinctio. Vero ut vero rem exercitationem.', 6);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (60, 60, 'omnis', 'Quia consequuntur id atque deleniti molestiae. Ullam occaecati laborum eos ut recusandae voluptas. Unde aspernatur delectus maiores impedit in laboriosam praesentium iusto. Voluptatem beatae sit ea perspiciatis vel.', 3);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (61, 61, 'ut', 'Libero et et laudantium soluta rerum. Sit quibusdam assumenda nesciunt deleniti iure. Inventore illum possimus rerum quisquam commodi est.', 0);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (62, 62, 'distinctio', 'Omnis et adipisci iure et. Ratione omnis officiis nam officia aut. Numquam autem asperiores maiores in dolor et. Amet omnis vero explicabo omnis sapiente debitis.', 0);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (63, 63, 'ab', 'Beatae ipsam cum dolorum est voluptate quae ut adipisci. Nam culpa illum quas quia sequi non.', 5);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (64, 64, 'error', 'Expedita aut ullam saepe. Doloremque id veniam sed. Dolore expedita sint soluta quis molestiae. Quia non recusandae et facere. Quis vel placeat quia temporibus mollitia molestiae sequi.', 4);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (65, 65, 'id', 'Repellendus expedita quia qui vitae nostrum omnis. Asperiores deserunt vitae id deserunt ab dolor ea nesciunt. Aperiam possimus porro quaerat quasi et aut quis. Aut laudantium eos error non occaecati.', 3);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (66, 66, 'aspernatur', 'Sint harum magni quidem est eum. Expedita voluptatibus hic velit quae natus. Architecto esse deserunt voluptatem.', 1);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (67, 67, 'qui', 'Et et sunt officiis repudiandae nemo aliquid nostrum. Deserunt qui odit officia explicabo nostrum quia.', 1);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (68, 68, 'illo', 'Sit odio veritatis ducimus ad quod quae tempore. Alias incidunt sed unde corrupti. In hic autem officiis laborum. Provident id totam quis possimus vel ut.', 6);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (69, 69, 'recusandae', 'Maiores iure dolorem sed reprehenderit quasi libero incidunt. Libero sed in qui.', 8);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (70, 70, 'provident', 'Aut explicabo sed delectus est molestias voluptatem. Consequatur beatae error est et repellat modi velit. Voluptas velit sed voluptatibus ipsam optio qui temporibus. Ipsam enim ipsam officiis doloribus amet est. Enim et nemo et facilis.', 6);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (71, 71, 'minus', 'Occaecati voluptas omnis sunt repudiandae. Iste exercitationem qui sint. Error optio quia harum libero saepe.', 0);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (72, 72, 'quasi', 'Quibusdam modi ut laborum cumque omnis et occaecati voluptates. Cupiditate ipsa saepe est quod atque debitis. Deserunt consequuntur reiciendis autem illum occaecati. Ea adipisci accusamus harum neque qui accusantium omnis ea.', 0);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (73, 73, 'provident', 'Dolorem voluptatem veritatis laborum. Vero et repellat sunt voluptatem libero sed. Voluptatem sed dolor quia occaecati est.', 4);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (74, 74, 'debitis', 'Quisquam repellendus facilis in asperiores sit laboriosam delectus incidunt. Rerum eos recusandae assumenda facere cumque aliquam aliquid. Ut aut aliquam autem rerum. Eos reprehenderit non deserunt enim nam voluptatum sunt itaque. Amet sed laudantium', 1);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (75, 75, 'voluptas', 'Rerum praesentium illo nam sit optio iusto et. Qui a dicta quo distinctio pariatur ducimus et. Sit fugit sit libero sunt adipisci aut aperiam. Saepe placeat quis culpa ut.', 8);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (76, 76, 'quia', 'Et minima dolorum et animi quod et. Debitis rerum impedit laborum. Exercitationem optio porro veniam quia perspiciatis cupiditate similique. Quia consequatur aliquam aut sed est sit repellendus.', 6);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (77, 77, 'molestiae', 'Culpa nisi et asperiores quis. Occaecati possimus officia numquam et. Cupiditate dolorem quibusdam porro et pariatur. Quae quia veritatis velit fugit rerum.', 3);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (78, 78, 'perspiciatis', 'Ut maiores rerum qui ratione recusandae. Maiores laboriosam incidunt molestiae maiores. Voluptas consequuntur fugiat ad itaque quidem. Iusto provident deserunt facilis dignissimos.', 6);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (79, 79, 'sunt', 'Cumque facere magnam ut id iure eos omnis et. Odio pariatur voluptatem voluptatem architecto aspernatur minus. Eos repellat quisquam rem aliquam reprehenderit id neque porro. Est nisi a vero velit quia quasi qui. Assumenda debitis expedita fugit alia', 6);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (80, 80, 'nam', 'Quo veritatis qui dolore. Eum voluptatem excepturi aut eligendi et. Ea accusantium quo nihil in aut autem. Nam possimus fugiat et optio id inventore.', 1);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (81, 81, 'blanditiis', 'Quia et aliquam alias dolores itaque. Qui qui voluptatem voluptate voluptatibus expedita expedita. Sunt nisi qui repudiandae est fugit assumenda. Modi eum esse quam omnis.', 9);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (82, 82, 'saepe', 'Sed dolore architecto enim ullam. Ut unde assumenda qui sit. Iusto culpa velit autem iste alias ullam aut.', 8);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (83, 83, 'in', 'Consequatur commodi officiis qui maiores. Deserunt et amet nihil praesentium amet vel. Sint et ut rerum fuga iure necessitatibus voluptas magnam.', 5);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (84, 84, 'et', 'Dolore id inventore maiores qui sit. Enim dolore ipsam culpa praesentium. Accusamus aspernatur in nostrum error debitis animi aut.', 4);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (85, 85, 'autem', 'Rerum vel ratione consequuntur ut quisquam. Nihil possimus totam ut voluptas. Quibusdam nihil consequuntur quis assumenda quia et ut. Corrupti velit beatae blanditiis.', 4);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (86, 86, 'fugiat', 'Quaerat occaecati ut quasi id. Maxime eos architecto voluptas omnis itaque. Amet officiis earum delectus repudiandae consequuntur. Sapiente et dolores sit aut adipisci officiis ut cumque.', 5);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (87, 87, 'voluptate', 'Et reprehenderit deleniti consequatur natus praesentium nemo recusandae. In dolor error qui porro. Id minima et voluptate omnis sequi aliquid. Ipsum ut aut qui assumenda deleniti est quae.', 8);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (88, 88, 'ipsam', 'Rerum doloremque esse et qui doloremque aut aut delectus. Qui architecto cum delectus est. Dolores placeat mollitia quis vel est voluptas.', 9);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (89, 89, 'doloremque', 'Cupiditate expedita culpa fugiat veritatis ratione mollitia ut. Vitae atque in et nulla quo perferendis temporibus. Voluptatum officia earum impedit quaerat.', 4);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (90, 90, 'et', 'Ut cum ut molestiae consequuntur aspernatur. Id nostrum occaecati totam neque ex animi ducimus. Odio ex ea unde necessitatibus ut beatae.', 8);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (91, 91, 'facere', 'Libero quam sint aliquid et dolores incidunt. Hic dolorum officiis distinctio et perspiciatis quibusdam. Ut iure consequuntur quia consequatur eum id modi aspernatur. Laboriosam officia animi eum repellat. Nulla consectetur nobis dolores aut ipsum es', 3);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (92, 92, 'est', 'Quo nobis sit voluptatibus et sapiente. Magnam quod incidunt blanditiis molestiae quod. Praesentium commodi fugit sed adipisci.', 8);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (93, 93, 'corporis', 'Corporis et illum laboriosam et eligendi. Ut est vero quisquam incidunt est natus rerum. Cum omnis ex aut eos. Possimus porro architecto assumenda deleniti perferendis ut.', 3);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (94, 94, 'sit', 'Ad voluptas aut minima laudantium veniam. Sint ut eveniet nisi iste dolor. Saepe sint velit non tempora assumenda minus quia. Molestias corporis dolores consequatur in qui perferendis cum.', 3);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (95, 95, 'aliquam', 'Voluptatibus illo et provident nihil odio exercitationem. Doloribus consequuntur beatae quam est. Suscipit accusamus aliquid porro maiores.', 4);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (96, 96, 'rerum', 'Inventore quidem a sint quisquam reiciendis. Eum illum aut ipsam qui consequuntur nesciunt odio quae. Odio est optio accusamus et ducimus iste. Ut enim voluptates quis est. Rerum cum illo sit animi laboriosam autem.', 6);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (97, 97, 'labore', 'Ex consequuntur ut minima consequuntur officia blanditiis aliquid. Fugit earum et accusamus magni perferendis et. Dolorem quo quia et et. Et nihil ullam id asperiores laudantium fugit voluptas aut.', 4);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (98, 98, 'consequatur', 'Ipsa sed ad deserunt dicta. Sequi autem dolorum sequi. Assumenda libero rerum occaecati vitae et. Delectus perspiciatis et quae molestiae error.', 2);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (99, 99, 'dolores', 'Facilis nostrum nisi eum non odit. Deleniti doloremque ipsum delectus quia necessitatibus. Natus excepturi veritatis sapiente suscipit nemo dignissimos. Et ut animi ut explicabo animi ipsa doloremque.', 0);
INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `min_stock`) VALUES (100, 100, 'ratione', 'Ipsam qui et minima error et voluptatibus error. Sed aperiam explicabo nihil facere velit sed. Rerum ut repellat illum ratione.', 7);


#
# TABLE STRUCTURE FOR: product_images
#

DROP TABLE IF EXISTS `product_images`;

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image_url` varchar(250) NOT NULL DEFAULT 'https://cdn.shopify.com/s/files/1/0046/3421/4518/products/Sailor-1911S-Fountain-pen---Transparent-Demo---Gold-Trim---14k-Nib.jpg?v=1562348464',
  PRIMARY KEY (`id`),
  KEY `FK_PRODUCT_PRODUCT_IMAGES` (`product_id`),
  CONSTRAINT `FK_PRODUCT_PRODUCT_IMAGES` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (1, 1, 'http://hirthe.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (2, 2, 'http://raynorlowe.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (3, 3, 'http://greenfelder.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (4, 4, 'http://kuphal.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (5, 5, 'http://hayes.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (6, 6, 'http://jakubowski.net/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (7, 7, 'http://www.stromanpouros.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (8, 8, 'http://dare.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (9, 9, 'http://schinner.org/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (10, 10, 'http://www.lind.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (11, 11, 'http://howellvandervort.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (12, 12, 'http://borer.biz/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (13, 13, 'http://www.von.info/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (14, 14, 'http://cummeratafunk.net/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (15, 15, 'http://www.okeefe.net/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (16, 16, 'http://anderson.org/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (17, 17, 'http://botsford.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (18, 18, 'http://www.barrows.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (19, 19, 'http://robel.info/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (20, 20, 'http://www.veumlesch.info/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (21, 21, 'http://emard.info/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (22, 22, 'http://leuschkehane.net/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (23, 23, 'http://bauch.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (24, 24, 'http://franecki.net/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (25, 25, 'http://emmerichromaguera.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (26, 26, 'http://bradtkemoen.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (27, 27, 'http://www.keeling.biz/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (28, 28, 'http://www.boyermante.net/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (29, 29, 'http://www.emmerich.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (30, 30, 'http://www.danielconn.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (31, 31, 'http://metz.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (32, 32, 'http://treutelbartell.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (33, 33, 'http://www.dickinson.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (34, 34, 'http://www.fahey.org/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (35, 35, 'http://hettinger.org/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (36, 36, 'http://www.fadel.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (37, 37, 'http://rowe.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (38, 38, 'http://www.howell.org/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (39, 39, 'http://www.mayerkulas.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (40, 40, 'http://murray.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (41, 41, 'http://rogahnoberbrunner.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (42, 42, 'http://www.gerlachlynch.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (43, 43, 'http://www.kshlerin.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (44, 44, 'http://www.feeney.info/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (45, 45, 'http://champlin.info/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (46, 46, 'http://www.pouros.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (47, 47, 'http://www.hirthe.net/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (48, 48, 'http://www.bartoletti.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (49, 49, 'http://ryan.net/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (50, 50, 'http://www.bechtelar.biz/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (51, 51, 'http://johnson.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (52, 52, 'http://fritsch.biz/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (53, 53, 'http://www.bahringer.org/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (54, 54, 'http://gusikowski.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (55, 55, 'http://legros.biz/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (56, 56, 'http://www.cormierkertzmann.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (57, 57, 'http://beahan.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (58, 58, 'http://kuphalhoeger.net/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (59, 59, 'http://www.kohlergutkowski.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (60, 60, 'http://www.kris.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (61, 61, 'http://gottlieb.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (62, 62, 'http://doyle.org/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (63, 63, 'http://kunze.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (64, 64, 'http://www.stark.biz/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (65, 65, 'http://gutkowski.org/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (66, 66, 'http://okunevabednar.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (67, 67, 'http://koch.org/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (68, 68, 'http://effertzreichel.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (69, 69, 'http://upton.org/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (70, 70, 'http://hodkiewicz.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (71, 71, 'http://www.pacocha.org/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (72, 72, 'http://fahey.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (73, 73, 'http://www.sanfordcarter.net/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (74, 74, 'http://www.roberts.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (75, 75, 'http://hackettwunsch.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (76, 76, 'http://www.balistreri.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (77, 77, 'http://eichmann.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (78, 78, 'http://www.shields.info/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (79, 79, 'http://hermann.net/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (80, 80, 'http://www.williamsonfadel.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (81, 81, 'http://www.balistrerimurray.biz/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (82, 82, 'http://shanahan.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (83, 83, 'http://okeefesteuber.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (84, 84, 'http://www.creminmarquardt.biz/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (85, 85, 'http://nienow.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (86, 86, 'http://hansen.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (87, 87, 'http://kuvalis.org/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (88, 88, 'http://www.smith.net/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (89, 89, 'http://www.heathcote.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (90, 90, 'http://www.blickjacobs.info/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (91, 91, 'http://www.gleichnerbednar.net/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (92, 92, 'http://bode.net/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (93, 93, 'http://bogisich.info/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (94, 94, 'http://konopelski.org/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (95, 95, 'http://feeney.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (96, 96, 'http://schinner.org/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (97, 97, 'http://www.cummerata.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (98, 98, 'http://hegmanndaugherty.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (99, 99, 'http://buckridge.com/');
INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES (100, 100, 'http://www.keebler.net/');


#
# TABLE STRUCTURE FOR: product_patch
#

DROP TABLE IF EXISTS `product_patch`;

CREATE TABLE `product_patch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `purchasing_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `date_in` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ADMIN_PRODUCT_PATCHES` (`user_id`),
  KEY `FK_PRODUCT_PRODUCT_PATCHES` (`product_id`),
  CONSTRAINT `FK_ADMIN_PRODUCT_PATCHES` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_PRODUCT_PRODUCT_PATCHES` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (1, 1, 1, 2, 1938, 0, '2005-10-04');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (2, 2, 2, 30, 73198295, 271505457, '1974-02-09');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (3, 3, 3, 1811980, 214, 28261414, '1972-02-21');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (4, 4, 4, 21, 42, 4, '2002-03-20');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (5, 5, 5, 86, 155590, 156, '1980-03-28');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (6, 6, 6, 408879, 43450, 3952520, '2018-07-06');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (7, 7, 7, 209707, 8, 217040315, '1987-11-20');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (8, 8, 8, 6379, 409807691, 10526, '2016-06-20');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (9, 9, 9, 0, 130813, 73443349, '1993-01-14');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (10, 10, 10, 1999, 0, 17, '2019-07-13');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (11, 11, 11, 0, 64878912, 26023, '1981-03-02');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (12, 12, 12, 30028, 45131, 7683649, '1990-02-16');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (13, 13, 13, 6, 12218203, 3, '1976-01-16');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (14, 14, 14, 52024194, 0, 607319114, '1981-06-07');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (15, 15, 15, 0, 437523139, 3489, '1984-09-09');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (16, 16, 16, 8923537, 301598, 6817, '2012-09-25');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (17, 17, 17, 245, 9, 4296988, '2014-06-15');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (18, 18, 18, 71177966, 435069, 26, '1970-06-12');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (19, 19, 19, 60444286, 0, 599613, '1994-02-22');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (20, 20, 20, 287, 0, 16115, '1986-07-03');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (21, 21, 21, 89129276, 27043, 2334, '2002-12-16');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (22, 22, 22, 362483, 2, 10, '1983-10-11');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (23, 23, 23, 0, 0, 3799315, '1973-09-30');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (24, 24, 24, 1001107, 19046619, 57, '1992-12-25');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (25, 25, 25, 128030430, 178, 8, '1983-03-12');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (26, 26, 26, 2, 11, 41723833, '2013-08-14');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (27, 27, 27, 516, 344917, 255, '1990-01-16');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (28, 28, 28, 518, 2420, 50344725, '1970-11-08');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (29, 29, 29, 39866, 6325, 9819, '2011-11-28');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (30, 30, 30, 93153, 10829706, 1, '1990-10-03');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (31, 31, 31, 124, 3156233, 14, '2020-06-02');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (32, 32, 32, 7877811, 26407, 817, '1982-12-10');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (33, 33, 33, 69382646, 498, 1, '1982-10-17');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (34, 34, 34, 0, 127936832, 1336, '2013-05-09');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (35, 35, 35, 3229, 8200, 379635, '1974-02-21');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (36, 36, 36, 0, 0, 4225457, '2010-08-28');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (37, 37, 37, 0, 4122, 162955, '2015-03-06');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (38, 38, 38, 193193, 3200275, 1793199, '1979-06-16');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (39, 39, 39, 33652096, 23, 0, '1994-01-12');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (40, 40, 40, 0, 0, 3455, '2004-03-04');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (41, 41, 41, 13240, 39241991, 52873086, '1971-12-06');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (42, 42, 42, 15973, 2390455, 1, '2016-12-06');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (43, 43, 43, 63800, 249, 4555382, '1970-05-14');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (44, 44, 44, 264615, 5613027, 10693, '2009-06-01');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (45, 45, 45, 19964, 369, 31021408, '2003-05-04');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (46, 46, 46, 0, 12083, 1120, '1977-03-13');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (47, 47, 47, 280, 0, 1, '1994-12-26');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (48, 48, 48, 19197, 644, 0, '2018-02-06');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (49, 49, 49, 2727, 614, 5522629, '1996-04-17');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (50, 50, 50, 0, 72181, 3, '2002-06-19');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (51, 51, 51, 1, 2287, 22585568, '1976-02-27');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (52, 52, 52, 99057, 1, 4608705, '1990-08-30');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (53, 53, 53, 0, 1914757, 0, '2001-10-12');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (54, 54, 54, 3026, 634626, 4897236, '2005-12-29');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (55, 55, 55, 1739554, 36, 8, '1990-04-29');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (56, 56, 56, 31970936, 11958, 4296, '1984-06-03');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (57, 57, 57, 762766, 506, 3, '2018-04-20');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (58, 58, 58, 1, 39285021, 2359482, '2006-12-09');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (59, 59, 59, 3730, 206, 460259, '1971-11-25');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (60, 60, 60, 581849773, 2439267, 441, '1994-06-12');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (61, 61, 61, 322471, 2, 290040933, '2014-05-30');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (62, 62, 62, 5281, 5664, 268, '2010-07-08');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (63, 63, 63, 1254421, 2, 724882790, '1987-03-14');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (64, 64, 64, 0, 478246, 458618, '1993-01-05');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (65, 65, 65, 6210339, 205, 847, '1989-03-08');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (66, 66, 66, 396309, 0, 3, '1986-03-09');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (67, 67, 67, 0, 1854, 6279, '1986-08-26');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (68, 68, 68, 1238, 0, 0, '2007-03-12');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (69, 69, 69, 8, 0, 17, '1973-07-06');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (70, 70, 70, 1207890, 53602148, 25112, '2014-09-05');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (71, 71, 71, 226, 141094, 170, '2003-07-07');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (72, 72, 72, 31173, 79566053, 3684, '1979-10-31');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (73, 73, 73, 42876, 23218670, 52161160, '2002-07-25');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (74, 74, 74, 0, 8355, 127, '2001-09-22');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (75, 75, 75, 493459, 331, 4, '2013-08-01');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (76, 76, 76, 29, 9832039, 457381964, '1997-03-03');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (77, 77, 77, 2379, 35519552, 3172, '1998-05-12');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (78, 78, 78, 771074922, 15923, 25593, '1996-10-20');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (79, 79, 79, 0, 2, 0, '2004-06-24');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (80, 80, 80, 247617, 43860, 1, '2017-04-02');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (81, 81, 81, 1547427, 146298183, 43527429, '1992-11-05');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (82, 82, 82, 25433179, 19586, 231, '1988-12-07');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (83, 83, 83, 465, 18, 6, '1973-04-10');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (84, 84, 84, 3, 17856579, 466368981, '2017-08-03');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (85, 85, 85, 4443538, 5, 0, '1987-02-09');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (86, 86, 86, 3, 2383816, 5599198, '1983-07-12');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (87, 87, 87, 15, 20100442, 0, '2003-05-08');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (88, 88, 88, 22303802, 0, 15423379, '1982-11-29');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (89, 89, 89, 10050, 3, 4216, '1974-10-11');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (90, 90, 90, 1, 56099219, 195, '2002-03-31');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (91, 91, 91, 0, 2, 853, '2003-02-22');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (92, 92, 92, 6230, 0, 60, '1974-05-27');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (93, 93, 93, 570507, 57630260, 0, '2005-12-10');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (94, 94, 94, 199815, 25, 0, '1999-03-22');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (95, 95, 95, 0, 76494, 0, '2008-02-16');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (96, 96, 96, 4, 3051241, 86, '1976-12-18');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (97, 97, 97, 4068634, 0, 642163, '1987-06-22');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (98, 98, 98, 640, 50277216, 4268, '1982-01-04');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (99, 99, 99, 15, 4223, 343094, '2000-07-06');
INSERT INTO `product_patch` (`id`, `user_id`, `product_id`, `quantity`, `purchasing_price`, `selling_price`, `date_in`) VALUES (100, 100, 100, 0, 1195352, 249318808, '1988-11-19');


#
# TABLE STRUCTURE FOR: shipper
#

DROP TABLE IF EXISTS `shipper`;

CREATE TABLE `shipper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `shipping_fees` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (1, 'molestiae', '(687)647-0804x4594', 18631, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (2, 'fuga', '03759082069', 316023971, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (3, 'provident', '(888)765-1713', 1121845, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (4, 'eos', '935-092-1810x6850', 1, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (5, 'qui', '(699)341-7544x194', 3102384, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (6, 'dignissimos', '506-231-9890', 2510, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (7, 'laborum', '468-097-9834x5698', 13769431, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (8, 'illum', '287.890.5633', 354, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (9, 'ea', '(403)922-9701', 35, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (10, 'nihil', '480-789-6137x577', 0, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (11, 'sunt', '1-399-175-2154', 298934, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (12, 'magni', '1-926-451-6535', 0, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (13, 'sed', '218-365-8271', 217407, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (14, 'culpa', '893.844.9721x7806', 11679, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (15, 'eum', '426-743-5771x7319', 0, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (16, 'sapiente', '+77(9)6492691506', 12915127, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (17, 'voluptatem', '437.023.6342x8204', 20065346, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (18, 'ullam', '+96(2)8488959007', 1, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (19, 'ex', '088-195-5907x17060', 754, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (20, 'beatae', '(195)888-6789x29209', 0, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (21, 'aut', '259-855-3327x74520', 1174634, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (22, 'quos', '1-321-749-0230', 0, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (23, 'doloremque', '+86(1)2441101048', 0, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (24, 'minima', '(187)221-7408', 38055, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (25, 'ad', '(371)991-8267x706', 35930852, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (26, 'sit', '313-133-3078x823', 729, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (27, 'qui', '545.204.6025', 58008, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (28, 'soluta', '874.605.4332x56492', 1, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (29, 'ipsa', '+63(2)3224273631', 5, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (30, 'expedita', '(429)249-5631', 508380257, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (31, 'ducimus', '1-262-292-1499x604', 0, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (32, 'sint', '890-093-7105x108', 3370960, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (33, 'qui', '860-947-0278', 0, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (34, 'possimus', '1-972-888-1252', 0, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (35, 'est', '408-739-0224', 10458818, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (36, 'molestias', '1-042-633-7594x9031', 1788, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (37, 'omnis', '468.955.9643x5099', 0, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (38, 'dolor', '1-816-368-5638', 18007, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (39, 'nisi', '741.160.9125x11068', 13307, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (40, 'modi', '836-977-5175x87678', 978, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (41, 'et', '1-446-881-2680x41011', 0, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (42, 'voluptas', '459.367.3961x103', 21, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (43, 'vel', '1-721-072-1449x0678', 822319, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (44, 'debitis', '983-065-0133', 41428653, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (45, 'qui', '808-964-1164', 510, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (46, 'non', '(908)580-5981', 14257935, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (47, 'eius', '212.753.0074x620', 38, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (48, 'porro', '(320)848-7938', 191878352, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (49, 'saepe', '052-922-2114x82111', 8314, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (50, 'ut', '1-345-329-1622x6826', 5795, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (51, 'atque', '1-566-839-4614x44406', 2, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (52, 'saepe', '+07(9)9522424192', 5457, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (53, 'labore', '(822)130-8721', 487310, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (54, 'temporibus', '558-491-9424x957', 318153, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (55, 'repellendus', '147.610.9178x3540', 0, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (56, 'voluptates', '789-129-7395x0149', 8096, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (57, 'consequatur', '543-287-9562x34170', 1005, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (58, 'iure', '+22(9)3222705434', 5614, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (59, 'tenetur', '127.578.3669x300', 11116809, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (60, 'nesciunt', '(323)936-1494', 9326295, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (61, 'molestias', '(715)062-4705x5884', 2209, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (62, 'tenetur', '102-387-3134', 53959, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (63, 'nihil', '(745)313-6743x3094', 4, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (64, 'sint', '(463)556-6681x63177', 68476784, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (65, 'et', '020-842-8053x413', 6548, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (66, 'quasi', '512-816-0145', 116577899, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (67, 'distinctio', '02326873402', 212, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (68, 'quaerat', '1-291-360-3219', 23162, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (69, 'doloremque', '1-355-180-7527x34285', 3725, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (70, 'aspernatur', '+94(1)9449320484', 387, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (71, 'et', '548-192-0034x489', 766230, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (72, 'voluptatibus', '062.715.2159x761', 689395, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (73, 'et', '(677)240-8418x744', 6, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (74, 'id', '876-372-4931', 0, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (75, 'suscipit', '(249)132-2643', 192, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (76, 'quis', '(978)624-5742x91684', 386, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (77, 'quia', '342-516-3028x194', 454, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (78, 'tempora', '098.370.2155x0928', 1016572, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (79, 'eius', '(175)048-0920x1669', 3, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (80, 'placeat', '(770)262-7609', 146189069, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (81, 'voluptatem', '899-767-3305', 577927907, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (82, 'ab', '103.117.4257x84436', 4656, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (83, 'necessitatibus', '1-551-127-0665', 356675, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (84, 'quod', '311.273.3336', 25317, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (85, 'accusantium', '279-190-6770', 55430, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (86, 'sed', '515.190.3398', 210349588, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (87, 'voluptas', '(394)718-3186x8761', 60108, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (88, 'quae', '884.465.3088', 253547, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (89, 'quia', '684-102-2033', 136144, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (90, 'delectus', '492-380-5775', 10684, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (91, 'quis', '(293)978-6206', 35, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (92, 'amet', '01157808097', 81080, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (93, 'consectetur', '(552)830-6065x590', 3766343, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (94, 'blanditiis', '1-700-403-9702x46555', 35809895, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (95, 'est', '1-447-507-8166', 114909, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (96, 'corporis', '1-978-021-1176', 279968, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (97, 'fuga', '959-285-1498x999', 0, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (98, 'dolorem', '06615895098', 886753, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (99, 'et', '1-637-558-8973x0352', 87844408, 0);
INSERT INTO `shipper` (`id`, `name`, `phone_number`, `shipping_fees`, `status`) VALUES (100, 'nam', '418-859-3453', 21543541, 0);


#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone_number1` varchar(45) DEFAULT NULL,
  `phone_number2` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `USER_EMAIL_UNIQUE` (`email`),
  KEY `FK_USER_USER_TYPE` (`user_type_id`),
  KEY `FK_USER_CART` (`cart_id`),
  CONSTRAINT `FK_USER_CART` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_USER_USER_TYPE` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (1, 1, 1, 'Alex', 'Zieme', 'bud78@example.org', '134.201.7344x3040', '386-286-2771x1452', '1099cc993c752e169397f51ddc6f2cbc79312365', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (2, 2, 2, 'Amber', 'Willms', 'janie05@example.org', '+36(1)0999778974', '359-021-0134x840', '43656e7be15b40e9f40cbca24f7d9f44626faa8b', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (3, 3, 3, 'Stella', 'Schulist', 'sibyl51@example.com', '590-929-5485x009', '(585)150-3721x02394', 'f4709d5487a52d39f5d153ce2e6aa299a711c735', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (4, 4, 4, 'Adrain', 'Runolfsdottir', 'ilene.rath@example.com', '197.168.6082x2702', '(480)282-8380', '1ec0599e90bca9bad55a7f7ac4dd50e8c6c640bc', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (5, 5, 5, 'Wilfredo', 'Brakus', 'barry.gorczany@example.net', '1-935-843-0288', '762.829.2241x9093', '9c31bd53167ff922b5be2cc29d1e01420d6f0bc6', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (6, 6, 6, 'Julie', 'Cremin', 'gwhite@example.com', '(716)421-2171x75168', '1-130-853-3239x81512', '6f1023f3351c3352f26669dc84b5095288c1c3ca', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (7, 7, 7, 'Brian', 'Kuphal', 'omann@example.org', '635.871.0952x307', '146-825-4900', '8f19027693f4614a40b29b5cd949ad5025cc85e4', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (8, 8, 8, 'Lizzie', 'Koepp', 'bessie.ebert@example.com', '565-989-3683', '294-619-6067', '7d09dbe8dc00f0a5873be57d81008a3d690514f6', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (9, 9, 9, 'Danny', 'Von', 'matteo.weimann@example.net', '(385)423-8503x0034', '183.138.8883x9329', '89035602523c165cef12cf6734779e1ccb305b42', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (10, 10, 10, 'Delphia', 'Wyman', 'spurdy@example.net', '807-757-6130', '500-539-2531x19818', 'faff70213b68e9c67c462e66bd6860ac13999f32', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (11, 11, 11, 'Molly', 'Klocko', 'shad52@example.net', '029-699-7320', '175-795-1963', '04e758a4c47b8c318544b43ff6218ba7d9357e43', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (12, 12, 12, 'Ova', 'DuBuque', 'sebastian02@example.net', '586.226.4605', '1-826-840-2860x3274', '27f56ab0948a7e7e9ca0c1ad4887666b460d4226', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (13, 13, 13, 'Dawson', 'Borer', 'pfay@example.net', '748-566-2578x3699', '598.593.8709x30841', '2a394158330497c60ca73869672ee6efd1ceda6b', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (14, 14, 14, 'Brandyn', 'Predovic', 'ronny.halvorson@example.org', '+36(1)9071538537', '529.061.5875', '3729491e339f7afe8f07e666d2a25d1751e742f0', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (15, 15, 15, 'Geoffrey', 'Orn', 'hconnelly@example.org', '569-344-2103x8024', '1-820-966-0431', 'dc38ae6e7352a3b0c0cb50d3cc51c1114d020b89', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (16, 16, 16, 'Rollin', 'Daugherty', 'bernhard81@example.net', '(746)381-3468', '583-061-7695x4618', 'ebec79b9d013c878f2f3f18a896940df8880172b', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (17, 17, 17, 'Osvaldo', 'Lind', 'shawna.mann@example.net', '(381)470-1780', '774-582-0828', '1e21162b30684eca55e088edcab9c3f336681716', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (18, 18, 18, 'Kacie', 'Rath', 'effertz.sanford@example.net', '1-621-569-2231x091', '503-260-3832x556', 'cb3bc1092af4473a2051a0439575c133489d7d9b', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (19, 19, 19, 'Ryleigh', 'Wolff', 'bjenkins@example.org', '124-607-4267x768', '1-738-619-8469', '3aa1c77200702f8bbcd31a52f44e945fcc67d45f', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (20, 20, 20, 'Douglas', 'Marks', 'wolff.jarred@example.net', '010.111.6301x63369', '035-338-2308', '31d54ff88d48aa79e790006aa070134dfe891b12', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (21, 21, 21, 'Braden', 'Stamm', 'schimmel.dariana@example.net', '+15(3)8991493872', '274.644.2320x348', '637ed04e340d9991943d212b143c3321b176e304', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (22, 22, 22, 'Clotilde', 'Dietrich', 'violette.krajcik@example.net', '532.626.3939', '571-810-9899', 'ddd302b8a6935b0204c4bb8cfd4459e7edc95e2d', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (23, 23, 23, 'Paige', 'Heathcote', 'anibal.becker@example.com', '228-495-9526x8264', '(888)943-0300x101', 'aacab70c85b1322aec93c49c8e463c2d3733969e', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (24, 24, 24, 'Bryon', 'Schamberger', 'monahan.liana@example.org', '790-419-6439x18153', '711-838-4945', 'be517b37c99857514dc4f6b92265b022d1cb80d1', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (25, 25, 25, 'Marta', 'Orn', 'citlalli.bergstrom@example.com', '+14(3)0492815322', '(085)898-6629x33196', 'fdd915def6bfc9497264e98776298758a6e1a4c6', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (26, 26, 26, 'Aric', 'Brown', 'lwilliamson@example.com', '1-749-411-6190x54568', '295-753-6526x6212', 'e000de7c82b5ad364660841493f91c12a8e2fa69', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (27, 27, 27, 'April', 'Douglas', 'pdickens@example.org', '613.891.2445x321', '03183251155', '24ad838a36e93fd17238939266f8389dc471bacf', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (28, 28, 28, 'Ethyl', 'Schaefer', 'daugherty.antone@example.com', '05282115844', '1-754-304-7222', '9af5b43b38908166cbd41ffb3aadaf1ef18bbd69', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (29, 29, 29, 'Roslyn', 'VonRueden', 'isabelle.bogan@example.net', '448.038.8091', '+68(4)3691940391', '227b22062d7968a22a653a7adec9a884af1e7ee4', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (30, 30, 30, 'Carlie', 'Block', 'yvonne.spinka@example.com', '313.648.3615', '1-587-051-6403x8968', 'ccd7850b30ae08af5688f1d946037393f19d62e5', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (31, 31, 31, 'Edwin', 'Reichert', 'hamill.branson@example.com', '122.528.1077', '576-350-8994', '189f5128e8651ed4fd815f2381b31d20df2e17c9', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (32, 32, 32, 'Caleigh', 'Turcotte', 'dare.taylor@example.net', '293.796.8277', '024-087-2569', '69a7e0e8caceb8443503d8b937ce853840732785', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (33, 33, 33, 'Olga', 'Yost', 'zwiza@example.org', '00127699034', '(913)508-5672x9503', '622989256b104a5eeaef79188ee0a4488b5c8ef4', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (34, 34, 34, 'Carlotta', 'Schneider', 'ldicki@example.com', '520.491.7636', '(326)118-7664x79178', '9e1573c2092d2d1e0533faf9a830f1cb1f3d6264', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (35, 35, 35, 'Adela', 'Mueller', 'leanna18@example.com', '00242950948', '644.815.7302x736', '71d712ff37f9270f1be445b9a546ffb3a046878d', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (36, 36, 36, 'Isobel', 'Hegmann', 'arielle95@example.net', '(849)941-4316x5366', '(965)073-3675', '5bb09b036abd05c0fa4fc23f29c8d5bd5e70e083', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (37, 37, 37, 'Savanah', 'White', 'alf.johnson@example.com', '691-140-7591', '1-156-402-8210', 'f812b7b0ca44b23c6244ec5389a91141245c5e34', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (38, 38, 38, 'Aliyah', 'Fahey', 'sipes.denis@example.org', '887-421-1556', '(242)626-5490x4689', 'ad8111b1ff8edfeeda5d81f971b0a1b0827cc1f0', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (39, 39, 39, 'Dereck', 'Cummerata', 'hartmann.madisen@example.org', '1-761-648-5614x8511', '02712890183', '8cd01ee1ab6d64876e56882fb369cedeb3c99027', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (40, 40, 40, 'Efren', 'Bartoletti', 'ugleason@example.org', '+34(0)4311705662', '939-528-8115', 'ff2f3efb682efcf809ed064c7c24ab8725d942a2', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (41, 41, 41, 'Hadley', 'Dibbert', 'larson.lurline@example.com', '496.056.5358', '00126802638', '55d5815a030ff0f2f6b7f5bfac2be12ca2079183', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (42, 42, 42, 'Osbaldo', 'Schiller', 'mrempel@example.com', '307.672.8848x3466', '(677)361-1355', '90de2074093d39cb4f8ceb8b13fadd72402d499c', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (43, 43, 43, 'Jacques', 'Walsh', 'green.arno@example.com', '1-929-792-1749x391', '(173)026-7845x2428', 'f2a22cae73354e873e1db2427788dd57ebc33a98', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (44, 44, 44, 'Delmer', 'Schowalter', 'brooks.konopelski@example.com', '023-195-4908', '1-203-134-9329x061', '0ea0efa261876b541243d7748b1933cf7d0cbb59', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (45, 45, 45, 'Alfonso', 'Harris', 'deonte.smitham@example.org', '+00(7)6821788079', '590-910-0768x89240', '7e5a21bd903e979f79e25b101bfa99a2100ab166', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (46, 46, 46, 'Alexanne', 'Hand', 'avon@example.net', '1-140-900-4051x66538', '(032)616-6830x94985', 'bf06a7bb347fef5f9bffc226c3f5dfe4c077d034', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (47, 47, 47, 'Emelia', 'Schmidt', 'baumbach.kailee@example.com', '530-430-7320x62933', '+62(4)3227798204', 'cff1a6940529caa4965f8f7d44e32a9a4cf0bc0e', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (48, 48, 48, 'Peter', 'Haag', 'shields.kacey@example.net', '(508)418-4386x56262', '651.891.2984x52512', 'cf74956de1681fd9a5d525387c16b1d6fe526bfa', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (49, 49, 49, 'Juvenal', 'Runolfsdottir', 'jabari.hudson@example.net', '114.818.5627x869', '(752)325-2382x68575', 'cb72a87aede009c66670ab453ac964b711e11bb8', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (50, 50, 50, 'Dock', 'Kris', 'mprohaska@example.org', '(574)740-5737x542', '155.547.2880x3776', '1f65ca049e1ac2ac2aea4ba048185968feaf3b67', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (51, 51, 51, 'Virginia', 'Larkin', 'pconn@example.net', '709-662-2366', '638-581-6163x831', '5a80920e22b26967cb948b09b70c2806f88bf8ac', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (52, 52, 52, 'Johathan', 'Becker', 'kyla.schinner@example.com', '(759)539-7220', '229.475.0230x41737', '410c59bb7e882e81f81ff70a00d8e66c544577d5', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (53, 53, 53, 'Mathilde', 'Renner', 'hyman.quitzon@example.com', '696-523-8749x955', '07211305918', '5e52041fb703033cde2cf8aec3aed978e16998bb', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (54, 54, 54, 'Tiffany', 'Metz', 'switting@example.com', '1-981-043-0462x08652', '(544)504-1123', '5f5885729f3290bc45a4683d6fff6343d7da8ef9', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (55, 55, 55, 'Leland', 'Tillman', 'ferne.torp@example.org', '022.788.2021', '1-743-610-1093', 'ebc5ff30379d516d5de8438d148c97b8db4a9533', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (56, 56, 56, 'Theresia', 'Reilly', 'mayra.walker@example.com', '(091)721-5273', '648.647.5479x748', '46c27fabc1e4ec2b7f2803e11c26f86633e871b1', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (57, 57, 57, 'Alena', 'Littel', 'tdach@example.net', '1-021-215-0958x78345', '239.325.1142', 'c3bbfe6c8235657931e4d582ecfe99bad75a77c8', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (58, 58, 58, 'Arno', 'Gislason', 'archibald.reichel@example.net', '(047)794-6060x6777', '335.319.3471x010', '172b3b6cbef3cd8b29237651421a8ec7c8b75de7', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (59, 59, 59, 'Lukas', 'Kutch', 'wgaylord@example.org', '+85(1)0470170949', '(001)061-9103x51223', 'd2257683b31ea71c003ff2f223d148e26761a16c', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (60, 60, 60, 'Christop', 'Shanahan', 'cara45@example.org', '+03(4)4993642405', '368-484-5830', 'f464b359833566bd931ee6c7812f4a5ddbca9438', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (61, 61, 61, 'Magdalen', 'Williamson', 'rbraun@example.net', '+69(9)4085077095', '1-056-080-9324', '564ad275b8fc0ab54dac168ed7dd877a443b30c8', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (62, 62, 62, 'Tod', 'Kunze', 'o\'hara.casper@example.com', '1-565-112-9525x786', '(328)068-4964x038', '8b7b66f486365b382925dc7e178408e0e18b474a', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (63, 63, 63, 'Janice', 'Quitzon', 'marlen05@example.net', '619-584-1690x286', '030.574.6161x4766', '4c8ac0b216536d4b14a4bc488c29fa6d1487e7c1', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (64, 64, 64, 'Vernie', 'Beier', 'nannie45@example.com', '+25(0)7830392115', '(006)986-5872x40244', 'b597838e546a70c1678a10feb7531e7b170cd958', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (65, 65, 65, 'Carrie', 'Boehm', 'shanie.o\'conner@example.net', '1-793-343-0935x220', '1-433-572-1074', 'fb59b6b5d6d5fc055f88d80561588b7031f7f6b9', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (66, 66, 66, 'Kristian', 'Abbott', 'wkonopelski@example.com', '1-245-906-9367', '(240)785-1143x1513', 'ecdf3c48d7e5ef9bc22ad292453450e16e55c10a', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (67, 67, 67, 'Torey', 'Quigley', 'hoppe.carey@example.com', '1-790-730-6824x8411', '(975)283-5744x436', '99731791cf9c1dce90ce9059b284eaa587013e6c', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (68, 68, 68, 'Genevieve', 'Heller', 'aufderhar.dora@example.com', '805-624-3241x3251', '(325)426-4950x69704', '8b09979a3857b07e8703206272ca6b7ec7c8ea0c', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (69, 69, 69, 'Orin', 'O\'Conner', 'zola.watsica@example.net', '(953)060-5949x479', '(309)157-2587x4592', '3ac1a7170a909de5b450a849b8db6d4e9691a5c8', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (70, 70, 70, 'Dylan', 'Rice', 'caroline.bartoletti@example.org', '(029)830-5727x762', '1-395-530-1520x509', '530748a6f8cfdabb487d315b9ede093093e8e1b5', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (71, 71, 71, 'Alanna', 'Hyatt', 'johnathon.conn@example.net', '767.010.1658', '1-399-411-4955x62338', '9cdc93ffb5f354737e1dd9d8f30fab87ab044b58', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (72, 72, 72, 'Edythe', 'King', 'qgrimes@example.net', '780.894.3525', '522-079-9102x5656', 'a35bc0e3a2b42f1ae93587097d6cc31013e2c606', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (73, 73, 73, 'Trenton', 'Kuhn', 'dlegros@example.net', '696.111.9530', '1-113-750-8008x68984', 'f27156699a5102f3ea97af6dd33168dbc5914e9b', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (74, 74, 74, 'Shea', 'Howell', 'kkozey@example.com', '1-291-628-5856', '1-379-356-9172', '5a882e7b8522fe88a25e2c07b4aaa04a40f221e9', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (75, 75, 75, 'Bette', 'Bailey', 'josue.lind@example.net', '1-368-711-9940', '188.083.8909x23144', '03d7f6843006fb0800eb4ccb9dad6f2a49d778a0', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (76, 76, 76, 'Geovany', 'Langworth', 'keshawn.schamberger@example.com', '973-600-9877', '04232779559', '0464afefee529abca9c0da26e8a53b4be3bd78e8', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (77, 77, 77, 'Barton', 'Boehm', 'rowe.gregorio@example.com', '1-180-986-7093x423', '775-518-2859', '15b09a1f97f13dd498711d733bfd61e2ca9a31e1', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (78, 78, 78, 'Lura', 'Dare', 'dewayne30@example.net', '390.663.6215', '(523)822-5708x743', '541381fa631c22845b44ff8da15f891e10154c01', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (79, 79, 79, 'Robert', 'Trantow', 'oren83@example.net', '616.353.4361', '+25(3)9600638409', '4e026de672d665a97b6595f759bf95cb09141025', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (80, 80, 80, 'Burnice', 'Pfeffer', 'vernice11@example.net', '00545205948', '561.449.1622x98912', 'bc5436854cda3b2e4cec62aa09e5473894ffd8fe', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (81, 81, 81, 'Zion', 'Lueilwitz', 'ybeier@example.org', '501.379.5319', '800-564-6418', '1b5706fef3e3a9426d86973a54e4033e5a167bcd', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (82, 82, 82, 'Carter', 'Gerhold', 'benedict60@example.org', '419-393-0604x5981', '(496)845-4825x554', 'e73536c9a350c46c9272c5bb7905cab48e7dfc83', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (83, 83, 83, 'Fleta', 'Conn', 'guadalupe.spinka@example.org', '186.881.5916x565', '037.856.5491x41811', '40890e3eb5b3caa9cba65bf0223763bcdd996150', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (84, 84, 84, 'Jackson', 'Cremin', 'psimonis@example.com', '+94(8)6043468215', '1-483-706-5704x141', '6a0192e61b5f495c976548e27f38f19785f65be3', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (85, 85, 85, 'Cecil', 'Schroeder', 'kreiger.myra@example.org', '293.367.4567x874', '818.027.1775', '2e0c17b57187d8c9380381082b3325dbcf9d69f7', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (86, 86, 86, 'Kianna', 'Moore', 'champlin.jack@example.org', '858.878.4185', '05859171784', 'd0785a9e2435221fe4b84776df6c40f57094b26c', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (87, 87, 87, 'Fidel', 'Goodwin', 'ignacio.spencer@example.org', '05218565859', '(725)820-9169x921', '94e79699320cd60a748dfc013f7ad6c4a128d96f', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (88, 88, 88, 'Joshuah', 'Howe', 'champlin.donnell@example.com', '1-487-850-2553x76957', '1-940-526-7887', 'ce2c35a7681e9a69abdccc46b15c5502746dbc71', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (89, 89, 89, 'Brennan', 'Schoen', 'kirsten89@example.com', '601.532.4913x164', '(239)401-0195x21644', '4c5386e2060a563a18ec37cd649e9bf9e98cef68', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (90, 90, 90, 'Kirk', 'Abshire', 'morar.tatyana@example.org', '+14(7)1921589999', '515-314-4191x37981', '1403f0d9a807aa5a0ac86924e5a621f19ed8fc6d', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (91, 91, 91, 'Donny', 'McLaughlin', 'jeramy.gleichner@example.org', '829-006-1645', '669.339.8393x935', 'd4dbb2e1f742132ae597343854fcb46de1247f9d', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (92, 92, 92, 'Emory', 'Kulas', 'marlin.dare@example.net', '+01(2)0501853183', '+75(1)5254041771', 'bb56e64dfaa5c6d424aef8500392e183ba1a0880', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (93, 93, 93, 'Brisa', 'Swaniawski', 'kihn.russ@example.com', '377-408-9447', '(070)583-5505x3746', 'c4c929489e8e6193e51d56bf12d112a7180b5418', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (94, 94, 94, 'Trudie', 'Herzog', 'gorczany.josh@example.org', '1-345-486-8987x85439', '508-427-2888x235', '0981bdbe4f7078ef28b2caf9661165e127176369', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (95, 95, 95, 'Giovanny', 'Mante', 'lpurdy@example.net', '074.965.9191x3250', '1-659-103-9616x301', '6b10c9a57f5e4692bd23e4caebf58fa1a49eb1d8', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (96, 96, 96, 'Ashton', 'Weber', 'odell.hartmann@example.org', '104-532-1440', '1-646-170-5150', '7fc9bfb2c2a9f602f43d828336f3460f0567579c', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (97, 97, 97, 'Breanna', 'Pouros', 'dariana32@example.com', '(440)047-6734', '1-565-164-8448x632', '71262c9b5466fb0e118717474c1bf4021072c246', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (98, 98, 98, 'Milan', 'Wunsch', 'kunze.gerda@example.net', '(319)206-7194', '(003)026-6768', '7bd925a77577c36da07cae84c1ef3261a771e139', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (99, 99, 99, 'Fermin', 'Bechtelar', 'eliza.kirlin@example.net', '623-221-9883x330', '297-352-4029x694', 'cbf67049d3abc1ef2c6c6ba763bbe2c62cbfe50b', NULL);
INSERT INTO `user` (`id`, `user_type_id`, `cart_id`, `first_name`, `last_name`, `email`, `phone_number1`, `phone_number2`, `password`, `token`) VALUES (100, 100, 100, 'Amparo', 'Dickinson', 'thalia44@example.net', '1-381-270-2213x711', '02896769691', '74e1fe96374ba68bfe14aad2463072f6714d2f2d', NULL);


#
# TABLE STRUCTURE FOR: user_type
#

DROP TABLE IF EXISTS `user_type`;

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO `user_type` (`id`, `user_type`) VALUES (1, 'voluptatibus');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (2, 'praesentium');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (3, 'nemo');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (4, 'aut');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (5, 'accusantium');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (6, 'aut');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (7, 'ad');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (8, 'voluptas');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (9, 'quod');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (10, 'eligendi');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (11, 'ut');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (12, 'perferendis');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (13, 'odit');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (14, 'qui');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (15, 'provident');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (16, 'laborum');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (17, 'assumenda');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (18, 'quasi');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (19, 'alias');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (20, 'ipsam');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (21, 'animi');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (22, 'saepe');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (23, 'saepe');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (24, 'tempore');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (25, 'non');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (26, 'voluptates');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (27, 'omnis');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (28, 'ut');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (29, 'est');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (30, 'dolorem');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (31, 'sequi');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (32, 'sit');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (33, 'nobis');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (34, 'omnis');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (35, 'voluptas');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (36, 'quam');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (37, 'animi');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (38, 'mollitia');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (39, 'officia');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (40, 'et');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (41, 'molestiae');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (42, 'quibusdam');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (43, 'voluptate');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (44, 'placeat');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (45, 'sit');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (46, 'error');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (47, 'doloremque');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (48, 'enim');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (49, 'perspiciatis');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (50, 'adipisci');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (51, 'sunt');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (52, 'neque');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (53, 'repellendus');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (54, 'sunt');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (55, 'provident');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (56, 'aut');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (57, 'iusto');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (58, 'perspiciatis');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (59, 'praesentium');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (60, 'reiciendis');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (61, 'in');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (62, 'qui');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (63, 'doloribus');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (64, 'est');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (65, 'ut');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (66, 'et');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (67, 'sequi');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (68, 'velit');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (69, 'voluptas');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (70, 'repudiandae');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (71, 'aut');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (72, 'non');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (73, 'eveniet');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (74, 'quos');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (75, 'deleniti');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (76, 'qui');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (77, 'explicabo');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (78, 'repudiandae');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (79, 'ab');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (80, 'dolorum');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (81, 'dolorem');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (82, 'et');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (83, 'quia');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (84, 'aliquid');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (85, 'numquam');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (86, 'ab');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (87, 'eum');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (88, 'dolor');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (89, 'omnis');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (90, 'possimus');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (91, 'adipisci');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (92, 'quis');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (93, 'neque');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (94, 'est');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (95, 'eligendi');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (96, 'aliquam');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (97, 'culpa');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (98, 'voluptatem');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (99, 'praesentium');
INSERT INTO `user_type` (`id`, `user_type`) VALUES (100, 'natus');


