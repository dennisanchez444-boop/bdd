--Srcipt 6
drop table if exists transacciones
create table transacciones(
codigo int not null,
numero_cuenta char(5) not null,
monto money not null,
tipo char(1) not null,
fecha date not null,
hora time not null,
constraint transacciones_pk primary key(codigo)
);

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '2023-09-20', '23:30');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '2022-06-15', '17:55');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '2021-05-17', '16:37');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '2020-04-25', '15:48');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '2019-03-20', '22:19');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(23210, '32015', 400, 'C', '2020-04-25', '13:55');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '2015-12-07', '20:14');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '2012-11-06', '11:00');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '2002-10-23', '09:00');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54143, '85213', 2000, 'C', '1999-09-11', '07:30');
--1
select * from transacciones
where tipo = 'C' and numero_cuenta between '22001' and '22004'
--2
select * from transacciones
where tipo = 'C' and extract(month from fecha)=5 
and extract(day from fecha)=25
and numero_cuenta between '22007' and '22010'
--3
select * from transacciones
where codigo between 1 and 5 and numero_cuenta 
between '22002' and '22004' 
and extract(month from fecha)=5 
and extract(day from fecha) in (26,29)