USE Loja
CREATE VIEW `nao_pagas` AS
	SELECT contaReceber.Situação AS "Situação"
	FROM contaReceber
	WHERE contaReceber.Situação = 1;