# Base de Datos Peluquería Canina
CREATE DATABASE Peluqueria_Canina;

use Peluqueria_Canina;

#Tabla Dueño
CREATE TABLE Dueno
(
DNI int not null, 
Nombre varchar(30) not null,
Apellido varchar (25) not null,
Telefono varchar (10),
Direccion varchar(50),
CONSTRAINT Id_Dueno PRIMARY KEY (DNI)
);

#Tabla Perro
CREATE TABLE Perro
(
Id_Perro int auto_increment not null,
Nombre varchar(30) not null,
Fecha_Nac date not null,
Sexo varchar(6) not null,
DNI_Dueno int not null, 
CONSTRAINT Id_P PRIMARY KEY (Id_Perro),
CONSTRAINT F_DNI FOREIGN KEY (DNI_Dueno) REFERENCES Dueno(DNI)
);

#Tabla Historial
CREATE TABLE Historial
(
Id_Historial int auto_increment,
Fecha date,
Perro int, 
Descripcion varchar(100),
Monto float,
CONSTRAINT Id_H PRIMARY KEY (Id_Historial),
CONSTRAINT F_Perro FOREIGN KEY (Perro) REFERENCES Perro(Id_Perro)
);

# 2) Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

INSERT INTO Dueno VALUES (35625832, "Martha", "Basualdo", 3584268925, "Pje.Correa  1250");

INSERT INTO Perro (Nombre, Fecha_Nac, Sexo, DNI_Dueno) 
VALUES ( "Terry", "2021-05-04", "Macho", 35625832 );


# 12) Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.

SELECT Id_Perro, Nombre, Fecha_Nac
FROM Perro
WHERE Sexo="Macho"
AND Fecha_Nac BETWEEN "2020-01-01" AND "2022-12-31";

