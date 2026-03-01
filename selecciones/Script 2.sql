--Script 2
drop table if exists cuentas
create table cuentas(
numero_cuenta char(5) not null,
cedula_propietario char(5) not null,
fecha_creacion date not null,
saldo money not null,
constraint cuentas_pk primary key(numero_cuenta)
)
--Crea y ejecuta 10 inserts
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (67352,'12334','20/07/2025',540.03),
(86232,'15534','20/06/2025',541.03),
(67332,'11234','20/05/2025',542.03),
(67354,'19734','20/04/2025',543.03),
(67308,'19634','20/03/2025',544.03),
(76352,'10934','20/02/2025',545.03),
(64352,'76334','01/01/2026',546.03),
(43152,'13234','01/03/2026',547.03),
(79352,'32434','01/04/2026',548.03),
(79212,'24534','01/02/2026',549.03);
select * from cuentas
--Trae el numeron de cuenta y el saldo de todas las cuentas
select numero_cuenta,saldo from cuentas
--Trae los registros entre el dia de hoy hasta dos meses antes
select * from cuentas where fecha_creacion between  '2026/01/01' and '2026/03/01'
--Trae el numero de cuenta y el saldo de las cuentas desde el dia de hoy hasta 2 mese antes
select numero_cuenta,saldo from cuentas where fecha_creacion between  '2026/01/01' and '2026/03/01'