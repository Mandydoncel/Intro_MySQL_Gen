-- Crie uma base de dados chamada db_cursoDaMinhaVida --
create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

-- Crie uma tabela tb_categoria e determine 3 atributos relevantes --
create table tb_categoria(
id bigint auto_increment,
tipo varchar(20) not null,
vagas int not null,
primary key (id)
);

-- Popule a tabela categoria com até 5 dados -- 
insert into tb_categoria (tipo, vagas) values ("Presencial",150);
insert into tb_categoria (tipo, vagas) values ("EAD", 80);

select * from tb_categoria;

create table tb_curso (
id bigint auto_increment,
nome varchar(255) not null,
data_inicio date,
horario varchar(100) not null,
preco decimal(6,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- Popule a tabela curso com até 8 dados -- 
insert into tb_curso (nome, data_inicio, horario, preco, categoria_id) values ("Bootcamp de Inglês iniciante", "2022-02-01", "Manhã", 100.00,1);
insert into tb_curso (nome, data_inicio, horario, preco, categoria_id) values ("Bootcamp de Inglês avançado", "2022-02-01", "Tarde", 120.00,2);
insert into tb_curso (nome, data_inicio, horario, preco, categoria_id) values ("Bootcamp de Espanhol iniciante", "2022-02-01", "Manhã", 110.00,1);
insert into tb_curso (nome, data_inicio, horario, preco, categoria_id) values ("Bootcamp de Espanhol avançado", "2022-02-01", "Tarde", 130.00,2);
insert into tb_curso (nome, data_inicio, horario, preco, categoria_id) values ("Programação JAVA iniciante", "2022-02-01", "Manhã", 55.00,1);
insert into tb_curso (nome, data_inicio, horario, preco, categoria_id) values ("Programação JAVA iniciante", "2022-02-01", "Tarde", 65.00,2);

select * from tb_curso;

-- Faça um select que retorne os cursos com o valor maior do que 50 reais --
select * from tb_curso where preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais --
select * from tb_curso where preco between 3 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra J --
select * from tb_curso where nome like "%j%";

-- Faça um um select com Inner join entre tabela categoria e curso --
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica --
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 1;