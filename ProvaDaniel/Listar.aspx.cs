using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProvaDaniel
{
    public partial class Listar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CarregarUsuarios();
        }

        private void CarregarUsuarios()
        {
            string query = @"select * from aluno";
            DataTable dt = new DataTable();
            try
            {
                MySqlDataAdapter da = new MySqlDataAdapter(query, Conexao.Connection);
                da.Fill(dt);

                //Popular Repeater
                rptaluno.DataSource = dt;
                rptaluno.DataBind();
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Falha " + ex.Message;
            }
        }

       

        
    }
}