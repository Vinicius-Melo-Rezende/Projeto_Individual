create database projetoDeus;

use projetoDeus;

create table usuario (
idUsuario int primary key,
nome varchar(45),
email varchar (45),
senha varchar(200)
);

create table quiz (
idQuiz int primary key,
nome varchar(45)
);

create table perguntas (
idPergunta int,
nome varchar(200),
fkQuiz int,
constraint fkcomposta primary key (idPergunta, fkQuiz),
constraint fk_Quiz foreign key (fkQuiz) references quiz(idQuiz)
);

create table alternativa (
idAlternativa int,
texto varchar(45),
correto boolean,
fkPergunta int,
constraint fkComposta primary key (f

