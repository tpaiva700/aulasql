CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

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

-- Dados na tabela tb_categorias
INSERT INTO tb_categorias (categoria, descricao) VALUES
    ('Medicamentos', 'Medicamentos diversos'),
    ('Higiene Pessoal', 'Produtos de higiene pessoal'),
    ('Dermocosméticos', 'Produtos dermatológicos e cosméticos'),
    ('Vitaminas e Suplementos', 'Vitaminas e suplementos alimentares'),
    ('Bebês e Crianças', 'Produtos destinados a bebês e crianças');

-- Dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, preco, descprod, estoque, categoriaid) VALUES
    ('Paracetamol', 10.99, 'Analgésico e antipirético', 100, 1),
    ('Sabonete', 3.50, 'Sabonete líquido para uso diário', 200, 2),
    ('Protetor Solar', 25.99, 'Protetor solar FPS 50', 50, 3),
    ('Vitamina C', 15.00, 'Suplemento de vitamina C', 80, 4),
    ('Fraldas Descartáveis', 30.75, 'Pacote com 30 fraldas tamanho M', 40, 5),
    ('Ibuprofeno', 8.50, 'Anti-inflamatório e analgésico', 120, 1),
    ('Shampoo', 12.99, 'Shampoo para cabelos secos', 60, 2),
    ('Creme Hidratante', 18.75, 'Creme hidratante para pele seca', 70, 3);



SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 and 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT nome, preco, descprod, estoque, tb_categorias.categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.idcategoria;

-- Trazendo os dados de ambas as tabelas, porém para uma categoria em espeifico!
SELECT nome, preco, descprod, estoque, tb_categorias.categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.idcategoria
WHERE tb_categorias.categoria = "Medicamentos";