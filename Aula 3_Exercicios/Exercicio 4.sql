-- Crie uma base de dados chamada db_cidade_das_frutas--
create database db_cidade_das_frutas;
use db_cidade_das_frutas;

-- Crie uma tabela tb_categoria e determine 3 atributos relevantes --
create table tb_categoria(
id bigint not null auto_increment,
descricao varchar(50) not null,
embalagem boolean,
primary key (id)
);

-- Popule a tabela categoria com até 5 dados --
insert into tb_categoria (descricao, embalagem) values ("Fresco", true);
insert into tb_categoria (descricao, embalagem) values ("Fresco", false);
insert into tb_categoria (descricao, embalagem) values ("Congelado", true);
insert into tb_categoria (descricao, embalagem) values ("Em pedaços", true);


select * from tb_categoria;

-- Crie uma tabela tb_produto e determine 5 atributos  --
create table tb_produto(
id bigint not null auto_increment,
nome varchar(50) not null,
preco decimal(4,2) not null,
dataentrada date,
quantidade int not null, 
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

-- Popule a tabela categoria com até 8 dados --
insert into tb_produto (nome,preco,dataentrada,quantidade,categoria_id) values ("Banana Prata", 8.00, current_date(), 25, 2);
insert into tb_produto (nome,preco,dataentrada,quantidade,categoria_id) values ("Cereja Premium", 55.00, current_date(), 30, 1);
insert into tb_produto (nome,preco,dataentrada,quantidade,categoria_id) values ("Mamão", 16.00, current_date(), 15, 4);
insert into tb_produto (nome,preco,dataentrada,quantidade,categoria_id) values ("Morango", 14.00, current_date(), 25, 3);
insert into tb_produto (nome,preco,dataentrada,quantidade,categoria_id) values ("Abacaxi", 12.00, current_date(), 50, 2);
insert into tb_produto (nome,preco,dataentrada,quantidade,categoria_id) values ("Coco", 10.00, current_date(), 20, 4);
insert into tb_produto (nome,preco,dataentrada,quantidade,categoria_id) values ("Pêssego", 8.00, current_date(), 120, 2);
insert into tb_produto (nome,preco,dataentrada,quantidade,categoria_id) values ("Mirtilo", 52.00, current_date(), 5, 3);


select * from tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais --
select * from tb_produto where preco > 50.00;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais --
select * from tb_produto where preco between 3.00 and 60.00;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C --
select * from tb_produto where nome like "%c%";

-- Faça um um select com Inner join entre tabela categoria e produto --
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica --
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 2