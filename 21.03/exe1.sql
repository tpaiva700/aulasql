CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
	idclass BIGINT AUTO_INCREMENT,
    nomeclass VARCHAR(150),
    descricao VARCHAR(150),
    PRIMARY KEY (idclass)
);

CREATE TABLE tb_personagens (
	idpersonagens BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    habilidade VARCHAR(255),
    nivel int,
    experiencia int,
    classid BIGINT,
    FOREIGN KEY (classid) REFERENCES tb_classes(idclass),
    PRIMARY KEY (idpersonagens)
);
ALTER TABLE tb_personagens ADD ataque int; 
ALTER TABLE tb_personagens ADD defesa int;

-- Dados da Tabela Class
INSERT INTO tb_classes (nomeclass, descricao)
VALUES ("Mago", "Existem diferentes níveis de Magos"),
("Guerreiro", "Existem diferentes níveis de Guerreiros"),
("Cavaleiro","Existem diferentes níveis de Cavaleiros"),
("Lutador", "Existem diferentes níveis de Lutadores"),
("Arqueiro", "Existem diferentes níveis de Arqueiros");

SELECT * FROM tb_classes;

SELECT * FROM tb_personagens;

-- Criando dados na tabela Personagens
INSERT INTO tb_personagens(nome, habilidade, experiencia, classid, ataque, defesa)
VALUES ("Rudeos", "Mágia Sombria", 43, 1, 800, 500),
("Kratos", "Spartano raíz", 98, 2, 2500, 1000);

INSERT INTO tb_personagens(nome, habilidade, nivel, experiencia, classid, ataque, defesa)
VALUES ("Valentin", "Arqueiro", 25, 3000, 5, 1852, 350),
("Merlin", "Magia brutal", 100, 8895, 1, 9874, 2000),
("Athena", "Combate pesado", 26,15000, 2, 4000, 2500),
("Seya", "Amigo do chão", 15, 450, 3, 320, 200),
("Shun", "Invoca o Ikki", 16, 500, 4, 360, 185),
("Ikki", "Magia brutal", 80, 6425, 4, 3600, 2145);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 and 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT nome, habilidade, nivel, experiencia, classid, ataque, defesa, tb_classes.descricao, tb_classes.nomeclass
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classid = tb_classes.idclass;

SELECT nome, habilidade, nivel, experiencia, classid, ataque, defesa, tb_classes.descricao, tb_classes.nomeclass
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classid = tb_classes.idclass
WHERE tb_classes.nomeclass = "Mago";



