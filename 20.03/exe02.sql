CREATE DATABASE bd_ecommerce;

USE bd_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nomeprod VARCHAR(120) NOT NULL,
descricao VARCHAR(255),
preco DECIMAL(4.2),
quantidade INT, 
categoria VARCHAR(100),
PRIMARY KEY(id)
); 

INSERT INTO tb_produtos (nomeprod, descricao, preco, quantidade, categoria)
VALUES ("O Hobbit", "Lorem Ipsum is simply",53.80 ,55,"livros"),
("A arte da guerra", "Lorem Ipsum is simply",35.93 ,15,"livros"),
("Bushido", "Lorem Ipsum is simply",75.00 ,15,"livros"),
("Hagakure", "Lorem Ipsum is simply",87.55 ,36,"livros"),
("Echo dot", "Lorem Ipsum is simply",386.10 ,120,"dispositos inteligentes"),
("Echo studio", "Lorem Ipsum is simply",1799.00 ,250,"dispositos inteligentes"),
("Xbox series s", "Lorem Ipsum is simply",2199.90 ,30,"consoles"),
("Playstation 5", "Lorem Ipsum is simply",3668.85 ,19,"consoles");

SELECT * FROM tb_produtos;

ALTER TABLE tb_produtos modify preco DECIMAL(8,2);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET descricao = "Alexa" WHERE id = 5;
