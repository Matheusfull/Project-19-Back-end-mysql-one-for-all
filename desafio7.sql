SELECT ar.artista, al.album, COUNT(se.artista_id) AS 'seguidores'
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON ar.id = al.artista_id
INNER JOIN SpotifyClone.seguidores_dos_artistas AS se
ON se.artista_id = al.artista_id
GROUP BY al.id
ORDER BY COUNT(se.artista_id) DESC, ar.artista ASC, al.album ASC;