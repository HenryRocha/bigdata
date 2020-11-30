USE buffalo;

-- Questão 2: Entidade: bufalo. Relacionamento: intimida. Veja a dica.

-- Questão 4: Verifica quantos agressores existem
SELECT
    COUNT(DISTINCT id_agressor)
FROM
    intimida;

-- Questão 5: Verifica buffalos que não intimidam ninguem.
SELECT
    nome, SUM(intimida.ocorrencias) AS cnt
FROM
    buffalo
        LEFT OUTER JOIN
    intimida ON buffalo.id = intimida.id_agressor
GROUP BY buffalo.id
HAVING cnt IS NULL;

SELECT
    nome
FROM
    buffalo
        LEFT OUTER JOIN
    intimida ON buffalo.id = intimida.id_agressor
WHERE intimida.id_agressor IS NULL;

-- Questão 6: Verifica qual o buffalo mais agredido.
SELECT
    nome, SUM(ocorrencias) AS s
FROM
    intimida
        INNER JOIN
    buffalo ON buffalo.id = intimida.id_vitima
GROUP BY id_vitima
ORDER BY s DESC
LIMIT 1;

-- Questão 7: Verifica os bufalos que agridem e são agredidos
drop table if exists vitimas;
create temporary table vitimas
	SELECT DISTINCT
		id_vitima
	FROM
		intimida;

drop table if exists agressores;
create temporary table agressores
	SELECT DISTINCT
		id_agressor
	FROM
		intimida;

select nome
from buffalo
    inner join agressores on id = id_agressor
    inner join vitimas on id_agressor = id_vitima;

drop table agressores;
drop table vitimas;

-- Verifica quais os bufalos que se agridem mutuamente.
SELECT
    b1.nome, b2.nome
FROM
    buffalo b1
        INNER JOIN
    intimida i1 ON b1.id = i1.id_agressor
        INNER JOIN
    intimida i2 ON i1.id_agressor = i2.id_vitima
        AND i2.id_agressor = i1.id_vitima
        INNER JOIN
    buffalo b2 ON b2.id = i2.id_agressor
WHERE
    i1.id_agressor < i1.id_vitima
        AND i1.ocorrencias > 0
        AND i2.ocorrencias > 0;

-- Questão 8: AB

-- Questão 9: 
-- 1NF e não 2NF, pois tem dependencia parcial da chave primaria.

-- Questão 10: S(B,D), T(D, E), U(A,C)

-- Questão 11: CPF, ano

-- Questão 12: sim, B-Tree