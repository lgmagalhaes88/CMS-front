﻿using Class_Management_System.Entities;
namespace Class_Management_System.Global
{
    /// <summary>
    /// Representa as variáveis globais da aplicação
    /// </summary>
    public static class Session
    {
        public static Usuario usuario;
        public static Usuario usuario_removido;
        public const string configFilePath = "configs";
        public const string scriptFilePath = "SQL\\script_completo.sql";
        public static PerfilUsuario perfil_removido;
        public static char separador_arquivo = ';';
    }
}
