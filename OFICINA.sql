CREATE DATABASE oficina;

USE oficina;

CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
	modelo VARCHAR(100),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE ordem_servico (
    id_os INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(10,2),
	id_veiculo INT,
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo)
);

USE oficina;

INSERT INTO cliente (nome) VALUES
('João da Silva'),
('Maria Oliveira'),
('Carlos Santos');

INSERT INTO Veiculo (id_cliente, modelo) VALUES
(1, 'Honda Civic'),
(2, 'Toyota Corolla'),
(3, 'Volkswagen Gol');

INSERT INTO ordem_servico (id_veiculo, valor) VALUES
(1, 350.00),
(2, 500.00),
(3, 250.00);