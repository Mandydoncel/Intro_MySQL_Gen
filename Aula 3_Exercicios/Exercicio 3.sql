-- Criar um banco de dados db_farmacia_do_bem --
create database db_farmacia_do_bem;
use db_farmacia_do_bem;

-- Criar uma tabela tb_categoria e determine 3 atributos --
create table tb_categoria(
	id bigint not null auto_increment,
    descricao varchar (255) not null,
    ativo boolean,
    primary key (id)
);

-- Popule a tabela categoria com até 5 dados --
insert into tb_categoria (descricao, ativo) values ("antibiótico", true);
insert into tb_categoria (descricao, ativo) values ("antihistamínico", true);
insert into tb_categoria (descricao, ativo) values ("higiene pessoal", true);
insert into tb_categoria (descricao, ativo) values ("beleza", true);
insert into tb_categoria (descricao, ativo) values ("energético", true);

select * from tb_categoria;

-- Criar uma tabela tb_produto e determine 5 atributos --

create table tb_produto(
id bigint not null auto_increment,
nome varchar (255) not null,
datacadastro date,
quantidade int,
preco decimal (7,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

-- Popule a tabela produto com até 8 dados --

insert into tb_produto(nome, datacadastro, quantidade, preco, categoria_id)
values("Desodorante Rexona", current_date(), 100, 19.90, 3);
insert into tb_produto(nome, datacadastro, quantidade, preco, categoria_id)
values("Shampoo", current_date(), 70, 26.90, 3);
insert into tb_produto(nome, datacadastro, quantidade, preco, categoria_id)
values("Allegra", current_date(), 100, 17.90, 1); 
insert into tb_produto(nome, datacadastro, quantidade, preco, categoria_id)
values("Desodorante Dove", current_date(), 94, 18.90, 3);
insert into tb_produto(nome, datacadastro, quantidade, preco, categoria_id)
values("Removedor de esmalte", current_date(), 60, 7.90, 4);
insert into tb_produto(nome, datacadastro, quantidade, preco, categoria_id)
values("Protetor Solar", current_date(), 50, 19.90, 4); 
insert into tb_produto(nome, datacadastro, quantidade, preco, categoria_id)
values("Sais de Banho", current_date(), 15, 55.90, 3);
insert into tb_produto(nome, datacadastro, quantidade, preco, categoria_id)
values("Energético RedBull", current_date(), 100, 28.90, 5);

select * from tb_produto;

-- Faça um select que retorne os produtos com o valor maior do que 50 reais --
select * from tb_produto where preco > 50;

-- Faça um select trazendo os produtos com valor entre 3 e 60 reais --
select * from tb_produto where preco between 3 and 60;

-- Faça um select utilizando LIKE buscando os produtos com a letra B --
select * from tb_produto where nome like "%b%";

-- Faça um select com Inner join entre tavela categoria e produto --
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

-- Faça um select onde traga todos os produtos de uma categoria específica --
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id 
where tb_categoria.id = 3;