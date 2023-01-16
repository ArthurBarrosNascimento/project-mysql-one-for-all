SELECT c.nome AS cancao,
COUNT(hr.cancoes_id) AS reproducoes
FROM SpotifyClone.cacoes AS c
INNER JOIN SpotifyClone.historico_reproducao AS hr ON c.cacoes_id = hr.cancoes_id
GROUP BY c.nome ORDER BY reproducoes DESC, c.nome LIMIT 2;
