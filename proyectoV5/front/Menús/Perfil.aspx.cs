using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




public partial class front_Perfil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Puedes cargar datos adicionales al cargar la página por primera vez.
        }
    }

    protected void toggleVisibility(object sender, EventArgs e)
    {
        lblDireccion.Visible = false;
        txtDireccion.Visible = true;
        btnGuardar.Visible = true;
        btnCancelar.Visible = true;
        btnEditar.Visible = false;

        // Establecer el valor actual en el TextBox
        txtDireccion.Text = ObtenerValorActual(lblDireccion.Text);
    }

    private string ObtenerValorActual(string textoCompleto)
    {
        // Obtener la parte después de los dos puntos
        int indiceDosPuntos = textoCompleto.IndexOf(':');
        return textoCompleto.Substring(indiceDosPuntos + 1).Trim();
    }

    protected void GuardarDireccion(object sender, EventArgs e)
    {
        // Aquí debes implementar la lógica para guardar el nuevo valor en la base de datos u otro almacenamiento.
        string nuevoValor = txtDireccion.Text;

        // Obtener la parte antes de los dos puntos
        string parteAntesDosPuntos = lblDireccion.Text.Split(':')[0].Trim();

        // Actualizar el texto de la etiqueta
        lblDireccion.Text = $"{parteAntesDosPuntos}: {nuevoValor}";

        // Restaurar la visibilidad de los elementos
        lblDireccion.Visible = true;
        txtDireccion.Visible = false;
        btnGuardar.Visible = false;
        btnCancelar.Visible = false;
        btnEditar.Visible = true;
    }
}
