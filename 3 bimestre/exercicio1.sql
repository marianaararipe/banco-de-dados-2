create database exerciciofinal;

use exerciciofinal;


create table faculdade

(

id_faculdade int(5) primary key,

nome_faculdade varchar(50),

cidade_faculdade varchar(50),

estado_faculdade varchar(50)

);


insert into faculdade(id_faculdade,nome_faculdade,cidade_faculdade,estado_faculdade) values ('12345','unisal','Americana','SP');

insert into faculdade(id_faculdade,nome_faculdade,cidade_faculdade,estado_faculdade) values ('23457','unicamp','Campinas','SP');

insert into faculdade(id_faculdade,nome_faculdade,cidade_faculdade,estado_faculdade) values ('13457','unesp','Rio Claro','SC');


select * from faculdade;


delimiter //

create procedure faculdade_selectestado()

begin

select * from faculdade

where estado_faculdade='SP';

end //

delimiter ;


call faculdade_selectestado();