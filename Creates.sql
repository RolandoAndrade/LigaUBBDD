CREATE TABLE ROL(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    descripcion TEXT
);

CREATE TABLE USUARIO(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    genero VARCHAR(10) NOT NULL,
    foto VARCHAR NOT NULL,
    correo VARCHAR NOT NULL,
    password VARCHAR NOT NULL,
    rol_id INTEGER REFERENCES ROL(id)
);