DROP TABLE IF EXISTS compras;
DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
  cedula CHAR(10) PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL
);

CREATE TABLE compras (
  id_compra INT PRIMARY KEY,
  cedula CHAR(10) NOT NULL,
  fecha_compra DATE NOT NULL,
  monto DECIMAL(10,2) NOT NULL,
  CONSTRAINT fk_cliente FOREIGN KEY (cedula)
    REFERENCES clientes(cedula)
);

INSERT INTO clientes (cedula, nombre, apellido) VALUES
('1750000001','Monica','Perez'),
('1750000002','Luis','Gomez'),
('1750000003','Ana','Torres'),
('1750000004','Carlos','Ramirez'),
('1750000005','Sofia','Lopez'),
('1750000006','Diego','Martinez'),
('1750000007','Paola','Castro'),
('1750000008','Jorge','Mora'),
('1750000009','Elena','Vega'),
('1750000010','Andres','Sanchez');

INSERT INTO compras (id_compra, cedula, fecha_compra, monto) VALUES
(1007,'1750000001','2023-01-15',250.00),
(1008,'1750000002','2023-02-20',300.00),
(1009,'1750000003','2023-03-05',150.00),
(1010,'1750000004','2023-04-10',500.00),
(1011,'1750000005','2023-05-12',200.00),
(1012,'1750000006','2023-06-18',350.00),
(1013,'1750000007','2023-07-25',400.00),
(1014,'1750000008','2023-08-30',600.00),
(1015,'1750000009','2023-09-05',700.00),
(1016,'1750000010','2023-09-21',800.00);


SELECT * FROM clientes;
SELECT * FROM compras;

--Consultas y sobreconsultas
SELECT cl.nombre, cl.apellido
FROM clientes cl
JOIN compras co
  ON cl.cedula = co.cedula
WHERE cl.cedula LIKE '%7%';

SELECT cl.cedula, cl.nombre, cl.apellido
FROM clientes cl
JOIN compras co
  ON cl.cedula = co.cedula
WHERE cl.nombre='Monica';