--Srcipt 3
drop table if exists  estudiantes
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
('1724567852','Jose','Sali','juan2103','23/10/2002'),
('2384567805','Mario','Sali','juan2104','23/10/2003'),
('1714567892','Anuel','Sali','juan2105','23/10/2004'),
('9044567805','Dennis','Sali','juan2106','23/10/2005'),
('1734567892','Ariel','Sali','juan2107','23/10/2006'),
('1724567805','Solia','Sali','juan2108','23/10/2007');
select * from estudiantes
--Trae el nombre y la cedula de los estudiantes
select nombre,cedula from estudiantes
--Trae los nombre de los estudiantes cuya cedula empiece con 17
select nombre,cedula from estudiantes where cedula like '17%'
--Trae los nombres completos de todos los estudiantes cuyo nombre empieze con A
select nombre,apellido from estudiantes where nombre like 'A%'
--ACTUALIZAR el apellido por Hernandez a todos los estudiantes que tenga una cedula que empieze por 17
select * from estudiantes;
update estudiantes set apellido = 'Hernandez' where cedula like '17%'
--ELIMINAR todos los estudiantes que tenga una cedula que termina por 05
delete from estudiantes
where cedula like '%05'
select* from estudiantes