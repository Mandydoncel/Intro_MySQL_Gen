create database db_rh;
use db_rh;

-- Crie uma tabela com até 5 dados --
create table tb_funcionarios (
	id bigint auto_increment,
    nome varchar (300) not null,
    cargo varchar (300) not null,
    departamento varchar (300) not null,
    cargaHoraria decimal (3,2) not null,
    salario decimal (6,2) not null,
    primary key (id)
);

INSERT INTO tb_funcionarios (nome,cargo,departamento,cargaHoraria,salario) values ("Trevis","Recepcionista Pleno","Recepção",8.00,2500.00);
INSERT INTO tb_funcionarios (nome,cargo,departamento,cargaHoraria,salario) values ("Dom","Camareiro","Governança",8.00,2000.00);
INSERT INTO tb_funcionarios (nome,cargo,departamento,cargaHoraria,salario) values ("Junior","Consultor de Eventos","Eventos",8.00,3000.00);
INSERT INTO tb_funcionarios (nome,cargo,departamento,cargaHoraria,salario) values ("Samantha","Recepcionista Junior","Recepção",8.00,1800.00);
INSERT INTO tb_funcionarios (nome,cargo,departamento,cargaHoraria,salario) values ("Sara","Assistente de Reservas Pleno","Reservas",8.00,2700.00);
 
 
-- Faça um select que retorne os funcionaries com o salário maior do que 2000 --
 select * from tb_funcionarios where salario > 2000.00;

-- Faça um select que retorne os funcionaries com o salário menor do que 2000 --
 select * from tb_funcionarios where salario < 2000.00;
  
-- Atualizar um dado desta tabela através de uma query de atualização --  
 update tb_funcionarios set salario = 2000.00 where id = 4;
 
 select * from tb_funcionarios
