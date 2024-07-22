/* Creación de la base de datos */

CREATE DATABASE chistes;


CREATE TABLE Chistes (
    id SERIAL PRIMARY KEY,
    contenido TEXT NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    contrasena TEXT NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Tematicas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT
);

CREATE TABLE chistes_tematicas (
    chiste_id INTEGER REFERENCES Chistes(id) ON DELETE CASCADE,
    tematica_id INTEGER REFERENCES Tematicas(id) ON DELETE CASCADE,
    PRIMARY KEY (chiste_id, tematica_id)
);

ALTER TABLE Chistes
ADD COLUMN usuario_id INTEGER REFERENCES Usuarios(id);

