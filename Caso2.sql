CREATE DATABASE Colegio;

\c colegio

CREATE TABLE Curso(
id_curso SERIAL PRIMARY KEY,
nombre_curso VARCHAR(25)
);

CREATE TABLE Alumno(
rut VARCHAR(10) PRIMARY KEY,
nombre VARCHAR(20),
id_curso INT REFERENCES Curso(id_curso)
);

CREATE TABLE Profesor(
id_profesor SERIAL PRIMARY KEY,
nombre VARCHAR(20),
departamento VARCHAR(25)
);

CREATE TABLE Prueba(
id_prueba SERIAL PRIMARY KEY,
puntaje INT,
rut_alumno VARCHAR(10) REFERENCES Alumno(rut),
id_profesor INT REFERENCES Profesor(id_profesor)
);

--\i '/mnt/c/users/56951/desktop/desafios_sql/Desafio_modelado/modelacion.sql'