using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class front_MenuConfiguracion : System.Web.UI.Page
{
    string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexionCALUFA"].ConnectionString;



    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Obtener el parámetro de la URL
            string configParam = Request.QueryString["config"];

            // Realizar acciones según el parámetro
            if (!string.IsNullOrEmpty(configParam))
            {
                switch (configParam)
                {
                    case "cambiarColores":
                        // Lógica para cambiar los colores del MenuPrincipal
                        CambiarColoresMenuPrincipal("#FF0000"); // Cambiar a color rojo como ejemplo
                        break;
                    // Agrega más casos según sea necesario
                    default:
                        // Manejar un valor no reconocido o hacer algo por defecto
                        // ...
                        break;
                }
            }
        }
    }

    private void CambiarColoresMenuPrincipal(string color)
    {
        // Almacenar el color en una sesión para persistirlo
        Session["ColorMenuPrincipal"] = color;

        // Puedes redirigir a la página del menú principal o realizar otras acciones
        Response.Redirect("MenuPrincipal.aspx");
    }
}
