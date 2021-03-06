 DELIMITER $$  
 CREATE PROCEDURE SPDROPA_TABLES()
 BEGIN
    ALTER TABLE USUARIO DROP FOREIGN KEY FK_USUARIO_1;
    ALTER TABLE USUARIO DROP FOREIGN KEY FK_USUARIO_2;
    ALTER TABLE DISCIPLINA DROP FOREIGN KEY FK_DISCIPLINA_1;
    ALTER TABLE DISCIPLINA DROP FOREIGN KEY FK_DISCIPLINA_2;
    ALTER TABLE DISCIPLINA DROP FOREIGN KEY FK_DISCIPLINA_3;
    ALTER TABLE HORARIO DROP FOREIGN KEY FK_HORARIO_1;
    ALTER TABLE PROFESSOR DROP FOREIGN KEY FK_PROFESSOR_1;
    ALTER TABLE ALUNO  DROP FOREIGN KEY FK_ALUNO_1;
    ALTER TABLE AULA DROP FOREIGN KEY FK_AULA_0;
    ALTER TABLE AULA DROP FOREIGN KEY FK_AULA_1;
    DROP TABLE PERFIL_USUARIO;
    DROP TABLE USUARIO;
    DROP TABLE PESSOA;
    DROP TABLE PROFESSOR;
    DROP TABLE ALUNO;
    DROP TABLE DISCIPLINA;
    DROP TABLE HORARIO;
    DROP TABLE PERIODO;
    DROP TABLE AULA;
    DROP TABLE DIA_SEMANA;
END
 $$
DELIMITER ;