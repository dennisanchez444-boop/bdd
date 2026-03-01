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
values (2133,'92372',210.06,'C','21/01/2026','22:10'),
(2121,'98672',310.06,'C','21/02/2026','21:10'),
(2174,'88472',410.06,'D','21/03/2026','20:10'),
(2543,'91372',10.06,'C','21/04/2026','19:10'),
(8533,'98672',710.06,'D','21/05/2026','22:10'),
(1933,'34672',290.06,'C','21/06/2026','13:10'),
(2803,'75672',210.06,'C','21/07/2026','07:10'),
(8133,'21672',34.06,'D','21/08/2026','03:10'),
(9033,'63672',90.06,'D','21/09/2026','22:32'),
(2373,'89672',20.06,'D','21/10/2026','21:10');
select * from transacciones
