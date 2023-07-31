Create database dbPracticaG04
go
Use dbPracticaG04
go

create table Rol(
[Id] int not null primary key identity(1,1),
[Nombre] varchar (100) not null 
)	
go

create table Usuario(
[Id] int not null primary key identity (1,1),
[IdRol] int not null ,
[Nombre] varchar(100),
[Apellido] varchar(100),
[Login] varchar(100),
[Password] varchar(100),
[Estatus] tinyint not null,
[FechaRegistro] datetime not null,
foreign key (IdRol) references Rol(id)
)