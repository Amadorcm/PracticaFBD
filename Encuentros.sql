--------------------------------------------------------
-- Archivo creado  - domingo-abril-12-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ENCUENTROS
--------------------------------------------------------

  CREATE TABLE "X5520560"."ENCUENTROS" 
   (	"ELOCAL" NUMBER(*,0), 
	"EVISITANTE" NUMBER(*,0), 
	"FECHA" DATE, 
	"PLOCAL" NUMBER(*,0) DEFAULT 0, 
	"PVISITANTE" NUMBER(*,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BDCCIA" ;
REM INSERTING into X5520560.ENCUENTROS
SET DEFINE OFF;
Insert into X5520560.ENCUENTROS (ELOCAL,EVISITANTE,FECHA,PLOCAL,PVISITANTE) values ('1','2',to_date('12/04/20','DD/MM/RR'),'3','0');
Insert into X5520560.ENCUENTROS (ELOCAL,EVISITANTE,FECHA,PLOCAL,PVISITANTE) values ('2','3',to_date('12/04/20','DD/MM/RR'),'1','1');
Insert into X5520560.ENCUENTROS (ELOCAL,EVISITANTE,FECHA,PLOCAL,PVISITANTE) values ('3','4',to_date('12/04/20','DD/MM/RR'),'3','0');
Insert into X5520560.ENCUENTROS (ELOCAL,EVISITANTE,FECHA,PLOCAL,PVISITANTE) values ('4','1',to_date('12/04/20','DD/MM/RR'),'3','0');
Insert into X5520560.ENCUENTROS (ELOCAL,EVISITANTE,FECHA,PLOCAL,PVISITANTE) values ('1','3',to_date('12/04/20','DD/MM/RR'),'3','0');
Insert into X5520560.ENCUENTROS (ELOCAL,EVISITANTE,FECHA,PLOCAL,PVISITANTE) values ('1','4',to_date('12/04/20','DD/MM/RR'),'3','0');
Insert into X5520560.ENCUENTROS (ELOCAL,EVISITANTE,FECHA,PLOCAL,PVISITANTE) values ('2','1',to_date('12/04/20','DD/MM/RR'),'0','3');
Insert into X5520560.ENCUENTROS (ELOCAL,EVISITANTE,FECHA,PLOCAL,PVISITANTE) values ('2','4',to_date('12/04/20','DD/MM/RR'),'3','0');
Insert into X5520560.ENCUENTROS (ELOCAL,EVISITANTE,FECHA,PLOCAL,PVISITANTE) values ('3','1',to_date('12/04/20','DD/MM/RR'),'1','1');
--------------------------------------------------------
--  DDL for Index CLAVE_PRIMARIA
--------------------------------------------------------

  CREATE UNIQUE INDEX "X5520560"."CLAVE_PRIMARIA" ON "X5520560"."ENCUENTROS" ("ELOCAL", "EVISITANTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BDCCIA" ;
--------------------------------------------------------
--  Constraints for Table ENCUENTROS
--------------------------------------------------------

  ALTER TABLE "X5520560"."ENCUENTROS" ADD CONSTRAINT "CLAVE_PRIMARIA" PRIMARY KEY ("ELOCAL", "EVISITANTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "BDCCIA"  ENABLE;
  ALTER TABLE "X5520560"."ENCUENTROS" ADD CONSTRAINT "PUNTOS_MAYOR0" CHECK (PVisitante>'-1' AND PLocal>'-1' ) ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ENCUENTROS
--------------------------------------------------------

  ALTER TABLE "X5520560"."ENCUENTROS" ADD CONSTRAINT "FOREINGK_EQUIPOLOCAL" FOREIGN KEY ("ELOCAL")
	  REFERENCES "X5520560"."EQUIPOS" ("CODEJ") ENABLE;
  ALTER TABLE "X5520560"."ENCUENTROS" ADD CONSTRAINT "FOREINGK_EQUIPOVISIT" FOREIGN KEY ("EVISITANTE")
	  REFERENCES "X5520560"."EQUIPOS" ("CODEJ") ENABLE;
