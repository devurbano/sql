-- 1º Recupere o nome completo (primeiro nome, nome do meio e sobrenome) dos clientes que nasceram depois de 1990 e que moram na cidade de "São Paulo"
SELECT CONCAT(Fname, ' ', Minit, ' ', Lname) AS NomeCompleto
FROM cliente
WHERE YEAR(Birthdate) > 1990 AND cidade = 'São Paulo';

-- 2º Quantos pedidos foram feitos por cada cliente?
SELECT c.idCliente, CONCAT(c.Fname, ' ', c.Minit, ' ', c.Lname) AS Nome_Cliente, COUNT(o.idOrder) AS Qtd_Pedidos
FROM cliente c
LEFT JOIN ordems o ON c.idCliente = o.id_order_cliente
GROUP BY c.idCliente, Nome_Cliente
ORDER BY Qtd_Pedidos DESC;

-- 3º Liste os produtos que têm um valor de venda maior que o custo em cada categoria, juntamente com o nome da categoria.
SELECT p.Pname AS Produto, p.custo AS Custo, p.vlr_Venda AS Vlr_Venda, p.categoria AS Categoria
FROM produto p
WHERE p.vlr_Venda > p.custo
ORDER BY p.categoria, p.Pname;

--  4º Liste todos os produtos vendidos por cada vendedor, incluindo o nome do vendedor e o nome do produto.
SELECT v.idVendedor, v.RSocial AS Vendedor, p.Pname AS Produto
FROM vendedor v
JOIN produto_vendedor pv ON v.idVendedor = pv.id_pd_Vendedor
JOIN produto p ON pv.id_pd_Produto = p.idProduto
ORDER BY v.idVendedor, Produto;

-- 5º Liste os produtos que foram comprados de fornecedores, incluindo o nome do produto, a quantidade comprada e o nome do fornecedor.
SELECT p.Pname AS Produto, pf.quantidade AS Qtd_Comprada, f.RSocial AS Fornecedor
FROM produto_fornecedor pf
JOIN produto p ON pf.id_pf_Produto = p.idProduto
JOIN fornecedor f ON pf.id_pf_Fornecedor = f.idFornecedor
ORDER BY Produto;

