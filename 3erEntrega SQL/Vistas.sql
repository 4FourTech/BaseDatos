/* Vista para seleccionar todas las publicaciones*/
create view vista_publicaciones as
select *
from publicacion;

/*Vista para seleccionar todas las notificaciones*/
create view vista_notificaciones as
select *
from notificaciones;

/*Vista para seleccionar todos los grupos*/
create view vista_grupos as
select *
from grupo;

/*Vista para seleccionar todos los eventos*/
create view vista_eventos as
select *
from evento;

/*Vista para seleccionar nombre de usuario, contraseña y estado*/
create view vista_usuarios as
select nomUsuario, contraseña, estado
from usuario;

/*Vista para seleccionar los hashtags de las publicaciones*/
create view vista_hashtags_publicacion as
select idPublicacion, nomHashtag
from hashtagPublicacion;
