SELECT u.nome AS usuario,
COUNT(hr.usuario_id) AS qt_de_musicas_ouvidas,
ROUND(SUM(c.duracao_segundos)/60,2) AS total_minutos
FROM SpotifyClone.usuario As u
INNER JOIN SpotifyClone.historico_reproducao AS hr ON u.usiario_id = hr.usuario_id
INNER JOIN SpotifyClone.cacoes AS c ON hr.cancoes_id = c.cacoes_id
GROUP BY u.nome ORDER BY u.nome;
