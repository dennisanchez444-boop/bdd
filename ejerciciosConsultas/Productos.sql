DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS productos;

create table productos (
  codigo int primary key,
  nombre varchar(50) not null,
  descripcion varchar(200),
  precio money not null,
  stock int not null
);

create table ventas (
  id_venta int primary key,
  codigo_producto int not null,
  fecha_venta date not null,
  cantidad int,
  constraint fk_producto foreign key (codigo_producto)
    references productos(codigo)
);

insert into productos (codigo, nombre, descripcion, precio, stock) values
(2001,'Mouse','Dispositivo de entrada',20.00,50),
(2002,'Monitor','Pantalla LED',150.00,30),
(2003,'Memoria USB',null,10.00,100),
(2004,'Teclado','Teclado mecánico',40.00,25),
(2005,'Impresora','Impresora multifuncional',120.00,15),
(2006,'Camara','Camara digital',200.00,10),
(2007,'Microfono','Microfono condensador',80.00,20),
(2008,'Tablet','Tablet Android',250.00,12),
(2009,'Smartphone','Celular gama media',300.00,18),
(2010,'Laptop','Portátil 15 pulgadas',800.00,8);

insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) values
(3001,2001,'2023-01-10',2),
(3002,2002,'2023-02-15',1),
(3003,2003,'2023-03-20',5), 
(3004,2004,'2023-04-25',3),
(3005,2005,'2023-05-30',2),
(3006,2006,'2023-06-05',4),
(3007,2007,'2023-07-12',1),
(3008,2008,'2023-08-18',2),
(3009,2009,'2023-09-22',3),
(3010,2010,'2023-09-30',1);

select * from productos
select * from ventas

--Consultas y subconsultas
select p.nombre, p.stock, v.cantidad
from productos p
join ventas v
on p.codigo = v.codigo_producto
where p.nombre like '%m%'
   or p.descripcion is null;

select p.nombre, p.stock
from productos p
join ventas v
on p.codigo = v.codigo_producto
where v.cantidad = 5;