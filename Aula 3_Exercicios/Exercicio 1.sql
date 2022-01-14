-- Crie uma base de dados chamada db_generation_game_online --
create database db_generation_game_online;
use db_generation_game_online;

-- Crie uma tabela tb_classe e determine 3 atributos relevantes ao Game Online --
create table tb_classe(
	id bigint not null auto_increment,
	nome_classe varchar(100) not null, 
	forca_inicial int not null,
	primary key (id)
);

-- Popule a tabela classe com até 5 dados --
insert into tb_classe (nome_classe,forca_inicial) values ("Leviatã", 800);
insert into tb_classe (nome_classe,forca_inicial)  values ("Espadachim", 600);
insert into tb_classe (nome_classe,forca_inicial)  values ("Arqueiro", 600);
insert into tb_classe (nome_classe,forca_inicial) values ("Semideus", 900);

select * from tb_classe;

-- Crie uma tabela tb_personagem e determine 5 atributos relevantes ao Game Online --
create table tb_personagem(
	id bigint not null auto_increment,
	nome_personagem varchar(250) not null,
    raca varchar(100) not null, 
    ataque int not null,
	defesa int not null,
    classe_id bigint,
    primary key (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

-- Popule a tabela personagem com até 8 dados --
insert into tb_personagem (nome_personagem,raca,ataque,defesa,classe_id) values ("Legolas", "Elfo", 3500, 4200, 3);
insert into tb_personagem (nome_personagem,raca,ataque,defesa,classe_id) values ("Archer", "Humano", 1800, 1900, 2);
insert into tb_personagem (nome_personagem,raca,ataque,defesa,classe_id) values ("Hipólita", "Semideus", 6400, 5800, 4);
insert into tb_personagem (nome_personagem,raca,ataque,defesa,classe_id) values ("Helena", "Semideus", 8300, 7200, 4);
insert into tb_personagem (nome_personagem,raca,ataque,defesa,classe_id) values ("Korthrod", "Asmodiano", 8000, 7500, 1);
insert into tb_personagem (nome_personagem,raca,ataque,defesa,classe_id) values ("Castiel", "Humano", 3600, 4000, 2);
insert into tb_personagem (nome_personagem,raca,ataque,defesa,classe_id) values ("Eros", "Humano", 4100, 3900, 2);
insert into tb_personagem (nome_personagem,raca,ataque,defesa,classe_id) values ("Freda", "Elfo", 7500, 7000, 3);

select * from tb_personagem;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000 --
select * from tb_personagem where ataque > 2000;

-- Faça um select trazendo os personagens com o poder de defesa entre 1000 e 2000 --
select * from tb_personagem where defesa between 1000 and 2000;

-- Faça um select utilizando LIKE buscando os personagens com a letra C --
select * from tb_personagem where nome_personagem like "%c%";

-- Faça um select com Inner join entre as tabelas classe e personagem --
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

-- Faça um select onde traga todos os personagens de uma classe específica --
select * from tb_personagem right join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 3;






