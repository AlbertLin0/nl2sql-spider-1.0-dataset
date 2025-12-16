
INSERT INTO "collection_subsets" VALUES (684,'UK album',''),(717,'US album',''),(741,'Canadian album',''),(813,'History collection',''),(851,'Art collection',''),(981,'Top collection',''),(997,'Fine set','');


INSERT INTO "collections" VALUES (6,6,'Best',NULL),(7,6,'Nice',NULL);


INSERT INTO "document_objects" VALUES (5,5,'Ransom','Ransom Collection',NULL),(8,9,'Marlin','Marlin Collection',NULL),(9,9,'Braeden','Braeden Collection',NULL);
INSERT INTO "document_subsets" VALUES (171,'Best for 2000',''),(183,'Best for 2001',''),(216,'Best for 2002',''),(488,'Best for 2003',''),(535,'Best for 2004',''),(547,'Best for 2005',''),(640,'Best for 2006',''),(653,'Best for 2007','');


INSERT INTO "collection_subset_members" VALUES (6,6,717),(7,6,851),(7,7,851),(6,7,981);


INSERT INTO "document_subset_members" VALUES (9,5,171),(9,8,171),(5,8,183),(8,5,183),(8,9,216),(5,5,547),(5,9,653),(8,8,653);




INSERT INTO "documents_in_collections" VALUES (5,6),(8,6),(9,6),(5,7),(8,7),(9,7);


