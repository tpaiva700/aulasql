CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
idcategoria BIGINT AUTO_INCREMENT,
nomecat VARCHAR(150),
descricao VARCHAR(255),
PRIMARY KEY(idcategoria)
);

CREATE TABLE tb_pizzas(
idpizzas BIGINT AUTO_INCREMENT,
nome VARCHAR(150),
preco DECIMAL(6,2),
ingrediente VARCHAR(255),
categoriaid BIGINT,
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(idcategoria),
PRIMARY KEY (idpizzas)
);

INSERT INTO tb_categorias (nomecat, descricao) VALUES
    ('Pizza Salgada', 'Categoria para pizzas salgadas'),
    ('Pizza Doce', 'Categoria para pizzas doces'),
    ('Bebidas', 'Categoria para bebidas'),
    ('Entradas', 'Categoria para entradas'),
    ('Sobremesas', 'Categoria para sobremesas');

INSERT INTO tb_pizzas (nome, preco, ingrediente, categoriaid) VALUES
    ('Pizza Margherita', 45.00, 'Molho de tomate, muçarela, manjericão', 1),
    ('Pizza Pepperoni', 58.00, 'Molho de tomate, muçarela, pepperoni', 1),
    ('Pizza Calabresa', 40.00, 'Molho de tomate, muçarela, calabresa, cebola', 1),
    ('Pizza Quatro Queijos', 30.00, 'Molho de tomate, muçarela, gorgonzola, parmesão, catupiry', 1),
    ('Pizza Chocolate', 22.00, 'Chocolate, morangos', 2),
    ('Coca-Cola Lata', 5.00, 'Coca-Cola em lata', 3),
    ('Bruschetta', 35.00, 'Fatias de pão italiano torradas, tomate, manjericão, azeite', 4),
    ('Tiramisù', 55.00, 'Sobremesa italiana à base de café, mascarpone e biscoitos', 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 and 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%C%";

SELECT nome, preco, ingrediente, tb_categorias.nomecat, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.idcategoria;

-- Trazendo os dados de ambas as tabelas, porém para uma categoria em espeifico!
SELECT nome, preco, ingrediente, tb_categorias.idcategoria, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.idcategoria
WHERE tb_categorias.nomecat = "Pizza Doce";