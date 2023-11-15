﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class front_registrarDocente : System.Web.UI.Page
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

    protected void btn_registrar_Click(object sender, EventArgs e)
    {
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
        conexionBD.Open();
        MySqlCommand cmd = new MySqlCommand("insert into usuario_docente values ('"
          + this.txtCedula.Text.ToUpper() + "','" + this.txtNombre.Text.ToUpper() + "','" + this.txtAp1.Text.ToUpper()
          + "','" + this.txtAp2.Text.ToUpper() + "','" + ddlUsuario.SelectedValue.ToString() + "','" + ddlMateria.SelectedValue.ToString() + "','" + txtCorreo.Text.ToUpper() + "')", conexionBD);



        cmd.ExecuteReader();

        //Response.Write("los datos han sido guardados");

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
        using (MySqlCommand cmd = new MySqlCommand("select * from materia"))
        {
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conexionBD;

            conexionBD.Open();
            ddlMateria.DataSource = cmd.ExecuteReader();
            ddlMateria.DataTextField = "nombre_materia";
            //ddlMateria.DataTextField = ddlMateria.DataTextField + "nivel_materia";
            ddlMateria.DataValueField = "cod_materia";
            ddlMateria.DataBind();

            conexionBD.Close();
        }


        // ddlUsuario.Items.Insert(0, new ListItem("--Select Customer--", "0"));

    }
}
