create database butterbyte;
drop database butterbyte;
use  butterbyte;
create table Usuario (
	id int auto_increment,
    nome varchar(30) not null,
    email varchar(30) not null,
    cargo varchar(30) not null,
    nomeEmpresa varchar(50) not null,
    cpf bigint not null,
    codigoRegistro bigint not null,dd
    telefone bigint(15) not null,
    ramal int not null,
    senha varchar(20) not null,
    
    constraint pk_id primary key(id)
);

INSERT INTO Usuario (nome,email,cargo,nomeEmpresa,cpf,codigoRegistro,telefone,ramal,senha)
 values ('Marcus Vinicius','vinicius.marcus657@gmail.com','Programador','ButterByte',47661604876,0123,5511988062962,7406,'ButterByte01');
 
select * from Usuario;