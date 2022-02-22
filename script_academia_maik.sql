drop database dbacademia;
create database dbacademia;
use dbacademia;

-- Registro

create table tbRegistro(
id_Aluno int,
id_Turma int,
ausencia int,
id_Registro int
);
desc tbRegistro;

-- Aluno

create table tbAluno(
matricula int,
data_matricula date,
nome varchar(45),
logradouro varchar(100),
numero char(10),
cep char(9),
bairro varchar(100),
cidade varchar(100),
estado char(2),
telefone varchar(45),
nascimento date,
altura float,
peso float,
id_turma int
);
desc tbAluno;

-- Atividade

create table tbAtividade(
id int,
atividade varchar(45)
);
desc tbAtividade;

-- Turma

create table tbTurma(
id int,
quant_Alunos int,
horario_Aula datetime,
duracao_aula datetime,
data_Inicio date,
data_Fim date,
atividade int,
id_Instrutor int,
id_Monitor int
);
desc tbTurma;

-- Instrutor

create table tbInstrutor(
rg int,
nome varchar(45),
nascimento date,
titulacao varchar(45),
telefone varchar(45)
);
desc tbInstrutor;

-- Monitor

create table tbMonitor(
id_Aluno int
);
desc tbMonitor;
