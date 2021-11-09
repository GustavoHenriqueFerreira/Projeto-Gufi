CREATE DATABASE GUFI;
GO

USE GUFI;
GO

CREATE TABLE tipoUsuario(
idTipoUsuario INT PRIMARY KEY IDENTITY(1,1),
tituloTipoUsuario VARCHAR(200) UNIQUE NOT NULL,
);
GO

CREATE TABLE tipoEvento(
idTipoEvento INT PRIMARY KEY IDENTITY,
tituloTipoEvento VARCHAR(50) UNIQUE NOT NULL,
);
GO

CREATE TABLE instituicao(
idInstituicao INT PRIMARY KEY IDENTITY,
cnpj char(14) UNIQUE NOT NULL,
nomeInstituicao VARCHAR(100) UNIQUE NOT NULL,
endereco VARCHAR(250) UNIQUE NOT NULL,
);
GO

CREATE TABLE situacao(
idSituacao INT PRIMARY KEY IDENTITY,
descricao VARCHAR(50),
);
GO

CREATE TABLE usuarioCadastrado(
idUsuario INT PRIMARY KEY IDENTITY,
idTipoUsuario INT FOREIGN KEY REFERENCES tipoUsuario(idTipoUsuario),
nomeUsuario VARCHAR(50) NOT NULL,
email VARCHAR(200) UNIQUE NOT NULL,
senha VARCHAR(10) NOT NULL,
);
GO

CREATE TABLE evento(
idEvento INT PRIMARY KEY IDENTITY,
idTipoEvento INT FOREIGN KEY REFERENCES tipoEvento(idTipoEvento),
idInstituicao INT FOREIGN KEY REFERENCES instituicao(idInstituicao),
nomeEvento VARCHAR(100) NOT NULL,
descricao VARCHAR(500) NOT NULL,
acessoLivre BIT DEFAULT (1) NOT NULL,
dataEvento DATETIME NOT NULL,
);
GO

CREATE TABLE presenca(
idPresenca INT PRIMARY KEY IDENTITY,
idUsuario INT FOREIGN KEY REFERENCES usuarioCadastrado(idUsuario),
idEvento INT FOREIGN KEY REFERENCES evento(idEvento),
idSituacao INT FOREIGN KEY REFERENCES situacao(idSituacao) DEFAULT(3),
);
GO

CREATE TABLE convite(
idConvite INT PRIMARY KEY IDENTITY,
idUsuario INT FOREIGN KEY REFERENCES usuarioCadastrado(idUsuario),
idEvento INT FOREIGN KEY REFERENCES evento(idEvento),
idSituacao INT FOREIGN KEY REFERENCES situacao(idSituacao) DEFAULT(3),
);
GO