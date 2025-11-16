/*
============================================================
 Arquivo: 03_incersoes_casos_teste.sql
 Autor(es): Fabiana Jarro, Giovanna Martins, Geovana de Sousa
 Trabalho: Projeto leilao_bd, 4° bimestre
 Curso/Turma: 213-DS
 SGBD: (PostgreSQL/MySQL) Versão: 8.0.43
 Objetivo: Insercoes de cenários teste
 Execução esperada: rodar depois das insercoes basicas
========================================================== */


USE leilao_bd;


-- cenário 1: Lance exatamente igual ao lance mínimo permitido
INSERT INTO lances (valor_lance, id_usuario, id_produto)
VALUES (200.00, 1, 2);

-- cenário 2: usuário dando vários lances em produtos diferentes
INSERT INTO lances (valor_lance, id_usuario, id_produto) VALUES
(51.00, 1, 2),
(61.00, 1, 2),
(71.00, 1, 2);

-- cenário 3:produto com várias imagens
INSERT INTO imagens (nome_imagem, mimetype, img, id_usuario, id_produto)
VALUES ("foto1.jpg", "image/jpeg", NULL, 1, 3),
       ("foto2.jpg", "image/jpeg", NULL, 1, 3);
