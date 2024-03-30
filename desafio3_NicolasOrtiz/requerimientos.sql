-- Ejercicio 1 --
-- CHECK! --

-- Ejercicio 2 --
-- CHECK! --

-- Ejercicio 3 --
-- Obtener el ID de la película “Titanic” --
SELECT id, titulo_pelicula
FROM peliculas
WHERE titulo_pelicula = 'Titanic';

-- Ejercicio 4 --
-- Listar a todos los actores que aparecen en la película "Titanic" --
SELECT reparto.id_pelicula, reparto.actor, peliculas.titulo_pelicula
FROM reparto 
INNER JOIN peliculas ON reparto.id_pelicula = peliculas.id
WHERE titulo_pelicula = 'Titanic';

SELECT r.id_pelicula, r.actor, p.titulo_pelicula
FROM reparto r 
INNER JOIN peliculas p ON r.id_pelicula = p.id
WHERE p.titulo_pelicula = 'Titanic';

-- Ejercicio 5 --
-- Consultar en cuántas películas del top 100 participa Harrison Ford --
SELECT COUNT(p.titulo_pelicula)
FROM peliculas p 
INNER JOIN reparto r on r.id_pelicula = p.id
WHERE r.actor = 'Harrison Ford';

SELECT p.titulo_pelicula, r.actor
FROM peliculas p INNER JOIN reparto r on r.id_pelicula = p.id
WHERE r.actor = 'Harrison Ford';

-- Ejercicio 6 --
-- Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente --
SELECT DISTINCT p.titulo_pelicula, p.year_estreno
FROM peliculas p 
INNER JOIN reparto r on r.id_pelicula = p.id
WHERE p.year_estreno BETWEEN '1900' AND '1990' 
ORDER BY p.year_estreno ASC;

-- Ejercicio 7 --
-- Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo” --
SELECT p.titulo_pelicula, LENGTH(p.titulo_pelicula) as longitud_titulo
FROM peliculas p;

SELECT p.titulo_pelicula, LENGTH(p.titulo_pelicula) as longitud_titulo
FROM peliculas p
ORDER BY longitud_titulo ASC;

SELECT p.titulo_pelicula, LENGTH(p.titulo_pelicula) as longitud_titulo
FROM peliculas p
ORDER BY longitud_titulo DESC;

-- Ejercicio 8 --
-- Consultar cual es la longitud más grande entre todos los títulos de las películas --
SELECT p.titulo_pelicula, LENGTH(p.titulo_pelicula) as longitud_titulo
FROM peliculas p
ORDER BY longitud_titulo DESC
LIMIT 1; 




























