create database exercicio2;

use exercicio2;


create table alunos

(

ra int(5) primary key,

nome varchar(50),

serie varchar(30),

curso varchar(50)

);


insert into alunos(ra,nome,serie,curso) values ('23457','Gabriel','2ds','ds');
insert into alunos(ra,nome,serie,curso) values ('23234','Gabriel','2dsb','ds');
insert into alunos(ra,nome,serie,curso) values ('23238','LEticia','2dsb','ds');


select * from alunos;


delimiter //

create procedure nomesiguais()

begin

select * from alunos

where nome='Gabriel';

end //

delimiter;


call nomesiguais();


delimiter //

create procedure nomesiguaisl()

begin

select * from alunos

where nome='leticia';

end //

delimiter ;


call nomesiguaisl();