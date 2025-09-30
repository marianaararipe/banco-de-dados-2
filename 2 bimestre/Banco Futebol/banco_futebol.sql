create database futebolinho;
use futebolinho;

create table jogador
(
   cpf_jogador int(11) primary key,
   nome_jogador varchar(40),
   idade_jogador int(2),
   numero_camiseta_jogador int(2),
   posicao_jogador varchar(35)
   
);
desc jogador;

select * from jogador;
	insert into jogador(cpf_jogador,nome_jogador,idade_jogador,numero_camiseta_jogador,posicao_jogador) values (23123,'Murilo','32','7','zangueiro');
	insert into jogador(cpf_jogador,nome_jogador,idade_jogador,numero_camiseta_jogador,posicao_jogador) values (32132,'Vicente','24','10','goleiro');
	insert into jogador(cpf_jogador,nome_jogador,idade_jogador,numero_camiseta_jogador,posicao_jogador) values (34986,'Enzo','16','9','banco');
    

    
create table contrato
( 
  numero_contrato int(5) primary key,
  data_inicial_contrato date,
  data_final_contrato date,
  cpf_jogador int(11),
  constraint FK_contrato_jogador_cpf_jogador foreign key (cpf_jogador)
  references jogador(cpf_jogador)
);
desc contrato;
  
select * from contrato;
	insert into contrato(numero_contrato,data_inicial_contrato,data_final_contrato,cpf_jogador) values (23100, '2024-03-11','2029-04-10','23123');
	insert into contrato(numero_contrato,data_inicial_contrato,data_final_contrato,cpf_jogador) values (40091, '2023-05-11','2028-03-25','32132');
	insert into contrato(numero_contrato,data_inicial_contrato,data_final_contrato,cpf_jogador) values (32345, '2022-11-21','2027-09-17','34986');
    


create table treinamento
(
  codigo_treino int(5) primary key,
  data_treino date,
  local_treino varchar(40),
  horario_treino time,
  cpf_jogador int(11),
  constraint FK_treinamento_jogador_cpf_jogador Foreign Key(cpf_jogador)
  references jogador(cpf_jogador)
);
desc treinamento;

select * from treinamento;
	insert into treinamento(codigo_treino,data_treino,local_treino,horario_treino,cpf_jogador) values ('01020','2007-07-02','Alagoas','14:30','23123');
	insert into treinamento(codigo_treino,data_treino,local_treino,horario_treino,cpf_jogador) values ('32045','2007-10-08','Para','16:30','32132');
	insert into treinamento(codigo_treino,data_treino,local_treino,horario_treino,cpf_jogador) values ('24955','2007-07-05','Parana','15:30','34986');




create table jogo
(
 codigo_jogo int(5) primary key,
 data_jogo date,
 local_jogoo varchar(40),
 horario_jogo time,
 adversario varchar(40),
 cpf_jogador int(11),
 Constraint FK_jogo_jogador_cpf_jogador Foreign Key(cpf_jogador)
 References jogador(cpf_jogador)
);
desc jogo;

select * from jogo;
  insert into jogo(codigo_jogo,data_jogo,local_jogoo,horario_jogo,adversario,cpf_jogador) values (93451,'2007-08-02','Luxemburgo','12:00','Corinthians','23123');
  insert into jogo(codigo_jogo,data_jogo,local_jogoo,horario_jogo,adversario,cpf_jogador) values (00044,'2008-03-07','Londres','17:00','Ponte Preta','32132');
  insert into jogo(codigo_jogo,data_jogo,local_jogoo,horario_jogo,adversario,cpf_jogador) values (22000,'2006-03-18','Itália','13:00','Flamengo','34986');


select * from jogador where nome_jogador = 'Murilo';
select * from contrato where numero_contrato = '23100';
select * from treinamento where local_treino = 'Parana';
select * from jogo where data_jogo = '2007-08-02';