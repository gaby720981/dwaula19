CREATE DATABASE Peluqueria_canina;
USE Peluqueria_canina;

CREATE TABLE Dueno( 
  DNI INT, 
  Nombre VARCHAR(25),
  Apellido VARCHAR(25),
  Telefono VARCHAR(25),
  Direccion VARCHAR(50),
  CONSTRAINT pk_dni PRIMARY KEY(DNI) 
);

CREATE TABLE Perro( 
  ID_Perro INT, 
  Nombre VARCHAR(25),
  Fecha_nac DATE,
  Sexo VARCHAR(25),
  DNI_dueno INT,
  CONSTRAINT pk_id_perro PRIMARY KEY(ID_Perro) ,
  CONSTRAINT fk_dni_dueno FOREIGN KEY(DNI_dueno)
REFERENCES Dueno (DNI)
);

CREATE TABLE Historial( 
  ID_Historial INT, 
  Fecha DATE,
  Perro VARCHAR(25),
  Descripcion VARCHAR(100),
  Monto FLOAT,
  CONSTRAINT pk_id_historial PRIMARY KEY(ID_Historial),
  CONSTRAINT fk_Perro FOREIGN KEY(Perro)
REFERENCES Perro (ID_Perro)
);

--Ejercicio 1
--La tabla Perro esta creada, veo la tabla vacía:
SELECT * FROM Perro;

--Ejercico 2
INSERT INTO Perro VALUES (1, 'Chispita', 10/02/2019, 'Macho', 654321);
INSERT INTO Dueno VALUES (654321, 'Ariana', 'Verde', '3516225300', 'Calle 123');

--Ejercicio 4 
UPDATE Perro SET Fecha_nac = 12/02/2018 WHERE ID_Perro = 1;

