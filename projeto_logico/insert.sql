INSERT INTO Artist (artist_name) VALUES
('Michael Jackson'), ('Madonna'), ('Elton John'), ('Beyoncé'), ('The Beatles'),
('Bob Marley'), ('Adele'), ('Queen'), ('Eminem'), ('Whitney Houston'),
('Stevie Wonder'), ('U2'), ('Prince'), ('David Bowie'), ('Rihanna'),
('Taylor Swift'), ('Led Zeppelin'), ('Pink Floyd'), ('Bob Dylan'), ('Katy Perry');

INSERT INTO Album (id_Artista, Title) VALUES
(1, 'Thriller'), (1, 'Bad'), (2, 'Like a Virgin'), (2, 'Ray of Light'), (3, 'Goodbye Yellow Brick Road'),
(3, 'Rocket Man'), (4, 'Lemonade'), (4, 'Dangerously in Love'), (5, 'Sgt. Pepper''s Lonely Hearts Club Band'), (5, 'Abbey Road'), 
(6, 'Legend'), (6, 'Rastaman Vibration'), (7, '21'), (7, '25'), (8, 'A Night at the Opera'),
(8, 'The Game'), (9, 'The Marshall Mathers LP'), (9, 'Recovery'), (10, 'Whitney Houston'), (10, 'Whitney'),
(11, 'Innervisions'), (11, 'Songs in the Key of Life'), (12, 'The Joshua Tree'), (12, 'War'), (13, 'Purple Rain'),
(13, '1999'), (14, 'Ziggy Stardust'), (14, 'Let''s Dance'), (15, 'Anti'), (15, 'Loud'),
(16, '1989'), (16, 'Red'), (17, 'IV'), (17, 'Physical Graffiti'), (18, 'The Wall'),
(18, 'Dark Side of the Moon'), (19, 'Highway 61 Revisited'), (19, 'Blonde on Blonde'), (20, 'Teenage Dream'), (20, 'Prism');

INSERT INTO genre (Genre_type) VALUES
('Pop'), ('Rock'), ('R&B'), ('Reggae'), ('Hip-Hop'),
('Soul'), ('Funk'), ('Country'), ('Electronic'), ('Blues');

INSERT INTO midiatype (midia_name) VALUES
('CD'), ('Vinil'), ('Cassete'), ('MP3'), ('FLAC'),
('AAC'), ('WAV'), ('Blu-ray'), ('DVD'), ('Streaming');

INSERT INTO Playlist (Playlist_name) VALUES
('Pop Hits'), ('Rock Classics'), ('R&B Grooves'), ('Reggae Vibes'), ('Hip-Hop Jamz'),
('Soulful Ballads'), ('Funky Beats'), ('Country Jams'), ('Electronic Dance'), ('Bluesy Tunes');

INSERT INTO Track (id_t_album, id_t_mediatype, id_t_genre, id_t_playlist, track_composer, track_duration, Release_year) VALUES
(1, 1, 1, 1, 'Michael Jackson', '00:04:42', '1982'), (2, 1, 2, 2, 'Madonna', '00:04:50', '1984'), (3, 1, 3, 3, 'Elton John', '00:03:50', '1970'),
(4, 1, 4, 4, 'Bob Marley', '00:03:03', '1977'), (5, 1, 5, 5, 'Jay-Z', '00:04:18', '2003'), (6, 1, 6, 6, 'Aretha Franklin', '00:02:46', '1967'),
(7, 1, 7, 7, 'James Brown', '00:02:51', '1970'), (8, 1, 8, 8, 'Johnny Cash', '00:02:41', '1955'), (9, 1, 9, 9, 'Daft Punk', '00:05:20', '2001'),
(10, 1, 10, 10, 'B.B. King', '00:03:15', '1969'), (11, 2, 1, 1, 'Michael Jackson', '00:03:45', '1982'), (12, 2, 2, 2, 'Madonna', '00:04:10', '1984'),
(13, 2, 3, 3, 'Elton John', '00:04:25', '1970'), (14, 2, 4, 4, 'Bob Marley', '00:03:30', '1977'), (15, 2, 5, 5, 'Jay-Z', '00:03:55', '2003'),
(16, 2, 6, 6, 'Aretha Franklin', '00:02:20', '1967'), (17, 2, 7, 7, 'James Brown', '00:03:02', '1970'), (18, 2, 8, 8, 'Johnny Cash', '00:02:30', '1955'),
(19, 2, 9, 9, 'Daft Punk', '00:04:40', '2001'), (20, 2, 10, 10, 'B.B. King', '00:03:10', '1969'), (21, 3, 1, 1, 'Michael Jackson', '00:04:20', '1982'),
(22, 3, 2, 2, 'Madonna', '00:05:00', '1984'), (23, 3, 3, 3, 'Elton John', '00:04:10', '1970'), (24, 3, 4, 4, 'Bob Marley', '00:03:45', '1977'),
(25, 3, 5, 5, 'Jay-Z', '00:04:30', '2003'), (26, 3, 6, 6, 'Aretha Franklin', '00:02:15', '1967'), (27, 3, 7, 7, 'James Brown', '00:02:55', '1970'),
(28, 3, 8, 8, 'Johnny Cash', '00:02:20', '1955'), (29, 3, 9, 9, 'Daft Punk', '00:05:15', '2001'), (30, 3, 10, 10, 'B.B. King', '00:03:25', '1969'),
(31, 4, 1, 1, 'Michael Jackson', '00:04:15', '1982'), (32, 4, 2, 2, 'Madonna', '00:04:45', '1984'), (33, 4, 3, 3, 'Elton John', '00:03:35', '1970'),
(34, 4, 4, 4, 'Bob Marley', '00:03:15', '1977'), (35, 4, 5, 5, 'Jay-Z', '00:04:05', '2003'), (36, 4, 6, 6, 'Aretha Franklin', '00:02:30', '1967'),
(37, 4, 7, 7, 'James Brown', '00:02:40', '1970'), (38, 4, 8, 8, 'Johnny Cash', '00:02:50', '1955'), (39, 4, 9, 9, 'Daft Punk', '00:05:00', '2001'),
(40, 4, 10, 10, 'B.B. King', '00:03:35', '1969');

INSERT INTO Playlist_Track (Pt_id_Playlist, Pt_id_Track) VALUES
(1, 1), (1, 2), (1, 3), (2, 4), (2, 5), (2, 6),
(3, 7), (3, 8), (3, 9), (4, 10), (4, 11), (4, 12);

