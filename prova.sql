
-- SELECT * FROM result_vinho;

-- --criando tabela para resultados 
-- DROP TABLE result_vinho
-- CREATE TABLE result_vinho(
-- 	id SERIAL PRIMARY KEY,
-- 	nome_pais VARCHAR(50),
-- 	preco_medio FLOAT,
-- 	descricao_mais_longa VARCHAR(1000)
-- );

-- -- -- Identificar a descrição mais longa para os vinhos de cada país utilizando um cursor vinculado.
-- DO $$
-- DECLARE
-- v_country VARCHAR(200);
-- v_description VARCHAR(1000);
-- cur_country_descri CURSOR FOR SELECT country, description FROM
-- vinho ORDER BY country, LENGTH(description) DESC ;
-- BEGIN
-- 	OPEN cur_country_descri;
-- 	LOOP
-- 		FETCH cur_country_descri INTO v_country, v_description;
-- 		EXIT WHEN NOT FOUND;
-- 		RAISE NOTICE '%: %', v_country, v_description;
-- 		INSERT INTO result_vinho (nome_pais, descricao_mais_longa)
--     	VALUES (v_country, v_description);
-- 	END LOOP;
-- 	CLOSE cur_country_descri;
-- END;
-- $$



-- --Calcular o preço médio dos vinhos de cada país utilizando um cursor não vinculado.

-- DO $$
-- DECLARE
--   cur_media_prec REFCURSOR;
--   v_country VARCHAR(200);
--   v_price NUMERIC := 0; -- Alterei o tipo de dado para NUMERIC, adequado para preços decimais
--   v_nome_tabela VARCHAR(200) := 'vinho';
-- BEGIN
--   OPEN cur_media_prec FOR EXECUTE
--     format(
--       'SELECT
--        country,
--        AVG(price)
--        FROM
--        %s
--        GROUP BY country', -- Adicionei GROUP BY para calcular a média por país
--       v_nome_tabela
--     );

--   LOOP
--     FETCH cur_media_prec INTO v_country, v_price;
--     EXIT WHEN NOT FOUND;
--     RAISE NOTICE '%: %.2f', v_country, v_price; -- Exibindo o preço médio com duas casas decimais
-- 	INSERT INTO result_vinho (nome_pais, preco_medio)
--     VALUES (v_country, v_price);
--   END LOOP;

--   CLOSE cur_media_prec;
-- END;
-- $$



-- SELECT * FROm vinho

-- DROP TABLE vinho
-- --criação da tabela 
-- CREATE TABLE vinho(
-- 	cod_pais SERIAL PRIMARY KEY,
-- 	country VARCHAR(50),
-- 	description VARCHAR(1000),
-- 	points FLOAT,
-- 	price FLOAT
-- );



-- SELECT * FROm vinho

-- DROP TABLE vinho
-- --criação da tabela 
-- CREATE TABLE vinho(
-- 	cod_pais SERIAL PRIMARY KEY,
-- 	country VARCHAR(50),
-- 	description VARCHAR(1000),
-- 	points FLOAT,
-- 	price FLOAT
-- );

