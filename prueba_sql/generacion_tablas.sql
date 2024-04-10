-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public.peliculas
(
    id integer,
    nombre character varying(255) NOT NULL,
    anno integer NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.tags
(
    id integer,
    tag character varying(32) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.ti_peliculastags
(
    id_pelicula integer NOT NULL,
    id_tag integer NOT NULL
);

ALTER TABLE IF EXISTS public.ti_peliculastags
    ADD FOREIGN KEY (id_pelicula)
    REFERENCES public.peliculas (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.ti_peliculastags
    ADD FOREIGN KEY (id_tag)
    REFERENCES public.tags (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;