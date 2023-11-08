-- Scripty para inserir dados no banco Loja_1
-- Autor Natan Ogliri
USE Loja_1;

-- INSERINDO VALOR NA TABELA 'estado'
INSERT INTO 
estado (Nome,UF) VALUES ('Santa Catarina', 'SC');
INSERT INTO 
estado (Nome,UF) VALUES ('Santa Catarina', 'SC');
INSERT INTO 
estado (Nome,UF) VALUES ('Santa Catarina', 'SC');

-- INSERINDO VALOR NA TABELA 'municipio'
INSERT INTO
municipio (Estado_ID, Nome, CodIBGE) VALUES ( 1, 'Chinelo Queimado', 1254786);
INSERT INTO
municipio (Estado_ID, Nome, CodIBGE) VALUES ( 2, 'Sanga Silva', 1934986);
INSERT INTO
municipio (Estado_ID, Nome, CodIBGE) VALUES ( 3, 'Saracura', 2834583);

-- INSERINDO VALOR NA TABELA 'cliente'
INSERT INTO 
cliente (Nome, CPF, Celular, EndLogradouro,EndNumero,EndMunicipio,EndCEP,Municipio_ID) VALUES ('Na9
tan Ogliari', 85698753695, 23651225, 'Banhado seco', 120, 3, 89870000, 3);
INSERT INTO 
cliente (Nome, CPF, Celular, EndLogradouro,EndNumero,EndMunicipio,EndCEP,Municipio_ID) VALUES ('Francisco Setembrino', 89658653694, 23556225, 'Jundia', 180, 2, 89870000, 2);
INSERT INTO 
cliente (Nome, CPF, Celular, EndLogradouro,EndNumero,EndMunicipio,EndCEP,Municipio_ID) VALUES ('Nego veio', 85698753695, 23651225, 'Pingo preto', 360, 1, 89870000, 1);

-- Inserindo valor na tabela 'ContaReceber'
INSERT INTO
contareceber(Cliente_ID, FaturaVendaID, DataConta, DataVencimento ,Valor, Situação) VALUES (1,1,'2023-11-10','2023-06-10',350.00,1);
INSERT INTO
contareceber(Cliente_ID, FaturaVendaID, DataConta, DataVencimento ,Valor, Situação) VALUES (2,2,'2023-11-10','2023-06-10',300.00,1);
INSERT INTO
contareceber(Cliente_ID, FaturaVendaID, DataConta, DataVencimento ,Valor, Situação) VALUES (2,2,'2023-10-10','2023-10-10',450.00,1);
