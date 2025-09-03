drop database EcomLoja;

-- Criando o banco de dados
create database EcomLoja;
use EcomLoja;

-- Criando as Tabelas do Banco
create table TbProdutos(
Id int primary key auto_increment,
Nome varchar(40),
Descricao varchar(200),
Preco Decimal(10,2),
ImageUrl varchar(255),
Estoque int
);

create table TbPedido(
Id int primary key auto_increment ,
DataPedido datetime,
Total decimal(10,2),
Status varchar(50),
Endereco varchar(100),
FormaPagamento varchar(100),
Frete decimal (10,2)
);


create table TbItemPedido(
Id int primary key auto_increment ,
PedidoId int,
ProdutoId int,
Quantidade int,
PrecoUnitario decimal(10,2)
);	


insert into TbProdutos(Nome, Descricao, Preco, ImageUrl, Estoque) 
values('Macarrão','Macarrão parafuso', 20.00, 'images/produto.jpg', 10);

insert into TbProdutos(Nome, Descricao, Preco, ImageUrl, Estoque) 
values('Bolacha','Bolacha Recheada', 10.00, 'images/produto2.jpg', 10);

insert into TbProdutos(Nome, Descricao, Preco, ImageUrl, Estoque) 
values('Salgadinho','Salgadinho Fofura', 3.50, 'images/produto3.jpg', 10);
-- Consultando as Tabelas do Banco

select * from TbProdutos;
select * from TbPedido;
select * from TbItemPedido;