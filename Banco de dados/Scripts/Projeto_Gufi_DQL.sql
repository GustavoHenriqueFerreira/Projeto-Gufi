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

--SELECIONAR OS DADOS DOS USU�RIOS MOSTRANDO O TIPO DE USU�RIO
SELECT U.nomeUsuario [Usuario] , TU.tituloTipoUsuario
FROM usuarioCadastrado U
INNER JOIN tipoUsuario TU ON U.idTipoUsuario = TU.idTipoUsuario

--SLECIONAR OS DADOS DOS EVENTOS, DAS INSTITUI��ES, DOS TIPOS DE EVENTOS, DOS USU�RIOS E A SITUA��O DO CONVITE
SELECT U.nomeUsuario 'Usu�rio', E.nomeEvento 'Evento', I.nomeInstituicao 'Institui��o', TE.tituloTipoEvento 'Tipo de Evento', S.descricao 'Situa��o', TU.tituloTipoUsuario 'Tipo de Usu�rio'
FROM usuarioCadastrado U
INNER JOIN convite C ON U.idUsuario = C.idUsuario
INNER JOIN evento E ON C.idEvento = E.idEvento
INNER JOIN tipoEvento TE ON E.idTipoEvento = TE.idTipoEvento
INNER JOIN situacao S ON C.idSituacao = S.idSituacao
INNER JOIN instituicao I ON  E.idInstituicao = I.idInstituicao
INNER JOIN tipoUsuario TU ON U.idTipoUsuario = TU.idTipoUsuario

--BUSCAR UM USU�RIO ATRAV�S DO SEU E-MAIL E SENHA
SELECT U.nomeUsuario Usuario, TU.tituloTipoUsuario [Tipo de Usuario], U.email Email, U.senha Senha  
FROM usuarioCadastrado U
JOIN tipoUsuario TU on U.idTipoUsuario = TU.idTipoUsuario
WHERE email = 'Lucas@gmail.com'
AND senha = '4321'
