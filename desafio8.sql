SELECT ar.artista, al.album
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON ar.id = al.artista_id
ORDER BY ar.artista like 'Elis Regina' DESC
LIMIT 2;