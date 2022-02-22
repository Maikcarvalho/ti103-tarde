drop database dbmercearia;
create database dbmercearia;
use dbmercearia;

-- Cliente

create table tbCliente(
id int,
nome varchar(45),
telefone varchar(45),
email varchar(45)
);
desc tbCliente;

-- Venda

create table tbVenda(
id int,
valor_total decimal(10,2),
data datetime,
cliente_Id int,
vendedor_Id int,
pagamento_Id int
);
desc tbVenda;

-- Venda_has_produto

create table tbVenda_has_produto(
venda_Id int,
produto_Id int
);
desc tbVenda_has_produto;

-- Produto

create table tbProduto(
id int,
nome varchar(45),
preco decimal(10,2),
qtd_Estoque varchar(45),
categoria_Id int,
fornecedores_Id int
);
desc tbProduto;

-- Vendendor

create table tbVendedor(
id int,
nome varchar(45)
);
desc tbVendedor;

-- Pagamento

create table tbPagamento(
id int,
forma_Pagamento varchar(45)
);
desc tbPagamento;

-- Categoria
create table tbCategoria(
id int,
nome varchar(45)
);
desc tbCategoria;

-- Fornecedores

create table tbFornecedores(
id int,
cnpj varchar(45),
nome varchar(45)
);
desc tbFornecedores;


