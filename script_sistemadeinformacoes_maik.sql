drop database dbacademia;
create database dbacademia;
use dbacademia;

-- Demanda_mensal

create table tbDemanda_mensal(
mes int,
ano int,
demanda int,
previsao double,
tb_tipo_sanguineo_cod_tipo_sanguineo int,
tb_produto_cod_produto int
);
desc tbDemanda_mensal;


-- Tipo_sanguineo

create table tbTipo_sanguineo(
cod_tipo_sanguineo int,
descricao_tipo varchar(45)
);
desc tbTipo_sanguineo;


-- Doadores

create table tbDoadores(
identidade int,
nome varchar(45),
endereco varchar(45),
tb_tipo_sanguineo_cod_tipo_sanguineo int,
data_nascimento varchar(8),
cidade varchar(45),
uf char(2),
estado_civil varchar(45),
email varchar(45),
telefone varchar(45)
);
desc tbDoadores;


-- Entradas

create table tbEntradas(
data_entrada date,
volume int,
tb_produto_cod_produto int,
tb_tipo_sanguineo_cod_tipo_sanguineo int,
validade date,
cod_bolsa int
);
desc tbEntradas;


-- Produto

create table tbProduto(
cod_produto int,
descricao_produto varchar(45),
sigla char(5),
validade int,
lead_time_horas double
);
desc tbProduto;


-- Saida

create table tbSaida(
nome_paciente varchar(100),
nome_hospital varchar(45),
data_saida date,
rt int,
tb_produto_cod_produto int,
tb_tipo_sanguineo_cod_tipo_sanguineo int,
tb_entradas_cod_bolsa int
);
desc tbSaida;