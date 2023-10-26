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

    protected void btn_registrar_Click(object sender, EventArgs e)
    {
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);

        MySqlDataAdapter adp = new MySqlDataAdapter("select * from aucensia", conexionBD);
        DataTable dt = new DataTable();
        adp.Fill(dt);

        var cont = 0;
        if (dt.Rows.Count > 0)
        {
            cont = cont + 1;
            //gdvUsuarios.DataSource = dt;
            //gdvUsuarios.DataBind();
        }

        //DateTime thisDate1 = Convert.ToDateTime("yyyy,mm,dd");
        //Console.WriteLine("Today is " + thisDate1.ToString("MMMM dd, yyyy") + ".");

         
        string mifecha = DateTime.Now.ToShortDateString();

        //conexionBD.Open();
        //MySqlCommand cmd = new MySqlCommand("insert into aucensia  (fecha,tipo_au,cant_au,cedula_estudiante,cod_materia) values ('"
        //  + mifecha + "','" + DropDownList1.SelectedItem.Value.ToString() + "',' " + Convert.ToInt32(txtCantidad.Text) +
        //  "','" + txtEstudiante.Text + "','" + txtMateria.Text + "')", conexionBD);

        //cmd.ExecuteReader();

        //Response.Write("<script languaje='JavaScript'>alert('¡Los datos han sido guardados!')</script>");

        //conexionBD.Close();

    }

    protected void gdvEstudiante_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
}