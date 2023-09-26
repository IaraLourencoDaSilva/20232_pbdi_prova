--criação da tabela 
CREATE TABLE vinho(
	cod_pais SERIAL PRIMARY KEY,
	country VARCHAR(50),
	description VARCHAR(200),
	points FLOAT,
	price FLOAT
);