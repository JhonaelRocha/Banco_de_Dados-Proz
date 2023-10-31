--Uma empresa de vendas tem um banco de dados com informações sobre os seus produtos.
--Ela precisa criar um relatório que faça um levantamento diário 
--da quantidade de produtos comprados por dia. Para ajudar a empresa,
--crie um procedure para agilizar esse processo.

CREATE table produto (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(24),
  preco INT,
  quantidade_vendas INT
  )

INSERT into produto (nome,preco,quantidade_vendas) 
VAlues ('Arroz', 4, 23);
INSERT into produto (nome,preco,quantidade_vendas) 
VAlues ('Feijão', 6, 25);
INSERT into produto (nome,preco,quantidade_vendas) 
VAlues ('Farinha', 5, 12);

CREATE FUNCTION multiplicar(a INT, b INT) RETURNS INT
BEGIN
    RETURN a * b;
END;
SELECT multiplicar(5, 3);

DELIMITER $$
CREATE PROCEDURE relatorioVendas(nome_produto VARCHAR(24))
BEGIN
    SELECT preco, quantidade_vendas
    CALL multiplicar(preco,quantidade_vendas) AS ValorTotal
    FROM produto
    WHERE nome = nome_produto;
END;
$$
DELIMITER ;


CALL relatorioVendas('Arroz')

SELECT * FROM produto

--Não funcionou mesmo deixando bem igual ao do vídeo.