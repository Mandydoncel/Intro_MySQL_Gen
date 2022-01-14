-- Crie uma base de dados chamada db_pizzaria_legal--
create database db_pizzaria_legal;
use db_pizzaria_legal;

-- Crie uma tabela tb_categoria e determine 3 atributos relevantes a pizzaria --
create table tb_categoria(
id bigint not null auto_increment,
tamanho varchar(50) not null,
tipo varchar(50) not null,
primary key (id)
);

-- Popule a tabela categoria com até 5 dados --
insert into tb_categoria (tamanho, tipo) values ("Brotinho", "Salgado");
insert into tb_categoria (tamanho, tipo) values ("Grande", "Salgado");
insert into tb_categoria (tamanho, tipo) values ("Família", "Salgado");
insert into tb_categoria (tamanho, tipo) values ("Brotinho", "Doce");
insert into tb_categoria (tamanho, tipo) values ("Grande", "Doce");

select * from tb_categoria;

-- Crie uma tabela tb_pizza e determine 5 atributos  --
create table tb_pizza(
id bigint not null auto_increment,
sabor varchar(50) not null,
preco decimal(4,2) not null,
borda_recheada boolean,
massa varchar(50) not null, 
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

-- Popule a tabela categoria com até 8 dados --
insert into tb_pizza (sabor,preco,borda_recheada,massa,categoria_id) values ("Camarão com queijo", 85.00, true, "Tradicional", 3);
insert into tb_pizza (sabor,preco,borda_recheada,massa,categoria_id) values ("Portuguesa", 55.00, true, "Integral", 2);
insert into tb_pizza (sabor,preco,borda_recheada,massa,categoria_id) values ("Chocolate com morango", 45.00, false, "Tradicional", 5);
insert into tb_pizza (sabor,preco,borda_recheada,massa,categoria_id) values ("Cinco queijos", 60.00, true, "Tradicional", 2);
insert into tb_pizza (sabor,preco,borda_recheada,massa,categoria_id) values ("Marguerita", 35.00, true, "Tradicional", 3);
insert into tb_pizza (sabor,preco,borda_recheada,massa,categoria_id) values ("Romeu e Julieta", 29.00, false, "Tradicional", 4);
insert into tb_pizza (sabor,preco,borda_recheada,massa,categoria_id) values ("Frango com catupiry", 55.90, true, "Integral", 3);
insert into tb_pizza (sabor,preco,borda_recheada,massa,categoria_id) values ("Lombo com queijo", 60.00, true, "Tradicional", 2);

select * from tb_pizza;

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais --
select * from tb_pizza where preco > 45.00;

-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais --
select * from tb_pizza where preco between 29.00 and 60.00;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C --
select * from tb_pizza where sabor like "%c%";

-- Faça um um select com Inner join entre tabela categoria e pizza --
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica --
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 4
