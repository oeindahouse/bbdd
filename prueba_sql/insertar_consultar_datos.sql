INSERT INTO peliculas (id, nombre, anno) VALUES ('1','pelicula1',1991);
INSERT INTO peliculas (id, nombre, anno) VALUES ('2','pelicula2',1992);
INSERT INTO peliculas (id, nombre, anno) VALUES ('3','pelicula3',1993);
INSERT INTO peliculas (id, nombre, anno) VALUES ('4','pelicula4',1994);
INSERT INTO peliculas (id, nombre, anno) VALUES ('5','pelicula',1995);
INSERT INTO tags (id, tag) VALUES ('1','aaaaaaaaaaaaaaa');
INSERT INTO tags (id, tag) VALUES ('1','bbbbbbbbbbbbbbb');
INSERT INTO tags (id, tag) VALUES ('1','ccccccccccccccc');
INSERT INTO tags (id, tag) VALUES ('2','ddddddddddddddd');
INSERT INTO tags (id, tag) VALUES ('2','ddddddddddddddd');
INSERT INTO tags (id, tag) VALUES ('3','eeeeeeeeeeeeeee');
INSERT INTO tags (id, tag) VALUES ('4','fffffffffffffff');
INSERT INTO tags (id, tag) VALUES ('5','ggggggggggggggg');
INSERT INTO tags (id, tag) VALUES ('6','ggggggghfhfhjgj');
INSERT INTO tags (id, tag) VALUES ('7','sewfseewedggggg');

--------------------------------------------------

select * 
from peliculas;

select * 
from tags;

select * 
from ti_peliculastags;

----------------------------------------------

INSERT INTO ti_peliculastags (id_pelicula, id_tag) VALUES ('1','2');
INSERT INTO ti_peliculastags (id_pelicula, id_tag) VALUES ('1','4');
INSERT INTO ti_peliculastags (id_pelicula, id_tag) VALUES ('1','6');
INSERT INTO ti_peliculastags (id_pelicula, id_tag) VALUES ('1','3');
INSERT INTO ti_peliculastags (id_pelicula, id_tag) VALUES ('2','2');
INSERT INTO ti_peliculastags (id_pelicula, id_tag) VALUES ('2','6');
INSERT INTO ti_peliculastags (id_pelicula, id_tag) VALUES ('3','1');

----------------------------------------------

SELECT peliculas.nombre, COUNT(tags.tag)
FROM peliculas
INNER JOIN ti_peliculastags
ON peliculas.id=ti_peliculastags.id_pelicula
INNER JOIN tags
ON ti_peliculastags.id_tag=tags.id
GROUP BY peliculas.nombre;
		
		
































