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

SELECT COUNT(*) AS total_usuarios FROM cadastros;
SELECT COUNT(*) AS total_produtos FROM produtos;
SELECT COUNT(*) AS total_lances FROM lances;
SELECT COUNT(*) AS total_imagens FROM imagens;

-- produtos sem lances
SELECT p.nome_produto
FROM produtos p
LEFT JOIN lances l ON p.id_produto = l.id_produto
WHERE l.id_lance IS NULL;

-- usuarios sem produtos
SELECT c.nome
FROM cadastros c
LEFT JOIN produtos p ON c.id_usuario = p.id_usuario
WHERE p.id_produto IS NULL;
