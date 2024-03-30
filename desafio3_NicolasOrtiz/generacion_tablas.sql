-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
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