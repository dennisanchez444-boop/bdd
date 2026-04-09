DROP TABLE IF EXISTS empleado;
DROP TABLE IF EXISTS registros_entrada;

create table empleado (
  codigo_empleado int primary key,
  nombre varchar(25) not null,
  fecha date,
  hora time
);

create table registros_entrada (
  codigo_registro int primary key,
  cedula_empleado char(10) not null,
  fecha date not null,
  hora time not null,
  codigo_empleado int not null,
  constraint fk_empleado foreign key (codigo_empleado)
  references empleado(codigo_empleado)
);

insert into empleado (codigo_empleado, nombre, fecha, hora) values
(2201,'Juan','2023-08-01','08:00'),
(2202,'Maria','2023-08-02','09:00'),
(2203,'Carlos','2023-08-03','10:00'),
(2204,'Ana','2023-08-04','11:00'),
(2205,'Luis','2023-08-05','12:00');

insert into registros_entrada (codigo_registro, cedula_empleado, fecha, hora, codigo_empleado) values
(9001,'1761000001','2023-08-10','08:30',2201),
(9002,'1761000002','2023-08-15','09:15',2202),
(9003,'1761000003','2023-09-01','10:00',2203),
(9004,'1761000004','2023-09-05','11:45',2204),
(9005,'1761000005','2023-09-20','12:30',2205),
(9006,'1761000006','2023-10-02','08:10',2201),
(9007,'1761000007','2023-10-15','09:50',2202),
(9008,'1761000008','2023-11-05','10:30',2203),
(9009,'1761000009','2023-12-01','11:20',2204),
(9010,'1761000010','2023-12-20','12:45',2205);

select * from empleado
select * from registros_entrada

--Consultas y subconsultas
select re.cedula_empleado, re.fecha, e.nombre
from registros_entrada re
join empleado e
on re.codigo_empleado = e.codigo_empleado
where (re.fecha between '2023-08-01' and '2023-08-31')
   or (re.cedula_empleado like '%1796%' and re.hora between '08:00' and '12:00')
   or (re.fecha between '2023-10-06' and '2023-10-20'
       and re.cedula_empleado like '08%'
       and re.hora between '09:00' and '13:00');

select e.codigo_empleado, e.nombre
from empleado e
where e.codigo_empleado in (
    select re.codigo_empleado
    from registros_entrada re
    where re.cedula_empleado = '2201'
);