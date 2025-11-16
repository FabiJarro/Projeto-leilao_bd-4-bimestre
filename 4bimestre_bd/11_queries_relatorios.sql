/*
============================================================
 Arquivo: 11_queries_relatorios.sql
 Autor(es): Fabiana Jarro, Giovanna Martins, Geovana de Sousa
 Trabalho: Projeto leilao_bd, 4° bimestre
 Curso/Turma: 213-DS
 SGBD: (PostgreSQL/MySQL) Versão: 8.0.43
 Objetivo: inserir queries (relatórios)
 Execução esperada: rodar depois das queries basicas (ou depois das insercoes basicas)
========================================================== */


USE leilao_bd;

-- 1. Produto com maior número de lances
SELECT p.nome_produto, COUNT(l.id_lance) AS total_lances
FROM produtos p
LEFT JOIN lances l ON p.id_produto = l.id_produto
GROUP BY p.id_produto
ORDER BY total_lances DESC;

-- 2. usuário que mais deu lances
SELECT c.nome, COUNT(l.id_lance) AS total_lances
FROM cadastros c
JOIN lances l ON c.id_usuario = l.id_usuario
GROUP BY c.id_usuario
ORDER BY total_lances DESC;

-- 3. Média de preço inicial por categoria
SELECT categoria_produto, AVG(preco_produto) AS media_preco
FROM produtos
GROUP BY categoria_produto;

-- 4. Produtos sem lances
SELECT p.nome_produto
FROM produtos p
LEFT JOIN lances l ON p.id_produto = l.id_produto
WHERE l.id_lance IS NULL;
