CREATE DATABASE Peluqueria_canina;
use Peluqueria_canina;
CREATE TABLE Dueno
(DNI int PRIMARY KEY,
Nombre varchar(25),
Apellido varchar(30),
Telefono varchar(10),
Direccion varchar(60));
CREATE TABLE Perro
(id_Perro int PRIMARY KEY,
Nombre varchar(30),
Fecha_Nac date,
Sexo varchar(6),
DNI_Dueno int, FOREIGN KEY(DNI_Dueno)REFERENCES 
Dueno(DNI));
CREATE TABLE Historial
(id_Historial int PRIMARY KEY,
Fecha date,
Perro int, FOREIGN KEY(Perro) REFERENCES 
Perro(id_Perro),
Descripcion varchar(130),
Monto float);

insert into Dueno values(40963515,"Andres","Bonilla",3513926572,"Calle publica 123");

insert into Perro values(1,"Bunky","2020-08-27","Macho",40963515);
