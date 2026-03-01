--Script 4

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
(7942,'3743751572','24/10/2002','01:34'),
(2342,'3268751572','24/10/2003','01:34'),
(7042,'3965751572','24/10/2004','01:34'),
(4542,'2351751572','24/10/2005','01:34'),
(3242,'5854751572','24/10/2006','01:34'),
(2142,'9532751572','24/10/2007','01:34'),
(8042,'3569751572','24/10/2008','01:34'),
(4642,'3649751572','24/10/2009','01:34');
select * from registros_entrada