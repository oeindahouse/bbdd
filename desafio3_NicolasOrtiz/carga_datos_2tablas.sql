BEGIN;


CREATE TABLE IF NOT EXISTS public.reparto
(
    id_pelicula integer NOT NULL,
    actor character varying(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.peliculas
(
    id integer,
    titulo_pelicula character varying(50) NOT NULL,
    year_estreno integer NOT NULL,
    director_pelicula character varying(50) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.reparto
    ADD FOREIGN KEY (id_pelicula)
    REFERENCES public.peliculas (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;

COPY peliculas(id, titulo_pelicula, year_estreno, director_pelicula)
FROM 'C:\peliculas.csv'
DELIMITER ',' CSV HEADER;

select * from peliculas;


ALTER TABLE peliculas ALTER COLUMN titulo_pelicula TYPE TEXT;



COPY reparto(id_pelicula, actor)
FROM 'C:\reparto.csv'
DELIMITER ',' CSV HEADER;

SELECT * FROM reparto;























