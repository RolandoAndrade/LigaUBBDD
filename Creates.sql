CREATE TABLE ROL(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    descripcion TEXT
);

CREATE TABLE UNIVERSIDAD(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    foto VARCHAR NOT NULL
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
    rol_id INTEGER REFERENCES ROL(id) NOT NULL,
    universidad_id INTEGER REFERENCES UNIVERSIDAD(id)
);

CREATE TABLE EQUIPO(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    deporte VARCHAR(20) NOT NULL,
    genero VARCHAR(10) NOT NULL,
    categoria VARCHAR(20),
    entrenador_id INTEGER REFERENCES USUARIO(id) NOT NULL,
    universidad_id INTEGER REFERENCES UNIVERSIDAD(id) NOT NULL
);

CREATE TABLE ATLETA(
    id SERIAL PRIMARY KEY,
    fecha_ingreso DATE NOT NULL,
    fecha_cese DATE,
    status VARCHAR(30) NOT NULL,
    usuario_id INTEGER REFERENCES USUARIO(id) NOT NULL,
    equipo_id INTEGER REFERENCES EQUIPO(id) NOT NULL
);

CREATE TABLE CANCHA(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    direccion TEXT NOT NULL
);

CREATE TABLE COMPETICION(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    deporte VARCHAR(20) NOT NULL,
    foto VARCHAR NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    genero VARCHAR(10) NOT NULL,
    fecha_cierre_incripcion DATE NOT NULL
);

CREATE TABLE FAVORITO(
    id SERIAL PRIMARY KEY,
    usuario_id INTEGER REFERENCES USUARIO(id) NOT NULL,
    competicion_id INTEGER REFERENCES COMPETICION(id) NOT NULL
);

CREATE TABLE PARTICIPACION(
    id SERIAL PRIMARY KEY,
    equipo_id INTEGER REFERENCES EQUIPO(id) NOT NULL,
    competicion_id INTEGER REFERENCES COMPETICION(id) NOT NULL
);

CREATE TABLE PARTIDO(
    id SERIAL PRIMARY KEY,
    fecha_hora TIMESTAMP NOT NULL,
    resultado_local INTEGER,
    resultado_visitante INTEGER,
    status VARCHAR(30) NOT NULL,
    jornada INTEGER NOT NULL,
    local INTEGER REFERENCES PARTICIPACION(id) NOT NULL,
    visitante INTEGER REFERENCES PARTICIPACION(id) NOT NULL,
    cancha_id INTEGER REFERENCES CANCHA(id) NOT NULL
);

CREATE TABLE CONVOCATORIA(
    id SERIAL PRIMARY KEY,
    asistente BOOLEAN NOT NULL,
    titular BOOLEAN NOT NULL,
    partido_id INTEGER REFERENCES PARTIDO(id) NOT NULL,
    equipo_id INTEGER REFERENCES EQUIPO(id) NOT NULL, --YA QUE SE PERMITEN QUE ATLETAS DE UN EQUIPO JUEGUEN EN OTRO
    atleta_id INTEGER REFERENCES ATLETA(id) NOT NULL
);