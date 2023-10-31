-- Desenvolva um banco de dados e relacione tabelas através de chaves estrangeiras ou nomes de colunas iguais. Siga as instruções:
-- crie uma base de dados; 
-- crie tabelas nessa base de dados;
-- em cada tabela, adicione atributos;
-- insira dados em cada tabela;
-- utilize os comandos Joins para realizar consultas nas tabelas. 
 
-- Trabalhe esse código em seu IDE, suba ele para sua conta no GitHub e compartilhe o link desse projeto no campo ao lado para que outros desenvolvedores possam analisá-lo.

CREATE DATABASE Relacionamento_Alunos

CREATE TABLE aluno (
  cpf INT PRIMARY KEY,
  nome VARCHAR,
  idade INT
)
  
CREATE TABLE matricula (
  numero_matricula INT PRIMARY KEY,
  data_matricula VARCHAR,
  escola VARCHAR,
  cpf_aluno INT,
  FOREIGN KEY (cpf_aluno) REFERENCES aluno(cpf)
)

INSERT into aluno(cpf,nome,idade) VALUES (990120,'Maria',13);
INSERT into aluno(cpf,nome,idade) VALUES (123456,'João',15);
INSERT into aluno(cpf,nome,idade) VALUES (224532,'Larissa',11);
INSERT into aluno(cpf,nome,idade) VALUES (132454,'Pedro',9);

insert into matricula(numero_matricula,data_matricula,escola,cpf_aluno)
VALUES (333,'10-01-2022','Escola Feliz',990120);
insert into matricula(numero_matricula,data_matricula,escola,cpf_aluno)
VALUES (213,'13-01-2022','Escola Campos',123456);
insert into matricula(numero_matricula,data_matricula,escola,cpf_aluno)
VALUES (244,'02-02-2022','Escola Verde',224532);
insert into matricula(numero_matricula,data_matricula,escola,cpf_aluno)
VALUES (555,'21-01-2022','Escola Alta',132454);

SELECT * FROM aluno
left join matricula on aluno.cpf = matricula.cpf_aluno
