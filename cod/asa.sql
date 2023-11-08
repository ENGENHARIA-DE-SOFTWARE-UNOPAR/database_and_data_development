CREATE VIEW `new_view` AS
SELECT ContaReceber.ID,
cliente.Nome,
cliente.CPF,
ContaReceber.DataVencimento,
ContaReceber.Valor
FROM loja_1.ContaReceber
INNER JOIN
loja_1.cliente ON ContaReceber.ID = cliente.ID
WHERE
ContaReceber.Situação = 1;