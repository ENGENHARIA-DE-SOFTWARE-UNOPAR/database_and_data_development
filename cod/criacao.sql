-- Criação do banco de dados Loja_1
-- Autor Natan Ogliari
CREATE DATABASE Loja_1
	DEFAULT CHARSET = utf8
    DEFAULT COLLATE = utf8_general_ci;

-- Expecifica o uso de Loja_1
USE Loja_1;

-- Cria a tabela 'estado', caso nao existe
CREATE TABLE IF NOT EXISTS Estado(
	ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL DEFAULT '',
    UF CHAR(2) NOT NULL DEFAULT ''    
);

-- Cria a tabela 'municipio', caso nao existe
CREATE TABLE IF NOT EXISTS Municipio(
	ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Estado_ID INT NOT NULL,
    Nome VARCHAR(80) NOT NULL,
    CodIBGE INT NOT NULL,
    CONSTRAINT fk_Municipio_Estado1
    FOREIGN KEY (Estado_ID)
    REFERENCES Estado(ID)
);

-- Cria a tabela 'cliente', caso nao existe
CREATE TABLE IF NOT EXISTS cliente(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(80) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Celular CHAR(11),
    EndLogradouro VARCHAR(100) NOT NULL,
    EndNumero VARCHAR(10) NOT NULL,
    EndMunicipio INT NOT NULL,
    EndCEP CHAR(8),
    Municipio_ID INT NOT NULL,
    KEY fk_Cliente_Municipio1_idx_idx (Municipio_ID),
    CONSTRAINT fk_Cliente_Municipio1_idx
    FOREIGN KEY (Municipio_ID)
    REFERENCES municipio(`ID`)
);

-- Cria a tabela 'ContaReceber', caso nao existe
CREATE TABLE IF NOT EXISTS ContaReceber(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    FaturaVendaID INT,
    DataConta DATE NOT NULL,
    DataVencimento DATE NOT NULL,
    Valor DECIMAL(18,2) NOT NULL,
    Cliente_ID INT NOT NULL, 
    CONSTRAINT fk_ContaReceber_Cliente
    FOREIGN KEY (Cliente_ID)
    REFERENCES Cliente(ID)
);