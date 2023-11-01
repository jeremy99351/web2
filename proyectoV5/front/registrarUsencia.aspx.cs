using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IdentityModel.Tokens;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class front_registrarUsencia : System.Web.UI.Page
{
    string cadenaConexion = ConfigurationManager.ConnectionStrings["conexionCALUFA"].ConnectionString;

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
        gdvEstudiante.EditIndex = -1;
        gdvEstudiante.EditIndex = e.NewEditIndex;

        string codigo = gdvEstudiante.DataKeys[e.NewEditIndex].Value.ToString();


        Label1.Text = codigo;

        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);

        string mifecha = DateTime.Now.ToShortDateString();


        MySqlCommand cmd = new MySqlCommand("insert into aucensia  (fecha,tipo_au,cant_au,cedula_estudiante,cod_materia) values ('"
          + mifecha + "','" + slTP.Value + "',' " + Convert.ToInt32(1) +
          "','" + codigo + "','INF01')", conexionBD);

        conexionBD.Open();
        cmd.ExecuteReader();

        conexionBD.Close();


        
        CargarDatos();
    }

    protected void ActualizarFila(object sender, GridViewUpdateEventArgs e)
    {
        string codigo = gdvEstudiante.DataKeys[e.RowIndex].Value.ToString();
       

        Label1.Text = codigo;

        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);

        string mifecha = DateTime.Now.ToShortDateString();

       
        MySqlCommand cmd = new MySqlCommand("insert into aucensia  (fecha,tipo_au,cant_au,cedula_estudiante,cod_materia) values ('"
          + mifecha + "','" + slTP.Value + "',' " + Convert.ToInt32(1) +
          "','"+codigo+"','INF01')", conexionBD);

        conexionBD.Open();
        cmd.ExecuteReader();

        conexionBD.Close();


        gdvEstudiante.EditIndex = -1;
        CargarDatos();
    }

    protected void CancelarEdicion(object sender, GridViewCancelEditEventArgs e)
    {
        gdvEstudiante.EditIndex = -1;
        CargarDatos();
    }

    protected void btn_registrar_Click(object sender, EventArgs  e)
    {
        


        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);

           MySqlDataAdapter adp = new MySqlDataAdapter("select * from usuario_estudiante", conexionBD);

        string cedula;
        
        conexionBD.Open();
        using (MySqlCommand cmd1 = new MySqlCommand("select cedula_estudiante from usuario_estudiante"))
        {
            cedula = cmd1.ExecuteReader().ToString();
            Response.Write("<script languaje='JavaScript'>alert('"+cedula+"')</script>");
        }
            //   DataTable dt = new DataTable();
            //    adp.Fill(dt);

            //    var cont = 0;
            //    if (dt.Rows.Count > 0)
            //{
            //    cont = cont + 1;
            //    gdvUsuarios.DataSource = dt;
            //    gdvUsuarios.DataBind();
            //}



            string mifecha = DateTime.Now.ToShortDateString();

        conexionBD.Open();
        MySqlCommand cmd = new MySqlCommand("insert into aucensia  (fecha,tipo_au,cant_au,cedula_estudiante,cod_materia) values ('"
          + mifecha + "','" + slTP.Value + "',' " + Convert.ToInt32(1) +
          "','155826720430','INF01')", conexionBD);

        cmd.ExecuteReader();

       

        conexionBD.Close();

    }

    public void cargarddl() 
    {

    }

}