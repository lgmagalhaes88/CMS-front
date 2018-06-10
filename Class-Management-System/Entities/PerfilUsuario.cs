﻿using Class_Management_System.Services;
using Class_Management_System.Utils;
using System;

namespace Class_Management_System.Entities
{
    /// <summary>
    /// Classe mapeada de PERFIL_USUARIO
    /// </summary>
    public class PerfilUsuario
    {
        /// <summary>
        /// COD_PERFIL_USUARIO
        /// </summary>
        private int codigo;
        /// <summary>
        /// DSC_PERFIL_USUARIO
        /// </summary>
        private string descricao; 
        protected readonly IProcedureService procedureService;

        public PerfilUsuario( )
        {
            this.codigo = 0;
            this.descricao = "";
            this.procedureService = DependencyFactory.Resolve<IProcedureService>();
        }

        //Usado para um novo perfil
        public PerfilUsuario(string descricao)
        {
            this.descricao = descricao; 
            this.procedureService = DependencyFactory.Resolve<IProcedureService>();
        }

        //Usado para um perfil existente
        public PerfilUsuario(int codigo, string descricao)
        {
            this.codigo = codigo;
            this.descricao = descricao; 
            this.procedureService = DependencyFactory.Resolve<IProcedureService>();
        }

        public string GetDescricao()
        {
            return this.descricao;
        }

        public void SetDescricao(string descricao)
        {
            this.descricao = descricao;
        }

        public void SetCodigo(int pk)
        {
            this.codigo = pk;
        }

        public int GetCodigo()
        {
            return this.codigo;
        }

        public void Gravar()
        {
            try
            {
                if (this.codigo == 0)
                {
                   this.codigo = this.procedureService.CriarPerfil(this);
                }
                else
                {
                    this.procedureService.GravaPerfil(this);
                }
            }
            catch (Exception e)
            { 
                throw new Exception(e.Message);
            }
          
        }
        public void Deletar()
        {
            try
            {
                this.procedureService.DeletaPerfil(this);
            }
            catch (Exception e)
            { 
                throw new Exception(e.Message);
            }
        }
    }
}
