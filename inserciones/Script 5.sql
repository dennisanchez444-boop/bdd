--Script 5

create table videojuegos(
codigo int not null,
nombre varchar(100) not null,
descripcion varchar(300),
valoracion int not null,
constraint videojuegos_pk primary key(codigo)
);
--Crea y ejecuta 5 inserts con todos los campos
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values (3292,'Forza','Multijugador',5),
(5792,'Warzon','Multijugador',5),
(2192,'Fifa','Multijugador',4),
(7592,'Clash','Multijugador',3),
(4092,'Pubg','Multijugador',4);
select * from videojuegos
--Crea y ejecuta 3 inserts con los campos obligatorios
insert into videojuegos(codigo,nombre,valoracion)
values (3242,'Forza',5),
(9792,'Warzon',5),
(5192,'Fifa',4),
(1592,'Clash',3),
(7092,'Pubg',4);
select * from videojuegos