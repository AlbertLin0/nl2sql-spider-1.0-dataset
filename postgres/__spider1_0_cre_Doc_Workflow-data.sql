
INSERT INTO "authors" VALUES ('Addison Denesik',''),('Adeline Wolff',''),('Antwon Krajcik V',''),('Beverly Bergnaum MD',''),('Bianka Cummings',''),('Dr. Dario Hermiston',''),('Dr. Shad Lowe',''),('Era Kerluke',''),('Eveline Bahringer',''),('Fiona Sipes DVM',''),('Jameson Konopelski',''),('Katharina Koepp',''),('Malvina Metz',''),('Marjolaine Paucek',''),('Mr. Joaquin Sanford',''),('Prof. Baron Heller II',''),('Shanie Skiles',''),('Telly Pfannerstill',''),('Tevin Weber',''),('Vidal Sanford','');


INSERT INTO "business_processes" VALUES (9,9,'process','normal',NULL);

INSERT INTO "process_outcomes" VALUES ('finish','finish'),('start','starting soon'),('working','working on');
INSERT INTO "ref_staff_roles" VALUES ('ED','Editor'),('HR','Human Resource'),('MG','Manager'),('PR','Proof Reader'),('PT','Photo');


INSERT INTO "staff" VALUES (3,'Mrs. Aniya Klocko Sr.'),(26,'Prof. Pietro Hudson'),(52,'Mr. Sid Hessel'),(66,'Rosie Conn'),(67,'Jade O''Connell III'),(76,'Santina Cronin'),(93,'Bella Hilll DDS'),(100,'Prof. Porter Dickinson Sr.');


INSERT INTO "process_status" VALUES ('ct','continue'),('pp','postpone');

INSERT INTO "documents" VALUES 
(0,'Malvina Metz','Travel to Brazil','Nulla molestiae voluptas recusandae dolores explicabo et. Consequuntur ut autem velit eos aut.',NULL),
(4,'Telly Pfannerstill','Travel to China','Maiores suscipit earum sed iure. Quis voluptatem facilis doloremque nisi corrupti. Sed est repellendus et aut id. Nisi quis ex eligendi possimus ut ut unde.',NULL),
(7,'Malvina Metz','Travel to England','Dolores beatae omnis dolorem laudantium quaerat ut. Perspiciatis explicabo est ut vel porro omnis. Aut non occaecati aut quia ut non omnis. Quia quam ea consequuntur quo aliquam.',NULL),
(24,'Bianka Cummings','Travel to Egypt','Culpa voluptatibus alias quo amet dolore eum possimus. Qui placeat cumque non aperiam. Cupiditate pariatur dolorum sed ut.',NULL),
(29,'Bianka Cummings','Travel to Ireland','Cumque a ducimus perferendis sint. Quidem tempora recusandae accusamus possimus aut vitae quo. Omnis earum sint doloribus velit.',NULL),
(52,'Eveline Bahringer','How to cook chicken','Soluta vitae sed soluta. Aut eos omnis dolorem qui non recusandae neque. Atque enim inventore sint dolor sit.',NULL),
(77,'Marjolaine Paucek','How to cook pasta','Occaecati id consectetur amet. Fuga vel voluptate qui autem quisquam quis. Eos rerum et iste impedit vel facere.',NULL),
(79,'Tevin Weber','How to cook steak','Eius rerum rerum architecto optio reprehenderit rerum id. Voluptatem et atque expedita. Voluptatem sint qui aut nostrum voluptas.',NULL),
(262,'Addison Denesik','How to cook rice','Quo alias nam consectetur nostrum voluptatibus omnis occaecati. Perspiciatis assumenda sed ullam veritatis modi id. Animi praesentium tenetur hic reiciendis nihil hic aut.',NULL),
(462,'Adeline Wolff','Learning about flowers','Dolor ipsum sed cum aliquid eius enim exercitationem. Eius cupiditate magni sed et. Ex qui debitis sint aliquam illo eligendi magni praesentium. Et reiciendis sed in nostrum eius asperiores. Repellat et odio non qui mollitia.',NULL),
(927,'Tevin Weber','Learning about palm reading','Omnis perferendis voluptas ea animi ad eum voluptatibus. Tempora natus deleniti consequatur rerum id nisi fugit nihil. Labore repellendus porro consequatur qui.',NULL),
(435463,'Antwon Krajcik V','Learning about chess','Qui dolor et porro ut commodi error sed. Qui deserunt et est provident ut. Et quos libero iusto qui enim.',NULL),
(461893,'Era Kerluke','Learning about society','Magnam quos voluptatibus sit qui. Recusandae dignissimos repellendus et dolor sequi provident. Consectetur occaecati illum laboriosam id.',NULL),
(782065904,'Beverly Bergnaum MD','Learning about arts','Qui omnis sint eligendi adipisci perferendis. Quis id voluptatum nobis sed magnam animi quos. Consequatur voluptates voluptatum iure recusandae.',NULL),
(948678383,'Beverly Bergnaum MD','Learning about history','Corrupti porro nemo voluptas voluptatibus ipsam minus sed. Alias dolores voluptatibus reprehenderit sunt architecto mollitia incidunt molestiae.',NULL);


INSERT INTO "documents_processes" VALUES 
(0,9,'finish','ct'),(4,9,'start','ct'),
(7,9,'start','pp'),(24,9,'start','ct'),
(52,9,'finish','pp'),(462,9,'working','ct'),
(927,9,'working','pp'),(435463,9,'start','ct'),
(461893,9,'finish','pp'),(782065904,9,'working','ct');


INSERT INTO "staff_in_processes" VALUES (0,9,3,'MG','1989-02-06 18:30:52','2001-08-10 20:58:06',NULL),(0,9,67,'ED','2015-01-01 06:43:57','1982-01-11 19:27:20',NULL),(4,9,3,'HR','1979-10-19 18:36:39','1993-12-13 11:55:33',NULL),(7,9,100,'PT','1988-06-20 01:13:16','2000-06-15 03:03:57',NULL),(24,9,26,'PR','1973-02-04 06:53:33','2005-10-19 08:53:29',NULL),(462,9,26,'ED','1988-08-05 21:55:02','1995-03-09 06:54:14',NULL),(462,9,76,'ED','2009-08-07 08:26:16','1973-09-18 07:39:56',NULL),(927,9,3,'ED','1998-09-05 17:52:04','2014-05-24 01:12:43',NULL),(435463,9,52,'PT','1972-04-24 05:45:56','1974-08-02 01:37:15',NULL),(461893,9,67,'HR','2000-06-10 21:41:38','2007-02-12 17:11:51',NULL),(461893,9,93,'MG','2010-05-08 11:30:36','1973-02-25 01:08:20',NULL),(782065904,9,52,'ED','2007-07-21 13:51:39','1970-03-14 11:36:29',NULL),(782065904,9,66,'MG','1983-04-04 06:50:24','1996-03-15 15:12:08',NULL);

