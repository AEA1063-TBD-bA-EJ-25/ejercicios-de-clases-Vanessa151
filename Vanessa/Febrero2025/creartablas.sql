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
SELECT * FROM persona;
CREATE TABLE docente(
    RFC VARCHAR(13) UNIQUE NOT NULL,
    Profesion NVARCHAR(60),
    CURP CHAR(18) NOT NULL FOREIGN KEY REFERENCES persona(CURP),
)
CREATE TABLE administrativo(
    CURP CHAR(18) NOT NULL FOREIGN KEY REFERENCES persona(CURP),
)

INSERT into carrera (Clave, Nombre)
    VALUES('ITIC-2010-225', 'Ingennieria en tecnologias de la informacion y comunicacion')
INSERT into carrera (Clave, Nombre)
    VALUES('IMCT-2010-229', 'Sistemas computacionales')
SELECT * FROM carrera;

INSERT into persona(CURP, nombre, FechaNac,Direccion)
    VALUES ('HERV051015MSLRMNA4', 'Vanessa', '2005-10-15','Barrancos')
SELECT * FROM persona;

