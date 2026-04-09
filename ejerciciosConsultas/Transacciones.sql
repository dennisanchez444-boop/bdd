DROP TABLE IF EXISTS banco;
DROP TABLE IF EXISTS transacciones;

create table transacciones (
  codigo int primary key,
  numero_cuenta char(5) not null,
  monto money not null,
  tipo char(1) not null,
  fecha date,
  hora time
);

create table banco (
  codigo_banco int primary key,
  codigo_transaccion int,
  detalle varchar(100),
  constraint fk_transaccion foreign key (codigo_transaccion)
    references transacciones(codigo)
);

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) values
(1, '22001', 150.00, 'c', '2026-03-23', '10:30'),
(2, '22002', 200.00, 'c', '2026-03-23', '11:00'),
(3, '22003', 300.00, 'c', '2026-03-23', '11:30'),
(4, '22004', 400.00, 'c', '2026-03-23', '12:00'),
(5, '23001', 500.00, 'd', '2026-03-23', '12:30'),
(6, '23002', 600.00, 'd', '2026-03-23', '13:00'),
(7, '23003', 700.00, 'c', '2026-03-23', '13:30'),
(8, '23004', 800.00, 'd', '2026-03-23', '14:00'),
(9, '24001', 900.00, 'c', '2026-03-23', '14:30'),
(10,'24002',1000.00, 'd', '2026-03-23', '15:00');

insert into banco (codigo_banco, codigo_transaccion, detalle) values
(101, 1, 'depósito inicial en cuenta 22001'),
(102, 2, 'depósito en cuenta 22002'),
(103, 5, 'retiro en cuenta 23001'),
(104, 7, 'depósito en cuenta 23003'),
(105, 9, 'depósito en cuenta 24001');

select * from transacciones;
select * from banco;

--Consultas y subconsultas
select * from transacciones
where tipo = 'c'
  and numero_cuenta between '22001' and '22004';

select * from transacciones
where codigo in (
    select codigo_transaccion
    from banco
    where codigo_banco = 101
);