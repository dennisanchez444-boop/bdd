delete from cuentas
delete from usuario

create table usuario (
  cedula char(5) primary key,
  nombre varchar(25) not null,
  apellido varchar(25) not null,
  tipo_cuenta varchar(20),
  limite_credito decimal(10,2)
);

create table cuentas (
  numero_cuenta char(5) primary key,
  cedula_propietario char(5) not null,
  fecha_creacion date not null,
  saldo money not null,
  constraint fk_usuario foreign key (cedula_propietario)
    references usuario(cedula)
);

insert into usuario (cedula, nombre, apellido, tipo_cuenta, limite_credito) values
('17500','Ana','Perez','Ahorros',2000.00),
('17501','Luis','Gomez','Corriente',1500.00),
('17502','Maria','Lopez','Ahorros',1800.00),
('17503','Carlos','Sanchez','Corriente',2500.00),
('17504','Elena','Torres','Ahorros',1200.00),
('17505','Jorge','Ramirez','Corriente',3000.00),
('17506','Paola','Martinez','Ahorros',1700.00),
('17507','Diego','Castro','Corriente',2200.00),
('17508','Sofia','Vega','Ahorros',1600.00),
('17509','Andres','Mora','Corriente',2100.00);

insert into cuentas (numero_cuenta, cedula_propietario, fecha_creacion, saldo)
values 
('25579','17500','2022-09-10',450),
('25580','17501','2022-11-25',600),
('25570','17502','2022-12-21',700),
('25581','17503','2023-02-14',350),
('25582','17504','2023-04-05',999),
('25592','17505','2023-05-12',943),
('25512','17506','2023-06-10',769),
('25583','17507','2023-07-01',500),
('25584','17508','2023-08-20',750),
('25585','17509','2023-09-21',300);

select * from usuario
select * from cuentas

//Consultas y sobreconsultas
SELECT cu.numero_cuenta, us.nombre
FROM cuentas cu
JOIN usuario us 
  ON cu.cedula_propietario = us.cedula
WHERE cu.saldo BETWEEN '100'::money AND '1000'::money;

SELECT cu.numero_cuenta,cu.fecha_creacion,cu.saldo,us.cedula
FROM usuario us
JOIN cuentas cu
  ON us.cedula = cu.cedula_propietario
WHERE cu.fecha_creacion BETWEEN '2022-09-21' AND '2023-09-21';