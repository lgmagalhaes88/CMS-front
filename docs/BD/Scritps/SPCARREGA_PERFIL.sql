CREATE  PROC [dbo].[SPCARREGA_PERFIL]
AS
    SELECT  COD_PERFIL_USUARIO ,
            DSC_PERFIL_USUARIO
    FROM    PERFIL_USUARIO;