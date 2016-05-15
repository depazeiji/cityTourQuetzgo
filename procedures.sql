USE citytourquetzgo;

DELIMITER $$

CREATE PROCEDURE getTop()
BEGIN
SELECT s.nombre AS nombre, s.calificacion AS calificacion, s.descripcion AS resumen, f.url AS url
  FROM SITIO s, FOTO f
  WHERE f.id_sitio = s.id_sitio
    AND f.portada
  ORDER BY calificacion DESC
  LIMIT 10;
END $$

DELIMITER ;
