
--Uma loja tem um banco de dados que contém todo o controle de vendas de produtos e de cadastro --de clientes. Pensando nisso, crie uma função para somar todos os clientes que foram --cadastrados na loja durante um dia.

CREATE TABLE cliente(
  Id SERIAL PRIMARY KEY,
  nome VARCHAR(24)
)
  
INSERT INTO cliente(nome)
VALUES ('Pedro'),('Maria'),('João'),('Carlos'),('Denise'),('Yolanda')
  
CREATE OR REPLACE FUNCTION CONTAR_CLIENTES()
RETURNS INT
AS $$
DECLARE
    total_clientes INT;
BEGIN
    SELECT COUNT(*) INTO total_clientes FROM cliente;
    RETURN total_clientes;
END;
$$
LANGUAGE plpgsql;

SELECT CONTAR_CLIENTES();