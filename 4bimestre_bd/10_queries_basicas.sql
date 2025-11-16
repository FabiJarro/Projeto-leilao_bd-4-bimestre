/*
============================================================
 Arquivo: 10_queries_basicas.sql
 Autor(es): Fabiana Jarro, Giovanna Martins, Geovana de Sousa
 Trabalho: Projeto leilao_bd, 4° bimestre
 Curso/Turma: 213-DS
 SGBD: (PostgreSQL/MySQL) Versão: 8.0.43
 Objetivo: inserir queries basicas
 Execução esperada: rodar depois das insercoes basicas
========================================================== */


USE leilao_bd;

-- 1. listar todos os usuários
SELECT * FROM cadastros;

-- 2. listar todos os produtos
SELECT * FROM produtos;

-- 3. filtrar os produtos por categoria
SELECT * FROM produtos WHERE categoria_produto = 'joia';

-- 4. ordenar produtos por preço (maior para menor)
SELECT * FROM produtos ORDER BY preco_produto DESC;

-- 5. JOIN usuário- produtos cadastrados
SELECT c.nome, p.nome_produto
FROM cadastros c
JOIN produtos p ON c.id_usuario = p.id_usuario;

-- 6. JOIN produto- lances
SELECT p.nome_produto, l.valor_lance, l.horario_lance
FROM produtos p
LEFT JOIN lances l ON p.id_produto = l.id_produto;
