create database escuelita;
go;
use escuelita;
create TABLE persona(
    CURP char(18) PRIMARY KEY NOT NULL,
    nombre NVARCHAR(50) NOT NULL,
    FechaNac DATE NOT NULL,
    Direccion NVARCHAR(100)
)
CREATE TABLE carrera(
    Clave CHAR(13) NOT NULL PRIMARY KEY,
    Nombre VARCHAR(60) NOT NULL
)
CREATE TABLE alumno(
    NumControl CHAR(8) NOT NULL UNIQUE,

    CURP CHAR(18) NOT NULL FOREIGN KEY REFERENCES persona(CURP),
    Clave CHAR(13) NOT NULL FOREIGN KEY REFERENCES carrera(Clave)
)
CREATE TABLE docente(
    RFC VARCHAR(13) UNIQUE NOT NULL,
    Profesion VARCHAR(60),
    CURP CHAR(18) NOT NULL FOREIGN KEY REFERENCES persona(CURP),
)