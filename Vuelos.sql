create database Vuelos;
use Vuelos;
create table Usuario(
idCliente int auto_increment primary key,
Tipo_Documento char(2) not null,
Numero_Identificacion varchar(50) not null,
Nombres varchar(50) not null,
Apellidos varchar(50) not null,
Fecha_Nacimiento date default '0000-00-00',
Sexo char(1) not null,
Telefono varchar(50) not null
);
show tables;
show columns from Usuario;
create table Vuelo(
idVuelo int auto_increment primary key,
Numero_Vuelo varchar(50) not null,
Capacidad int not null,
Modelo_Avion varchar(50) not null,
Fecha_Vuelo date default '0000-00-00'
);
show columns from Vuelo;
create table Usuario_Vuelo(
idUsuario_Vuelo int auto_increment primary key,
idVuelo int not null,
idCliente int not null
);
show columns from Usuario_Vuelo;
alter table Usuario_Vuelo add constraint fk_Vuelo foreign key (idUsuario_Vuelo) references Vuelo (idVuelo) on delete cascade on update cascade;
alter table Usuario_Vuelo add constraint fk_Usuario foreign key (idUsuario_Vuelo) references Usuario (idCliente) on delete cascade on update cascade;
insert into Usuario values (null, 'CC', '1099683592',  'Brahian Fernando', 'Astudillo Meza', '1995-07-16', 'M', '3217494526'); 
select * from Usuario;
insert into Usuario values (null, 'TI', '1099683593',  'Diana Carolina', 'Diaz Rincon', '1993-02-17', 'F', '3207494526'); 
insert into Usuario values (null, 'CC', '1099683594',  'Andres Camilo', 'Ospina Cortez', '1996-01-11', 'M', '3227494526'); 
insert into Usuario values (null, 'TI', '1099683595',  'Maria Camila', 'Gomez Cubillos', '1999-06-13', 'F', '3237494526'); 
insert into Usuario values (null, 'CC', '1099683596',  'Jose Fernando', 'Beltran Roman', '1990-08-18', 'M', '3117494526'); 
insert into Vuelo values (null, '120', '200',  'Boeing 747', '2020-04-13');
select * from Vuelo;
insert into Vuelo values (null, '150', '300',  'Airbus A320', '2020-04-16');
insert into Vuelo values (null, '170', '400',  'Túpolev Tu-204', '2020-04-19');
insert into Vuelo values (null, '190', '500',  'Ilyushin Il-96', '2020-04-17');
insert into Vuelo values (null, '110', '600',  ' Bombardier CRJ200', '2020-04-11');