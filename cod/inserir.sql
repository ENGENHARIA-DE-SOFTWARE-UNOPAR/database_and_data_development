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

-- criação da view ------ tabela temporária
CREATE VIEW v_consulta AS
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

--consulta todas as tabelas
SHOW tables;

select * from v_consulta;

--após apagar as visões
DROP view v_consulta;
