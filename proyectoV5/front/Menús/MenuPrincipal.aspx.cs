using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class front_MenuPrincipal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Obtener el color almacenado en la sesión
        string colorMenuPrincipal = Session["ColorMenuPrincipal"] as string;

        // Aplicar el color al menú principal
        if (!string.IsNullOrEmpty(colorMenuPrincipal))
        {
            // Cambiar el color del menú principal utilizando el valor obtenido
            // Aquí deberías aplicar el color al CSS o estilos del menú
            // Por ejemplo, puedes asignar el color a la propiedad BackColor
            // del control que representa el menú en tu página
            MenuPrincipal.BackColor = System.Drawing.ColorTranslator.FromHtml(colorMenuPrincipal);
        }
    }
}
