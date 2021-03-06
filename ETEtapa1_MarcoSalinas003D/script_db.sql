--------------------------------------------------------
-- Archivo creado  - mi?rcoles-julio-07-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMINISTRADOR_LIBRO
--------------------------------------------------------

  CREATE TABLE "C##DBETAPA1"."ADMINISTRADOR_LIBRO" 
   (	"ID" NUMBER(11,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NOMBRE" NVARCHAR2(99), 
	"AUTOR" NVARCHAR2(99), 
	"PRECIO" NUMBER(11,0), 
	"STOCK" NUMBER(11,0), 
	"PUBLICACION" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table AUTH_GROUP
--------------------------------------------------------

  CREATE TABLE "C##DBETAPA1"."AUTH_GROUP" 
   (	"ID" NUMBER(11,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NAME" NVARCHAR2(150)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table AUTH_GROUP_PERMISSIONS
--------------------------------------------------------

  CREATE TABLE "C##DBETAPA1"."AUTH_GROUP_PERMISSIONS" 
   (	"ID" NUMBER(19,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"GROUP_ID" NUMBER(11,0), 
	"PERMISSION_ID" NUMBER(11,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table AUTH_PERMISSION
--------------------------------------------------------

  CREATE TABLE "C##DBETAPA1"."AUTH_PERMISSION" 
   (	"ID" NUMBER(11,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NAME" NVARCHAR2(255), 
	"CONTENT_TYPE_ID" NUMBER(11,0), 
	"CODENAME" NVARCHAR2(100)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table AUTH_USER
--------------------------------------------------------

  CREATE TABLE "C##DBETAPA1"."AUTH_USER" 
   (	"ID" NUMBER(11,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"PASSWORD" NVARCHAR2(128), 
	"LAST_LOGIN" TIMESTAMP (6), 
	"IS_SUPERUSER" NUMBER(1,0), 
	"USERNAME" NVARCHAR2(150), 
	"FIRST_NAME" NVARCHAR2(150), 
	"LAST_NAME" NVARCHAR2(150), 
	"EMAIL" NVARCHAR2(254), 
	"IS_STAFF" NUMBER(1,0), 
	"IS_ACTIVE" NUMBER(1,0), 
	"DATE_JOINED" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table AUTH_USER_GROUPS
--------------------------------------------------------

  CREATE TABLE "C##DBETAPA1"."AUTH_USER_GROUPS" 
   (	"ID" NUMBER(19,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"USER_ID" NUMBER(11,0), 
	"GROUP_ID" NUMBER(11,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table AUTH_USER_USER_PERMISSIONS
--------------------------------------------------------

  CREATE TABLE "C##DBETAPA1"."AUTH_USER_USER_PERMISSIONS" 
   (	"ID" NUMBER(19,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"USER_ID" NUMBER(11,0), 
	"PERMISSION_ID" NUMBER(11,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DJANGO_ADMIN_LOG
--------------------------------------------------------

  CREATE TABLE "C##DBETAPA1"."DJANGO_ADMIN_LOG" 
   (	"ID" NUMBER(11,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"ACTION_TIME" TIMESTAMP (6), 
	"OBJECT_ID" NCLOB, 
	"OBJECT_REPR" NVARCHAR2(200), 
	"ACTION_FLAG" NUMBER(11,0), 
	"CHANGE_MESSAGE" NCLOB, 
	"CONTENT_TYPE_ID" NUMBER(11,0), 
	"USER_ID" NUMBER(11,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("OBJECT_ID") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("CHANGE_MESSAGE") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table DJANGO_CONTENT_TYPE
--------------------------------------------------------

  CREATE TABLE "C##DBETAPA1"."DJANGO_CONTENT_TYPE" 
   (	"ID" NUMBER(11,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"APP_LABEL" NVARCHAR2(100), 
	"MODEL" NVARCHAR2(100)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DJANGO_MIGRATIONS
--------------------------------------------------------

  CREATE TABLE "C##DBETAPA1"."DJANGO_MIGRATIONS" 
   (	"ID" NUMBER(19,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"APP" NVARCHAR2(255), 
	"NAME" NVARCHAR2(255), 
	"APPLIED" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DJANGO_SESSION
--------------------------------------------------------

  CREATE TABLE "C##DBETAPA1"."DJANGO_SESSION" 
   (	"SESSION_KEY" NVARCHAR2(40), 
	"SESSION_DATA" NCLOB, 
	"EXPIRE_DATE" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("SESSION_DATA") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
REM INSERTING into C##DBETAPA1.ADMINISTRADOR_LIBRO
SET DEFINE OFF;
Insert into C##DBETAPA1.ADMINISTRADOR_LIBRO (ID,NOMBRE,AUTOR,PRECIO,STOCK,PUBLICACION) values ('1','Libro1','Autor 1','10','10',to_date('08/07/21','DD/MM/RR'));
Insert into C##DBETAPA1.ADMINISTRADOR_LIBRO (ID,NOMBRE,AUTOR,PRECIO,STOCK,PUBLICACION) values ('23','X','X','1','1',to_date('07/07/21','DD/MM/RR'));
REM INSERTING into C##DBETAPA1.AUTH_GROUP
SET DEFINE OFF;
REM INSERTING into C##DBETAPA1.AUTH_GROUP_PERMISSIONS
SET DEFINE OFF;
REM INSERTING into C##DBETAPA1.AUTH_PERMISSION
SET DEFINE OFF;
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('1','Can add log entry','1','add_logentry');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('2','Can change log entry','1','change_logentry');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('3','Can delete log entry','1','delete_logentry');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('4','Can view log entry','1','view_logentry');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('5','Can add permission','2','add_permission');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('6','Can change permission','2','change_permission');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('7','Can delete permission','2','delete_permission');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('8','Can view permission','2','view_permission');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('9','Can add group','3','add_group');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('10','Can change group','3','change_group');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('11','Can delete group','3','delete_group');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('12','Can view group','3','view_group');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('13','Can add user','4','add_user');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('14','Can change user','4','change_user');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('15','Can delete user','4','delete_user');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('16','Can view user','4','view_user');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('17','Can add content type','5','add_contenttype');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('18','Can change content type','5','change_contenttype');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('19','Can delete content type','5','delete_contenttype');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('20','Can view content type','5','view_contenttype');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('21','Can add session','6','add_session');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('22','Can change session','6','change_session');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('23','Can delete session','6','delete_session');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('24','Can view session','6','view_session');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('25','Can add libro','7','add_libro');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('26','Can change libro','7','change_libro');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('27','Can delete libro','7','delete_libro');
Insert into C##DBETAPA1.AUTH_PERMISSION (ID,NAME,CONTENT_TYPE_ID,CODENAME) values ('28','Can view libro','7','view_libro');
REM INSERTING into C##DBETAPA1.AUTH_USER
SET DEFINE OFF;
Insert into C##DBETAPA1.AUTH_USER (ID,PASSWORD,LAST_LOGIN,IS_SUPERUSER,USERNAME,FIRST_NAME,LAST_NAME,EMAIL,IS_STAFF,IS_ACTIVE,DATE_JOINED) values ('1','pbkdf2_sha256$260000$ldn3wm39JmF3S6Ti6bPK43$I7HiFBaehz43QaD4Dqps9eoR9NTbv9i3r1nNndlQunY=',to_timestamp('08/07/21 02:42:09,211126000 AM','DD/MM/RR HH12:MI:SSXFF AM'),'1','admin',null,null,'admin@gmail.com','1','1',to_timestamp('08/07/21 02:41:32,582247000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
REM INSERTING into C##DBETAPA1.AUTH_USER_GROUPS
SET DEFINE OFF;
REM INSERTING into C##DBETAPA1.AUTH_USER_USER_PERMISSIONS
SET DEFINE OFF;
REM INSERTING into C##DBETAPA1.DJANGO_ADMIN_LOG
SET DEFINE OFF;
Insert into C##DBETAPA1.DJANGO_ADMIN_LOG (ID,ACTION_TIME,OBJECT_REPR,ACTION_FLAG,CONTENT_TYPE_ID,USER_ID) values ('1',to_timestamp('08/07/21 02:45:03,019809000 AM','DD/MM/RR HH12:MI:SSXFF AM'),'Id= 1, Nombre= Libro 1, Autor= Autor, Sinopsis= <class ''django.db.models.fields.TextField''>, Precio= 12, Stock= 10, Publicacion = 2021-07-15','1','7','1');
Insert into C##DBETAPA1.DJANGO_ADMIN_LOG (ID,ACTION_TIME,OBJECT_REPR,ACTION_FLAG,CONTENT_TYPE_ID,USER_ID) values ('2',to_timestamp('08/07/21 02:51:06,944043000 AM','DD/MM/RR HH12:MI:SSXFF AM'),'Id= 1, Nombre= Libro1, Autor= Autor 1, Precio= 10, Stock= 10, Publicacion = 2021-07-08','1','7','1');
REM INSERTING into C##DBETAPA1.DJANGO_CONTENT_TYPE
SET DEFINE OFF;
Insert into C##DBETAPA1.DJANGO_CONTENT_TYPE (ID,APP_LABEL,MODEL) values ('1','admin','logentry');
Insert into C##DBETAPA1.DJANGO_CONTENT_TYPE (ID,APP_LABEL,MODEL) values ('2','auth','permission');
Insert into C##DBETAPA1.DJANGO_CONTENT_TYPE (ID,APP_LABEL,MODEL) values ('3','auth','group');
Insert into C##DBETAPA1.DJANGO_CONTENT_TYPE (ID,APP_LABEL,MODEL) values ('4','auth','user');
Insert into C##DBETAPA1.DJANGO_CONTENT_TYPE (ID,APP_LABEL,MODEL) values ('5','contenttypes','contenttype');
Insert into C##DBETAPA1.DJANGO_CONTENT_TYPE (ID,APP_LABEL,MODEL) values ('6','sessions','session');
Insert into C##DBETAPA1.DJANGO_CONTENT_TYPE (ID,APP_LABEL,MODEL) values ('7','administrador','libro');
REM INSERTING into C##DBETAPA1.DJANGO_MIGRATIONS
SET DEFINE OFF;
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('1','contenttypes','0001_initial',to_timestamp('08/07/21 02:41:01,581240000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('2','auth','0001_initial',to_timestamp('08/07/21 02:41:03,340955000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('3','admin','0001_initial',to_timestamp('08/07/21 02:41:03,497823000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('4','admin','0002_logentry_remove_auto_add',to_timestamp('08/07/21 02:41:03,516518000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('5','admin','0003_logentry_add_action_flag_choices',to_timestamp('08/07/21 02:41:03,536943000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('7','contenttypes','0002_remove_content_type_name',to_timestamp('08/07/21 02:41:04,390626000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('8','auth','0002_alter_permission_name_max_length',to_timestamp('08/07/21 02:41:04,463576000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('9','auth','0003_alter_user_email_max_length',to_timestamp('08/07/21 02:41:04,495580000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('10','auth','0004_alter_user_username_opts',to_timestamp('08/07/21 02:41:04,516427000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('11','auth','0005_alter_user_last_login_null',to_timestamp('08/07/21 02:41:04,554403000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('12','auth','0006_require_contenttypes_0002',to_timestamp('08/07/21 02:41:04,567610000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('13','auth','0007_alter_validators_add_error_messages',to_timestamp('08/07/21 02:41:04,588277000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('14','auth','0008_alter_user_username_max_length',to_timestamp('08/07/21 02:41:04,622279000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('15','auth','0009_alter_user_last_name_max_length',to_timestamp('08/07/21 02:41:04,653249000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('16','auth','0010_alter_group_name_max_length',to_timestamp('08/07/21 02:41:04,685165000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('17','auth','0011_update_proxy_permissions',to_timestamp('08/07/21 02:41:04,706622000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('18','auth','0012_alter_user_first_name_max_length',to_timestamp('08/07/21 02:41:04,736636000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('19','sessions','0001_initial',to_timestamp('08/07/21 02:41:04,772231000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
Insert into C##DBETAPA1.DJANGO_MIGRATIONS (ID,APP,NAME,APPLIED) values ('20','administrador','0001_initial',to_timestamp('08/07/21 02:49:23,538035000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
REM INSERTING into C##DBETAPA1.DJANGO_SESSION
SET DEFINE OFF;
Insert into C##DBETAPA1.DJANGO_SESSION (SESSION_KEY,EXPIRE_DATE) values ('ge2uwqb37cr7vi5uagmpjsx6v78gn8qa',to_timestamp('22/07/21 02:42:09,251783000 AM','DD/MM/RR HH12:MI:SSXFF AM'));
--------------------------------------------------------
--  DDL for Index AUTH_GROU_GROUP_ID__0CD325B0_U
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##DBETAPA1"."AUTH_GROU_GROUP_ID__0CD325B0_U" ON "C##DBETAPA1"."AUTH_GROUP_PERMISSIONS" ("GROUP_ID", "PERMISSION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AUTH_PERM_CONTENT_T_01AB375A_U
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##DBETAPA1"."AUTH_PERM_CONTENT_T_01AB375A_U" ON "C##DBETAPA1"."AUTH_PERMISSION" ("CONTENT_TYPE_ID", "CODENAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AUTH_USER_USER_ID_G_94350C0C_U
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##DBETAPA1"."AUTH_USER_USER_ID_G_94350C0C_U" ON "C##DBETAPA1"."AUTH_USER_GROUPS" ("USER_ID", "GROUP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AUTH_USER_USER_ID_P_14A6B632_U
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##DBETAPA1"."AUTH_USER_USER_ID_P_14A6B632_U" ON "C##DBETAPA1"."AUTH_USER_USER_PERMISSIONS" ("USER_ID", "PERMISSION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DJANGO_CO_APP_LABEL_76BD3D3B_U
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##DBETAPA1"."DJANGO_CO_APP_LABEL_76BD3D3B_U" ON "C##DBETAPA1"."DJANGO_CONTENT_TYPE" ("APP_LABEL", "MODEL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AUTH_PERMI_CONTENT_TY_2F476E4B
--------------------------------------------------------

  CREATE INDEX "C##DBETAPA1"."AUTH_PERMI_CONTENT_TY_2F476E4B" ON "C##DBETAPA1"."AUTH_PERMISSION" ("CONTENT_TYPE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AUTH_USER__USER_ID_6A12ED8B
--------------------------------------------------------

  CREATE INDEX "C##DBETAPA1"."AUTH_USER__USER_ID_6A12ED8B" ON "C##DBETAPA1"."AUTH_USER_GROUPS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DJANGO_ADM_CONTENT_TY_C4BCE8EB
--------------------------------------------------------

  CREATE INDEX "C##DBETAPA1"."DJANGO_ADM_CONTENT_TY_C4BCE8EB" ON "C##DBETAPA1"."DJANGO_ADMIN_LOG" ("CONTENT_TYPE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AUTH_USER__GROUP_ID_97559544
--------------------------------------------------------

  CREATE INDEX "C##DBETAPA1"."AUTH_USER__GROUP_ID_97559544" ON "C##DBETAPA1"."AUTH_USER_GROUPS" ("GROUP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AUTH_GROUP_GROUP_ID_B120CBF9
--------------------------------------------------------

  CREATE INDEX "C##DBETAPA1"."AUTH_GROUP_GROUP_ID_B120CBF9" ON "C##DBETAPA1"."AUTH_GROUP_PERMISSIONS" ("GROUP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AUTH_USER__PERMISSION_1FBB5F2C
--------------------------------------------------------

  CREATE INDEX "C##DBETAPA1"."AUTH_USER__PERMISSION_1FBB5F2C" ON "C##DBETAPA1"."AUTH_USER_USER_PERMISSIONS" ("PERMISSION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DJANGO_ADM_USER_ID_C564EBA6
--------------------------------------------------------

  CREATE INDEX "C##DBETAPA1"."DJANGO_ADM_USER_ID_C564EBA6" ON "C##DBETAPA1"."DJANGO_ADMIN_LOG" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DJANGO_SES_EXPIRE_DAT_A5C62663
--------------------------------------------------------

  CREATE INDEX "C##DBETAPA1"."DJANGO_SES_EXPIRE_DAT_A5C62663" ON "C##DBETAPA1"."DJANGO_SESSION" ("EXPIRE_DATE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AUTH_USER__USER_ID_A95EAD1B
--------------------------------------------------------

  CREATE INDEX "C##DBETAPA1"."AUTH_USER__USER_ID_A95EAD1B" ON "C##DBETAPA1"."AUTH_USER_USER_PERMISSIONS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AUTH_GROUP_PERMISSION_84C5C92E
--------------------------------------------------------

  CREATE INDEX "C##DBETAPA1"."AUTH_GROUP_PERMISSION_84C5C92E" ON "C##DBETAPA1"."AUTH_GROUP_PERMISSIONS" ("PERMISSION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table AUTH_GROUP
--------------------------------------------------------

  ALTER TABLE "C##DBETAPA1"."AUTH_GROUP" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."AUTH_GROUP" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##DBETAPA1"."AUTH_GROUP" ADD UNIQUE ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table AUTH_USER_GROUPS
--------------------------------------------------------

  ALTER TABLE "C##DBETAPA1"."AUTH_USER_GROUPS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."AUTH_USER_GROUPS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."AUTH_USER_GROUPS" MODIFY ("GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."AUTH_USER_GROUPS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##DBETAPA1"."AUTH_USER_GROUPS" ADD CONSTRAINT "AUTH_USER_USER_ID_G_94350C0C_U" UNIQUE ("USER_ID", "GROUP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table AUTH_USER
--------------------------------------------------------

  ALTER TABLE "C##DBETAPA1"."AUTH_USER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."AUTH_USER" MODIFY ("IS_SUPERUSER" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."AUTH_USER" MODIFY ("IS_STAFF" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."AUTH_USER" MODIFY ("IS_ACTIVE" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."AUTH_USER" MODIFY ("DATE_JOINED" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."AUTH_USER" ADD CHECK ("IS_SUPERUSER" IN (0,1)) ENABLE;
  ALTER TABLE "C##DBETAPA1"."AUTH_USER" ADD CHECK ("IS_STAFF" IN (0,1)) ENABLE;
  ALTER TABLE "C##DBETAPA1"."AUTH_USER" ADD CHECK ("IS_ACTIVE" IN (0,1)) ENABLE;
  ALTER TABLE "C##DBETAPA1"."AUTH_USER" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##DBETAPA1"."AUTH_USER" ADD UNIQUE ("USERNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DJANGO_MIGRATIONS
--------------------------------------------------------

  ALTER TABLE "C##DBETAPA1"."DJANGO_MIGRATIONS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."DJANGO_MIGRATIONS" MODIFY ("APPLIED" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."DJANGO_MIGRATIONS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table AUTH_GROUP_PERMISSIONS
--------------------------------------------------------

  ALTER TABLE "C##DBETAPA1"."AUTH_GROUP_PERMISSIONS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."AUTH_GROUP_PERMISSIONS" MODIFY ("GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."AUTH_GROUP_PERMISSIONS" MODIFY ("PERMISSION_ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."AUTH_GROUP_PERMISSIONS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##DBETAPA1"."AUTH_GROUP_PERMISSIONS" ADD CONSTRAINT "AUTH_GROU_GROUP_ID__0CD325B0_U" UNIQUE ("GROUP_ID", "PERMISSION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table AUTH_USER_USER_PERMISSIONS
--------------------------------------------------------

  ALTER TABLE "C##DBETAPA1"."AUTH_USER_USER_PERMISSIONS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."AUTH_USER_USER_PERMISSIONS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."AUTH_USER_USER_PERMISSIONS" MODIFY ("PERMISSION_ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."AUTH_USER_USER_PERMISSIONS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##DBETAPA1"."AUTH_USER_USER_PERMISSIONS" ADD CONSTRAINT "AUTH_USER_USER_ID_P_14A6B632_U" UNIQUE ("USER_ID", "PERMISSION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table AUTH_PERMISSION
--------------------------------------------------------

  ALTER TABLE "C##DBETAPA1"."AUTH_PERMISSION" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."AUTH_PERMISSION" MODIFY ("CONTENT_TYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."AUTH_PERMISSION" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##DBETAPA1"."AUTH_PERMISSION" ADD CONSTRAINT "AUTH_PERM_CONTENT_T_01AB375A_U" UNIQUE ("CONTENT_TYPE_ID", "CODENAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DJANGO_ADMIN_LOG
--------------------------------------------------------

  ALTER TABLE "C##DBETAPA1"."DJANGO_ADMIN_LOG" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."DJANGO_ADMIN_LOG" MODIFY ("ACTION_TIME" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."DJANGO_ADMIN_LOG" MODIFY ("ACTION_FLAG" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."DJANGO_ADMIN_LOG" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."DJANGO_ADMIN_LOG" ADD CHECK ("ACTION_FLAG" >= 0) ENABLE;
  ALTER TABLE "C##DBETAPA1"."DJANGO_ADMIN_LOG" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DJANGO_CONTENT_TYPE
--------------------------------------------------------

  ALTER TABLE "C##DBETAPA1"."DJANGO_CONTENT_TYPE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."DJANGO_CONTENT_TYPE" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##DBETAPA1"."DJANGO_CONTENT_TYPE" ADD CONSTRAINT "DJANGO_CO_APP_LABEL_76BD3D3B_U" UNIQUE ("APP_LABEL", "MODEL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DJANGO_SESSION
--------------------------------------------------------

  ALTER TABLE "C##DBETAPA1"."DJANGO_SESSION" MODIFY ("SESSION_KEY" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."DJANGO_SESSION" MODIFY ("EXPIRE_DATE" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."DJANGO_SESSION" ADD PRIMARY KEY ("SESSION_KEY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ADMINISTRADOR_LIBRO
--------------------------------------------------------

  ALTER TABLE "C##DBETAPA1"."ADMINISTRADOR_LIBRO" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."ADMINISTRADOR_LIBRO" MODIFY ("PRECIO" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."ADMINISTRADOR_LIBRO" MODIFY ("STOCK" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."ADMINISTRADOR_LIBRO" MODIFY ("PUBLICACION" NOT NULL ENABLE);
  ALTER TABLE "C##DBETAPA1"."ADMINISTRADOR_LIBRO" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AUTH_GROUP_PERMISSIONS
--------------------------------------------------------

  ALTER TABLE "C##DBETAPA1"."AUTH_GROUP_PERMISSIONS" ADD CONSTRAINT "AUTH_GROU_GROUP_ID_B120CBF9_F" FOREIGN KEY ("GROUP_ID")
	  REFERENCES "C##DBETAPA1"."AUTH_GROUP" ("ID") DEFERRABLE INITIALLY DEFERRED ENABLE;
  ALTER TABLE "C##DBETAPA1"."AUTH_GROUP_PERMISSIONS" ADD CONSTRAINT "AUTH_GROU_PERMISSIO_84C5C92E_F" FOREIGN KEY ("PERMISSION_ID")
	  REFERENCES "C##DBETAPA1"."AUTH_PERMISSION" ("ID") DEFERRABLE INITIALLY DEFERRED ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AUTH_PERMISSION
--------------------------------------------------------

  ALTER TABLE "C##DBETAPA1"."AUTH_PERMISSION" ADD CONSTRAINT "AUTH_PERM_CONTENT_T_2F476E4B_F" FOREIGN KEY ("CONTENT_TYPE_ID")
	  REFERENCES "C##DBETAPA1"."DJANGO_CONTENT_TYPE" ("ID") DEFERRABLE INITIALLY DEFERRED ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AUTH_USER_GROUPS
--------------------------------------------------------

  ALTER TABLE "C##DBETAPA1"."AUTH_USER_GROUPS" ADD CONSTRAINT "AUTH_USER_USER_ID_6A12ED8B_F" FOREIGN KEY ("USER_ID")
	  REFERENCES "C##DBETAPA1"."AUTH_USER" ("ID") DEFERRABLE INITIALLY DEFERRED ENABLE;
  ALTER TABLE "C##DBETAPA1"."AUTH_USER_GROUPS" ADD CONSTRAINT "AUTH_USER_GROUP_ID_97559544_F" FOREIGN KEY ("GROUP_ID")
	  REFERENCES "C##DBETAPA1"."AUTH_GROUP" ("ID") DEFERRABLE INITIALLY DEFERRED ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AUTH_USER_USER_PERMISSIONS
--------------------------------------------------------

  ALTER TABLE "C##DBETAPA1"."AUTH_USER_USER_PERMISSIONS" ADD CONSTRAINT "AUTH_USER_USER_ID_A95EAD1B_F" FOREIGN KEY ("USER_ID")
	  REFERENCES "C##DBETAPA1"."AUTH_USER" ("ID") DEFERRABLE INITIALLY DEFERRED ENABLE;
  ALTER TABLE "C##DBETAPA1"."AUTH_USER_USER_PERMISSIONS" ADD CONSTRAINT "AUTH_USER_PERMISSIO_1FBB5F2C_F" FOREIGN KEY ("PERMISSION_ID")
	  REFERENCES "C##DBETAPA1"."AUTH_PERMISSION" ("ID") DEFERRABLE INITIALLY DEFERRED ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DJANGO_ADMIN_LOG
--------------------------------------------------------

  ALTER TABLE "C##DBETAPA1"."DJANGO_ADMIN_LOG" ADD CONSTRAINT "DJANGO_AD_CONTENT_T_C4BCE8EB_F" FOREIGN KEY ("CONTENT_TYPE_ID")
	  REFERENCES "C##DBETAPA1"."DJANGO_CONTENT_TYPE" ("ID") DEFERRABLE INITIALLY DEFERRED ENABLE;
  ALTER TABLE "C##DBETAPA1"."DJANGO_ADMIN_LOG" ADD CONSTRAINT "DJANGO_AD_USER_ID_C564EBA6_F" FOREIGN KEY ("USER_ID")
	  REFERENCES "C##DBETAPA1"."AUTH_USER" ("ID") DEFERRABLE INITIALLY DEFERRED ENABLE;
