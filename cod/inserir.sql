SELECT * FROM Cliente; --scripty
SELECT categoria.nome as
"Tipo", produto.nome as
"Produto", produto.valor FROM
Categoria INNER JOIN Produto ON Categoria.Id =
Produto.Id_Categoria WHERE
produto.valor< 50.00;

SELECT
    escuna.nome AS "escuna",
    destino.nome AS "ilha",
    hora_aida, Hora_chegada, date
FROM passeio
INNER JOIN escuna
  ON passeio.escuna_numero = escuna.numero
INNER JOIN destino
  on  passeio.destino_id = destino.id
ORDER BY passeio.date;
