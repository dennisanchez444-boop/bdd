--Script 1
drop table if exists productos
create table productos(
codigo int not null,
nombre varchar(50) not null,
descripcion varchar(200),
precio money not null,
stock int not null,
constraint productos_pk primary key(codigo)
);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (1,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (2,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (3,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (4,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (5,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (6,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (7,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (8,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (9,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (10,'Coca Cola',3.50,300);
--Selecciona todos los productos con stock igual a 10 y precio menor a 10
select * from productos
where stock = 10 and precio::numeric < 10
--Seleccionar los nombres y stocks de todos los productos que tengan un m en su nombre o tenga un espacio en blanco en su descripcion
select nombre,stock from productos
where nombre like '%m%' and descripcion is null
--Seleccionar el nombre de todos los productos que tenga null en el campo de descripcion o tengan un stock de 0
select nombre from productos
where descripcion is null or stock = 0