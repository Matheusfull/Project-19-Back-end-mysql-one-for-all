SELECT u.nome AS 'usuario',
CASE 
    WHEN YEAR(MAX(h.historico_de_reproducoes)) >= 2021 THEN 'Usuário ativo'
    ELSE 'Usuário inativo' END AS 'status_usuario'
    
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_de_reproducoes AS  h
ON u.id = h.nome_id
GROUP BY u.nome
ORDER BY u.nome;
