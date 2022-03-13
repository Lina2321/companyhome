--------------------------------------------------------
--  파일이 생성됨 - 월요일-3월-14-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CALENDAR
--------------------------------------------------------

  CREATE TABLE "C##LINAJUNG"."CALENDAR" 
   (	"CONTENTS" VARCHAR2(500 BYTE), 
	"YEAR" NUMBER, 
	"MONTH" NUMBER, 
	"DAY" NUMBER, 
	"EMPNO" VARCHAR2(30 BYTE), 
	"CATE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BOARD_ANN
--------------------------------------------------------

  CREATE TABLE "C##LINAJUNG"."BOARD_ANN" 
   (	"TITLE" VARCHAR2(100 BYTE), 
	"CONTENTS" VARCHAR2(2048 BYTE), 
	"EMPNO" VARCHAR2(20 BYTE), 
	"ANN_DATE" DATE, 
	"HIT" NUMBER(10,0) DEFAULT 0, 
	"LIKE_CNT" NUMBER(10,0) DEFAULT 0, 
	"ANN_NUM" VARCHAR2(20 BYTE) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "C##LINAJUNG"."COMMENTS" 
   (	"COM_NUM" NUMBER DEFAULT 0, 
	"ANN_NUM" NUMBER, 
	"EMPNO" NUMBER, 
	"COM_CONTENTS" VARCHAR2(2048 BYTE), 
	"COM_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EVENT
--------------------------------------------------------

  CREATE TABLE "C##LINAJUNG"."EVENT" 
   (	"TITLE" VARCHAR2(20 BYTE), 
	"EMPNO" VARCHAR2(20 BYTE), 
	"DATE_EV" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LIKEIT
--------------------------------------------------------

  CREATE TABLE "C##LINAJUNG"."LIKEIT" 
   (	"ANN_NUM" NUMBER DEFAULT NULL, 
	"EMPNO" VARCHAR2(20 BYTE) DEFAULT NULL, 
	"LIKE_CNT" VARCHAR2(100 BYTE) DEFAULT 0, 
	"LIKE_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "C##LINAJUNG"."MEMBER" 
   (	"EMPNO" NUMBER(*,0) DEFAULT NULL, 
	"NAME" VARCHAR2(20 BYTE) DEFAULT NULL, 
	"PASSWORD" VARCHAR2(100 BYTE) DEFAULT NULL, 
	"EMAIL" VARCHAR2(40 BYTE) DEFAULT NULL, 
	"EMPDATE" DATE DEFAULT NULL, 
	"POSITION" VARCHAR2(20 BYTE) DEFAULT NULL, 
	"DEPT" VARCHAR2(20 BYTE) DEFAULT NULL
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "C##LINAJUNG"."NOTICE" 
   (	"NOTICE_CATE" VARCHAR2(20 BYTE), 
	"NOTICE_TITLE" VARCHAR2(100 BYTE), 
	"CONTENTS" VARCHAR2(2048 BYTE), 
	"DATE_NOTICE" DATE, 
	"HIT" VARCHAR2(20 BYTE) DEFAULT 0, 
	"EMPNO" VARCHAR2(20 BYTE), 
	"NOTICE_NUM" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE 
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SALARY
--------------------------------------------------------

  CREATE TABLE "C##LINAJUNG"."SALARY" 
   (	"EMPNO" NUMBER, 
	"SALARY" NUMBER, 
	"DATE_SAL" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into C##LINAJUNG.CALENDAR
SET DEFINE OFF;
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('부모님 병문안',2022,3,22,'180501','연차');
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('개인사유',2022,3,9,'180501','휴가');
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('개인사유',2022,3,6,'180501','휴가');
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('개인사유',2022,3,7,'180501','휴가');
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('개인사유',2022,3,8,'180501','휴가');
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('개인사유',2022,3,10,'180501','휴가');
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('개인사유',2022,3,11,'180501','휴가');
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('대통령 선거',2022,3,9,'180501','공휴일');
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('그냥가고싶음',2022,3,21,'180501','연차');
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('부모님 병문안',2022,3,14,'180501','돌봄');
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
Insert into C##LINAJUNG.CALENDAR (CONTENTS,YEAR,MONTH,DAY,EMPNO,CATE) values ('null ',null,null,null,null,null);
REM INSERTING into C##LINAJUNG.BOARD_ANN
SET DEFINE OFF;
Insert into C##LINAJUNG.BOARD_ANN (TITLE,CONTENTS,EMPNO,ANN_DATE,HIT,LIKE_CNT,ANN_NUM) values ('첫번째 글','테스트 중입니다.','180501',to_date('22/03/10','RR/MM/DD'),11,1,'1');
Insert into C##LINAJUNG.BOARD_ANN (TITLE,CONTENTS,EMPNO,ANN_DATE,HIT,LIKE_CNT,ANN_NUM) values ('테스트 하고있습니다.','확인!','180501',to_date('22/03/13','RR/MM/DD'),3,1,'4');
Insert into C##LINAJUNG.BOARD_ANN (TITLE,CONTENTS,EMPNO,ANN_DATE,HIT,LIKE_CNT,ANN_NUM) values ('두번째 글','확인2','180501',to_date('22/03/11','RR/MM/DD'),33,1,'2');
REM INSERTING into C##LINAJUNG.COMMENTS
SET DEFINE OFF;
Insert into C##LINAJUNG.COMMENTS (COM_NUM,ANN_NUM,EMPNO,COM_CONTENTS,COM_DATE) values (1,1,180501,'댓글 테스트중1',to_date('22/03/10','RR/MM/DD'));
Insert into C##LINAJUNG.COMMENTS (COM_NUM,ANN_NUM,EMPNO,COM_CONTENTS,COM_DATE) values (5,3,180501,'테스트2',to_date('22/03/11','RR/MM/DD'));
Insert into C##LINAJUNG.COMMENTS (COM_NUM,ANN_NUM,EMPNO,COM_CONTENTS,COM_DATE) values (10,2,180501,'확인!',to_date('22/03/13','RR/MM/DD'));
Insert into C##LINAJUNG.COMMENTS (COM_NUM,ANN_NUM,EMPNO,COM_CONTENTS,COM_DATE) values (11,4,180501,'댓글!',to_date('22/03/13','RR/MM/DD'));
Insert into C##LINAJUNG.COMMENTS (COM_NUM,ANN_NUM,EMPNO,COM_CONTENTS,COM_DATE) values (2,3,180501,'확인용 댓글입니다',to_date('22/03/11','RR/MM/DD'));
Insert into C##LINAJUNG.COMMENTS (COM_NUM,ANN_NUM,EMPNO,COM_CONTENTS,COM_DATE) values (3,3,180501,'테스트',to_date('22/03/11','RR/MM/DD'));
Insert into C##LINAJUNG.COMMENTS (COM_NUM,ANN_NUM,EMPNO,COM_CONTENTS,COM_DATE) values (4,3,180501,'테스트2',to_date('22/03/11','RR/MM/DD'));
REM INSERTING into C##LINAJUNG.EVENT
SET DEFINE OFF;
REM INSERTING into C##LINAJUNG.LIKEIT
SET DEFINE OFF;
Insert into C##LINAJUNG.LIKEIT (ANN_NUM,EMPNO,LIKE_CNT,LIKE_DATE) values (4,'180501','like',to_date('22/03/13','RR/MM/DD'));
Insert into C##LINAJUNG.LIKEIT (ANN_NUM,EMPNO,LIKE_CNT,LIKE_DATE) values (3,'180501','like',to_date('22/03/11','RR/MM/DD'));
Insert into C##LINAJUNG.LIKEIT (ANN_NUM,EMPNO,LIKE_CNT,LIKE_DATE) values (2,'180501','like',to_date('22/03/11','RR/MM/DD'));
Insert into C##LINAJUNG.LIKEIT (ANN_NUM,EMPNO,LIKE_CNT,LIKE_DATE) values (1,'180501','like',to_date('22/03/11','RR/MM/DD'));
REM INSERTING into C##LINAJUNG.MEMBER
SET DEFINE OFF;
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180501,'임사장','1234','boss@gmail.com',to_date('18/05/01','RR/MM/DD'),'대표이사','이사');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190611,'임가람','1234','garamlim@gmail.com',to_date('19/06/11','RR/MM/DD'),'과장','인사');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (181212,'배믿음','1234','trustpear@gmail.com',to_date('18/12/12','RR/MM/DD'),'차장','인사');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210731,'추한결','1234','betterzoo@gmail.com',to_date('21/07/31','RR/MM/DD'),'사원','구매');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (191020,'탁다운','1234','downtak@gmail.com',to_date('19/10/20','RR/MM/DD'),'과장','기획');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180620,'김한결','1234','straight@gmail.com',to_date('18/06/20','RR/MM/DD'),'부장','재무회계');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190205,'양버들','1234','leaf@gmail.com',to_date('19/02/05','RR/MM/DD'),'과장','운영');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180510,'풍우람','1234','big@gmail.com',to_date('18/05/10','RR/MM/DD'),'사장','이사');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210603,'복샘','1234','luckysam@gmail.com',to_date('21/06/03','RR/MM/DD'),'사원','기획');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (200224,'하달','1234','moonha@gmail.com',to_date('20/02/24','RR/MM/DD'),'대리','마케팅');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190821,'백미르','1234','mirrbaek@gmail.com',to_date('19/08/21','RR/MM/DD'),'과장','생산1');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (201202,'문한결','1234','muchbetter@gmail.com',to_date('20/12/02','RR/MM/DD'),'사원','마케팅');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (201116,'공나길','1234','emptymyway@gmail.com',to_date('20/11/16','RR/MM/DD'),'대리','개발');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (200604,'신나라','1234','newworld@gmail.com',to_date('20/06/04','RR/MM/DD'),'대리','생산1');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180905,'정샘','1234','sam@gmail.com',to_date('18/09/05','RR/MM/DD'),'부장','CS');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190315,'홍우람','1234','bighong@gmail.com',to_date('19/03/15','RR/MM/DD'),'과장','품질');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (220128,'한믿음','1234','trusthan@gmail.com',to_date('22/01/28','RR/MM/DD'),'사원','인사');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190314,'탁다운','1234','downtak@gmail.com',to_date('19/03/14','RR/MM/DD'),'과장','마케팅');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (181027,'손힘찬','1234','powerhand@gmail.com',to_date('18/10/27','RR/MM/DD'),'부장','제조2');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (200403,'이나길','1234','mywaylee@gmail.com',to_date('20/04/03','RR/MM/DD'),'대리','제조1');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190602,'최도희','1234','doohee@gmail.com',to_date('19/06/02','RR/MM/DD'),'과장','재무회계');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (211018,'예영진','1234','youngjin@gmail.com',to_date('21/10/18','RR/MM/DD'),'사원','경영지원');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (220129,'조윤주','1234','yoonjoo@gmail.com',to_date('22/01/29','RR/MM/DD'),'사원','법무');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (200924,'남궁영호','1234','youngho@gmail.com',to_date('20/09/24','RR/MM/DD'),'대리','기획');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (200510,'이상철','1234','prizeiron@gmail.com',to_date('20/05/10','RR/MM/DD'),'대리','인사');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (200426,'정민혁','1234','minhyuk@gmail.com',to_date('20/04/26','RR/MM/DD'),'대리','경영지원');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (201113,'김상욱','1234','sangwook@gmail.com',to_date('20/11/13','RR/MM/DD'),'대리','CS');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190904,'임보선','1234','bosunlim@gmail.com',to_date('19/09/04','RR/MM/DD'),'과장','생산2');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180922,'성명선','1234','nameline@gmail.com',to_date('18/09/22','RR/MM/DD'),'부장','개발');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (201115,'박진호','1234','jinho@gmail.com',to_date('20/11/15','RR/MM/DD'),'대리','구매');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210308,'조호경','1234','hokyoung@gmail.com',to_date('21/03/08','RR/MM/DD'),'사원','경영지원');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210512,'하시연','1234','testha@gmail.com',to_date('21/05/12','RR/MM/DD'),'사원','생산2');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (220215,'류수빈','1234','soobin2@gmail.com',to_date('22/02/15','RR/MM/DD'),'사원','생산2');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (220214,'남혜미','1234','hyemi@gmail.com',to_date('22/02/14','RR/MM/DD'),'사원','생산1');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190529,'강희선','1234','heesunkang@gmail.com',to_date('19/05/29','RR/MM/DD'),'과장','경영지원');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210319,'박종옥','1234','songjade@gmail.com',to_date('21/03/19','RR/MM/DD'),'사원','재무회계');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210405,'허정윤','1234','jungyun@gmail.com',to_date('21/04/05','RR/MM/DD'),'사원','품질관리');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190127,'한종현','1234','jonghyun@gmail.com',to_date('19/01/27','RR/MM/DD'),'차장','기획');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210109,'이은혜','1234','hallelujah@gmail.com',to_date('21/01/09','RR/MM/DD'),'사원','품질');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190110,'이혜진','1234','hyejin@gmail.com',to_date('19/01/10','RR/MM/DD'),'차장','생산1');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190311,'노희연','1234','heeyeon@gmail.com',to_date('19/03/11','RR/MM/DD'),'과장','개발');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (220124,'추마음','1234','heartzoo@gmail.com',to_date('22/01/24','RR/MM/DD'),'사원','품질관리');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210816,'문보름','1234','15daysmoon@gmail.com',to_date('21/08/16','RR/MM/DD'),'사원','마케팅');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (200205,'정보라','1234','purplejung@gmail.com',to_date('20/02/05','RR/MM/DD'),'대리','개발');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (191101,'하아라','1234','araha@gmail.com',to_date('19/11/01','RR/MM/DD'),'과장','운영');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (181028,'표라온','1234','laonticket@gmail.com',to_date('18/10/28','RR/MM/DD'),'차장','경영지원');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (220217,'허보름','1234','15daysofher@gmail.com',to_date('22/02/17','RR/MM/DD'),'사원','영업1');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210427,'봉바다','1234','seabong@gmail.com',to_date('21/04/27','RR/MM/DD'),'사원','법무');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180923,'류하얀','1234','whitetype@gmail.com',to_date('18/09/23','RR/MM/DD'),'부장','마케팅');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190125,'유나봄','1234','nabom@gmail.com',to_date('19/01/25','RR/MM/DD'),'차장','영업2');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210511,'송다래','1234','darae@gmail.com',to_date('21/05/11','RR/MM/DD'),'사원','생산1');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210622,'정꽃비','1234','rainshower@gmail.com',to_date('21/06/22','RR/MM/DD'),'사원','운영');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180823,'권구름','1234','cloud@gmail.com',to_date('18/08/23','RR/MM/DD'),'부장','기획');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190603,'박소리','1234','soundpark@gmail.com',to_date('19/06/03','RR/MM/DD'),'과장','품질관리');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180802,'안단비','1234','sweetrain@gmail.com',to_date('18/08/02','RR/MM/DD'),'부장','품질관리');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (200614,'홍빛나','1234','shinehong@gmail.com',to_date('20/06/14','RR/MM/DD'),'대리','생산2');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (200520,'이하다','1234','dolee@gmail.com',to_date('20/05/20','RR/MM/DD'),'대리','법무');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (181104,'복민지','1234','luckyminzy@gmail.com',to_date('18/11/04','RR/MM/DD'),'차장','재무회계');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180915,'오두리','1234','durioh@gmail.com',to_date('18/09/15','RR/MM/DD'),'부장','구매');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (200509,'황소라','1234','yellowsora@gmail.com',to_date('20/05/09','RR/MM/DD'),'대리','품질관리');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (211029,'봉준호','1234','filmdirector@gmail.com',to_date('21/10/29','RR/MM/DD'),'사원','재무회계');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180903,'허건','1234','gunher@gmail.com',to_date('18/09/03','RR/MM/DD'),'부장','운영');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (201025,'권웅','1234','oong@gmail.com',to_date('20/10/25','RR/MM/DD'),'대리','운영');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190413,'문건','1234','gunmoon@gmail.com',to_date('19/04/13','RR/MM/DD'),'과장','제조2');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210528,'김웅','1234','ooongkim@gmail.com',to_date('21/05/28','RR/MM/DD'),'사원','영업1');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210625,'배현준','1234','hyunsoon@gmail.com',to_date('21/06/25','RR/MM/DD'),'사원','CS');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210930,'권훈','1234','kwonhoon@gmail.com',to_date('21/09/30','RR/MM/DD'),'사원','제조2');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210930,'설훈','1234','hunsnow@gmail.com',to_date('21/09/30','RR/MM/DD'),'사원','제조1');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180817,'박광','1234','crazypark@gmail.com',to_date('18/08/17','RR/MM/DD'),'부장','생산2');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180818,'추철','1234','admin@gmail.com',to_date('18/08/18','RR/MM/DD'),'부장','영업1');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180819,'장호','1234','hohoho@gmail.com',to_date('18/08/19','RR/MM/DD'),'부장','법무');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180820,'문호','1234','moonho@gmail.com',to_date('18/08/21','RR/MM/DD'),'부장','생산1');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (200416,'추건','1234','fallgun@gmail.com',to_date('20/04/16','RR/MM/DD'),'대리','제조2');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210602,'노지훈','1234','jihunno@gmail.com',to_date('21/06/02','RR/MM/DD'),'사원','영업2');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210408,'허민혁','1234','minhyuk@gmail.com',to_date('21/04/08','RR/MM/DD'),'사원','인사');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190330,'제갈혁','1234','galhyuk@gmail.com',to_date('19/03/30','RR/MM/DD'),'과장','제조1');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (181014,'권수현','1234','soohyeon@gmail.com',to_date('18/10/14','RR/MM/DD'),'부장','제조1');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190121,'남철민','1234','ironmin@gmail.com',to_date('19/01/21','RR/MM/DD'),'차장','생산2');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190911,'백건우','1234','admin@gmail.com',to_date('19/09/11','RR/MM/DD'),'과장','영업2');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180616,'추병헌','1234','admin@gmail.com',to_date('18/06/16','RR/MM/DD'),'부사장','이사');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190310,'한요한','1234','johnhan@gmail.com',to_date('19/03/10','RR/MM/DD'),'과장','구매');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190216,'이덕수','1234','duckwater@gmail.com',to_date('19/02/16','RR/MM/DD'),'과장','CS');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (181108,'남재섭','1234','meanman@gmail.com',to_date('18/11/08','RR/MM/DD'),'차장','품질관리');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190906,'김이수','1234','admin@gmail.com',to_date('19/09/06','RR/MM/DD'),'과장','영업1');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (200815,'전철현','1234','ironhyun@gmail.com',to_date('20/08/15','RR/MM/DD'),'대리','영업1');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210802,'심성한','1234','sunghan@gmail.com',to_date('21/08/02','RR/MM/DD'),'사원','개발');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210829,'김동건','1234','donggun@gmail.com',to_date('21/08/29','RR/MM/DD'),'사원','품질');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (191202,'신일성','1234','onestargod@gmail.com',to_date('19/12/02','RR/MM/DD'),'대리','구매');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210211,'임승헌','1234','seonghun@gmail.com',to_date('21/02/11','RR/MM/DD'),'사원','제조1');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (200313,'유동건','1234','bronzegun@gmail.com',to_date('20/03/13','RR/MM/DD'),'대리','품질');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (200504,'신경모','1234','nurenhair@gmail.com',to_date('20/05/04','RR/MM/DD'),'대리','재무회계');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (181217,'손남규','1234','namkyu@gmail.com',to_date('18/12/17','RR/MM/DD'),'차장','법무');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180619,'백무영','1234','zerozero@gmail.com',to_date('18/06/19','RR/MM/DD'),'부장','경영지원');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (200917,'배덕수','1234','ducksoo@gmail.com',to_date('20/09/17','RR/MM/DD'),'대리','영업2');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (210220,'홍재범','1234','jaebum@gmail.com',to_date('21/02/20','RR/MM/DD'),'사원','제조2');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190122,'봉경구','1234','kyeonggu@gmail.com',to_date('19/01/22','RR/MM/DD'),'차장','영업1');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180821,'최승헌','1234','faktop@gmail.com',to_date('18/08/20','RR/MM/DD'),'부장','영업2');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180929,'한성한','1234','sunghan2@gmail.com',to_date('18/09/29','RR/MM/DD'),'부장','품질');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (180812,'전치원','1234','hit1@gmail.com',to_date('18/08/12','RR/MM/DD'),'부장','인사');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (190718,'김민석','1234','minsuk2@gmail.com',to_date('19/07/18','RR/MM/DD'),'과장','법무');
Insert into C##LINAJUNG.MEMBER (EMPNO,NAME,PASSWORD,EMAIL,EMPDATE,POSITION,DEPT) values (191130,'한성원','1234','sungwonhan@gmail.com',to_date('19/11/30','RR/MM/DD'),'대리','CS');
REM INSERTING into C##LINAJUNG.NOTICE
SET DEFINE OFF;
Insert into C##LINAJUNG.NOTICE (NOTICE_CATE,NOTICE_TITLE,CONTENTS,DATE_NOTICE,HIT,EMPNO,NOTICE_NUM) values ('인사고과','3월 인사발령 공지','영업 1팀 김지혜 -> 영업2팀
으로 변경됨을 알려드립니다.',to_date('22/03/02','RR/MM/DD'),'0','181212',1);
Insert into C##LINAJUNG.NOTICE (NOTICE_CATE,NOTICE_TITLE,CONTENTS,DATE_NOTICE,HIT,EMPNO,NOTICE_NUM) values ('사내행사','사무실 회식 모임 공지','개인사유로 인한 불참 가능하니 강제적으로 참석하시지 않으셔도 됩니다!',to_date('22/03/03','RR/MM/DD'),'0','181212',2);
Insert into C##LINAJUNG.NOTICE (NOTICE_CATE,NOTICE_TITLE,CONTENTS,DATE_NOTICE,HIT,EMPNO,NOTICE_NUM) values ('유지보수','본사 실내 에어컨 사용 온도 및 승강기 사용 관련 공지','본사 하절기 실내 권장 온도는 27도 입니다. 무분별한 냉방기 사용을 자제하여 주시기 바랍니다.
아울러 3월 10일부터 15일 까지는 승강기 교체로 인해 승강기 사용이 불가능 합니다. 사원 분들의 많은 양해 부탁드립니다.',to_date('22/03/04','RR/MM/DD'),'1','201025',3);
Insert into C##LINAJUNG.NOTICE (NOTICE_CATE,NOTICE_TITLE,CONTENTS,DATE_NOTICE,HIT,EMPNO,NOTICE_NUM) values ('사내교육','3월 사내 영어회화 교육 관련 공지','3월의 교재는 다락원의 오픽 AL 완전 정복 입니다. 
구매후 회계팀에 영수증 처리 하시면 됩니다!',to_date('22/03/04','RR/MM/DD'),'0','180619',4);
Insert into C##LINAJUNG.NOTICE (NOTICE_CATE,NOTICE_TITLE,CONTENTS,DATE_NOTICE,HIT,EMPNO,NOTICE_NUM) values ('유지보수','3층 화장실 수리건','3층 화장실이 당분간 수리에 들어갑니다.
수리 완료까지 약 한 달 정도 예상되며 직원 분들의 많은 양해 부탁 드립니다.',to_date('22/03/10','RR/MM/DD'),'0','180501',5);
Insert into C##LINAJUNG.NOTICE (NOTICE_CATE,NOTICE_TITLE,CONTENTS,DATE_NOTICE,HIT,EMPNO,NOTICE_NUM) values ('전체공지','게시판 테스트 중입니다','테스트중',to_date('22/03/10','RR/MM/DD'),'4','180501',7);
Insert into C##LINAJUNG.NOTICE (NOTICE_CATE,NOTICE_TITLE,CONTENTS,DATE_NOTICE,HIT,EMPNO,NOTICE_NUM) values ('사내교육','3월 자바 객체지향 스터디 관련 공지','3월의 교재는 위키북스의 스프링 입문을 위한 자바 객체지향의 원리와 이해 입니다.
구매하시고 영수증 처리 하시면 됩니다.
',to_date('22/03/10','RR/MM/DD'),'1','180501',6);
REM INSERTING into C##LINAJUNG.SALARY
SET DEFINE OFF;
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180501,7000000,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190611,5164515,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181212,5564513,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210731,6975798,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (191020,5605582,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190205,5668691,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180510,3884500,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210602,4774067,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200224,4425754,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190821,7384723,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (201202,7494545,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200604,4518807,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180905,5203859,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190314,8429502,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (220128,2484334,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181027,7617624,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200403,4609088,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190602,3314955,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (211018,3666034,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (220129,2035755,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200924,8615217,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200510,3304121,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200426,2575778,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (201113,2088119,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190904,4928563,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180922,3337964,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210308,4877607,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210512,2823448,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190529,6026879,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210319,8351579,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210405,6483161,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190127,7061560,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210109,8601137,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190110,6919909,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (220124,2288558,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210816,8779548,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200205,2266761,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (191101,3080020,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181028,2187749,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (220217,2056161,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210427,3181466,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180923,3593878,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190125,2100059,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210511,5461127,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210622,5783279,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180823,4153175,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190602,3166151,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180802,2813469,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200614,2107327,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200520,6576673,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181104,5252633,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180915,8493076,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200509,8313762,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (211029,8665200,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180903,7129520,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (201025,6492139,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190413,5056329,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210528,3268432,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210625,8452633,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210930,6736302,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180817,4119944,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200416,2772893,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210602,7397172,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210408,4875849,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190330,4394975,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181014,3853783,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190121,2091916,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190911,2796682,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180616,4897999,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190310,2675838,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190216,5549246,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181108,8711842,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190906,5491139,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200815,6225769,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210802,5691076,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210829,2930775,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (191202,7748502,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210211,3746998,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200313,5519955,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200504,7665341,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181217,6148362,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200917,6093276,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210220,2976238,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190122,6949878,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180820,8741191,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180929,6515850,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180812,5244467,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190718,3126362,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (191130,4307693,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180501,3179929,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190611,6292414,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181212,4366770,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210731,7497231,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (191020,8336976,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180619,8178253,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190205,6006958,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180510,3258067,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210602,3610151,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200224,5005326,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190821,7252510,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (201202,8801879,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (201115,8204918,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200604,4804901,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180905,5890970,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190314,3820596,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (220128,7422914,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190314,3804831,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181027,5015431,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200403,4972588,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190602,5401643,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (211018,2126068,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (220129,5237422,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200924,8213220,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200510,4100007,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200426,3060826,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (201113,2514083,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190904,4913022,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180922,8120316,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210308,6161476,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210512,3271845,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (220214,7089096,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (220214,7264769,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190529,8173069,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210319,4886221,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210405,7890095,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190127,2498097,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210109,7483836,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190110,7301227,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190310,5936102,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (220124,6001012,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210816,3548877,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200205,4724873,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (191101,3470242,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181028,3039331,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (220217,7011676,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210427,4516190,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180923,4781069,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190125,2965309,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210511,4713778,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210622,2917494,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180823,5370535,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190602,6363784,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180802,3520913,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200614,5279936,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200520,7353240,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181104,4880854,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180915,3410253,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200509,7457292,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (211029,4699590,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180903,3168434,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (201025,4529912,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190413,8699247,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210528,3270095,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210625,6425579,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180817,4374806,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180817,4359016,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200416,7805843,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210602,6564308,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210408,7697461,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190330,6871885,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181014,3165399,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190121,3249098,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190911,3729410,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180616,6881076,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190216,5227862,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181108,5830516,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190906,4490851,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200815,2885120,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210802,7682389,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210829,6551781,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (191202,5442337,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210211,3145623,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200313,2583322,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200504,3343514,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181217,3589685,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180619,3666531,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200917,3013748,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210220,7000475,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190122,7206197,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180820,3426591,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180929,6236978,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180812,2819887,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190718,6773241,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (191130,5414137,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180501,7133499,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190611,6875206,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181212,3586913,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210731,7529617,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (191020,3411239,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180619,7789379,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190205,6535934,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180510,7612881,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210602,5250323,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200224,3161012,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190821,2379376,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (201202,8108715,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (201115,7240769,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200604,2948143,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180905,5584710,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (220128,8850822,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181027,2081693,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200403,5141584,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190602,4415718,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (211018,7008901,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (220129,6031614,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200924,8684699,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200510,6969530,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200426,5388553,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (201113,7122298,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190904,2565212,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180922,2232434,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (201115,3801286,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210308,8517348,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210512,4645126,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (220214,8382597,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190529,8604616,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210319,8467989,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210405,2555752,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190127,6639101,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210109,4619895,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190110,2026785,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (220124,3932712,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210816,7712793,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200205,5821712,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (191101,2254338,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181028,7824092,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (220217,4291657,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210427,7174395,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180923,3517354,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190125,3095441,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210511,3142058,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210622,2621915,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180823,8435493,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190602,3268592,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180802,2504585,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200614,4742770,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200520,8802690,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181104,5255797,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180915,7440418,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200509,3819347,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (211029,2330902,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180903,2928587,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (201025,3434505,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190413,4115470,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210528,6995479,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210625,4854939,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210930,2629001,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210930,2935128,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200416,3783534,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210602,7794486,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210408,8963296,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190330,4670056,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181014,5832993,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190121,8323271,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190911,6859094,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180616,8486884,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190310,6483994,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190216,8264356,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181108,3187127,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190906,8667927,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200815,5069877,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210802,2021933,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210829,7387896,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (191202,6382226,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210211,4638394,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200313,7045034,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200504,3287336,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (181217,2886654,to_date('22/01/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (200917,6054400,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (210220,4142255,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190122,6493480,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180820,6787651,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180929,8341794,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (180812,6756840,to_date('22/02/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (190718,6002155,to_date('21/12/20','RR/MM/DD'));
Insert into C##LINAJUNG.SALARY (EMPNO,SALARY,DATE_SAL) values (191130,8684756,to_date('22/02/20','RR/MM/DD'));
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "C##LINAJUNG"."NOTICE" MODIFY ("NOTICE_NUM" NOT NULL ENABLE);
