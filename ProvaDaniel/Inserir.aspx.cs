using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProvaDaniel
{
    public partial class Inserir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();

            try
            {
                cmd.Connection = Conexao.Connection;

                cmd.CommandText = @"insert into funcionario 
                                    (fun_nome , fun_sexo ,fun_data_nasc, fun_num_carte_traba , fun_tele_fixo , fun_tele_cel , fun_email, fun_endere ) values
                                    (@nome , @sexo , @data , @carteira , @telfixo , @telcel , @email, @endereco)";

                cmd.Parameters.AddWithValue("nome", txtNome.Text);
                cmd.Parameters.AddWithValue("sexo", txtSexo.Text);
                cmd.Parameters.AddWithValue("data", txtDataNascimento.Text);
                cmd.Parameters.AddWithValue("carteira", txtCarteiraTrabalho.Text);
                cmd.Parameters.AddWithValue("telfixo", txtTelefoneFixo.Text);
                cmd.Parameters.AddWithValue("telcel", txtCelular.Text);
                cmd.Parameters.AddWithValue("email", txtEmail.Text);
                cmd.Parameters.AddWithValue("endereco", txtEndereco.Text);

                Conexao.Conectar();
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

                lblResultado.Text = "Falha: " + ex.Message;
            }
            finally
            {
                Conexao.Desconectar();
            }
        }
    }
}