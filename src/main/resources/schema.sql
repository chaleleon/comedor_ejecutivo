
CREATE TABLE USERS(
    USERNAME VARCHAR(50) NOT NULL PRIMARY KEY,
    PASSWORD VARCHAR(50) NOT NULL,
    ENABLED BOOLEAN NOT NULL
);

CREATE TABLE AUTHORITIES(
    USERNAME VARCHAR(50) NOT NULL,
    AUTHORITY VARCHAR(50) NOT NULL,
    CONSTRAINT FK_AUTHORITIES_USERS
    FOREIGN KEY(USERNAME) REFERENCES USERS(USERNAME)
);

/* Se cambio VARCHAR_IGNORECASE por VARCHAR


CREATE TABLE USUARIOS (
    NOMBRE VARCHAR(50) NOT NULL PRIMARY KEY,
    PASSWORD VARCHAR(50) NOT NULL,
    CORREO VARCHAR(50) NOT NULL
);

CREATE TABLE AUTHORITIES (
    NOMBRE VARCHAR(50) NOT NULL,
    AUTHORITY VARCHAR(50) NOT NULL,
    CONSTRAINT FK_AUTHORITIES_USERS
    FOREIGN KEY(NOMBRE) REFERENCES USUARIOS(NOMBRE)
);
*/