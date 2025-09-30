create database futebol;
use futebol;

create table jogador
(
	cpf_jogador int(11) primary key,
    nome_jogador varchar(40),
    idade_jogador int(2), 
    numero_camiseta__jogador int(2),
    posicao_jogador varchar(30)
);

desc jogador;


create table contrato
(
	numero_contrato int(5) primary key,
    data_incial_contrato date,
    data_final_contrato date,
    
    cpf_jogador int(11),
    Constraint FK_contrato_jogador_cpf_jogador Foreign Key(cpf_jogador)
    References jogador(cpf_jogador)
);

select * from jogador;


insert into jogador(cpf_jogador,nome_jogador,idade_jogador,numero_camiseta__jogador,posicao_jogador) values (1235678910,'Vicente Collin','16','09','atacante');