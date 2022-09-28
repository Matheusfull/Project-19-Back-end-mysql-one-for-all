SELECT COUNT(DISTINCT cancoes.id) AS cancoes, COUNT(DISTINCT artistas.id) AS artistas , COUNT(DISTINCT albuns.id) AS albuns
FROM SpotifyClone.cancoes AS cancoes
INNER JOIN SpotifyClone.albuns AS albuns
ON cancoes.album_id = albuns.id
INNER JOIN SpotifyClone.artistas AS artistas
ON albuns.artista_id = artistas.id;