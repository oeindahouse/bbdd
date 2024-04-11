INSERT INTO usuarios (id, nombre, edad) VALUES ('2','nombre2','20');
INSERT INTO usuarios (id, nombre, edad) VALUES ('3','nombre3','30');
INSERT INTO usuarios (id, nombre, edad) VALUES ('4','nombre4','40');

INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES ('1','2+2','4');
INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES ('2','5*5','25');
INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES ('3','6*6','36');

INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES ('1','4','1','1');
INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES ('2','4','2','1');
INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES ('3','25','3','2');
INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES ('4','7','4','1');
INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES ('5','35','4','3');

SELECT *
FROM usuarios;

SELECT *
FROM preguntas;

SELECT *
FROM respuestas;

SELECT u.nombre AS nombre_usuario, COUNT(r.respuesta) AS respuestas_correctas
FROM usuarios u
INNER JOIN respuestas r 
ON u.id = r.usuario_id
INNER JOIN preguntas p
ON r.pregunta_id=p.id AND p.respuesta_correcta = r.respuesta
GROUP BY u.nombre;

SELECT p.id AS id_pregunta, p.pregunta, p.respuesta_correcta, COUNT(r.usuario_id) AS usuarios_correctos
FROM preguntas p
LEFT JOIN respuestas r ON p.id = r.pregunta_id AND p.respuesta_correcta = r.respuesta
GROUP BY p.id, p.pregunta, p.respuesta_correcta;

ALTER TABLE usuarios ADD CONSTRAINT check_edad_mayor_igual_18 CHECK (edad >= 18);

ALTER TABLE usuarios ADD COLUMN email character varying(255) UNIQUE;



























