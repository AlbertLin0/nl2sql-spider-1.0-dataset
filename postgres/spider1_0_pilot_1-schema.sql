
CREATE TABLE "hangar" (
  "plane_name" char(15)  NOT NULL,
  "location" char(15)  DEFAULT NULL,
  PRIMARY KEY ("plane_name")
);


CREATE TABLE "pilotskills" (
  "pilot_name" char(15)  NOT NULL,
  "plane_name" char(15)  NOT NULL,
  "age" int DEFAULT NULL,
  PRIMARY KEY ("pilot_name","plane_name"),
  CONSTRAINT "pilotskills_fk_0_0" FOREIGN KEY ("plane_name") REFERENCES "hangar" ("plane_name")
);


