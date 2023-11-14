using MySql.Data.MySqlClient;
using System;
using System.Activities.Expressions;
using System.Activities;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IdentityModel.Tokens;
using System.Linq;
using System.Reflection;
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
            //ActualizarFila();

            //DropDownList dropDownList1 = (DropDownList)gdvEstudiante.Rows[e.RowIndex].FindControl("DropDownList1");
            //ListItem i;
            //i = new ListItem("Nuevo leon", "1");
            //ddlLista.Items.Add(i);
            //i = new ListItem("Mexico", "2");
            //ddlLista.Items.Add(i);
            //i = new ListItem("Puebla", "3");
            //ddlLista.Items.Add(i);

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

    protected void alert(object sender, GridViewUpdatedEventArgs e)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertteme()",true);
    }


    //private void ActualizarActor(string cedula, string nombre, string ap1, string ap2, string codigo, string correo)
    //{
    //    using (MySqlConnection conexionBD = new MySqlConnection(cadenaConexion))
    //    {
    //        //     string datos = Request.QueryString["texto"].ToString();

    //        string query = "update usuario_estudiante set " +
    //            "nombre ='" + nombre + "',primer_apellido ='" + ap1 + "',segundo_apellido = ' " + ap2
    //            + "', cod_usuario='" + codigo + "', correo ='" + correo + "' where cedula_estudiante= '" + cedula + "'";

    //        //"' where cedula_mantenimiento = '" + cedula

    //        MySqlCommand cmd = new MySqlCommand(query, conexionBD);
    //        conexionBD.Open();
    //        cmd.ExecuteNonQuery();
    //        conexionBD.Close();
    //        // Response.Write("<script languaje='JavaScript'>alert('¡Registro actualizado!')</script>");
    //    }

    //}

    //protected void CustomersGridView_SelectedIndexChanged(Object sender, EventArgs e )
    //{

    //    // Display the primary key value of the selected row.
    //  string dato=  gdvEstudiante.SelectedValue.ToString();



    //}

    protected void ModificarFila(object sender, GridViewEditEventArgs e)
    {
      
        gdvEstudiante.EditIndex = -1;
        gdvEstudiante.EditIndex = e.NewEditIndex;

        string codigo = gdvEstudiante.DataKeys[e.NewEditIndex].Value.ToString();
        string mifecha = DateTime.Now.ToShortDateString();
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);

       


        MySqlCommand cmd = new MySqlCommand("insert into aucensia  (fecha,tipo_au,cant_au,cedula_estudiante,cod_materia) values ('"
          + mifecha + "',' " + slTP.Value.ToString() + "',' " + Convert.ToInt32(1) +
          "','" + codigo + "','INF01')", conexionBD);

        conexionBD.Open();
        cmd.ExecuteReader();

        conexionBD.Close();
       // ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertteme()", true);


        CargarDatos();
    }

    protected void ActualizarFila(object sender, GridViewUpdateEventArgs e)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertteme()", true);
        CargarDatos();
    }

    //protected void CancelarEdicion(object sender, GridViewCancelEditEventArgs e)
    //{
    //    gdvEstudiante.EditIndex = -1;
    //    CargarDatos();
    //}

    //protected void btn_registrar_Click(object sender, EventArgs  e)
    //{



    //    MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);

    //       MySqlDataAdapter adp = new MySqlDataAdapter("select * from usuario_estudiante", conexionBD);

    //    string cedula;

    //    conexionBD.Open();
    //    using (MySqlCommand cmd1 = new MySqlCommand("select cedula_estudiante from usuario_estudiante"))
    //    {
    //        cedula = cmd1.ExecuteReader().ToString();
    //        Response.Write("<script languaje='JavaScript'>alert('"+cedula+"')</script>");
    //    }
    //        //   DataTable dt = new DataTable();
    //        //    adp.Fill(dt);

    //        //    var cont = 0;
    //        //    if (dt.Rows.Count > 0)
    //        //{
    //        //    cont = cont + 1;
    //        //    gdvUsuarios.DataSource = dt;
    //        //    gdvUsuarios.DataBind();
    //        //}



    //        string mifecha = DateTime.Now.ToShortDateString();

    //    conexionBD.Open();
    //    MySqlCommand cmd = new MySqlCommand("insert into aucensia  (fecha,tipo_au,cant_au,cedula_estudiante,cod_materia) values ('"
    //      + mifecha + "','" + slTP.Value + "',' " + Convert.ToInt32(1) +
    //      "','155826720430','INF01')", conexionBD);

    //    cmd.ExecuteReader();



    //    conexionBD.Close();

    //}




}