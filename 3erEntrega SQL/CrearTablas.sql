create database CultureApp;
use CultureApp;

/*Crear Tablas*/
create table usuario(
	nomUsuario varchar(40) not null,
    contraseña varchar(255) not null,
	nomPerfil varchar(40) not null,
    correo varchar(40) not null,
    fotoPerfil varchar(255) not null,
    fechaNacimiento date not null,
    pais varchar(40) not null,
    genero varchar(9),
    telefono int(9),
    estado varchar(8) not null default "activo",
    primary key (nomUsuario)
);

create table grupo(
	nomGrupo varchar(40) not null,
    descripcion varchar(100) not null,
    fechaCreacion datetime default current_timestamp on update current_timestamp not null,
    UsuarioCreador varchar(40) not null,
    primary key(nomGrupo)
);
alter table grupo
add constraint CLE_idUsuarioCreadorGrupo_a_Usuario foreign key (UsuarioCreador) references usuario(nomUsuario);

create table evento(
	nomEvento varchar(40) not null,
    descripcion varchar(100) not null,
    fechaInicio date not null,
    fechaFinalizacion date not null,
    UsuarioCreador varchar(40) not null,
	primary key(nomEvento)
);
alter table evento
add constraint CLE_idUsuarioCreadorEvento_a_Usuario foreign key (UsuarioCreador) references usuario(nomUsuario);

create table miembros(
	nomGrupo varchar(40) not null,
    usuario varchar(40) not null,
    primary key (nomGrupo, Usuario)
);
alter table miembros
add constraint CLE_idGruposMiembros_a_Grupo foreign key (nomGrupo) references grupo(nomGrupo),
add constraint CLE_idUsuarioMiembro_a_Usuario foreign key (usuario) references usuario(nomUsuario);

create table asiste(
	nomEvento varchar(40) not null,
    usuario varchar(40) not null,
    primary key (nomEvento, usuario)
);
alter table asiste
add constraint CLE_idEventoMiembros_a_Evento foreign key (nomEvento) references evento(nomEvento),
add constraint CLE_idUsuarioMiembroEvento_a_Usuario foreign key (usuario) references usuario(nomUsuario);

create table publicacion(
	idPublicacion int auto_increment not null,
    contenido varchar(100) not null,
    usuario varchar(40) not null,
    fecha datetime default current_timestamp on update current_timestamp not null,
    unique (contenido),
    constraint primary key(idPublicacion)
);
alter table publicacion
add constraint CLE_idUsuario_a_Usuario foreign key (usuario) references usuario(nomUsuario);

create table publicacionComun(
	idPublicacion int not null,
    primary key (idPublicacion)
);
alter table publicacionComun
add constraint CLE_PublicacionComun_a_IdPublicacion foreign key (idPublicacion) references publicacion(idPublicacion);

create table publicacionGrupo(
	idPublicacion int not null,
    nomGrupo varchar(40) not null,
    usuario varchar(40) not null,
    unique(idPublicacion),
    primary key (idPublicacion, nomGrupo, usuario)
);
alter table publicacionGrupo
add constraint CLE_PublicacionGrupo_a_IdPublicacion foreign key (idPublicacion) references publicacion(idPublicacion),
add constraint CLE_PublicacionGrupo_a_Miembros foreign key (nomGrupo, usuario) references miembros(nomGrupo, usuario);

create table publicacionEvento(
	idPublicacion int not null,
    nomEvento varchar(40) not null,
    usuario varchar(40) not null,
    unique(idPublicacion),
    primary key (idPublicacion, nomEvento, usuario)
);

alter table publicacionEvento
add constraint CLE_PublicacionEvento_a_IdPublicacion foreign key (idPublicacion) references publicacion(idPublicacion),
add constraint CLE_PublicacionEvento_a_Miembros foreign key (nomEvento, usuario) references asiste(nomEvento, usuario);

create table likesPublicacion (
	idPublicacionLikeada int not null,
	usuario varchar(40) not null,
    constraint primary key(idPublicacionLikeada, usuario)
);
alter table likesPublicacion
add constraint CLE_idPublicacionLikeada_a_Publicacion foreign key (idPublicacionLikeada) references publicacion(idPublicacion),
add constraint CLE_idUsuarioLikea_a_Publicacion foreign key (usuario) references usuario (nomUsuario);

create table comentario(
	idComentario int auto_increment not null,
    idPublicacionComentada int not null,
    usuario varchar (40) not null,
    fecha datetime default current_timestamp on update current_timestamp not null,
    texto text not null,
	primary key(idComentario)
);
alter table comentario
add constraint CLE_idUsuarioPublicacion_a_Publicacion foreign key (idPublicacionComentada) references publicacion(idPublicacion),
add constraint CLE_idUsuarioComenta_a_Usuario foreign key (usuario) references usuario(nomUsuario);

create table usuarioSigue(
    usuarioSeguidor varchar(40),
	usuarioSeguido varchar(40),
    primary key (usuarioSeguido, usuarioSeguidor)
);
alter table usuarioSigue
add constraint CLE_idUsuarioSeguidor_a_Usuario foreign key (usuarioSeguidor) references usuario(nomUsuario),
add constraint CLE_idUsuarioSeguido_a_Usuario foreign key (usuarioSeguido) references usuario(nomUsuario);

create table hashtagPublicacion(
	idPublicacion int not null,
    nomHashtag varchar(15),
    primary key(idPublicacion, nomHashtag)
);
alter table hashtagPublicacion
add constraint CLE_IdPublicacionHashtag_a_Publicacion foreign key(idPublicacion) references publicacion(idPublicacion);

create table hashtagGrupo(
	nomGrupo varchar(40) not null,
    nomHashtag varchar(15),
    primary key(nomGrupo, nomHashtag)
);
alter table hashtagGrupo
add constraint CLE_NomGrupoHashtag_a_Grupo foreign key(nomGrupo) references grupo(nomGrupo);

create table hashtagEvento(
	nomEvento varchar(40) not null,
    nomHashtag varchar(15),
    primary key(nomEvento, nomHashtag)
);
alter table hashtagEvento
add constraint CLE_NomEventoHashtag_a_Evento foreign key(nomEvento) references evento(nomEvento);

create table reporte(
	idReporte int auto_increment not null,
    idPublicacion int not null,
    descripcion text not null,
    fecha datetime default current_timestamp on update current_timestamp not null,
    usuario varchar(40) not null,
    primary key(idReporte)
);
alter table reporte
add constraint CLE_UsuarioReportePublicacion_a_Usuario foreign key (usuario) references usuario(nomUsuario),
add constraint CLE_IdPublicacionReporte_a_reportePublicacion foreign key (idPublicacion) references publicacion(idPublicacion);

create table notificaciones (
    idNotificacion int auto_increment,
    usuarioDestino varchar(50) not null,
    mensaje text not null,           
    fechaEnvio datetime not null default now(), 
    estado varchar(20) not null default 'No Leída',
    primary key(idNotificacion)
);
alter table notificaciones
add constraint CLE_UsuarioDestino_a_Usuario foreign key(usuarioDestino) references usuario(nomUsuario);