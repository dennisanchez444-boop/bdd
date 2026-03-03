--Script 1
drop table if exists productos;
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
(0431,'Fideos','De buencalidad',4,1);
select * from productos;
--Crea y ejecuta 3 inserts con los componentes obligatorios
insert into productos(codigo,nombre,precio,stock)
values (1832,'Agua',1,0),
(1434,'CocaCola',2,5),
(3814,'Aceite',7,3);
select codigo,nombre,precio,stock from productos;
--Traer todos los productos que empiezen con la A
select * from productos
where nombre like 'A%';
--Traer los productos cpn descrpcion null
select * from productos where descripcion is null
--Traer todos los productos con un precio entre 2 y 3
select * from productos where precio::numeric between 2 and 3;
--ACTALIZACIONER el stock a 0 en todos los productos donde la descripcion sea null
select * from productos;
update productos set stock = 0 where codigo is not null
--ELIMINAR todos los productos donde la descripcion sea null
delete from productos
where descripcion is null
select * from productos