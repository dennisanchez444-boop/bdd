--Srcipt 6
drop table if exists transacciones;

create table transacciones(
codigo int not null,
numero_cuenta char(5) not null,
monto money not null,
tipo char(1) not null,
fecha date not null,
hora time not null,
constraint transacciones_pk primary key(codigo)
);
--Crear y ejecutar 10 inserts
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (2133,'92372',210,'C','21/01/2026','22:10'),
(2121,'98672',310,'C','21/02/2026','21:10'),
(2174,'88472',410,'D','21/09/2026','14:10'),
(2543,'91372',10,'C','21/08/2026','19:10'),
(8533,'98672',710,'D','21/05/2026','22:10'),
(1933,'34672',290,'C','21/06/2026','13:10'),
(2803,'75672',210,'C','21/09/2026','07:10'),
(8133,'21672',34,'D','21/08/2026','03:10'),
(9033,'63672',90,'D','21/09/2026','22:32'),
(2373,'89672',20,'D','21/09/2026','16:10');
select * from transacciones
--Selecciona todas las transacciones con un tipo D
select * from transacciones where tipo = 'D'
--Selecciona las transacciones con montos entre 200 y 2000
select * from transacciones where monto between '200' and '2000'
--Selecciona el codigo,monto,tipo fecha de las transacciones que tengan una fecha diferente a null
select codigo,monto,tipo,fecha from transacciones where fecha is not null
--ACTUALIZACION
select * from transacciones;
update transacciones
set tipo = 'T'
where monto::numeric between 101 and 499
and extract(month from fecha) = 9
and hora between '14:00' and '20:00';