using MySql.Data.MySqlClient;
using System;


public partial class _Default : System.Web.UI.Page
{

    string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexionCALUFA"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Click(object sender, EventArgs e)
    {
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
        conexionBD.Open();
        MySqlCommand cmd = new MySqlCommand("select * from usuario_mantenimiento where cedula_mantenimiento ='"
          + this.txtUser.Text + "'" + "and correo ='" + this.txtPassword.Text + "'", conexionBD);

        MySqlCommand cmd1 = new MySqlCommand("select * from usuario_docente where cedula_docente ='"
          + this.txtUser.Text + "'" + "and correo ='" + this.txtPassword.Text + "'", conexionBD);

        MySqlCommand cmd2 = new MySqlCommand("select * from usuario_estudiante where cedula_estudiante ='"
          + this.txtUser.Text + "'" + "and correo ='" + this.txtPassword.Text + "'", conexionBD);
        MySqlDataReader registro = cmd.ExecuteReader();



        if (registro.Read())
        {

            string valor = txtUser.Text.Trim();
            Response.Redirect("front/docentes/registrarHorario.aspx?texto=" + valor);

            //Response.Redirect("front/listaUsuarios.aspx?texto="+valor);
        }
        else
        {
            conexionBD.Close();
            conexionBD.Open();
            cmd1.ExecuteReader();
            string valor = txtUser.Text.Trim();
            Response.Redirect("front/docentes/registrarHorario.aspx?texto=" + valor);

        }

        conexionBD.Close();
    }

    //public void datos(string i)
    //{

    //    string valor = txtValor.Text.Trim();


    //}  

}