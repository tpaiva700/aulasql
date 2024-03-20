CREATE DATABASE db_exe01;

USE db_exe01;

CREATE TABLE tb_colaboradores(
matricula BIGINT AUTO_INCREMENT, 
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
dataentrada DATE,
salario DECIMAL (8,2),
PRIMARY KEY(matricula)
);

INSERT INTO tb_colaboradores (nome, cargo, dataentrada, salario)
VALUES ("Zabuza Momochi", "desenvolvedor jr","2024-01-15", 4400.00), 
("Kakashi Hatake","desenvolvedor pl","2021-05-05", 6300.00), 
("Itachi Uchiha","desenvolvedor sr","2015-02-23",9455.25),
("Naruto Uzumaki","jovem aprendiz","2023-10-13",1500.00),
("Sasuke Uchiha", "estagiário", "2024-01-11", 2200.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 6800.00 WHERE matricula = 2;