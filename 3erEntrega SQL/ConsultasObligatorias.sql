/*1. MOSTRAR TODOS LOS POST DE UN USUARIO ESPECIFICO*/
select *
from publicacion
where usuario = "juan123";

/*2. MOSTRAR LOS COMENTARIOS DE UN POST ESPECIFICO*/
select *
from comentario
where idPublicacionComentada = 1;

/*3. OBTENER TODOS LOS EVENTOS QUE SUCEDERAN EN LOS PROXIMOS 30 DÍAS*/
select *
from evento
where fechainicio between curdate() and date_add(curdate(), interval 30 day);

/*4. OBTENER LOS ULTIMSO 5 POST PUBLICADOS EN UN GRUPO ESPECIFICO*/
select * 
from publicacionGrupo join publicacion
on publicacionGrupo.idPublicacion = publicacion.idPublicacion
where nomGrupo = "CineClub" 
order by fecha desc 
limit 5;

/*5. ORDENAR LOS POST DE LOS ULTIMOS 30 DIAS DESDE EL QUE TIENE MAS LIKES AL QUE MENOS*/
select publicacion.*, count(likesPublicacion.usuario) as numlikes
from publicacion join likespublicacion
on publicacion.idpublicacion = idPublicacionlikeada
where publicacion.fecha between curdate() and date_add(curdate(), interval 30 day)
group by publicacion.idpublicacion
order by numlikes desc;

/*6. DADO UN USUARIO, LISTAR TODOS LOS GRUPOS A LOS QUE PERTENECE*/
select nomGrupo
from miembros
where Usuario = "maria456";

/*7. OBTENER LA LISTA DE USUARIOS QUE DIERON LIKE A UN POST ESPECIFICO*/
select usuario
from likesPublicacion
where idPublicacionLikeada = 2;

/*8. DADO UN EVENTO, OBTENER TODOS LOS USUARIOS QUE MARCARON ASISTENCIA*/
select usuario
from asiste
where nomEvento = "Festival de Cine";

/*9. DADO UN USUARIO ESPECIFICO, MOSTRAR TODOS LOS EVENTOS EN LOS QUE PARTICIPÓ*/
select nomEvento
from asiste
where usuario="diego505";

/*10. DADO UN USUARIO, MOSTRAR SUS POSTEOS ORDENADOS (DE MAYOR A MENOR) POR LA CANTIDAD DE COMENTARIOS QUE OBTUVIERON Y EL NUMERO DE COMENTARIOS.*/
select publicacion.*, count(comentario.idcomentario) as numComentarios
from publicacion join comentario 
on publicacion.idPublicacion = comentario.idPublicacionComentada
where publicacion.usuario = "juan123"
group by publicacion.idPublicacion
order by numComentarios desc;



