create database db_ecommerce1;
use db_ecommerce;


-- Crie uma tabela com 5 atributos dos produtos --
create table tb_produtos1(
	id bigint auto_increment,
    nome varchar (50) not null,
    marca varchar (50) not null,
	categoria varchar (50) not null,
    quantidade int not null,
    preco decimal (6,2) not null,
    primary key (id)
    
);
-- Insira a tabela com até 8 dados --
INSERT INTO tb_produtos1 (nome,marca,categoria,quantidade,preco) values ("Água Miscelar","Moa","Higiene",10,36.00);
INSERT INTO tb_produtos1 (nome,marca,categoria,quantidade,preco) values ("Diamond Gel","Xia","Esmalte",6,12.00);
INSERT INTO tb_produtos1 (nome,marca,categoria,quantidade,preco) values ("Blush","Shine","Maquiagem",20,45.00);
INSERT INTO tb_produtos1 (nome,marca,categoria,quantidade,preco) values ("Máscara de cílios","Perfect","Maquiagem",10,70.00);
INSERT INTO tb_produtos1 (nome,marca,categoria,quantidade,preco) values ("Desodorante","Smell","Higiene",10,36.00);
INSERT INTO tb_produtos1 (nome,marca,categoria,quantidade,preco) values ("Massageador Facial","Face","Beleza",5,580.00);
INSERT INTO tb_produtos1 (nome,marca,categoria,quantidade,preco) values ("Máscara Hidratante","Bee","Beleza",7,20.00);

-- Faça um select que retorne os produtos com o valor maior que 500 --
select * from tb_produtos1 where preco > 500.00;

-- Faça um select que retorne os produtos com o valor menor que 500 --
select * from tb_produtos1 where preco < 500.00;

-- Atualize um dado desta tabela através de um query de atualização--
update tb_produtos1 set quantidade = 10 where id = 8;

select * from tb_produtos1

