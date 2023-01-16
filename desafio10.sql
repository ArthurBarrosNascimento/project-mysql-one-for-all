SELECT
DISTINCT c.nome AS nome,
COUNT(hr.cancoes_id) AS reproducoes
FROM SpotifyClone.historico_reproducao AS hr
INNER JOIN SpotifyClone.cacoes AS c ON hr.cancoes_id = c.cacoes_id
INNER JOIN SpotifyClone.usuario AS u ON hr.usuario_id = u.usiario_id
WHERE u.plano_id = 1 OR u.plano_id = 3 
GROUP BY hr.cancoes_id ORDER BY c.nome ASC;
