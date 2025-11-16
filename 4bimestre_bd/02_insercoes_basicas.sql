/*
============================================================
 Arquivo: 02_incersoes_basicas.sql
 Autor(es): Fabiana Jarro, Giovanna Martins, Geovana de Sousa
 Trabalho: Projeto leilao_bd, 4° bimestre
 Curso/Turma: 213-DS
 SGBD: (PostgreSQL/MySQL) Versão: 8.0.43
 Objetivo: Insercoes de 5 registros
 Execução esperada: rodar depois da criação do modelo físico
========================================================== */

USE leilao_bd;

INSERT INTO adm (email, senha) VALUES
('fabii@gmail.com', '321'),
('gee@gmail.com', '321'),
('gii@gmail.com', '1234'),
('simm@gmail.com', '4321'),
('napp@gmail.com', '12345');

INSERT INTO cadastros
(nome, cpf, data_nascimento, email, senha, cep, rg, rua, bairro, complemento, pais, cidade, telefone, estado)
VALUES
('Pedro',  '445.678.678-98', '2009-09-09', 'pedro@gmail.com', 'senhaa', '12345678', '45.678.123-0', 'Rua das Flores', 'Centro', 'Casa 2', 'Brasil', 'São Paulo', '11987654321', 'SP'),
('Maria', '998.776.675-86', '1980-09-07', 'mria@hormail.com','isso', '98798798', '33.456.987-4', 'Rua hh', 'Jardins', 'Apto 101','Brasil', 'Rio de Janeiro','21999887766', 'RJ'),
('Julio', '098.665.445-87', '2009-12-16', 'julio@gmail.com', '9595', '12312312', '12.345.678-9', 'Rua Azul', '-', 'Fundos', 'Brasil','Curitiba','41988776655','PR'),
('Nana',  '845.678.678-58', '2010-05-30', 'nana@gmail.com',  '2010', '23443223', '98.765.123-1', 'Rua simmm','Centro','Bloco B','Brasil','Salvador','71987654321','BA'),
('carlos',  '845.678.678-58', '2011-05-30', 'carlos@gmail.com',  '3245', '20053435', '90.765.123-1', 'Rua caneca','Centro','Bloco B','Brasil','Salvador','71987654321','BA');


INSERT INTO produtos
(nome_produto, categoria_produto, preco_produto, incremento_minimo, data_final, descricao_produto, id_usuario)
VALUES
('toca discos','musica', 100.00, 20.00, '2026-09-08' , 'descricao longa', 2),
('quadro-xXx','arte', 200.00, 50.00, '2026-05-05','descricao mais longa', 3),
('barbie- xXx', 'brinquedo', 560.00, 40.00, '2025-12-10','descricaooooooooo mais longa', 4),
('abajur- 1980','decoracao', 70.00, 20.00,'2026-09-09','descricao00 mais longa', 5),
('colar de perolás, 1980','joia', 1600.00, 200.00,'2026-01-01','descricao maisss longa', 1);

INSERT INTO lances (valor_lance, horario_lance, id_usuario, id_produto) VALUES
(120.00, '2025-10-26 14:30:00', 2, 1),
(250.00, '2025-10-16 14:30:00', 2, 1),
(600.00, '2025-10-26 14:30:00', 2, 1),
(90.00, '2025-10-26 14:30:00', 2, 1),
(1800.00, '2025-10-27 14:30:00', 3, 2);


INSERT INTO imagens (nome_imagem, mimetype, img, id_usuario, id_produto)
VALUES ("foto1.jpg", "image/jpeg", NULL, 1, 2),
       ("foto2.jpg", "image/jpeg", NULL, 2, 1);
       ("foto12.jpg", "image/jpeg", NULL, 3, 3);
       ("foto33.jpg", "image/jpeg", NULL, 5, 4);
       ("foto25.jpg", "image/jpeg", NULL, 5, 5);