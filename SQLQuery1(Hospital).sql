/*Wendy Liseth Chacon Pineda*/

create database Hospital

use Hospital

create table pacientes(
NumeroDHistorialClinico int primary key identity (1,1) not null,
NumeroDSeguridadSocial int unique not null,
Nombre varchar(30) not null,
Apellido varchar(30) not null ,
Domicilio varchar(50) not null,
Provincia varchar(50) not null,
CodigoPostal varchar(50) not null, 
ObservacionesPacientes varchar(50) not null,
Sexo varchar(50) not null
);

/*select * from Pacientes 
drop table SexoPacientes*/

insert into Pacientes values(224, 'Maria', 'Torres','San Ignacio','Chalatenango','CodP 1508', 'Alergico a la piña','Femenino');
insert into Pacientes values(237, 'Ricardo', 'Perez','La Palma','Chalatenango','CodP 1508', 'Alergico a la penicilina','Masculino');
insert into Pacientes values(239, 'Mirna', 'Hernandez','Citala','Chalatenango','CodP 1508', 'Alergica a los analgesicos','Femenino');
insert into Pacientes values(242, 'Marta', 'Gutierrez','El limon','Chalatenango','CodP 1508', 'Alergico a anticonvulsivos','Femenino');
insert into Pacientes values(245, 'Judith', 'Chacon','La Palma','Chalatenango','CodP 1508', 'Alergico a la aspirina','Femenino');
insert into Pacientes values(304, 'Azucena', 'Mancia','Cabañas','Chalatenango','CodP 1508', 'Alergico a la ibuprofeno','Femenino');
insert into Pacientes values(310, 'July', 'Ramirez','Tejutla','Chalatenango','CodP 1508', 'Alergico al mani','Femenino' );
insert into Pacientes values(320, 'Karla', 'Fuentes','La Reina','Chalatenango','CodP 1508', 'Alergico a las almendras','Femenino');
insert into Pacientes values(340, 'Carlos', 'Juarez','Las Flores','Chalatenango','CodP 1508', 'Alergico a las picaduras de abeja','Masculino');
insert into Pacientes values(456, 'Rigoberto', 'Montalvo','Las mesas','Chalatenango','CP 1301', 'Alergico a anticonvulsivos','Masculino');

select * from Pacientes 

/*Paciente telefono*/
create table TelefonoPaciente(
FK_NumeroDHistorialClinico int foreign key(FK_NumeroDHistorialClinico) references Pacientes (NumeroDHistorialClinico) primary key not null,
telefono1 varchar(30) not null,
telefono2 Varchar (30) null,
telefono3 varchar (30) null);

insert into  TelefonoPaciente values (1,'509-3294','639-9371', '809-4199');
insert into  TelefonoPaciente values(2,'893-5009','569-9771', '509-4199');
insert into  TelefonoPaciente values(3,'409-5207','893-5127', '440-5147');
insert into  TelefonoPaciente values(4,'809-5127','399-9371', '409-0000');
insert into  TelefonoPaciente values(5,'409-5147','569-5009', '599-5147');
insert into  TelefonoPaciente values(6,'409-5997','399-5147', '509-4199');
insert into  TelefonoPaciente values(7,'809-5127','709-9771', '430-9771');
insert into  TelefonoPaciente values(8,'409-5997','893-9371', '137-4199');
insert into  TelefonoPaciente values(9,'569-5007','709-5009', '509-9771');
insert into  TelefonoPaciente values(10,'809-5007','709-9371', '430-4199');

select * from TelefonoPaciente;

/*create table SexoPacientes(
pSexoId  int identity (1,1) primary key ,
sexo varchar(30) not null);

insert into SexoPacientes values('Masculino');
insert into SexoPacientes values('Femenino');
select * from SexoPacientes*/

/*drop table Ingresos*/

create table Ingresos(
procedencia varchar(50) not null,
fechaDeIngreso date not null  ,
numeroDePlanta int not null,
numeroDeCama int  not null ,
observaciones  varchar(50) not null,
FK_NumeroDHistorialClinico int foreign key(FK_NumeroDHistorialClinico) references Pacientes (NumeroDHistorialClinico) not null,
FK_CodIdMedico int foreign key(FK_CodIdMedico) references Medicos (CodIdMedico) not null,
);

insert into  Ingresos  values ('Chalatenango','2021-04-22',4,10,'Alergico a las picaduras de abeja',1, 1);
insert into  Ingresos  values ('Chalatenango','2021-04-15',7,12,'Alergia a la anestesia',2, 2);
insert into  Ingresos  values ('Chalatenango','2021-04-26',3,11,'Alergico a la penicilina',3, 3);
insert into  Ingresos  values ('Chalatenango','2021-04-27',6,34,'Dieta de liquidos',4, 4);
insert into  Ingresos  values ('Chalatenango','2021-04-08',5,33,'Alergico a la ibuprofeno',6, 5);
insert into  Ingresos  values ('Chalatenango','2021-04-09',3,26,'Alergico a las picaduras de abeja',7, 6);
insert into  Ingresos  values ('Chalatenango','2021-10-01',2,23,'Dieta de liquidos',8, 7);
insert into  Ingresos  values ('Chalatenango','2021-09-14',3,63,'Alergico a la ibuprofeno',9, 8);
insert into  Ingresos  values ('Chalatenango','2021-10-30',5,34,'Alergico a las picaduras de abeja',10, 9);
insert into  Ingresos  values ('Chalatenango','2021-09-24',3,22,'Alergico a anticonvulsivos',11, 10);
insert into  Ingresos  values ('Chalatenango','2021-08-23',6,34,'Alergico a la penicilina',1, 11);
insert into  Ingresos  values ('Chalatenango','2021-12-07',3,65,'Alergico a anticonvulsivos',2, 10);
insert into  Ingresos  values ('Chalatenango','2021-09-28',1,32,'Dieta de liquidos',3, 1);
insert into  Ingresos  values ('Chalatenango','2021-01-23',3,33,'Alergico a la penicilina',4, 2);
insert into  Ingresos  values ('Chalatenango','2021-08-14',1,34,'Alergico a anticonvulsivos',5, 4);
insert into  Ingresos  values ('Chalatenango','2021-08-11',4,35,'Alergico a la penicilina',11, 5);
insert into  Ingresos  values ('Chalatenango','2021-09-12',2,36,'Alergico al naproxeno',10, 11);

select * from Ingresos;

 create table Medicos(
 CodIdMedico int primary Key identity (1,1)not null,
 Nombre varchar(30) not null,
 Apellido varchar(30) not null,
 Especialidad int foreign key (Especialidad) references Especialidad(idEspecialidad) not null,
 NumColegiado int unique not null,
 cargo varchar(30) not null
 );

 insert into  Medicos  values ('Jose','Diaz',1, 12364, 'Medico responsable');
 insert into  Medicos  values ('Joel','Martinez',2, 12455, 'Medico responsable ');
 insert into  Medicos  values ('Maria','Torres',4, 14585, 'Medico especialista ');
 insert into  Medicos  values ('Josue','Castillo',3, 12364, 'Medico asistente ');
 insert into  Medicos  values ('Fernando','Perez',6, 14515, 'Medico especialista  ');
 insert into  Medicos  values ('lucas','Pineda',5, 12645, 'Medico asistente ');

  select * from Medicos;
 
 /*drop table Especialidad*/
 create table Especialidad(
 idEspecialidad int primary key identity(1,1),
 Especialidad varchar(50) not null
);

insert into  Especialidad values ('Pediatria');
insert into  Especialidad values ('Urologia');
insert into  Especialidad values ('Endocrinologia');
insert into  Especialidad values ('Psquiatria');
insert into  Especialidad values ('Urologia');
insert into  Especialidad values ('Cardiologia');

select *  from Especialidad
/*drop table Pacientes*/