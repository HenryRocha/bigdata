SET sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));

-- SELECT
-- 	MUSICA.Nome_Musica
-- FROM
-- 	MUSICA
-- WHERE
-- 	MUSICA.Codigo_Musica IN (
		SELECT
			FAIXA.Codigo_Musica, CD.Data_Lancamento
		FROM
			FAIXA
			INNER JOIN CD USING (Codigo_CD);
        GROUP BY
            CD.Data_Lancamento = MAX(CD.Data_Lancamento)
		-- );
