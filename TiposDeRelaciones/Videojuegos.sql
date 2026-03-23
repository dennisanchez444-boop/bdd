delete from videojuegos
delete from plataformas

create table videojuegos (
  codigo int primary key,
  nombre varchar(100) not null,
  descripcion varchar(300),
  valoracion int
);

create table plataformas (
  id_plataforma int primary key,
  nombre_plataforma varchar(50) not null,
  codigo_videojuego int not null,
  constraint fk_videojuego foreign key (codigo_videojuego)
    references videojuegos(codigo)
);

insert into videojuegos (codigo, nombre, descripcion, valoracion) values
(6001,'Call of Duty','Juego de Guerra moderna',9),
(6002,'God of war','Aventura épica de Guerra',10),
(6003,'Minecraft','Construcción y creatividad',8),
(6004,'Cyberpunk','Futuro distópico con Guerra urbana',7),
(6005,'Diablo','Juego de rol con demonios',9),
(6006,'Zelda','Aventura fantástica',10),
(6007,'Counter Strike','Shooter de Guerra táctica',8),
(6008,'Dark Souls','Juego desafiante con Guerra medieval',9),
(6009,'FIFA','Simulación de fútbol',7),
(6010,'Pokémon','Criaturas y batallas',8);

insert into plataformas (id_plataforma, nombre_plataforma, codigo_videojuego) values
(7001,'PC',6001),
(7002,'PlayStation',6002),
(7003,'Xbox',6003),
(7004,'Nintendo Switch',6004),
(7005,'PC',6005),
(7006,'PlayStation',6006),
(7007,'PC',6007),
(7008,'Xbox',6008),
(7009,'Mobile',6009),
(7010,'PC',6010);

select * from videojuegos
select * from plataformas