--Script 4
drop table if exists registros_entrada
create table registros_entrada(
codigo_registro int not null,
cedula_empleado char(10) not null,
fecha date not null,
hora time not null,
constraint registros_entrada_pk primary key(codigo_registro)
);
--Crea y ejecuta 10 inserts
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values (5642,'3734551572','24/10/2000','01:34'),
(6442,'3368751572','24/10/2001','01:34'),
(7942,'3743751572','24/10/2002','03:34'),
(2342,'3268751572','24/10/2003','04:34'),
(7042,'3965751572','24/10/2004','05:34'),
(4542,'2351751572','24/10/2005','06:34'),
(3242,'5854751572','24/10/2006','07:34'),
(2142,'9532751572','24/10/2007','08:34'),
(8042,'3569751572','24/10/2008','09:34'),
(4642,'3649751572','24/10/2009','10:34');
select * from registros_entrada
--Selecciona todas la cedulas de empleado y fecha y hora de los registros de entrada
select cedula_empleado,fecha,hora,codigo_registro from registros_entrada
--Selecciona los registros de entrada que esten entre 7:00 y 14:00
select * from registros_entrada where hora between '07:00' and '14:00'
--Selecciona los registros de entrada que tengan horas superiores a 8:00
select * from registros_entrada where hora > '8:00'