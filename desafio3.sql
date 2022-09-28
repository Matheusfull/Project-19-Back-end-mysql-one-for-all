SELECT u.nome AS 'usuario' , 
COUNT(h.cancao_id) AS 'qt_de_musicas_ouvidas',
ROUND(((SUM(c.duracao_segundos))/60),2) AS 'total_minutos'
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON u.id = h.nome_id
INNER JOIN SpotifyClone.cancoes AS c
ON h.cancao_id = c.id
GROUP BY u.nome
ORDER BY u.nome;