create database CidadesAlunos;
use CidadesAlunos;

create table alunos
(
	cod int(5) not null primary key,
    nome varchar(30),
    endereco varchar(40),
    curso varchar(40),
    codcidade int(5)
);
desc alunos;


create table cidade
(
	codcidade int(5) not null primary key,
    nome_cidade varchar(30)
);
desc cidade;


alter table alunos add constraint fk_alunos_cidade foreign key (codcidade) references cidade (codcidade) on update cascade;

insert into cidade values ('1','Hortolandia');
insert into cidade values ('2','Campinas');
insert into cidade values ('3','Sumare');
insert into cidade values ('4','Hortolandia');


select * from alunos;
insert into alunos values(23100,'Mariana','Rua Pesidente Tancredo Neves','Desenvolvimento de Sistemas','3');
insert into alunos values(23104,'Murilo','Rua Capitao Lorival Mey','Desenvolvimento de Sistemas','3');


/*A*/
select codcidade from cidade group by codcidade;

/*B*/
select codcidade,nome_cidade from cidade group by nome_cidade;

/*C*/
select nome_cidade from cidade group by nome_cidade;

/*D*/
select nome_cidade, count(nome_cidade) AS qtde from cidade group by nome_cidade;

/*E*/
select nome_cidade, count(nome_cidade) from cidade group by nome_cidade;




