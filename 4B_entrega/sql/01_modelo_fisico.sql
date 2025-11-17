

/*
============================================================
 Arquivo: 01_modelo_fisico.sql
 Autor(es): Fabiana Jarro, Giovanna Martins, Geovana de Sousa
 Trabalho: Projeto leilao_bd, 4° bimestre
 Curso/Turma: 213-DS
 SGBD: (PostgreSQL/MySQL) Versão: 8.0.43
 Objetivo: Criação do modelo físico (DDL)
 Execução esperada: rodar primeiro, em BD vazio
========================================================== */



DROP DATABASE IF EXISTS leilao_bd;
CREATE DATABASE leilao_bd;
USE leilao_bd;


-- tabela cadastros

CREATE TABLE cadastros (
    id_usuario INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cpf CHAR(14) NOT NULL,
    rg VARCHAR(14) NOT NULL,
    data_nascimento DATE NOT NULL,
    email VARCHAR(320) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    cep CHAR(9) NOT NULL,
    rua VARCHAR(255) NOT NULL,
    bairro VARCHAR(255) NOT NULL,
    complemento VARCHAR(255) NOT NULL,
    pais VARCHAR(255) NOT NULL,
    cidade VARCHAR(255) NOT NULL,
    estado VARCHAR(255) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_usuario)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- tabela adm

CREATE TABLE adm (
    id_adm INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(320) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_adm)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- tabela produtos

CREATE TABLE produtos (
    id_produto INT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(255) NOT NULL,
    descricao_produto TEXT,
    categoria_produto VARCHAR(100),
    preco_produto DECIMAL(10,2) NOT NULL,
    incremento_minimo DECIMAL(10,2) NOT NULL,
    data_final DATE NOT NULL,
    id_usuario INT NOT NULL,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (id_usuario) REFERENCES cadastros(id_usuario)
        ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



-- tabela lances

CREATE TABLE lances (
    id_lance INT NOT NULL AUTO_INCREMENT,
    valor_lance DECIMAL(10,2) NOT NULL,
    horario_lance DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_usuario INT,
    id_produto INT,
    PRIMARY KEY (id_lance),
    FOREIGN KEY (id_usuario) REFERENCES cadastros(id_usuario)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
        ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- tabela imagnes

CREATE TABLE imagens (
    id_imagem INT NOT NULL AUTO_INCREMENT,
    nome_imagem VARCHAR(255),
    mimetype VARCHAR(100),
    img LONGBLOB,
    id_usuario INT,
    id_produto INT,
    PRIMARY KEY (id_imagem),
    FOREIGN KEY (id_usuario) REFERENCES cadastros(id_usuario)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
        ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

