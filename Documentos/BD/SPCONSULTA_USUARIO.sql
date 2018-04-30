CREATE  PROC [dbo].[SPCONSULTA_USUARIO]
    @pkUsuario AS NVARCHAR(4) = '0' ,
    @sLogin AS NVARCHAR(20) = '' ,
    @sNomePessoa AS NVARCHAR(20)
AS
    DECLARE @sSql AS NVARCHAR(MAX) = '';
    SET @sSql = 'SELECT  U.COD_USUARIO ID ,
            U.LOGIN [LOGIN] ,
            PU.DSC_PERFIL_USUARIO PERFIL ,
            P.NOME_PESSOA
    FROM    dbo.USUARIO U
            LEFT JOIN dbo.PERFIL_USUARIO PU ON PU.COD_PERFIL_USUARIO = U.COD_PERFIL_USUARIO
            LEFT JOIN dbo.PESSOA P ON P.COD_PESSOA = U.COD_PESSOA WHERE 1=1'
    IF @pkUsuario <> '0'
        BEGIN
            SET @sSql += ' AND U.COD_USUARIO = ' + @pkUsuario 	
        END
    IF @sLogin <> ''
        BEGIN
            SET @sSql += ' AND U.NOME_USUARIO LIKE ''' + @pkUsuario + '%'''
        END
    IF @sNomePessoa <> ''
        BEGIN
            SET @sSql += ' AND P.NOME_PESSOA LIKE ''' + @sNomePessoa + '%'''
        END
    EXEC ( @sSql );
GO