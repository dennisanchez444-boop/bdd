delete from persona
delete from prestamo

create table persona (
  cedula char(10) primary key,
  nombre varchar(50) not null,
  apellido varchar(50) not null,
  estatura decimal(10,2),
  fecha_nacimiento date not null,
  hora_nacimiento time,
  cantidad_ahorrada money,
  numero_hijos int
);

create table prestamo (
  cedula char(10) not null,
  monto money,
  fecha_prestamo date,
  hora_prestamo time,
  garante varchar(40),
  constraint fk_persona foreign key (cedula)
    references persona(cedula)
);

insert into persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos)
values
('1762000001','Sean','Martinez',1.75,'1995-01-15','08:00',500.00,0),
('1762000002','Ana','Lopez',1.65,'1990-02-20','09:00',1200.00,2),
('1762000003','Luis','Gomez',1.80,'1988-03-25','10:00',800.00,1),
('1762000004','Maria','Torres',1.70,'1992-04-10','11:00',950.00,3),
('1762000005','Carlos','Ramirez',1.78,'1991-05-12','12:00',2000.00,2),
('1762000006','Sofia','Vega',1.68,'1993-06-18','13:00',300.00,0),
('1762000007','Diego','Castro',1.82,'1989-07-22','14:00',400.00,1),
('1762000008','Paola','Mora',1.60,'1994-08-30','15:00',700.00,2),
('1762000009','Jorge','Sanchez',1.76,'1990-09-05','16:00',1500.00,3),
('1762000010','Elena','Benitez',1.64,'1992-10-15','17:00',600.00,1);

insert into prestamo (cedula, monto, fecha_prestamo)
values
('1762000001',500.00,'2023-01-10'),
('1762000002',1200.00,'2023-02-15'),
('1762000003',800.00,'2023-03-20'),
('1762000004',950.00,'2023-04-25'),
('1762000005',2000.00,'2023-05-30'),
('1762000006',300.00,'2023-06-05'),
('1762000007',400.00,'2023-07-12'),
('1762000008',700.00,'2023-08-18'),
('1762000009',1500.00,'2023-09-22'),
('1762000010',600.00,'2023-09-30');

select * from persona
select * from prestamo

--Consultas y subconsultas
SELECT p.cantidad_ahorrada,pr.monto,pr.garante
FROM persona p
JOIN prestamo pr
  ON p.cedula = pr.cedula
WHERE pr.monto::numeric BETWEEN 100 AND 1000;

SELECT *
FROM persona
WHERE cedula = (
  SELECT cedula
  FROM persona
  WHERE nombre = 'Sean'
);