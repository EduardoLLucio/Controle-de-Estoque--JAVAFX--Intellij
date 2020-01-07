create database estoque;
use estoque;

create table usuario(
id_usuario  int not null primary key auto_increment,
email varchar(45),
nome varchar(45),
senha varchar(15),
nomereal varchar(45),
telefone varchar (18),
idade int (100)
);

create table TipoProduto (
id_TipoProduto Integer auto_increment,
tipo varchar(45),
primary key (id_TipoProduto)
);

select * from usuario;

select * from Cliente;

select * from venda;

select * from Produto;

delete from produto;

delete from TipoProduto;

create table Produto (
id_Produto Integer auto_increment,
id_TipoProduto  Integer not null,
nome varchar(45) not null,
Validade date,
Marca varchar(45),
tipo varchar(45),
Entrada date,
valor varchar (100) not null,
quantidade LONGTEXT,
primary key(id_Produto),
foreign key(id_TipoProduto) references TipoProduto(id_TipoProduto)
);




create table fornecedor (
id_fornecedor integer auto_increment not null,
nomeforn varchar(45),
telefoneforn varchar(18),
endereco varchar(200),
produtovendidos varchar(100),
primary key(id_fornecedor)

);

create table Venda (
id_venda integer primary key auto_increment,
id_Produto  Integer not null,
id_cliente Integer not null,
nomecomprador varchar(45),
telefonecomprador varchar(18),
produto varchar (45) not null,
quantidadedesejada LONGTEXT,
datadecompra date,
valor varchar(45),
foreign key(id_Produto) references Produto(id_Produto),
foreign key(id_cliente) references Cliente(id_cliente)
);

select * from 	Venda




insert into TipoProduto values(default, 'Comida');
insert into TipoProduto values(default, 'Bebida');
insert into TipoProduto values(default, 'Limpeza');
insert into TipoProduto values(default, 'hospitalar');
insert into TipoProduto values(default, 'gelados');
insert into TipoProduto values(default, 'doce');

select count(id_venda), extract(year from datadecompra) as ano, extract(month from datadecompra) as  mes from Venda group by ano, mes order by ano, mes

select * from cliente where nome  = 'Eduardo'

