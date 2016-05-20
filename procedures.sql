USE citytourquetzgo;

DELIMITER $$

CREATE PROCEDURE getTop()
BEGIN
SELECT s.id_sitio AS id_sitio, s.latitud AS latitud, s.longitud AS longitud,
s.nombre AS nombre, s.calificacion AS calificacion, s.descripcion AS resumen, f.url AS url
  FROM SITIO s, FOTO f
  WHERE f.id_sitio = s.id_sitio
    AND f.portada
  ORDER BY calificacion DESC
  LIMIT 10;
END $$

CREATE PROCEDURE getSitio(_id_sitio int)
BEGIN
SELECT s.id_sitio AS id_sitio, s.latitud AS latitud, s.longitud AS longitud,
s.nombre AS nombre, s.calificacion AS calificacion, s.descripcion AS resumen, f.url AS url
  FROM SITIO s, FOTO f
  WHERE f.id_sitio = s.id_sitio
    AND f.portada
    AND s.id_sitio=_id_sitio;
END $$

CREATE PROCEDURE calificar(_id_sitio int, _puntos decimal(4,1))
BEGIN

UPDATE SITIO
SET no_calificadas = no_calificadas + 1
WHERE id_sitio = _id_sitio;

UPDATE SITIO
SET calificacion = ((calificacion*(no_calificadas-1))+_puntos)/no_calificadas
WHERE id_sitio = _id_sitio;
END $$

DELIMITER ;
