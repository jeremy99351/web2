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
   

    protected void Usuario_Click(object sender, EventArgs e)
    {
        // Código para manejar el evento de clic en el enlace "perfil"
        Response.Redirect("Perfil.aspx");

    }
    protected void Formulario_click(object sender,EventArgs e)
    {
        Response.Redirect("FormularioSoporte.aspx");
    }
    protected void Registrar_click(object sender, EventArgs e)
    {
        Response.Redirect("registrarUsuario.aspx");
    }
}
