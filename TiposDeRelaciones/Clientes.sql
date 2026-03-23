delete from clientes

create table clientes (
  cedula char(10) primary key,
  nombre varchar(50) not null,
  apellido varchar(50) not null
);

create table compras (
  id_compra int primary key,
  cedula char(10) not null,
  fecha_compra date not null,
  monto decimal(10,2) not null,
  constraint fk_cliente foreign key (cedula)
  references clientes(cedula)
);

insert into clientes (cedula, nombre, apellido) values
('1750000001','Monica','Perez'),
('1750000002','Luis','Gomez'),
('1750000003','Ana','Torres'),
('1750000004','Carlos','Ramirez'),
('1750000005','Sofia','Lopez'),
('1750000006','Diego','Martinez'),
('1750000007','Paola','Castro'),
('1750000008','Jorge','Mora'),
('1750000009','Elena','Vega'),
('1750000010','Andres','Sanchez');

insert into compras (id_compra, cedula, fecha_compra, monto) values
(1007,'1750000001','2023-01-15',250.00),
(1008,'1750000002','2023-02-20',300.00),
(1009,'1750000003','2023-03-05',150.00),
(1010,'1750000004','2023-04-10',500.00),
(1011,'1750000005','2023-05-12',200.00),
(1012,'1750000006','2023-06-18',350.00),
(1013,'1750000007','2023-07-25',400.00),
(1014,'1750000008','2023-08-30',600.00),
(1015,'1750000009','2023-09-05',700.00),
(1016,'1750000010','2023-09-21',800.00);

select * from clientes
select * from compras