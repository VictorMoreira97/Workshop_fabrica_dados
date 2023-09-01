CREATE DATABASE livraria;
USE livraria;

CREATE TABLE livro(
	preco FLOAT NOT NULL,
    codigoBarras INT PRIMARY KEY,
    editora VARCHAR(100),
    genero VARCHAR(40) NOT NULL,
    estoque INT NOT NULL
);

CREATE TABLE  funcionario (
	nome VARCHAR(100) NOT NULL,
    idade INT,
    setor VARCHAR(50),
    tipo_contratacao VARCHAR(50),
    horas_trabalho INT
);

CREATE TABLE cliente (
	nome VARCHAR(100) NOT NULL,
    idade INT,
    cpf VARCHAR(14) PRIMARY KEY,
    telefone VARCHAR(25),
    compras_realizadas INT
);

ALTER TABLE livro ADD COLUMN titulo VARCHAR(50);
ALTER TABLE funcionario ADD COLUMN genero VARCHAR(50);
ALTER TABLE cliente ADD COLUMN genero VARCHAR(50);

INSERT INTO livro VALUES 
(49.99, 122456789, 'Pottermore Publishing', 'Fantasia', 100, 'Harry Potter e a Pedra Filosofal'),
(35.90, 988654321, 'Haper Colins', 'Fantasia', 100, 'O Hobbit'),
(60.00, 123456708, 'Leya', 'Fantasia', 100, 'A Guerra dos Tronos'),
(49.99, 123456987, 'Haper Colins', 'Fantasia', 100, 'As Crônicas de Nárnia');

INSERT INTO funcionario VALUES
	('Joy', 25, 'Caixa', 'CLT', 6, 'Fem'),
    ('Jenny', 25, 'Atendente', 'CLT', 6, 'Fem'),
    ('Brock', 18, 'Zelador', 'CLT', 6, 'Masc'),
    ('Giovanni', 50, 'RH', 'CLT', 6, 'Masc');
    
INSERT INTO cliente VALUES
	('Ash', 10, '101.101.101-01', 32423890, 0, 'Masc'),
    ('Misty', 10, '202.202.202-02', 56433214, 2, 'Fem'),
    ('May', 10, '303.303.303-03', 44327568, 1, 'Fem'),
    ('Dawn', 10, '404.404.404-04', 87783890, 1, 'Fem');
    
SELECT * FROM cliente;

ALTER TABLE livro DROP COLUMN genero;
ALTER TABLE cliente DROP COLUMN genero;
ALTER TABLE cliente DROP COLUMN genero;

SELECT * from cliente WHERE genero = 'Masc';

