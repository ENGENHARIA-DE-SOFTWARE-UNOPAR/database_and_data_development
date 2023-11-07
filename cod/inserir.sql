-- Scripty para inserir dados no banco Loja_1
USE Loja_1;

-- INSERINDO VALOR NA TABELA estado
INSERT INTO 
estado (Nome,UF) VALUES ('Santa Catarina', 'SC');
INSERT INTO 
estado (Nome,UF) VALUES ('Santa Catarina', 'SC');
INSERT INTO 
estado (Nome,UF) VALUES ('Santa Catarina', 'SC');

-- INSERINDO VALOR NA TABELA municipio
INSERT INTO
municipio (Estado_ID, Nome, CodIBGE) VALUES ( 1, 'Chinelo Queimado', 1254786);
INSERT INTO
municipio (Estado_ID, Nome, CodIBGE) VALUES ( 2, 'Sanga Silva', 1934986);
INSERT INTO
municipio (Estado_ID, Nome, CodIBGE) VALUES ( 3, 'Saracura', 2834583);