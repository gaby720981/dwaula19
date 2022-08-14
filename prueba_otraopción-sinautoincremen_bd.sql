# A. Crear Base de Datos y Tablas según Modelo Relacional.
# B. Realizar puntos 1 y 2
# 1) Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.

#Base de Datos Peluquería Canina
CREATE DATABASE Peluqueria_Canina;

use Peluqueria_Canina;

#Tabla Dueño
CREATE TABLE Dueno
(
DNI int PRIMARY KEY, 
Nombre varchar(30),
Apellido varchar (25),
Telefono varchar (10),
Direccion varchar(50)
);

#Tabla Perro
CREATE TABLE Perro
(
Id_Perro int PRIMARY KEY,
Nombre varchar(25),
Fecha_Nac date,
Sexo varchar(6),
DNI_Dueno int, FOREIGN KEY (DNI_Dueno) REFERENCES Dueno(DNI)
);

#Tabla Historial
CREATE TABLE Historial
(
Id_Historial int PRIMARY KEY,
Fecha date,
Perro int, FOREIGN KEY (Perro) REFERENCES Perro(Id_Perro),
Descripcion varchar(100),
Monto float
);


# 2) Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

INSERT INTO Dueno VALUES (35625832, "Martha", "Basualdo", 3584268925, "Pje.Correa  1250");

INSERT INTO Perro VALUES ("1", "Terri", "2021-05-04", "Macho", 35625832 );



# 12) Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.

SELECT Id_Perro, Nombre, Fecha_Nac
FROM Perro
WHERE Sexo="Macho"
AND Fecha_Nac BETWEEN "2020-01-01" AND "2022-12-31";
