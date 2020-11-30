SELECT
    intimida.id_vitima, SUM(intimida.ocorrencias) AS n_intimidado
FROM
    intimida
GROUP BY
    intimida.id_vitima
ORDER BY
    n_intimidado DESC
LIMIT 1;
