--Srcipt 3

create table estudiantes(
cedula char(10) not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
email varchar(50) not null,
fecha_nacimiento date not null,
constraint estudiantes_pk primary key(cedula)
)
--Crea y ejecuta 8 inserts
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1234567892','Juan','Sali','juan2101','23/10/2000'),
('3454567892','Julio','Sali','juan2102','23/10/2001'),
('9824567892','Jose','Sali','juan2103','23/10/2002'),
('2384567892','Mario','Sali','juan2104','23/10/2003'),
('9814567892','Anuel','Sali','juan2105','23/10/2004'),
('9044567892','Dennis','Sali','juan2106','23/10/2005'),
('7834567892','Ariel','Sali','juan2107','23/10/2006'),
('4024567892','Solia','Sali','juan2108','23/10/2007');
select * from estudiantes