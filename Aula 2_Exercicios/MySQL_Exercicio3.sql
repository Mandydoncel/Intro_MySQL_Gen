create database db_escola;
use db_escola;

create table tb_estudantes(
	id bigint auto_increment,
    nome varchar(250) not null,
    nascimento date not null,
    turma varchar (20) not null,
    responsavel varchar (250) not null,
    nota decimal (3,1) not null,
	primary key (id)
);

INSERT INTO tb_estudantes (nome,nascimento,turma,responsavel,nota) values ("Amanda Doncel","2000-01-06","4","Mãe",9.5);
INSERT INTO tb_estudantes (nome,nascimento,turma,responsavel,nota) values ("Marcela Pereyra","2000-02-17","4","Pai",10.0);
INSERT INTO tb_estudantes (nome,nascimento,turma,responsavel,nota) values ("Sofia Torres","2007-06-06","6","Mãe",6.5);
INSERT INTO tb_estudantes (nome,nascimento,turma,responsavel,nota) values ("José Santos","2008-08-20","7","Mãe",9.5);
INSERT INTO tb_estudantes (nome,nascimento,turma,responsavel,nota) values ("Carlos Magno","2007-03-13","6","Pai",5.5);
INSERT INTO tb_estudantes (nome,nascimento,turma,responsavel,nota) values ("Saulo Pires","2008-07-22","7","Mãe",8.5);
INSERT INTO tb_estudantes (nome,nascimento,turma,responsavel,nota) values ("Samantha Cruz","2000-04-11","4","Pai",7.5);
INSERT INTO tb_estudantes (nome,nascimento,turma,responsavel,nota) values ("Gabriel Souza","2007-11-20","7","Mãe",8.5);

select * from tb_estudantes where nota >= 7;

select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 7.00 where id = 8;

select * from tb_estudantes


