using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Web.UI.WebControls;

public partial class front_listarEstudiantes : System.Web.UI.Page
{
    string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexionCALUFA"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CargarDatos();
        }

    }

    public void CargarDatos()
    {
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
        MySqlDataAdapter adp = new MySqlDataAdapter("select * from usuario_estudiante", conexionBD);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            gdvEstudiante.DataSource = dt;
            gdvEstudiante.DataBind();
        }
    }

    private void ActualizarActor(string cedula, string nombre, string ap1, string ap2, string codigo, string correo)
    {
        using (MySqlConnection conexionBD = new MySqlConnection(cadenaConexion))
        {
            //     string datos = Request.QueryString["texto"].ToString();

            string query = "update usuario_estudiante set " +
                "nombre ='" + nombre + "',primer_apellido ='" + ap1 + "',segundo_apellido = ' " + ap2
                + "', cod_usuario='" + codigo + "', correo ='" + correo + "' where cedula_estudiante= '" + cedula + "'";

            //"' where cedula_mantenimiento = '" + cedula

            MySqlCommand cmd = new MySqlCommand(query, conexionBD);
            conexionBD.Open();
            cmd.ExecuteNonQuery();
            conexionBD.Close();
            // Response.Write("<script languaje='JavaScript'>alert('¡Registro actualizado!')</script>");
        }

    }

    protected void ModificarFila(object sender, GridViewEditEventArgs e)
    {
        gdvEstudiante.EditIndex = e.NewEditIndex;
        CargarDatos();
    }

    protected void ActualizarFila(object sender, GridViewUpdateEventArgs e)
    {
        string codigo = gdvEstudiante.DataKeys[e.RowIndex].Value.ToString();

        TextBox txtNombre = (TextBox)gdvEstudiante.Rows[e.RowIndex].FindControl("txtNombre");
        TextBox txtAp1 = (TextBox)gdvEstudiante.Rows[e.RowIndex].FindControl("txtAp1");
        TextBox txtAp2 = (TextBox)gdvEstudiante.Rows[e.RowIndex].FindControl("txtAp2");
        TextBox txtCod = (TextBox)gdvEstudiante.Rows[e.RowIndex].FindControl("txtCod");
        TextBox txtCorreo = (TextBox)gdvEstudiante.Rows[e.RowIndex].FindControl("txtCorreo");

        ActualizarActor(codigo, txtNombre.Text, txtAp1.Text, txtAp2.Text, txtCod.Text, txtCorreo.Text);
        gdvEstudiante.EditIndex = -1;
        CargarDatos();
    }

    protected void CancelarEdicion(object sender, GridViewCancelEditEventArgs e)
    {
        gdvEstudiante.EditIndex = -1;
        CargarDatos();
    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {

        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
        MySqlDataAdapter adp = new MySqlDataAdapter("select * from usuario_estudiante where cedula_estudiante =" +
            "'" + txtFiltro.Text + "' or nombre = '" + txtFiltro.Text + "' or correo = '" + txtFiltro.Text + "'", conexionBD);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            gdvEstudiante.DataSource = dt;
            gdvEstudiante.DataBind();
        }
    }

    protected void gdvEstudiante_RowCreated(object sender, GridViewRowEventArgs e)
    {

    }
}