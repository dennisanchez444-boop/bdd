delete from profesores
delete from estudiantes

create table profesores (
  codigo int primary key,
  nombre varchar(50) not null
);

create table estudiantes (
  cedula char(10) primary key,
  nombre varchar(50) not null,
  apellido varchar(50) not null,
  email varchar(50) not null,
  fecha_nacimiento date,
  codigo_profesor int not null,
  constraint fk_profesor foreign key (codigo_profesor)
    references profesores(codigo)
);

insert into profesores (codigo, nombre) values
(8001,'Francisco'),
(8002,'Maria'),
(8003,'Carlos'),
(8004,'Ana'),
(8005,'Luis');

insert into estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor) values
('1760000001','Pedro','Sanchez','pedro.sanchez@mail.com','2000-01-15',8001),
('1760000002','Lucia','Fernandez','lucia.fernandez@mail.com','2001-02-20',8002),
('1760000003','Diego','Ramirez','diego.ramirez@mail.com','2002-03-25',8003),
('1760000004','Sofia','Martinez','sofia.martinez@mail.com','2000-04-10',8004),
('1760000005','Andres','Gonzalez','andres.gonzalez@mail.com','2001-05-12',8005),
('1760000006','Paola','Vega','paola.vega@mail.com','2002-06-18',8001),
('1760000007','Jorge','Moran','jorge.moran@mail.com','2000-07-22',8002),
('1760000008','Elena','Torres','elena.torres@mail.com','2001-08-30',8003),
('1760000009','Monica','Lozano','monica.lozano@mail.com','2002-09-05',8004),
('1760000010','Carlos','Benitez','carlos.benitez@mail.com','2000-10-15',8005);


select * from profesores
select * from estudiantes