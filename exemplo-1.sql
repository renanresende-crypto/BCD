-- Renan --
create database loja_virtual;
USE loja_virtual;
create table clientes(
id_cliente INT auto_increment primary key,
nome varchar (100),
email varchar (100),
telefone varchar(15),
data_cadastro date
);

alter table clientes add cpf varchar(14);
alter table clientes modify telefone varchar(20);
alter table clientes rename to consumidores;
drop table consumidores;

create index inx_nome_cliente
on clientes (nome);

drop database loja_virtual;

create table pedidos (
id_pedidos INT AUTO_INCREMENT PRIMARY KEY,
data_pedido DATE,
valor_total DECIMAL(10,2) CHECK (valor_total > 0),
id_cliente INT,
FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
);