USE GUFI;
GO

INSERT INTO tipoUsuario(tituloTipoUsuario)
VALUES ('Administrador'),('Comum');
GO

INSERT INTO tipoEvento(tituloTipoEvento)
VALUES ('C#'),('Python');
GO

INSERT INTO instituicao(cnpj, nomeInstituicao, endereco)
VALUES ('12345','Escola Gufi','Avenida Paulista'),('43210','Senai Santa Cecília','Rua Barão de Limeira');
GO

INSERT INTO situacao(descricao)
VALUES ('Aprovado'),('Recusado'),('Aguardando');
GO

INSERT INTO usuarioCadastrado(idTipoUsuario, nomeUsuario, email, senha)
VALUES (2, 'Saulo','saulo@gmail.com','1234'),(2, 'Lucas','Lucas@gmail.com','4321'), (1,'Adm','adm@gmail.com', 'senha123');
GO

INSERT INTO evento(idTipoEvento, idInstituicao, nomeEvento, descricao, acessoLivre, dataEvento)
VALUES (1, 2, 'Estrutura MVC', 'Conceitos sobre MVC', 1, '16/08/2021  16:00:00'),(2, 1, 'POO', 'Exercicios práticos de POO', 0, '18/08/2021  16:00:00');
GO

INSERT INTO convite(idUsuario, idEvento, idSituacao)
VALUES (1,1,1),(3,2,2),(2,2,3)
GO