SELECT c.cancao AS 'cancao', COUNT(h.cancao_id) 'reproducoes' 
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON c.id = h.cancao_id
GROUP BY c.id
ORDER BY COUNT(h.cancao_id) DESC, c.cancao ASC
LIMIT 2;