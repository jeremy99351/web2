using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class front_registrarUsuario : System.Web.UI.Page
{

    string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexionCALUFA"].ConnectionString;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cargarDDL();
            txtCedula.Focus();
        }

    }



    protected void btn_Click(object sender, EventArgs e)
    {
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
        conexionBD.Open();
        MySqlCommand cmd = new MySqlCommand("insert into usuario_mantenimiento values ('"
          + this.txtCedula.Text.ToUpper() + "','" + this.txtNombre.Text.ToUpper() + "','" + this.txtAp1.Text.ToUpper()
          + "','" + this.txtAp2.Text.ToUpper() + "','" + ddlUsuario.SelectedValue.ToString() + "','" + txtCorreo.Text.ToUpper() + "')", conexionBD);

        //MySqlCommand cmd2 = new MySqlCommand("insert into usuario(tipo_usuario,cod_usuario) values(' "
        //    + txtTipo_uSUARIO.Text + "','" + txtCodigo_Usuario.Text + "')", conexionBD);

        // MySqlDataReader usuario = cmd2.ExecuteReader();

        conexionBD.Close();
        conexionBD.Open();
        MySqlDataReader registro = cmd.ExecuteReader();




        Response.Write("los datos han sido guardados");

        txtAp1.Text = "";
        txtAp2.Text = "";
        txtCedula.Text = "";
        txtNombre.Text = "";
        txtCorreo.Text = "";


        conexionBD.Close();
    }

    public void cargarDDL()
    {
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);

        using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM usuario"))
        {
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conexionBD;

            conexionBD.Open();
            ddlUsuario.DataSource = cmd.ExecuteReader();
            ddlUsuario.DataTextField = "tipo_usuario";
            ddlUsuario.DataValueField = "cod_usuario";
            ddlUsuario.DataBind();

            conexionBD.Close();

        }


        // ddlUsuario.Items.Insert(0, new ListItem("--Select Customer--", "0"));

    }

}
