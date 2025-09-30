create database banco_barbie;
use banco_barbie;

create table barbie
(
  codigo int(5) primary key,
  nome varchar(40),
  preco int(5),
  tipo varchar(35)
);
desc barbie;

select * from barbie;
insert into barbie(codigo, nome, preco, tipo) values (23100, 'Barbie Presidente', '50', 'Boneca');
insert into barbie(codigo, nome, preco, tipo) values (20101, 'Ken Surfista', '45', 'Boneco');
insert into barbie(codigo, nome, preco, tipo) values (23006, 'Barbie Estereotipada', '150', 'Boneca');
insert into barbie(codigo, nome, preco, tipo) values (23008, 'Ken Ginasta', '120', 'Boneco');


create table modelo
(
  cod_modelo int(5) primary key,
  colecao varchar(35),
  cor varchar(15),
  ano date,
  codigo int(5),
  constraint FK_modelo_barbie_codigo foreign key (codigo)
  references barbie(codigo)
);
desc modelo;


select * from modelo;
insert into modelo(cod_modelo, colecao, cor, ano, codigo) values (23006, 'Politica', 'Rosa', '2024-03-11', '23100');
insert into modelo(cod_modelo, colecao, cor, ano, codigo) values (23009, 'Praia', 'Azul', '2023-01-01', '20101');
insert into modelo(cod_modelo, colecao, cor, ano, codigo) values (23011, 'Estereotipo', 'Rosa', '2022-02-01', '23006');
insert into modelo(cod_modelo, colecao, cor, ano, codigo) values (23090, 'Esporte', 'Azul', '2023-07-01', '23008');



create table acessorios
(
	cod_acessorio int(5) primary key,
    nome varchar(35),
    tipo varchar(20),
    codigo int(5),
	constraint FK_acessorios_barbie_codigo foreign key (codigo)
	references barbie(codigo),
    cod_modelo int(5),
    constraint FK_acessorios_modelo_cod_modelo foreign key (cod_modelo)
    references modelo(cod_modelo)
);
desc acessorios;

select * from acessorios;
insert into acessorios (cod_acessorio, nome, tipo, codigo, cod_modelo) values (24100, 'Faixa Eleitoral', 'Roupa', '23100', '23006');
insert into acessorios (cod_acessorio, nome, tipo, codigo, cod_modelo) values (24101, 'Prancha', 'Objetos', '20101', '23009');
insert into acessorios (cod_acessorio, nome, tipo, codigo, cod_modelo) values (24010, 'Bolsa', 'Roupa', '23006', '23011');
insert into acessorios (cod_acessorio, nome, tipo, codigo, cod_modelo) values (24103, 'Faixa', 'Roupa', '23008', '23090');




/*maximo*/

/*A) Mostre todos os preços da barbie acima de R$80,00. */
SELECT nome, tipo, codigo, preco  FROM barbie WHERE preco > 80;

/*B) Mostre todos os preços entre R$100 e R$250,00. */
SELECT nome, tipo, codigo, preco FROM barbie WHERE preco > 100 and preco < 250;

/*C) Apresente todos os tipo da barbie que inicia com a letra L (ou letra que tenha seu registro).*/
select tipo, nome from barbie where tipo like 'B%';


/*D) Mostre o produto mais caro utilizando a função MAX */
select nome, tipo, codigo, max(preco) from barbie;

/*E) Mostre o produto mais barato utilizando a função MIN */
select nome, tipo, codigo, min(preco) from barbie;

/*F) Some todos  os preços da barbie utilizando SUM */
select sum(preco) from barbie;

/*G) Com o COUNT mostre todas os modelos que foram inseridos */
select count(*) from barbie;

/*H)Apresente o código e coleção dos anos superiores que 2020 dos modelos da Barbie */
SELECT codigo, cod_modelo, colecao, ano FROM modelo WHERE ano > 2020;

/*I) Apresente todos os acessórios em ordem alfabética */
SELECT nome FROM acessorios ORDER BY nome;

/*J) Apresente todos os modelos em ordem alfabética descrescente */
SELECT colecao FROM modelo ORDER BY colecao DESC;


/*K) Elabore uma consulta utilizando o comando IN (Poderá escolher a tabela) */
SELECT colecao FROM modelo WHERE colecao IN ('Praia', 'Politica');





delimiter //
create procedure corRosa()
begin
select * from modelo
where cor='Rosa';
end //
delimiter ;


call corRosa();
