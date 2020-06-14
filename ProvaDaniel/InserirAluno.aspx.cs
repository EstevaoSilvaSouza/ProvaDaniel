using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProvaDaniel
{
    public partial class InserirAluno : System.Web.UI.Page
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

                cmd.CommandText = @"insert into aluno 
                                    (alu_ra,alu_nome, alu_sexo , alu_data_nasc, alu_email, alu_endere, alu_curso ,alu_ano_ingresso ) values 
                                    (@ra , @nome, @sexo, @datanascimento, @email ,@endereco , @curso, @anoingresso)";

                cmd.Parameters.AddWithValue("ra", txtRa.Text);
                cmd.Parameters.AddWithValue("nome", txtNome.Text);
                cmd.Parameters.AddWithValue("sexo", txtSexo.Text);
                cmd.Parameters.AddWithValue("datanascimento", txtDataNascimento.Text);
                cmd.Parameters.AddWithValue("email", txtEmail.Text);
                cmd.Parameters.AddWithValue("endereco", txtEndereco.Text);
                cmd.Parameters.AddWithValue("curso", txtCurso.Text);
                cmd.Parameters.AddWithValue("anoingresso", txtIngresso.Text);

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