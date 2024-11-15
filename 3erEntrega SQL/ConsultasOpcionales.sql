/*MOSTRAR LOS EVENTOS QUE SE REALIZARÁN EN LOS PROXIMOS 7 DÍAS CON FECHA,
HORA, LUGAR Y ORGANIZADOR*/
select nomEvento, fechaInicio, usuarioCreador
from evento
where fechaInicio between NOW() and DATE_ADD(NOW(), interval 7 day);

/*DADO UN USUARIO, CONTAR EL NUMERO DE PUBLICACIONES DE CADA GRUPO QUE
INTEGRE*/
select g.nomgrupo, count(pg.idpublicacion) as numeroPublicaciones
from miembros m
join grupo g on m.nomgrupo = g.nomgrupo
join publicaciongrupo pg on m.nomgrupo = pg.nomgrupo
where m.usuario = 'Ivan' 
group by g.nomgrupo;

/*RANKING DE PUBLICACIONES CON MAS INTERACCIONES*/
select p.idpublicacion,
       (select count(*) 
       from likespublicacion l 
       where l.idpublicacionlikeada = p.idpublicacion) as likes,
       (select count(*) 
       from comentario c 
       where c.idpublicacioncomentada = p.idpublicacion) as comentarios
from publicacion p
order by likes desc, comentarios desc;

/*MOSTRAR LOS EVENTOS CON MAS DE 30 ASISTENTES REGISTRADOS*/
SELECT a.nomEvento, COUNT(a.usuario) AS numAsistentes
FROM asiste a
GROUP BY a.nomEvento
HAVING numAsistentes > 3;

/*DADO UN USUARIO, MOSTRAS AQUELLOS USUARIOS QUE NO SIGUE Y QUE HAN
PARTICIPADO DE AL MENOS 5 EVENTOS EN COMÚN*/
SELECT a.usuario
FROM asiste a
WHERE a.nomEvento IN (SELECT nomEvento FROM asiste WHERE usuario = 'German')
  AND a.usuario != 'German'
  AND a.usuario NOT IN (SELECT usuarioSeguido FROM usuarioSigue WHERE usuarioSeguidor = 'German')
GROUP BY a.usuario
HAVING COUNT(DISTINCT a.nomEvento) >= 5;

/*DADO UN USUARIO, MOSTRAR TODAS LAS NOTIFICACIONES QUE SE ENCUENTREN
COMO “NO LEIDAS”*/
select mensaje, fechaEnvio
from notificaciones
where usuarioDestino = 'Ivan' and estado = 'No Leída';

/*RANKING DE GRUPOS CON MAS USUARIOS PARTICIPANTES.*/
select g.nomgrupo, count(m.usuario) as numparticipantes
from grupo g
join miembros m on g.nomgrupo = m.nomgrupo
group by g.nomgrupo
order by numparticipantes desc;
