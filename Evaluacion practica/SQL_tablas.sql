/* 
create database notas;

drop table notas_categorias;
drop table notas;
drop table categorias;
drop table usuarios;
*/
create table usuarios (
id int auto_increment not null,
nombre varchar(20) not null,
apellido varchar(20) not null,
email varchar(50) unique not null,
primary key(id)
);

create table notas(
id int auto_increment not null,
titulo varchar(100) not null,
fecha_creacion date not null ,
fecha_modificacion date not null,
eliminar char(1) not null,
id_usuario int not null,
primary key(id),
foreign key(id_usuario) references usuarios(id)
);

create table categorias(
id int auto_increment not null,
nombre varchar(20) not null,
primary key(id)
);

create table notas_categorias(
id int auto_increment not null,
id_nota int not null,
id_categoria int not null,
primary key(id),
foreign key(id_nota) references notas(id),
foreign key(id_categoria) references categorias(id)
);

