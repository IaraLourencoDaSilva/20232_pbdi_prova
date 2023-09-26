DO $$
DECLARE
  cur_media_prec REFCURSOR;
  v_country VARCHAR(200);
  v_price NUMERIC := 0; -- Alterei o tipo de dado para NUMERIC, adequado para preços decimais
  v_nome_tabela VARCHAR(200) := 'vinho';
BEGIN
  OPEN cur_media_prec FOR EXECUTE
    format(
      'SELECT
       country,
       AVG(price)
       FROM
       %s
       GROUP BY country', -- Adicionei GROUP BY para calcular a média por país
      v_nome_tabela
    );

  LOOP
    FETCH cur_media_prec INTO v_country, v_price;
    EXIT WHEN NOT FOUND;

    RAISE NOTICE '%: %.2f', v_country, v_price; -- Exibindo o preço médio com duas casas decimais
  END LOOP;

  CLOSE cur_media_prec;
END;
$$



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

