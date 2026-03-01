--Script 2

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
(64352,'76334','20/01/2025',546.03),
(43152,'13234','20/12/2025',547.03),
(79352,'32434','20/11/2025',548.03),
(79212,'24534','20/09/2025',549.03);
select * from cuentas