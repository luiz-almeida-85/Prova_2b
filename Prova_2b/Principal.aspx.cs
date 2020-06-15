using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prova_2b
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();

            try
            {
                cmd.Connection = connexao.Connection;

                cmd.CommandText = @"insert into table_func(
                                  nome, sexo, email, data_nascimento, numero_carteira, numero_telefone, numero_celular, bairro, n_cep, logradouro, n_casa)
                                  values
                                  (@nome, @sexo, @email, @data_nascimento, @numero_carteira, @numero_telefone, @numero_celular, @bairro, @n_cep, @logradouro, @n_casa)";

                cmd.Parameters.AddWithValue("nome", txtNome.Text);
                cmd.Parameters.AddWithValue("sexo", txtSexo.Text);
                cmd.Parameters.AddWithValue("email", txtEmail.Text);
                cmd.Parameters.AddWithValue("data_nascimento", txtData_nascimento.Text);
                cmd.Parameters.AddWithValue("numero_carteira", txtNumero_carteira.Text);
                cmd.Parameters.AddWithValue("numero_telefone", txtNumero_telefone.Text);
                cmd.Parameters.AddWithValue("numero_celular", txtNumero_celular.Text);
                cmd.Parameters.AddWithValue("bairro", txtBairro.Text);
                cmd.Parameters.AddWithValue("n_cep", txtN_cep.Text);
                cmd.Parameters.AddWithValue("logradouro", txtLogradouro.Text);
                cmd.Parameters.AddWithValue("n_casa", txtN_casa.Text);

                connexao.Conectar();
                cmd.ExecuteNonQuery();

                lblResultado.Text = "Cadastrado com sucesso !!! ";



            }
            catch (Exception ex)
            {
                lblResultado.Text = "Falha:" + ex.Message;
            }
            finally
            {

                connexao.Desconectar();

            }
        }
    }
}