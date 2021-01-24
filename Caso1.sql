CREATE DATABASE Trabajador;

\c trabajador

CREATE TABLE Departamento(
id_departamento SERIAL PRIMARY KEY,
Nombre VARCHAR(10)
);

CREATE TABLE Trabajador(
Rut VARCHAR(10) PRIMARY KEY,
Nombre VARCHAR(20),
Direccion VARCHAR(35),
id_departamento INT REFERENCES Departamento(id_departamento)
);

CREATE TABLE Liquidaciones(
id_liquitacion SERIAL,
rut_trabajador VARCHAR(10) REFERENCES Trabajador(Rut),
drive VARCHAR(100)
);












