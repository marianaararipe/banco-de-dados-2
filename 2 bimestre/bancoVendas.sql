create database loja;
use loja;

create table vendas
(
  codigo_vendedor int(5),
  vendedor varchar(40),
  data_venda date,
  valor decimal
);
desc vendas;

select * from vendas;
insert into vendas(codigo_vendedor, vendedor, data_venda, valor) values (23100, 'Fulano', '2008-04-14', '600.00');
insert into vendas(codigo_vendedor, vendedor, data_venda, valor) values (23100, 'Fulano', '2008-04-16', '1000.00');
insert into vendas(codigo_vendedor, vendedor, data_venda, valor) values (23100, 'Fulano', '2008-04-18', '800.00');

insert into vendas(codigo_vendedor, vendedor, data_venda, valor) values (23101, 'Beltrano', '2008-04-15', '1200.00');
insert into vendas(codigo_vendedor, vendedor, data_venda, valor) values (23101, 'Beltrano', '2008-04-17', '1600.00');

insert into vendas(codigo_vendedor, vendedor, data_venda, valor) values (23102, 'Ciclano', '2008-04-14', '1000.00');
insert into vendas(codigo_vendedor, vendedor, data_venda, valor) values (23102, 'Ciclano', '2008-04-15', '1200.00');
insert into vendas(codigo_vendedor, vendedor, data_venda, valor) values (23102, 'Ciclano', '2008-04-16', '1400.00');
insert into vendas(codigo_vendedor, vendedor, data_venda, valor) values (23102, 'Ciclano', '2008-04-17', '1600.00');
insert into vendas(codigo_vendedor, vendedor, data_venda, valor) values (23102, 'Ciclano', '2008-04-18', '1800.00');




/*1- Qual o total das vendas?*/
select sum(valor) from vendas;

/*2- Qual o total de vendas de cada vendedor?*/
select vendedor, sum(valor) from vendas group by vendedor;

/*3- Quantas vendas foram feitas?*/
select count(*) from vendas;

/*4- Quantas vendas cada vendedor fez?*/
select vendedor, count(*) from vendas group by vendedor;

/*5- qual a menor e a maior venda?*/
select min(valor), max(valor) from vendas;

/*6- Qual a menor e a maior venda de cada vendedor?*/
select vendedor, min(valor), max(valor) from vendas group by vendedor;

/*7- qual a média das vendas dos dias 15 e 17?*/
select data_venda, avg(valor) from vendas where data_venda in ('2008-04-15', '2008-04-17') group by data_venda;

/*8- em quais dias as vendas superaram 3000?*/
select data_venda, sum(valor) from vendas group by data_venda having sum(valor)>3000;

/*9- em quais dias, no periodo de 14 a 16, a média das vendas foi menor que 2000?*/
select data_venda, avg(valor) from vendas where data_venda between '2008-04-14' and '2008-04-16' group by data_venda having avg(valor) <2000;

/*10- que vendedores fecharam mais de 2 vendas nos dias 14, 16 e 18?*/
select vendedor, count(*) from vendas where data_venda in ('2008-04-16', '2008-04-18') group by vendedor having count(*) >2;
