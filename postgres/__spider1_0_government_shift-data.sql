
INSERT INTO "channels" VALUES (16,'15 ij'),(45,'75 ww'),(55,'92 ve'),(65,'40 zy'),(78,'13 ik');

INSERT INTO "customers" VALUES (12,'Amalia Johnston'),(32,'Miss Annamarie Lowe'),(78,'Miss Alexandra Kemmer MD'),(93,'Agustina Stoltenberg'),(98,'Dr. Jessyca Roob'),(103,'Hardy Kutch'),(113,'Vicky Keeling'),(119,'Verdie Stehr'),(173,'Dr. Rupert Lind'),(212,'Flo Crooks'),(217,'Baron Gottlieb'),(256,'Delores Fahey'),(286,'Sterling Spencer'),(293,'Mr. Rollin Jakubowski'),(295,'Mr. Kraig Mohr');


INSERT INTO "services" VALUES (313,'driving license'),(430,'broker license'),(457,'dog license'),(575,'building permit'),(606,'liquor license'),(620,'library card'),(828,'working permit');

INSERT INTO "customers_and_services" VALUES (123,12,313,'Satisfied'),(130,12,620,'Satisfied'),(203,93,828,'Satisfied'),(228,286,430,'Satisfied'),(350,113,313,'Satisfied'),(420,113,575,'Satisfied'),(428,103,575,'Unsatisfied'),(465,217,457,'Unsatisfied'),(475,78,575,'Unsatisfied'),(606,256,828,'Unsatisfied'),(669,293,457,'Unsatisfied'),(677,103,313,'Unsatisfied'),(680,113,430,'Satisfied'),(683,119,828,'Unsatisfied'),(759,93,620,'Satisfied'),(766,103,620,'Unsatisfied'),(795,173,606,'Satisfied'),(823,286,575,'Unsatisfied'),(972,212,430,'Unsatisfied'),(983,98,620,'Satisfied');

INSERT INTO "analytical_layer" VALUES (11,123,'Normal','Bottom'),(12,203,'Normal','Bottom'),(17,677,'Normal','Middle'),(32,677,'Normal','Middle'),(36,123,'Normal','Middle'),(39,766,'Normal','Top'),(41,606,'Normal','Top'),(48,475,'Normal','Top'),(58,123,'Special','Top'),(60,228,'Normal','Top'),(66,823,'Normal','Bottom'),(68,680,'Normal','Bottom'),(72,465,'Special','Bottom'),(77,123,'Special','Bottom'),(82,420,'Special','Bottom');


INSERT INTO "customer_interactions" VALUES (13,16,98,828,'Close','bad'),(21,78,12,606,'Close','good'),(71,16,295,430,'Close','bad'),(117,45,103,313,'Open','bad'),(169,65,119,828,'Open','good'),(225,55,173,313,'Close','bad'),(237,55,103,313,'Close','bad'),(322,65,78,575,'Stuck','bad'),(336,78,286,457,'Stuck','good'),(514,55,113,313,'Close','good'),(552,45,32,575,'Open','good'),(591,16,113,828,'Close','good'),(607,16,286,430,'Stuck','bad'),(749,65,103,313,'Open','good'),(871,78,293,620,'Stuck','bad');



INSERT INTO "integration_platform" VALUES (299,225,'Success'),(447,117,'Success'),(519,607,'Success'),(536,322,'Success'),(599,322,'Success'),(605,322,'Success'),(626,117,'Success'),(677,117,'Success'),(678,552,'Fail'),(747,322,'Success'),(751,749,'Success'),(761,607,'Success'),(784,607,'Success'),(812,322,'Fail'),(833,169,'Fail');




