--Script 1

create table productos(
codigo int not null,
nombre varchar(50) not null,
descripcion varchar(200),
precio money not null,
stock int not null,
constraint productos_pk primary key(codigo)
)
--Crea y ejecuta 5 inserts con todos los componentes
insert into productos(codigo,nombre,descripcion,precio,stock)
values (1836,'Jabon','De buena calidad',5.25,4),
(1436,'Arroz','De buena calidad',15,3),
(3864,'Azucar','De buena calidad',13.5,3),
(0431,'Fideos','De buena calidad',4,1);
select * from productos;
--Crea y ejecuta 3 inserts con los componentes obligatorios
insert into productos(codigo,nombre,precio,stock)
values (1832,'Agua',1,0),
(1434,'CocaCola',3,1),
(3814,'Aceite',7,3);
select codigo,nombre,precio,stock from productos;