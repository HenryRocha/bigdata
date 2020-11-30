SELECT
    buffalo.id, buffalo.nome
FROM
    buffalo
WHERE
    buffalo.id NOT IN (SELECT intimida.id_agressor FROM intimida);
