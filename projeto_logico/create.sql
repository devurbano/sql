create database if not exists Tracks;
use Tracks;

CREATE TABLE Artist
(
	idArtist int auto_increment not null primary key,
    artist_name varchar(50)
);

CREATE TABLE Album
(
	idAlbum int auto_increment not null primary key,
	id_Artista int not null,
    Title varchar(50),
    constraint fk_Artist foreign key(id_Artista) references Artist(idArtist)
);

CREATE TABLE genre
(
	idGenre int auto_increment not null primary key,
    Genre_type varchar(50)
);

CREATE TABLE midiatype
(
	id_MediaType int auto_increment not null primary key,
    midia_name varchar(50)
);

CREATE TABLE Playlist
(
	id_Playlist int auto_increment not null primary key,
    Playlist_name varchar (50)
);

CREATE TABLE Track
(
	id_Track int auto_increment not null primary key,
    id_t_album int not null,
    id_t_mediatype int not null,
    id_t_genre int not null,
    id_t_playlist int not null,
    track_composer varchar(45),
    track_duration time,
    Release_year char(4),
    constraint fk_track_album foreign key(id_t_album) references album(idAlbum),
    constraint fk_track_mediatype foreign key(id_t_mediatype) references midiatype(id_MediaType),
    constraint fk_track_genre foreign key (id_t_genre) references genre(idGenre),
    constraint fk_track_playlist foreign key (id_t_playlist) references Playlist(id_Playlist)
);

CREATE TABLE Playlist_Track
(
	Pt_id_Playlist int not null,
    Pt_id_Track int not null,
    primary key(Pt_id_Playlist, Pt_id_Track),
    constraint fk_pt_Playlist foreign key(Pt_id_Playlist) references Playlist(id_Playlist),
    constraint fk_pt_Track foreign key(Pt_id_Track) references Track(id_Track)
);
