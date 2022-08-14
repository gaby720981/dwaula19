#Subir un script SQL que constará, de la creación de la base de datos con sus tablas y los datos necesarios en las mismas, para poder realizar una consulta a elección por estudiante (de los propuestos desde el Nro 3 al 12) y subirlo posteriormente a su propia rama en el GitHub.

#A. Crear Base de Datos y Tablas según Modelo Relacional.
#B. Realizar puntos 1 y 2
#C. Elegir algunos de los puntos 3 al 12 y agregarlo al script  (diferentes entre cada uno de los integrantes)
#D. Subir Script .sql con todos los puntos mencionados a su rama personal del GitHub grupal

create database Peluqueria_canina;

use Peluqueria_canina;

create table Dueno(
DNI int,
Nombre varchar (25),
Apellido varchar (25),
Telefono varchar(15),
Direccion varchar (45),
constraint pk_cd primary key(DNI)
);
# 1. Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.

create table Perro(
ID_perro int,
Nombre varchar (25),
Fecha_nac date,
Sexo varchar (10),
DNI_dueño int,
constraint pk_cp primary key(ID_perro),
constraint fk_cd1 foreign key(DNI_dueño) references dueño(DNI)
);

create table Historial(
ID_historial int,
Fecha datetime,
Perro int,
Descripcion varchar(50),
Monto float,
constraint pk_ch primary key (ID_historial),
constraint fk_ch1 foreign key (perro) references perro(ID_perro)
);

# 2. Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

INSERT INTO Dueno

VALUES (35123456, Gonzalo, Perez, 0303456, Córdoba);

INSERT INTO Perro
VALUES (00001, Manchita, 05052020, Femenino, 35123456);

# 10) Vaciar la tabla historial y resetear el contador del campo ID.

TRUNCATE TABLE Historial;

