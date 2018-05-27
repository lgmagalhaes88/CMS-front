CREATE  PROC [dbo].[SPCRIA_PESSOA]
    @sNomePessoa AS NVARCHAR(MAX) ,
    @sCpfPessoa AS NVARCHAR(MAX) ,
    @sEmailPessoa AS NVARCHAR(MAX) = ''
AS
    INSERT  INTO PESSOA
            ( COD_CPF ,
              NOME_PESSOA ,
              EMAIL
            )
    VALUES  ( @sNomePessoa ,
              @sCpfPessoa ,
              @sEmailPessoa
            );