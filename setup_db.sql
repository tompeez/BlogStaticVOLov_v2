--------------------------------------------------------
--  File created - Thursday-April-04-2013   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table GENERALLOOKUP
--------------------------------------------------------

  CREATE TABLE "GENERALLOOKUP" 
   (	"ID" NUMBER, 
	"TYPE" VARCHAR2(20 CHAR), 
	"DATA" VARCHAR2(255 CHAR)
   ) ;
/
REM INSERTING into GENERALLOOKUP
SET DEFINE OFF;
Insert into GENERALLOOKUP (ID,TYPE,DATA) values ('1','GENDER','male');
Insert into GENERALLOOKUP (ID,TYPE,DATA) values ('2','GENDER','female');
Insert into GENERALLOOKUP (ID,TYPE,DATA) values ('3','TITLE','Mr.');
Insert into GENERALLOOKUP (ID,TYPE,DATA) values ('4','TITLE','Mrs.');
Insert into GENERALLOOKUP (ID,TYPE,DATA) values ('5','POSITION','Clerk');
Insert into GENERALLOOKUP (ID,TYPE,DATA) values ('6','POSITION','Administrator');
Insert into GENERALLOOKUP (ID,TYPE,DATA) values ('7','POSITION','IT');
Insert into GENERALLOOKUP (ID,TYPE,DATA) values ('8','POSITION','HR');
Insert into GENERALLOOKUP (ID,TYPE,DATA) values ('9','WEEKDAY','Monday');
Insert into GENERALLOOKUP (ID,TYPE,DATA) values ('10','WEEKDAY','Tuesday');
Insert into GENERALLOOKUP (ID,TYPE,DATA) values ('11','WEEKDAY','Wednesday');
Insert into GENERALLOOKUP (ID,TYPE,DATA) values ('12','WEEKDAY','Thursday');
Insert into GENERALLOOKUP (ID,TYPE,DATA) values ('13','WEEKDAY','Firday');
Insert into GENERALLOOKUP (ID,TYPE,DATA) values ('14','WEEKEND','Saturday');
Insert into GENERALLOOKUP (ID,TYPE,DATA) values ('15','WEEKEND','Sunday');
--------------------------------------------------------
--  DDL for Index GENERALLOOKUP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GENERALLOOKUP_PK" ON "GENERALLOOKUP" ("ID") 
  ;
/
--------------------------------------------------------
--  Constraints for Table GENERALLOOKUP
--------------------------------------------------------

  ALTER TABLE "GENERALLOOKUP" ADD CONSTRAINT "GENERALLOOKUP_PK" PRIMARY KEY ("ID") ENABLE;
 
  ALTER TABLE "GENERALLOOKUP" MODIFY ("ID" NOT NULL ENABLE);
/
  CREATE TABLE "LOOKUPTEST" 
   (	"ID" NUMBER, 
	"WEEKDAY_ID" NUMBER, 
	"GENDER_ID" NUMBER(38,0), 
	"TITEL_ID" NUMBER(38,0), 
	"POSITION_ID" NUMBER(38,0)
   ) ;
/

REM INSERTING into LOOKUPTEST
SET DEFINE OFF;
Insert into LOOKUPTEST (ID,WEEKDAY_ID,GENDER_ID,TITEL_ID,POSITION_ID) values ('1','9','2','3','6');
Insert into LOOKUPTEST (ID,WEEKDAY_ID,GENDER_ID,TITEL_ID,POSITION_ID) values ('2','13','2','3','8');
Insert into LOOKUPTEST (ID,WEEKDAY_ID,GENDER_ID,TITEL_ID,POSITION_ID) values ('3','10','2','3','5');
Insert into LOOKUPTEST (ID,WEEKDAY_ID,GENDER_ID,TITEL_ID,POSITION_ID) values ('4','11','1','3','6');
Insert into LOOKUPTEST (ID,WEEKDAY_ID,GENDER_ID,TITEL_ID,POSITION_ID) values ('5','10',null,'4',null);
--------------------------------------------------------
--  DDL for Index LOOKUPTEST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LOOKUPTEST_PK" ON "LOOKUPTEST" ("ID") 
  ;
/
--------------------------------------------------------
--  Constraints for Table LOOKUPTEST
--------------------------------------------------------

  ALTER TABLE "LOOKUPTEST" ADD CONSTRAINT "LOOKUPTEST_PK" PRIMARY KEY ("ID") ENABLE;
/

