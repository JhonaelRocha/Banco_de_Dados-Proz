-- Crie um banco de dados, 
-- adicione tabelas e determine quais são os atributos de cada uma. 
-- Em seguida, execute um trigger que se relacione com algum comando,
-- como insert, select, delete ou update.

CREATE TABLE cliente (
  cpf PRIMARY KEY NOT NULL,
  nome VARCHAR(24) NOT NUll,
  idade INT NOT NULL
  )
  
CREATE TABLE registro_clientes (
  cliente_cpf INT,
  cliente_nome VARCHAR(24)
);


CREATE TRIGGER cliente_insert_trigger AFTER INSERT ON cliente
FOR EACH ROW
BEGIN
  INSERT INTO registro_clientes (cliente_cpf, cliente_nome)
  VALUES (NEW.cpf, NEW.nome);
END;

INSERT into cliente(cpf,nome,idade) 
VALUES (123,'Pedro',23);
INSERT into cliente(cpf,nome,idade) 
VALUES (224,'Maria',22);
INSERT into cliente(cpf,nome,idade) 
VALUES (332,'José',37);

SELECT * from registro_clientes