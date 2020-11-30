SELECT
    buffalo.id, buffalo.nome
FROM
    buffalo
WHERE
    buffalo.id IN (SELECT intimida.id_agressor FROM intimida)
    AND
    buffalo.id IN (SELECT intimida.id_vitima FROM intimida);
