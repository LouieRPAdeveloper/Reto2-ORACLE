-- 1.este es la tabla de los archivos en EXCEL llamado Clientes y previamente importada
SELECT * FROM tablacorregidacliente;
SELECT count(*) FROM tablacorregidacliente;
rollback;

--Adicionamos el campo EDAD y de tipo NUMBER(3,0)
ALTER TABLE tablacorregidacliente add EDAD NUMBER(3,0);
--Luego adicionamos el campo NOM_CORTO de tipo Varchar2 (100)
ALTER TABLE tablacorregidacliente add NOM_CORTO VARCHAR2(100);
--Insertamos los valores de edad mediante esta Query:
UPDATE tablacorregidacliente
SET EDAD= TRUNC(MONTHS_BETWEEN(SYSDATE, FEC_NACI)/12);
--Luego Comprobamos para ver si se inserto el capo EDAD: 
SELECT * FROM tablacorregidacliente;

--Ahora Procedemos a insertar los valores del campo NOM_CORTO
UPDATE tablacorregidacliente
SET NOM_CORTO= CONCAT(CONCAT(INITCAP(VAL_NOM1),' '),INITCAP(VAL_APE1));

--Luego Comprobamos para ver si se inserto el capo NOM_CORTO: 
SELECT NOM_CORTO FROM tablacorregidacliente;

--Ahora se procede con la actualizacion de VAL_APE1 reemplazando las ñ y Ñ por n y N
UPDATE tablacorregidacliente
SET VAL_APE1= CASE 
WHEN VAL_APE1 like '%ñ%' THEN REPLACE(VAL_APE1,'ñ','n')
WHEN VAL_APE1 like '%Ñ%' THEN REPLACE(VAL_APE1,'Ñ','N')
WHEN VAL_APE1 is NULL then NULL
ELSE VAL_APE1
END;

--Luego Comprobamos para ver si se inserto el capo VAL_APE1: 
SELECT VAL_APE1 FROM tablacorregidacliente;
SELECT count(*) as ConteoNVal_APE1 FROM tablacorregidacliente where VAL_APE1 like '%ñ%' or VAL_APE1 like '%Ñ%';


--Ahora se procede con la actualizacion de VAL_APE2 reemplazando las ñ y Ñ por n y N
UPDATE tablacorregidacliente
SET VAL_APE2= CASE 
WHEN VAL_APE2 like '%ñ%' THEN REPLACE(VAL_APE2,'ñ','n')
WHEN VAL_APE2 like '%Ñ%' THEN REPLACE(VAL_APE2,'Ñ','N')
WHEN VAL_APE2 is NULL then NULL
ELSE VAL_APE2
END;

--Luego Comprobamos para ver si se inserto el capo VAL_APE2: 
SELECT count(*) as ConteoNVal_APE2 FROM tablacorregidacliente where VAL_APE2 like '%ñ%' or VAL_APE2 like '%Ñ%';

SELECT *  FROM tablacorregidacliente;

COMMIT;
