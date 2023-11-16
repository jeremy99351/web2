using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class front_eliminarUsuario : System.Web.UI.Page
{
    string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexionCALUFA"].ConnectionString;
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!IsPostBack)
		{
			CargarDatos();
			txtFiltro.Focus();
		}
	}

	public void CargarDatos()
	{
		MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
		MySqlDataAdapter adp = new MySqlDataAdapter("select cedula_mantenimiento, primer_apellido, segundo_apellido, nombre, correo from usuario_mantenimiento", conexionBD);
		DataTable dt = new DataTable();
		adp.Fill(dt);
		if (dt.Rows.Count > 0)
		{
			gdvUsuarios.DataSource = dt;
			gdvUsuarios.DataBind();
		}
	}

	protected void btnBuscar_Click(object sender, EventArgs e)
	{
		MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
		MySqlDataAdapter adp = new MySqlDataAdapter("select cedula_mantenimiento, primer_apellido, segundo_apellido, nombre, correo from usuario_mantenimiento where cedula_mantenimiento = '" + txtFiltro.Text + "'", conexionBD);
		DataTable dt = new DataTable();
		adp.Fill(dt);
		if (dt.Rows.Count > 0)
		{
			gdvUsuarios.DataSource = dt;
			gdvUsuarios.DataBind();
		}
	}

	protected void gdvUsuarios_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		string cedula = gdvUsuarios.DataKeys[e.RowIndex].Value.ToString();

		using (MySqlConnection conexionBD = new MySqlConnection(cadenaConexion))
		{
			string query = "DELETE FROM usuario_mantenimiento WHERE cedula_mantenimiento = '" + cedula + "'";
			MySqlCommand cmd = new MySqlCommand(query, conexionBD);

			conexionBD.Open();
			cmd.ExecuteNonQuery();
			conexionBD.Close();

			// Vuelve a cargar los datos después de eliminar
			CargarDatos();
		}
	}

}
