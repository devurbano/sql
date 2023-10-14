-- 1º Quais são os nomes dos álbuns e seus artistas correspondentes?
--  > Agrupe os resultados pelo nome do artista
--  > Concatene os títulos dos álbuns correspondentes
--  > Ordene alfabeticamente em uma única coluna chamada "Albums"
SELECT Artist.artist_name, GROUP_CONCAT('  ',Album.Title ORDER BY Album.Title ASC) AS Albums
FROM Artist
JOIN Album ON Artist.idArtist = Album.id_Artista
GROUP BY Artist.artist_name;

-- 2º Quais são os nomes das faixas (tracks) que têm uma duração superior a 5 minutos (300 segundos)?
SELECT Track.track_composer AS Compositor, Track.Release_year AS Lançamento, Track.track_duration AS Duração
FROM Track
WHERE TIME_TO_SEC(Track.track_duration) > 300;

-- 3º Quais são os gêneros de música que têm uma média de duração de faixa superior a 4 minutos (240 segundos)? 
--  > Use JOIN e HAVING para responder e formate a saída para ficar apenas com 2 casas decimais.
SELECT genre.Genre_type, ROUND(AVG(TIME_TO_SEC(Track.track_duration)), 2) AS media_duracao
FROM Track
JOIN genre ON Track.id_t_genre = genre.idGenre
GROUP BY genre.Genre_type
HAVING media_duracao > 240;

-- 4º Quais são os artistas que têm pelo menos um álbum lançado antes de 2000 ?
--  > Agrupe os resultados pelo nome do artista
--  > Concatene o ano de lançamento e os títulos dos álbuns correspondentes
--  > Ordene o ano de lançamento + album em uma única coluna chamada "Albums_até_2000"
SELECT Artist.artist_name AS Artista, GROUP_CONCAT(CONCAT('  ', Track.Release_year, ' - ', Album.Title) ORDER BY Track.Release_year ASC) AS Albums_até_2000
FROM Artist
JOIN Album ON Artist.idArtist = Album.id_Artista
JOIN Track ON Album.idAlbum = Track.id_t_album
WHERE EXISTS (
    SELECT 1
    FROM Album
    WHERE Artist.idArtist = Album.id_Artista AND Track.Release_year < '2000'
)
GROUP BY Artist.artist_name;

-- 5º Quais são os nomes dos artistas (track_composer) e seus respectivos gêneros de música (genre) que pertencem a pelo menos uma playlist? 
--  > Liste apenas os artistas e gêneros que tenham sido adicionadas a mais de uma playlist.
SELECT DISTINCT
    Track.track_composer AS Artista,
    genre.Genre_type AS Genero
FROM Track
JOIN genre ON Track.id_t_genre = genre.idGenre
WHERE Track.track_composer IN (
    SELECT Track.track_composer
    FROM Track
    JOIN Playlist_Track ON Track.id_Track = Playlist_Track.Pt_id_Track
    GROUP BY Track.track_composer
    HAVING COUNT(DISTINCT Playlist_Track.Pt_id_Playlist) > 1
);


