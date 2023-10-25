SELECT * FROM Cliente; --scripty
SELECT categoria.nome as
"Tipo", produto.nome as
"Produto", produto.valor FROM
Categoria INNER JOIN Produto ON Categoria.Id =
Produto.Id_Categoria WHERE
produto.valor< 50.00;