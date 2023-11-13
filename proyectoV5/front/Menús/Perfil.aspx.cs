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

    protected void toggleVisibilityTelefono(object sender, EventArgs e)
    {
        lblTelefono.Visible = false;
        txtTelefono.Visible = true;
        btnGuardarTelefono.Visible = true;
        btnCancelarTelefono.Visible = true;
        btnEditarTelefono.Visible = false;

        // Establecer el valor actual en el TextBox de teléfono
        txtTelefono.Text = ObtenerValorActual(lblTelefono.Text);
    }

    protected void toggleVisibilityTrabajo(object sender, EventArgs e)
    {
        lblTrabajo.Visible = false;
        txtTrabajo.Visible = true;
        btnGuardarTrabajo.Visible = true;
        btnCancelarTrabajo.Visible = true;
        btnEditarTrabajo.Visible = false;

        // Establecer el valor actual en el TextBox
        txtTrabajo.Text = ObtenerValorActual(lblTrabajo.Text);
    }

    protected void toggleVisibilityCargo(object sender, EventArgs e)
    {
        lblCargo.Visible = false;
        txtCargo.Visible = true;
        btnGuardarCargo.Visible = true;
        btnCancelarCargo.Visible = true;
        btnEditarCargo.Visible = false;

        // Establecer el valor actual en el TextBox
        txtCargo.Text = ObtenerValorActual(lblCargo.Text);
    }

    protected void toggleVisibilityUbicacion(object sender, EventArgs e)
    {
        lblUbicacion.Visible = false;
        txtUbicacion.Visible = true;
        btnGuardarUbicacion.Visible = true;
        btnCancelarUbicacion.Visible = true;
        btnEditarUbicacion.Visible = false;

        // Establecer el valor actual en el TextBox
        txtUbicacion.Text = ObtenerValorActual(lblUbicacion.Text);
    }

    protected void toggleVisibilityFechaNacimiento(object sender, EventArgs e)
    {
        lblFechaNacimiento.Visible = false;
        txtFechaNacimiento.Visible = true;
        btnGuardarFechaNacimiento.Visible = true;
        btnCancelarFechaNacimiento.Visible = true;
        btnEditarFechaNacimiento.Visible = false;

        // Establecer el valor actual en el TextBox
        txtFechaNacimiento.Text = ObtenerValorActual(lblFechaNacimiento.Text);
    }

    protected void toggleVisibilityRegistro(object sender, EventArgs e)
    {
        lblRegistro.Visible = false;
        txtRegistro.Visible = true;
        btnGuardarRegistro.Visible = true;
        btnCancelarRegistro.Visible = true;
        btnEditarRegistro.Visible = false;

        // Establecer el valor actual en el TextBox
        txtRegistro.Text = ObtenerValorActual(lblRegistro.Text);
    }

    private string ObtenerValorActual(string textoCompleto)
    {
        // Obtener la parte después de los dos puntos
        int indiceDosPuntos = textoCompleto.IndexOf(':');
        return textoCompleto.Substring(indiceDosPuntos + 1).Trim();
    }

    protected void GuardarCampoDireccion(object sender, EventArgs e)
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

    protected void GuardarCampoTelefono(object sender, EventArgs e)
    {
        // Aquí debes implementar la lógica para guardar el nuevo valor del teléfono en la base de datos u otro almacenamiento.
        string nuevoValor = txtTelefono.Text;

        // Obtener la parte antes de los dos puntos
        string parteAntesDosPuntos = lblTelefono.Text.Split(':')[0].Trim();

        // Actualizar el texto de la etiqueta de teléfono
        lblTelefono.Text = $"{parteAntesDosPuntos}: {nuevoValor}";

        // Restaurar la visibilidad de los elementos de teléfono
        lblTelefono.Visible = true;
        txtTelefono.Visible = false;
        btnGuardarTelefono.Visible = false;
        btnCancelarTelefono.Visible = false;
        btnEditarTelefono.Visible = true;
    }

    protected void GuardarCampoTrabajo(object sender, EventArgs e)
    {
        // Aquí debes implementar la lógica para guardar el nuevo valor en la base de datos u otro almacenamiento.
        string nuevoValor = txtTrabajo.Text;

        // Obtener la parte antes de los dos puntos
        string parteAntesDosPuntos = lblTrabajo.Text.Split(':')[0].Trim();

        // Actualizar el texto de la etiqueta
        lblTrabajo.Text = $"{parteAntesDosPuntos}: {nuevoValor}";

        // Restaurar la visibilidad de los elementos
        lblTrabajo.Visible = true;
        txtTrabajo.Visible = false;
        btnGuardarTrabajo.Visible = false;
        btnCancelarTrabajo.Visible = false;
        btnEditarTrabajo.Visible = true;
    }

    protected void GuardarCampoCargo(object sender, EventArgs e)
    {
        // Aquí debes implementar la lógica para guardar el nuevo valor en la base de datos u otro almacenamiento.
        string nuevoValor = txtCargo.Text;

        // Obtener la parte antes de los dos puntos
        string parteAntesDosPuntos = lblCargo.Text.Split(':')[0].Trim();

        // Actualizar el texto de la etiqueta
        lblCargo.Text = $"{parteAntesDosPuntos}: {nuevoValor}";

        // Restaurar la visibilidad de los elementos
        lblCargo.Visible = true;
        txtCargo.Visible = false;
        btnGuardarCargo.Visible = false;
        btnCancelarCargo.Visible = false;
        btnEditarCargo.Visible = true;
    }

    protected void GuardarCampoUbicacion(object sender, EventArgs e)
    {
        // Aquí debes implementar la lógica para guardar el nuevo valor en la base de datos u otro almacenamiento.
        string nuevoValor = txtUbicacion.Text;

        // Obtener la parte antes de los dos puntos
        string parteAntesDosPuntos = lblUbicacion.Text.Split(':')[0].Trim();

        // Actualizar el texto de la etiqueta
        lblUbicacion.Text = $"{parteAntesDosPuntos}: {nuevoValor}";

        // Restaurar la visibilidad de los elementos
        lblUbicacion.Visible = true;
        txtUbicacion.Visible = false;
        btnGuardarUbicacion.Visible = false;
        btnCancelarUbicacion.Visible = false;
        btnEditarUbicacion.Visible = true;
    }

    protected void GuardarCampoFechaNacimiento(object sender, EventArgs e)
    {
        // Aquí debes implementar la lógica para guardar el nuevo valor en la base de datos u otro almacenamiento.
        string nuevoValor = txtFechaNacimiento.Text;

        // Obtener la parte antes de los dos puntos
        string parteAntesDosPuntos = lblFechaNacimiento.Text.Split(':')[0].Trim();

        // Actualizar el texto de la etiqueta
        lblFechaNacimiento.Text = $"{parteAntesDosPuntos}: {nuevoValor}";

        // Restaurar la visibilidad de los elementos
        lblFechaNacimiento.Visible = true;
        txtFechaNacimiento.Visible = false;
        btnGuardarFechaNacimiento.Visible = false;
        btnCancelarFechaNacimiento.Visible = false;
        btnEditarFechaNacimiento.Visible = true;
    }

    protected void GuardarCampoRegistro(object sender, EventArgs e)
    {
        // Aquí debes implementar la lógica para guardar el nuevo valor en la base de datos u otro almacenamiento.
        string nuevoValor = txtRegistro.Text;

        // Obtener la parte antes de los dos puntos
        string parteAntesDosPuntos = lblRegistro.Text.Split(':')[0].Trim();

        // Actualizar el texto de la etiqueta
        lblRegistro.Text = $"{parteAntesDosPuntos}: {nuevoValor}";

        // Restaurar la visibilidad de los elementos
        lblRegistro.Visible = true;
        txtRegistro.Visible = false;
        btnGuardarRegistro.Visible = false;
        btnCancelarRegistro.Visible = false;
        btnEditarRegistro.Visible = true;
    }
}
