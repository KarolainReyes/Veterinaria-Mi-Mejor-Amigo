CREATE DATABASE IF NOT EXISTS veterinaria;
USE veterinaria;

 -- Creacion de tablas
 
 CREATE TABLE IF NOT EXISTS duenios(
 id_duenio INT auto_increment PRIMARY KEY NOT NULL,
 nombre VARCHAR(100) NOT NULL,
 cedula VARCHAR(50) NOT NULL,
 telefono VARCHAR(100) NOT NULL,
 correo VARCHAR(100) NOT NULL);
 
CREATE TABLE IF NOT EXISTS mascotas(
 id_mascota INT auto_increment PRIMARY KEY NOT NULL,
 nombre VARCHAR(100) NOT NULL,
 especie VARCHAR(100) NOT NULL,
 raza VARCHAR(100) NOT NULL,
 sexo VARCHAR(100) NOT NULL,
 edad INT NOT NULL,
 vacunado TINYINT NOT NULL,
 id_duenio INT,
 FOREIGN KEY(id_duenio) REFERENCES duenios(id_duenio));
 
 CREATE TABLE IF NOT EXISTS servicios(
 id_servicio INT auto_increment PRIMARY KEY NOT NULL,
 nombre VARCHAR(100) NOT NULL,
 descripcion VARCHAR(250) NOT NULL,
 precio_base INT NOT NULL
 );
 
 CREATE TABLE IF NOT EXISTS visitas (
 id_visita INT auto_increment PRIMARY KEY NOT NULL,
 fecha DATE NOT NULL,
 id_mascota INT,
 id_servicio INT,
 FOREIGN KEY(id_mascota) REFERENCES mascotas(id_mascota),
 FOREIGN KEY(id_servicio) REFERENCES servicios(id_servicio)
 );
 
 CREATE TABLE IF NOT EXISTS tratamientos (
 id_tratamiento INT auto_increment PRIMARY KEY NOT NULL,
 nombre VARCHAR(100) NOT NULL,
 observaciones VARCHAR (250) NOT NULL,
 id_visita INT,
 FOREIGN KEY (id_visita) REFERENCES visitas(id_visita)
 );
 