CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
	idcategoria BIGINT AUTO_INCREMENT,
    categoria VARCHAR(150),
    descricao VARCHAR(150),
    PRIMARY KEY (idcategoria)
);

CREATE TABLE tb_produtos (
	idprod BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    preco DECIMAL(6.2),
	descprod VARCHAR(255),
    estoque int,
    categoriaid BIGINT,
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(idcategoria),
    PRIMARY KEY (idprod)
);

-- Inserir registros na tabela tb_categorias
INSERT INTO tb_categorias (categoria, descricao) VALUES
    ('Frutas', 'Frutas frescas'),
    ('Legumes', 'Legumes frescos'),
    ('Verduras', 'Categoria para verduras frescas'),
    ('Raízes e Tubérculos', 'Raízes e tubérculos frescos'),
    ('Ervas e Temperos', 'Ervas e temperos frescos');

-- Inserir registros na tabela tb_produtos
INSERT INTO tb_produtos (nome, preco, descprod, estoque, categoriaid) VALUES
    ('Maçã', 2.50, 'Maçã vermelha', 100, 1),
    ('Tomate', 1.99, 'Tomate orgânico', 80, 2),
    ('Alface', 2.00, 'Alface crespa', 70, 3),
    ('Batata', 3.00, 'Batata inglesa', 60, 4),
    ('Salsa', 1.50, 'Salsa fresca', 90, 5),
    ('Banana', 1.80, 'Banana prata', 110, 1),
    ('Cenoura', 2.20, 'Cenoura orgânica', 120, 2),
    ('Coentro', 1.25, 'Coentro fresco', 50, 5);
    
SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 and 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT nome, preco, descprod, estoque, tb_categorias.categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.idcategoria;

-- Trazendo os dados de ambas as tabelas, porém para uma categoria em espeifico!
SELECT nome, preco, descprod, estoque, tb_categorias.categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.idcategoria
WHERE tb_categorias.categoria = "Frutas";