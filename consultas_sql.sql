/*Listar o nome do produto, categoria e a soma total de vendas (Quantidade * Preço)
para cada produto. Ordene o resultado pelo valor total de vendas em ordem
decrescente.*/

SELECT produto, -- Seleciona a coluna produto
	   categoria, -- Seleciona a coluna categoria
       SUM(quantidade * preco) as valor_total -- Multiplica a quantidade de vendas pelo preço e soma tudo para cada grupo, AS - cria um apelido para a coluna calculada
                                              
FROM data_clean -- Seleciona as colunas a partir da tabela data_clean

GROUP BY produto, categoria -- Agrupa as linha para a função SUM funcionar em cada combinação de produto e categoria

Order BY valor_total DESC; -- Ordena o resultado em ordem decrescente

-- Identificar os produtos que venderam menos no mês de junho de 2024

SELECT Produto, -- Seleciona a coluna produto
       SUM(Quantidade) AS total_vendido_Jun24 -- Seleciona a soma de quantidade de produtos vendidos, AS - cria um apelido para a coluna calculada
       
FROM data_clean -- Seleciona as colunas a partir da tabela data_clean

WHERE strftime('%Y-%m', Data) = '2023-06' -- Filtra apenas as vendas de junho de 2023

GROUP BY Produto -- Agrupa por tipo de produto

ORDER BY total_vendido_Jun24 ASC; -- Ordena o resultado em ordem decrescente