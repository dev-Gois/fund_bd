CREATE DATABASE itaxi;

\c itaxi

CREATE TABLE cliente(
  id VARCHAR(4) PRIMARY KEY,
  nome VARCHAR(80)
);

CREATE TABLE cliente_particular(
  id VARCHAR(4),
  cpf VARCHAR(14),
  PRIMARY KEY(id),
  FOREIGN KEY(id) REFERENCES cliente(id)
);

CREATE TABLE cliente_empresa(
  id VARCHAR(4),
  cnpj VARCHAR(18),
  PRIMARY KEY(id),
  FOREIGN KEY(id) REFERENCES cliente(id)
);

CREATE TABLE taxi (
  placa VARCHAR(7),
  marca VARCHAR(30),
  modelo VARCHAR(30),
  anofab INTEGER,
  PRIMARY KEY(placa)
);

CREATE TABLE corrida (
  cliid VARCHAR(4),
  placa VARCHAR(7),
  dataPedido DATE,
  PRIMARY KEY(cliid, placa, dataPedido),
  FOREIGN KEY(cliid) REFERENCES
  cliente(id),
  FOREIGN KEY(placa) REFERENCES
  taxi(placa)
);