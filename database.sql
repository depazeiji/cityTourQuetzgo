CREATE TABLE SITIO(
  id_sitio int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  nombre varchar(150) NOT NULL,
  calificacion number(4,2) NOT NULL DEFAULT 0,
  descripcion varchar(500) NOT NULL DEFAULT ''
)

CREATE TABLE COMENTARIO(
  id_comentario int NOT NULL PRIMARY KEY,
  contenido varchar(300) NOT NULL DEFAULT '',
  id_sitio int,
  CONSTRAINT COMENTARIO_SITIO
    FOREIGN KEY (id_sitio)
    REFERENCES SITIO(id_sitio)
)
