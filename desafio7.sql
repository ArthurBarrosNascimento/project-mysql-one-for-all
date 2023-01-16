SELECT
art.nome AS artista,
alb.album AS album,
COUNT(s.artista_id) AS seguidores
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.album AS alb ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindo_artista AS s ON art.artista_id = s.artista_id
GROUP BY art.artista_id, alb.album_id
ORDER BY seguidores DESC, art.nome ASC, alb.album ASC;
