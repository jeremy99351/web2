using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class front_MenuPrincipal : System.Web.UI.Page
{
    string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexionCALUFA"].ConnectionString;
   

    protected void Perfil_Click(object sender, EventArgs e)
    {
        // Código para manejar el evento de clic en el enlace "perfil"
        Response.Redirect("PerfilUsuario.aspx");
    }

}
