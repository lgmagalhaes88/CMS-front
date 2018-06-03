INSERT  INTO PERFIL_USUARIO
        ( DSC_PERFIL_USUARIO )
VALUES  ( 'Administrador' );
INSERT  INTO PERFIL_USUARIO
        ( DSC_PERFIL_USUARIO )
VALUES  ( 'Aluno' );
INSERT  INTO PERFIL_USUARIO
        ( DSC_PERFIL_USUARIO )
VALUES  ( 'Professor' );
 
INSERT  INTO PESSOA
        ( COD_CPF ,
          NOME_PESSOA ,
          EMAIL
        )
VALUES  ( '88343970020' ,
          'HENRIQUE' ,
          'NAOTENHO@NGMTEM.COM'
        );
INSERT  INTO PESSOA
        ( COD_CPF ,
          NOME_PESSOA ,
          EMAIL
        )
VALUES  ( '30819728098' ,
          'ARTHUR' ,
          'NAOTENHO@NGMTEM.COM'
        );
INSERT  INTO PESSOA
        ( COD_CPF ,
          NOME_PESSOA ,
          EMAIL
        )
VALUES  ( '20974055093' ,
          'LUCAS' ,
          'NAOTENHO@NGMTEM.COM'
        );
 
INSERT  INTO USUARIO
        ( LOGIN ,
          SENHA ,
          COD_PERFIL_USUARIO ,
          COD_PESSOA
        )
VALUES  ( 'hkirschke' ,
          'hk1234' ,
          ( SELECT  COD_PERFIL_USUARIO
            FROM    PERFIL_USUARIO
            WHERE   DSC_PERFIL_USUARIO = 'Administrador'
          ) ,
          ( SELECT  COD_PESSOA
            FROM    PESSOA
            WHERE   NOME_PESSOA = 'HENRIQUE'
          )
        );
INSERT  INTO USUARIO
        ( LOGIN ,
          SENHA ,
          COD_PERFIL_USUARIO ,
          COD_PESSOA
        )
VALUES  ( 'arthur' ,
          'senha#123' ,
          ( SELECT  COD_PERFIL_USUARIO
            FROM    PERFIL_USUARIO
            WHERE   DSC_PERFIL_USUARIO = 'Administrador'
          ) ,
          ( SELECT  COD_PESSOA
            FROM    PESSOA
            WHERE   NOME_PESSOA = 'ARTHUR'
          )
        );
INSERT  INTO USUARIO
        ( LOGIN ,
          SENHA ,
          COD_PERFIL_USUARIO ,
          COD_PESSOA
        )
VALUES  ( 'lucas' ,
          'senha#123' ,
          ( SELECT  COD_PERFIL_USUARIO
            FROM    PERFIL_USUARIO
            WHERE   DSC_PERFIL_USUARIO = 'Administrador'
          ) ,
          ( SELECT  COD_PESSOA
            FROM    PESSOA
            WHERE   NOME_PESSOA = 'LUCAS'
          )
        ); 
INSERT  INTO USUARIO
        ( LOGIN ,
          SENHA ,
          COD_PERFIL_USUARIO ,
          COD_PESSOA
        )
VALUES  ( 'hAluno' ,
          'hk1234' ,
          ( SELECT  COD_PERFIL_USUARIO
            FROM    PERFIL_USUARIO
            WHERE   DSC_PERFIL_USUARIO = 'Aluno'
          ) ,
          ( SELECT  COD_PESSOA
            FROM    PESSOA
            WHERE   NOME_PESSOA = 'HENRIQUE'
          )
        );
INSERT  INTO USUARIO
        ( LOGIN ,
          SENHA ,
          COD_PERFIL_USUARIO ,
          COD_PESSOA
        )
VALUES  ( 'hProfessor' ,
          'hk1234' ,
          ( SELECT  COD_PERFIL_USUARIO
            FROM    PERFIL_USUARIO
            WHERE   DSC_PERFIL_USUARIO = 'Professor'
          ) ,
          ( SELECT  COD_PESSOA
            FROM    PESSOA
            WHERE   NOME_PESSOA = 'HENRIQUE'
          )
        ); 
INSERT  INTO DIA_SEMANA
        ( NOME_DIA_SEMANA )
VALUES  ( 'SEGUNDA-FEIRA' );
INSERT  INTO DIA_SEMANA
        ( NOME_DIA_SEMANA )
VALUES  ( 'TER�A-FEIRA' );
INSERT  INTO DIA_SEMANA
        ( NOME_DIA_SEMANA )
VALUES  ( 'QUARTA-FEIRA' );
INSERT  INTO DIA_SEMANA
        ( NOME_DIA_SEMANA )
VALUES  ( 'QUINTA-FEIRA' );
INSERT  INTO DIA_SEMANA
        ( NOME_DIA_SEMANA )
VALUES  ( 'SEXTA-FEIRA' );
INSERT  INTO DIA_SEMANA
        ( NOME_DIA_SEMANA )
VALUES  ( 'S�BADO' );
