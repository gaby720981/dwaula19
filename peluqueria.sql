create database peluqueria

use peluqueria

--Table dueno
create table dueno(
dni int,
nombre varchar (20),
apellido varchar (20),
telefono varchar(20),
direccion varchar (30),
constraint pk_cd primary key(dni)
)

--Table perro
create table perro(
id_perro int,
nombre varchar (20),
fecha_nac smalldatetime,
sexo varchar (10),
dni_dueno int,
constraint pk_cp primary key(id_perro),
constraint fk_cd1 foreign key(dni_dueno) references dueno(dni)
)

--Table historial
create table historial(
id_historial int,
fecha smalldatetime,
perro_p int,
descripcion varchar(50),
monto float,
constraint pk_ch primary key (id_historial),
constraint fk_ch1 foreign key (perro_p) references perro(id_perro)
)
