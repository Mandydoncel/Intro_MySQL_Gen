-- Crie uma base de dados chamada db_construindo_a_nossa_vida --
create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

-- Crie uma tabela tb_categoria e determine 3 atributos relevantes --
create table tb_categoria(
id bigint not null auto_increment,
departamento varchar(50) not null,
ativo boolean,
primary key (id)
);

-- Popule a tabela categoria com até 5 dados -- 
insert into tb_categoria (departamento, ativo) values ("Decoração", true);
insert into tb_categoria (departamento, ativo) values ("Ferragens", true);
insert into tb_categoria (departamento, ativo) values ("Iluminação", true);
insert into tb_categoria (departamento, ativo) values ("Madeira", true);


select * from tb_categoria;

-- Crie uma tabela tb_produto e determine 5 atributos  --
create table tb_produto(
id bigint not null auto_increment,
nome varchar(200) not null,
preco decimal(6,2) not null,
marca varchar(200),
material varchar(200), 
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

-- Popule a tabela categoria com até 8 dados --
insert into tb_produto (nome,preco,marca,material,categoria_id) values ("Persiana Blackout", 530.00, "Inspired", "Tecido", 1);
insert into tb_produto (nome,preco,marca,material,categoria_id) values ("Dobradiça", 70.00, "Door", "Alumínio", 2);
insert into tb_produto (nome,preco,marca,material,categoria_id) values ("Lugar Americano", 19.90, "Mimo", "Fibra", 1);
insert into tb_produto (nome,preco,marca,material,categoria_id) values ("Deck Modular", 55.00, "Wood", "Madeira", 4);
insert into tb_produto (nome,preco,marca,material,categoria_id) values ("Lâmpada", 12.00, "Light", "Vidro", 3);
insert into tb_produto (nome,preco,marca,material,categoria_id) values ("Arara de Roupa", 130.00, "Clothes", "Alumínio", 2);
insert into tb_produto (nome,preco,marca,material,categoria_id) values ("Lustre Triangular", 300.00, "Form", "Metal", 3);
insert into tb_produto (nome,preco,marca,material,categoria_id) values ("Abajour", 85.00, "On", "Metal", 3);

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