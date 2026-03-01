--Script 5
drop table if exists videojuegos
create table videojuegos(
codigo int not null,
nombre varchar(100) not null,
descripcion varchar(300),
valoracion int not null,
constraint videojuegos_pk primary key(codigo)
);
--Crea y ejecuta 5 inserts con todos los campos
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (3292,'Forza','Multijugador',7),
(5792,'Warzon','Multijugador',10),
(2192,'Fifa','Multijugador',8),
(7592,'Clash','Multijugador',9),
(4092,'Pubg','Multijugador',7);
select * from videojuegos
--Crea y ejecuta 3 inserts con los campos obligatorios
insert into videojuegos(codigo,nombre,valoracion)
values (3242,'Forza',7),
(9792,'Warzon',10),
(5192,'Fifa',8),
(1592,'Clash',9),
(7092,'Pubg',7);
select * from videojuegos
--Selecciona todos los videojuegos con un nombre que empieze con C
select * from videojuegos where nombre like 'C%'
--Selecciona los videojuegos ocn valoracion entre 9 y 10
select * from videojuegos where valoracion between '9' and '10'
--Selecciona videojuegos con descripcion null
select * from videojuegos where descripcion is null
