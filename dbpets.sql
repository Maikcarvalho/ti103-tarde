-- inserir o arquivo.sql no CMD (ex: source D:\scripts\dbpets.sql)

-- apagar o banco de dados

drop database dbpets;

-- criar o banco de dados dbpets

create database dbpets;

-- visualizar o banco de dados

show databases;

-- acessar o banco de dados dbpets

use dbpets;

-- visualizando as tabelas do banco de dados

show tables;

create table tbClientes(
idCliente int,
nome varchar(100),
cpf char(100),
dataNasc date,
genero char(1),
logradouro varchar(100),
numero char(10),
cep char(9),
bairro varchar(100),
cidade varchar(100),
estado char(2),
telefone char(10),
email varchar(100) 
);

-- visualizando as tabelas do banco de dados

show tables;

-- visualizar a estrutura das tabelas criadas no banco de dados

desc tbClientes;

-- FORNECEDORES 

create table tbFornecedores(
idFornecedor int,
razaoSocial varchar(100),
nomeFantasia varchar(100),
cnpj varchar(15),
logradouro varchar(100),
numero char(10),
cep char(9),
bairro varchar(100),
cidade varchar(100),
estado char(2),
telefone varchar(11)
);

desc tbFornecedores;

-- PRODUTOS

create table tbProdutos(
idProduto int,
codigodeBarras varchar(13),
nomeProduto varchar(100),
marca varchar(100),
tipo varchar(100),
fornecedor varchar(100),
valordaCompra decimal(8,2),
valordaVenda decimal(8,2),
quantidadeemEstoque int(11),
fornecedores_idFornecedor int
);

desc tbProdutos;

-- CLIENTES

create table tbCompras(
idCompra int,
produtos varchar(100),
cpf_Cliente varchar(100),
cpf_Funcionario varchar(100),
valorTotal decimal(8,2),
dataAtual date,
funcionarios_idFuncionario int(11),
clientes_idCliente int
);

desc tbCompras;

-- compra_has_produtos

create table tbCompras_has_produtos(
compras_idCompra int,
produtos_idProduto int
);

desc tbCompras_has_produtos;

-- FUNCIONARIOS

create table tbFuncionarios(
idFuncionario int,
nome varchar(100),
cargo varchar(100),
cpf varchar(100),
logradouro varchar(100),
numero char (10),
cep char(9),
bairro varchar(100),
cidade varchar(100),
estado char(2),
telefone varchar(11),
cargofuncionario_idCargo int
);

desc tbFuncionarios;

-- ANIMAIS

create table tbAnimais(
idAnimal int,
nomeAnimal varchar(100),
especie varchar(100),
raca varchar(100),
genero char(1),
datadeNascimento date,
clientes_idCliente int
);

desc tbAnimais;

-- servicos_has_clientes

create table tbServicos_has_clientes(
servicos_idServico int,
clientes_idCliente int
);

desc tbServicos_has_clientes;

-- Cargofuncionario

create table tbCargofuncionario(
idCargo int,
cargo varchar(100),
salario decimal(8,2)
);

desc tbCargofuncionario;
