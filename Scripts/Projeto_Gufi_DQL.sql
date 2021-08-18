USE GUFI;
GO 

--LISTAR TODOS OS TIPO DE USUARIO
SELECT * FROM tipoUsuario 

--LISTAR TODOS OS USUARIOS
SELECT * FROM usuarioCadastrado 

--LISTAR TODAS AS INSTUICOES
SELECT * FROM instituicao 
   
--LISTAR TODOS OS TIPOS DE EVENTOS
SELECT * FROM tipoEvento 

--LISTAR TODAS OS CONVITES
SELECT * FROM convite

--SELECIONAR OS DADOS DOS EVENTOS , DA INSTITUICAO E DOS TIPOS DE EVENTOS
SELECT  I.nomeInstituicao, TE.tituloTipoEvento, E.nomeEvento, E.descricao, E.acessoLivre, E.dataEvento
FROM evento E
INNER JOIN tipoEvento te ON E.idTipoEvento = TE.idTipoEvento
INNER JOIN instituicao i ON E.idInstituicao = i.idInstituicao

--SELECIONAR OS DADOS DOS USUÁRIOS MOSTRANDO O TIPO DE USUÁRIO
SELECT U.nomeUsuario [Usuario] , TU.tituloTipoUsuario
FROM usuarioCadastrado U
INNER JOIN tipoUsuario TU ON U.idTipoUsuario = TU.idTipoUsuario

--SLECIONAR OS DADOS DOS EVENTOS, DAS INSTITUIÇÕES, DOS TIPOS DE EVENTOS, DOS USUÁRIOS E A SITUAÇÃO DO CONVITE
SELECT U.nomeUsuario 'Usuário', E.nomeEvento 'Evento', I.nomeInstituicao 'Instituição', TE.tituloTipoEvento 'Tipo de Evento', S.descricao 'Situação', TU.tituloTipoUsuario 'Tipo de Usuário'
FROM usuarioCadastrado U
INNER JOIN convite C ON U.idUsuario = C.idUsuario
INNER JOIN evento E ON C.idEvento = E.idEvento
INNER JOIN tipoEvento TE ON E.idTipoEvento = TE.idTipoEvento
INNER JOIN situacao S ON C.idSituacao = S.idSituacao
INNER JOIN instituicao I ON  E.idInstituicao = I.idInstituicao
INNER JOIN tipoUsuario TU ON U.idTipoUsuario = TU.idTipoUsuario

--BUSCAR UM USUÁRIO ATRAVÉS DO SEU E-MAIL E SENHA
SELECT U.nomeUsuario Usuario, TU.tituloTipoUsuario [Tipo de Usuario], U.email Email, U.senha Senha  
FROM usuarioCadastrado U
JOIN tipoUsuario TU on U.idTipoUsuario = TU.idTipoUsuario
WHERE email = 'Lucas@gmail.com'
AND senha = '4321'
