SET sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));

SELECT
    AUTOR.Nome_Autor, GRAVADORA.Nome_Gravadora
FROM
    AUTOR
    INNER JOIN MUSICA_AUTOR USING (Codigo_Autor)
    INNER JOIN MUSICA USING (Codigo_Musica)
    INNER JOIN FAIXA USING (Codigo_Musica)
    INNER JOIN CD USING (Codigo_CD)
    INNER JOIN GRAVADORA USING (Codigo_Gravadora)
GROUP BY
	AUTOR.Codigo_Autor
HAVING
	COUNT(GRAVADORA.Codigo_Gravadora) = 1;
