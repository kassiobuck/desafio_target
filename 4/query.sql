-- Query SQL para buscar código, razão social e telefone(s) de clientes do estado de São Paulo (sigla 'SP')

SELECT c.id AS codigo_cliente, c.razao_social, t.numero AS telefone, tt.descricao AS tipo_telefone
FROM Clientes c
JOIN Estados e ON c.estado_id = e.id
JOIN Telefones t ON t.cliente_id = c.id
JOIN Tipos_Telefone tt ON tt.id = t.tipo_id
WHERE e.sigla = 'SP';