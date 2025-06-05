create database projetoDeus;

use projetoDeus;

create table usuario (
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar (45),
senha varchar(200)
);

create table quiz (
idQuiz int primary key auto_increment,
nome varchar(45)
);

insert into quiz(nome) values 
("QuizDeus");

create table perguntas (
idPergunta int auto_increment,
nome varchar(200),
fkQuiz int,
constraint fkcomposta primary key (idPergunta, fkQuiz),
constraint fk_Quiz foreign key (fkQuiz) references quiz(idQuiz)
);

insert into perguntas values 
(default,"Quem construiu a arca?", 1),
(default, "Quantos evangelhos há no Novo Testamento?", 1),
(default,"Qual é o primeiro livro da Bíblia?", 1),
(default,"Quem foi lançado na cova dos leões?", 1),
(default,"Qual o nome da mãe de Jesus?", 1),
(default,"Qual discípulo andou sobre as águas com Jesus?", 1),
(default,"Qual o primeiro mandamento dos Dez Mandamentos?", 1),
(default,"Qual profeta sobreviveu na cova dos leões graças à fé em Deus?", 1),
(default,"Qual animal falou com Eva no Jardim do Éden?", 1),
(default,"O que Deus criou no primeiro dia da criação?", 1),
(default,"Quem traiu Jesus por 30 moedas de prata?", 1),
(default,"Quem guiou o povo de Israel pelo deserto?", 1),
(default,"Em qual cidade Jesus nasceu?", 1),
(default,"Qual discípulo negou Jesus três vezes?", 1),
(default,"Quantos livros tem a Bíblia?", 1);

create table alternativa (
idAlternativa int auto_increment,
texto varchar(45),
correto boolean,
fkPergunta int,
fk_Quiz int,
constraint fkComposta primary key (idAlternativa, fkPergunta, fk_Quiz),
constraint fk_Pergunta foreign key (fkPergunta) references perguntas(idPergunta),
constraint fk_Quiz2 foreign key (fk_Quiz) references quiz(idQuiz));

insert into alternativa values
(default, "Moises", false, 1, 1),
(default, "Noé", true, 1, 1),
(default, "Abraão", false, 1, 1),
(default, "4", true, 2, 1),
(default, "5", false, 2, 1),
(default, "12", false, 2, 1),
(default, "Gênisis", true, 3, 1),
(default, "Êxodo", false, 3, 1),
(default, "Salmos", false, 3, 1),
(default, "Moisés", false, 4, 1),
(default, "Daniel", true, 4, 1),
(default, "Elias", false, 4, 1),
(default, "Maria", true, 5, 1),
(default, "Isabel", false, 5, 1),
(default, "Marta", false, 5, 1),
(default, "João", false, 6, 1),
(default, "André", false, 6, 1),
(default, "Matheus", false, 6, 1),
(default, "Pedro", true, 6, 1),
(default, "Não roubarás", false, 7, 1),
(default, "Amarás ao próximo", false, 7, 1),
(default, "Não terás outros deuses diante de mim", true, 7, 1),
(default, "Honra teu pai e tua mãe", false, 7, 1),
(default, "Elias", false, 8, 1),
(default, "Daniel", true, 8, 1),
(default, "Jeremias", false, 8, 1),
(default, "Isaías", false, 8, 1),
(default, "Leão", false, 9, 1),
(default, "Cobra", true, 9, 1),
(default, "Águia", false, 9, 1),
(default, "Cordeiro", false, 9, 1),
(default, "Os animais", false, 10, 1),
(default, "O ser humano", false, 10, 1),
(default, "A luz", true, 10, 1),
(default, "As plantas", false, 10, 1),
(default, "Pedro", false, 11, 1),
(default, "João", false, 11, 1),
(default, "Judas", true, 11, 1),
(default, "Tomé", false, 11, 1),
(default, "Elias", false, 12, 1),
(default, "Moíses", true, 12, 1),
(default, "Josué", false, 12, 1),
(default, "Jacó", false, 12, 1),
(default, "Nazaré", false, 13, 1),
(default, "Jerusalém", false, 13, 1),
(default, "Belém", true, 13, 1),
(default, "Egito", false, 13, 1),
(default, "João", false, 14, 1),
(default, "Judas", false, 14, 1),
(default, "Tomé", false, 14, 1),
(default, "Pedro", true, 14, 1),
(default, "27", false, 15, 1),
(default, "39", false, 15, 1),
(default, "66", false, 15, 1),
(default, "73", false, 15, 1);

create table Historico (
idHistorico int auto_increment,
numAcertos int,
numErros int,
dtRegistro datetime default now(),
fkUsuario int,
fkQuiz int,
constraint fkComposta primary key (idHistorico, fkUsuario, fkQuiz),
constraint fk_Usuario foreign key (fkUsuario) references usuario(idUsuario),
constraint fk_QuizHis foreign key (fkQuiz) references quiz(idQuiz));

select * from Historico;
