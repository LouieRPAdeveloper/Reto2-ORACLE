Para este reto 2, se considera la importación de los datos del archivo excel Bootcamp_Clientes.xlsx, cuya tabla le llamamos tablacorregida. 
Para la creación de nuevas variables como NOM_CORTO y EDAD, pues se realiza la instrucción ALTER TABLE … ADD, tal como se muestra en la siguiente 
imagen para EDAD:

![image](https://github.com/user-attachments/assets/9c3a65cd-4e57-4b80-ba3c-1fe0317ba3fe)

Imagen 1: creación de un campo EDAD, de tipo NUMBER (3,0). Elaboración Propia

Luego se procede ALTER TABLE para NOM_CORTO:

![image](https://github.com/user-attachments/assets/f846f1a0-81b2-49f6-b59e-ac0d393f8e1d)

Imagen 2: creación de un campo NOM_CORTO, de tipo VARCHAR2(100). Elaboración Propia

Una vez creada los 2 campos llamados NOM_CORTO y EDAD, se encuentran vacías, por lo que se tiene que insertar los valores correspondientes para cada uno:

* Para EDAD, piden la edad actual, teniendo en cuenta que nos dan la fecha de nacimiento (llamado el campo FEC_NAC), por lo que usaremos UPDATE…SET, con la 
finalidad de asignar los valores correspondientes al campo vacío, tal como se muestra en la imagen:

![image](https://github.com/user-attachments/assets/6b08151a-fda1-4a38-adbf-42d5a6c5c059)

Imagen 3: elaboración de la query de inserción de datos a la variable EDAD. Elaboración Propia

Además, en la imagen 3, para realizar el cálculo de años, se realiza la operación MONTHS_BETWEEN para el conteo de meses, luego se divide entre 12 para el 
cálculo de años. Por último, se realiza TRUNC para el truncado de los números hasta el valor entero o decimal anterior, obteniendo finalmente los años de la 
persona, tal como se muestra en la imagen 4: 

![image](https://github.com/user-attachments/assets/6c8f9b4f-6173-4257-b183-ebb2b036280a)

Imagen 4: resultado de la consulta, observando el campo EDAD. Elaboración Propia

* Para el campo NOM_CORTO, piden la unión de VAL_NOM1 y VAL_APE1, considerando que la primera letra de cada atributo se conserve en Mayúscula y el resto en 
minúscula, tal como se muestra en la imagen:

![image](https://github.com/user-attachments/assets/a4a1f7d9-482e-47b4-a447-259c6c920b6f)

Imagen 5: elaboración de la query de inserción de datos a la variable NOM_CORTO. Elaboración Propia

Luego, en la imagen 5, para realizar NOM_CORTO, se utiliza primeramente INITCAP(VAL_NOM1) y INITCAP(VAL_APE1) con la finalidad de obtener la primera letra 
mayúscula y el resto minúsculas para cada variable. Luego se utilizó la opción CONCAT para unir las variables. Por último, se ejecuta la query correspondiente 
(ver imagen 6) obteniendo finalmente los años de la persona, tal como se muestra en la imagen:

![image](https://github.com/user-attachments/assets/397b4789-78ad-4456-852a-530ff63082cf)

Imagen 6: resultado de la consulta, observando el campo NOM_CORTO. Elaboración Propia

- Se pide el generar una sentencia que reemplace la letra “Ñ” por la letra “N” en los atributos VAL_APE1 y VAL_APE2 de la tabla Clientes. Para ello,usaremos
UPDATE…SET, con la finalidad de modificar “Ñ” por la letra “N” tanto para VAL_APE1 y VAL_APE2; adicionando que este todo dentro de un WHEN CASE para detectar
el caracter Ñ usando el LIKE. Al detectarlo, se utiliza REPLACE(VAL_APE1,'ñ','n'), REPLACE(VAL_APE2,'ñ','n'), REPLACE(VAL_APE1,'Ñ','N'), REPLACE(VAL_APE2,'Ñ','N')
tal como se muestra en la imagenes 7 y 8:

![image](https://github.com/user-attachments/assets/9a3dc1aa-8a43-452a-8dd6-6f2da01875ef)

Imagen 7: elaboración de la query de modificación de datos a la variable VAL_APE1. Elaboración Propia

![image](https://github.com/user-attachments/assets/3d5cb261-13f3-4ebf-a1fe-6afe2fdebcc9)

Imagen 8: elaboración de la query de modificación de datos a la variable VAL_APE2. Elaboración Propia.

Luego se comprueba mediante las queries si existe las variables “Ñ” dentro de VAL_APE1 y VAL_APE2 usando like, tal como se muestran en las imágenes 9 y 10: 

![image](https://github.com/user-attachments/assets/faac6a3e-9b17-45e2-96db-f2cc167eb734)

Imagen 9: elaboración de la query consulta  VAL_APE1 si hay algun caracter Ñ. Elaboración Propia.

![image](https://github.com/user-attachments/assets/2ce38c36-80d3-41b7-b799-95811d36ec85)

Imagen 10: elaboración de la query consulta  VAL_APE1 si hay algun caracter Ñ. Elaboración Propia.

![image](https://github.com/user-attachments/assets/8c69aafd-4cc6-4de9-a519-cf7f2fab0543)

Imagen 11: consulta de COD_CLIENTE, VAL_APE1, VAL_APE2, VAL_NOM1, NOM_CORTO. Elaboración Propia

Por ultimo, para guardar todos los cambios, se ejecuta el comando COMMIT, tal como se muestra en la imagen:

![image](https://github.com/user-attachments/assets/764cb98a-2f57-467c-a5ea-233b73deb37b)





