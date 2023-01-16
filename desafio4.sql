SELECT 
DISTINCT u.nome AS usuario,
IF(YEAR(MAX(hr.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.historico_reproducao AS hr
INNER JOIN SpotifyClone.usuario AS u ON hr.usuario_id = u.usiario_id
GROUP BY u.nome ORDER BY u.nome;