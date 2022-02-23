drop database dbVendasdecerveja;
create database dbVendasdecerveja;
use dbVendasdecerveja;

-- Cerveja

create table tbCerveja(
codigo bigint(20),
sku varchar(50),
nome varchar(80),
descricao text,
valor decimal(10,2),
teor_alcoolico decimal(10,2),
comissao decimal(10,2),
sabor varchar(50),
origem varchar(50),
codigo_estilo bigint(20),
quantidade_estoque int,
foto varchar(100),
content_type varchar(100)
);
desc tbCerveja;

-- Estilo

create table tbEstilo(
codigo bigint(20),
nome varchar(50)
);
desc tbEstilo;

-- Item_venda

create table tbItem_venda(
codigo bigint(20),
quantidade int,
valor_unitario decimal(10,2),
codigo_cerveja bigint(20),
codigo_venda bigint(20)
);
desc tbItem_venda;

-- Venda

create table tbVenda(
codigo bigint(20),
data_criacao datetime,
valor_frete decimal(10,2),
valor_desconto decimal(10,2),
valor_total decimal(10,2),
status varchar(30),
observacao varchar(200),
data_hora_entrega datetime,
codigo_cliente bigint(20),
codigo_usuario bigint(20)
);
desc tbVenda;

-- Cliente

create table tbCliente(
codigo bigint(20),
nome varchar(80),
tipo_pessoa varchar(15),
cpf_cnpj varchar(30),
telefone varchar(20),
email varchar(50),
logradouro varchar(50),
numero varchar(15),
complemento varchar(20),
cep varchar(15),
codigo_cidade bigint(20)
);
desc tbCliente;

-- Cidade

create table tbCidade(
codigo bigint(20),
nome varchar(50),
codigo_estado bigint(20)
);
desc tbCidade;

-- Estado

create table tbEstado(
codigo bigint(20),
nome varchar(50),
sigla varchar(2)
);
desc tbEstado;

-- Shema_version

create table tbSchema_version(
installed_rank int,
version varchar(50),
description varchar(200),
type varchar(20),
script varchar(1000),
checksum int,
installed_by varchar(100),
installed_on timestamp,
execution_time int,
success tinyint(1)
);
desc tbSchema_version;

-- Usuario

create table tbUsuario(
codigo bigint(20),
nome varchar(50),
email varchar(50),
senha varchar(120),
ativo tinyint(1),
data_nascimento date
);
desc tbUsuario;

-- Usuario_grupo

create table tbUsuario_grupo(
codigo_usuario bigint(20),
codigo_grupo bigint(20)
);
desc tbUsuario_grupo;

-- Grupo

create table tbGrupo(
codigo bigint(20),
nome varchar(50)
);
desc tbGrupo;

-- Grupo_permissao

create table tbGrupo_permissao(
codigo_grupo bigint(20),
codigo_permissao bigint(20)
);
desc tbGrupo_permissao;

-- Permissao

create table tbPermissao(
codigo bigint(20),
nome varchar(50)
);
desc tbPermissao;