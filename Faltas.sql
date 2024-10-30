--------------------------------------------------------
-- Archivo creado  - domingo-abril-12-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FALTAS
--------------------------------------------------------

  CREATE TABLE "X5520560"."FALTAS" 
   (	"CODJ" NUMBER(*,0), 
	"ELOCAL" NUMBER(*,0), 
	"EVISITANTE" NUMBER(*,0), 
	"NUME" NUMBER(*,0) DEFAULT 0
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "BDCCIA" ;
REM INSERTING into X5520560.FALTAS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_FALTAS
--------------------------------------------------------

  CREATE UNIQUE INDEX "X5520560"."PK_FALTAS" ON "X5520560"."FALTAS" ("CODJ", "ELOCAL", "EVISITANTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "BDCCIA" ;
--------------------------------------------------------
--  Constraints for Table FALTAS
--------------------------------------------------------

  ALTER TABLE "X5520560"."FALTAS" ADD CONSTRAINT "NUME_0_5" CHECK (nume<'6' AND nume>'-1') ENABLE;
  ALTER TABLE "X5520560"."FALTAS" ADD CONSTRAINT "PK_FALTAS" PRIMARY KEY ("CODJ", "ELOCAL", "EVISITANTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "BDCCIA"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FALTAS
--------------------------------------------------------

  ALTER TABLE "X5520560"."FALTAS" ADD CONSTRAINT "FK_EQUIPOS" FOREIGN KEY ("ELOCAL", "EVISITANTE")
	  REFERENCES "X5520560"."ENCUENTROS" ("ELOCAL", "EVISITANTE") ENABLE;
  ALTER TABLE "X5520560"."FALTAS" ADD CONSTRAINT "FK_JUGADORES" FOREIGN KEY ("CODJ")
	  REFERENCES "X5520560"."JUGADORES" ("CODJ") ENABLE;
