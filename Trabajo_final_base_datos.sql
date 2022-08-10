CREATE DATABASE Veterinaria;

CREATE TABLE Dueno( 
id_especie CHAR(3), 
desc_especie VARCHAR2(25), 
CONSTRAINT cl_especie_pk PRIMARY KEY(id_especie) 
);
