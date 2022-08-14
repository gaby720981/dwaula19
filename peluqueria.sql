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

insert into dueno values(33467833, 'Lady', 'Gaga', 2128406888, '59 West 44th Street')

select * from dueno

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

insert into perro values (25179, 'Asia', 12/07/2018, 'hembra', 33467833)

select * from perro


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

insert into historial values (453, 13/07/2022, 25179, 'productos antialérgicos', 5800)

select * from historial


7) Obtener los ingresos percibidos en Julio del 2022


select monto
from historial
where fecha>=01/07/2022 and fecha<=30/07/2022
