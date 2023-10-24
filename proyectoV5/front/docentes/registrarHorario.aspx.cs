using MySql.Data.MySqlClient;
using System;
using System.Data;

public partial class front_docentes_registrarHorario : System.Web.UI.Page
{
    string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexionCALUFA"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        cargarddl();
    }

    protected void cargarddl()
    {
        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);

        using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM seccion"))
        {
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conexionBD;

            conexionBD.Open();


            DropDownList1.DataSource = cmd.ExecuteReader();
            DropDownList1.DataTextField = "cod_seccion";
            DropDownList1.DataValueField = "cod_seccion";
            DropDownList1.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList2.DataSource = cmd.ExecuteReader();
            DropDownList2.DataTextField = "cod_seccion";
            DropDownList2.DataValueField = "cod_seccion";
            DropDownList2.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList3.DataSource = cmd.ExecuteReader();
            DropDownList3.DataTextField = "cod_seccion";
            DropDownList3.DataValueField = "cod_seccion";
            DropDownList3.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList4.DataSource = cmd.ExecuteReader();
            DropDownList4.DataTextField = "cod_seccion";
            DropDownList4.DataValueField = "cod_seccion";
            DropDownList4.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList5.DataSource = cmd.ExecuteReader();
            DropDownList5.DataTextField = "cod_seccion";
            DropDownList5.DataValueField = "cod_seccion";
            DropDownList5.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList6.DataSource = cmd.ExecuteReader();
            DropDownList6.DataTextField = "cod_seccion";
            DropDownList6.DataValueField = "cod_seccion";
            DropDownList6.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList7.DataSource = cmd.ExecuteReader();
            DropDownList7.DataTextField = "cod_seccion";
            DropDownList7.DataValueField = "cod_seccion";
            DropDownList7.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList8.DataSource = cmd.ExecuteReader();
            DropDownList8.DataTextField = "cod_seccion";
            DropDownList8.DataValueField = "cod_seccion";
            DropDownList8.DataBind();
            conexionBD.Close();

            conexionBD.Open();


            DropDownList9.DataSource = cmd.ExecuteReader();
            DropDownList9.DataTextField = "cod_seccion";
            DropDownList9.DataValueField = "cod_seccion";
            DropDownList9.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList10.DataSource = cmd.ExecuteReader();
            DropDownList10.DataTextField = "cod_seccion";
            DropDownList10.DataValueField = "cod_seccion";
            DropDownList10.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList11.DataSource = cmd.ExecuteReader();
            DropDownList11.DataTextField = "cod_seccion";
            DropDownList11.DataValueField = "cod_seccion";
            DropDownList11.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList12.DataSource = cmd.ExecuteReader();
            DropDownList12.DataTextField = "cod_seccion";
            DropDownList12.DataValueField = "cod_seccion";
            DropDownList12.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList13.DataSource = cmd.ExecuteReader();
            DropDownList13.DataTextField = "cod_seccion";
            DropDownList13.DataValueField = "cod_seccion";
            DropDownList13.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList14.DataSource = cmd.ExecuteReader();
            DropDownList14.DataTextField = "cod_seccion";
            DropDownList14.DataValueField = "cod_seccion";
            DropDownList14.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList15.DataSource = cmd.ExecuteReader();
            DropDownList15.DataTextField = "cod_seccion";
            DropDownList15.DataValueField = "cod_seccion";
            DropDownList15.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList16.DataSource = cmd.ExecuteReader();
            DropDownList16.DataTextField = "cod_seccion";
            DropDownList16.DataValueField = "cod_seccion";
            DropDownList16.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList17.DataSource = cmd.ExecuteReader();
            DropDownList17.DataTextField = "cod_seccion";
            DropDownList17.DataValueField = "cod_seccion";
            DropDownList17.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList18.DataSource = cmd.ExecuteReader();
            DropDownList18.DataTextField = "cod_seccion";
            DropDownList18.DataValueField = "cod_seccion";
            DropDownList18.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList19.DataSource = cmd.ExecuteReader();
            DropDownList19.DataTextField = "cod_seccion";
            DropDownList19.DataValueField = "cod_seccion";
            DropDownList19.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList20.DataSource = cmd.ExecuteReader();
            DropDownList20.DataTextField = "cod_seccion";
            DropDownList20.DataValueField = "cod_seccion";
            DropDownList20.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList21.DataSource = cmd.ExecuteReader();
            DropDownList21.DataTextField = "cod_seccion";
            DropDownList21.DataValueField = "cod_seccion";
            DropDownList21.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList22.DataSource = cmd.ExecuteReader();
            DropDownList22.DataTextField = "cod_seccion";
            DropDownList22.DataValueField = "cod_seccion";
            DropDownList22.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList23.DataSource = cmd.ExecuteReader();
            DropDownList23.DataTextField = "cod_seccion";
            DropDownList23.DataValueField = "cod_seccion";
            DropDownList23.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList24.DataSource = cmd.ExecuteReader();
            DropDownList24.DataTextField = "cod_seccion";
            DropDownList24.DataValueField = "cod_seccion";
            DropDownList24.DataBind();
            conexionBD.Close();

            conexionBD.Open();


            DropDownList25.DataSource = cmd.ExecuteReader();
            DropDownList25.DataTextField = "cod_seccion";
            DropDownList25.DataValueField = "cod_seccion";
            DropDownList25.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList26.DataSource = cmd.ExecuteReader();
            DropDownList26.DataTextField = "cod_seccion";
            DropDownList26.DataValueField = "cod_seccion";
            DropDownList26.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList27.DataSource = cmd.ExecuteReader();
            DropDownList27.DataTextField = "cod_seccion";
            DropDownList27.DataValueField = "cod_seccion";
            DropDownList27.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList28.DataSource = cmd.ExecuteReader();
            DropDownList28.DataTextField = "cod_seccion";
            DropDownList28.DataValueField = "cod_seccion";
            DropDownList28.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList29.DataSource = cmd.ExecuteReader();
            DropDownList29.DataTextField = "cod_seccion";
            DropDownList29.DataValueField = "cod_seccion";
            DropDownList29.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList30.DataSource = cmd.ExecuteReader();
            DropDownList30.DataTextField = "cod_seccion";
            DropDownList30.DataValueField = "cod_seccion";
            DropDownList30.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList31.DataSource = cmd.ExecuteReader();
            DropDownList31.DataTextField = "cod_seccion";
            DropDownList31.DataValueField = "cod_seccion";
            DropDownList31.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList32.DataSource = cmd.ExecuteReader();
            DropDownList32.DataTextField = "cod_seccion";
            DropDownList32.DataValueField = "cod_seccion";
            DropDownList32.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList33.DataSource = cmd.ExecuteReader();
            DropDownList33.DataTextField = "cod_seccion";
            DropDownList33.DataValueField = "cod_seccion";
            DropDownList33.DataBind();
            conexionBD.Close();

            conexionBD.Open();

            DropDownList34.DataSource = cmd.ExecuteReader();
            DropDownList34.DataTextField = "cod_seccion";
            DropDownList34.DataValueField = "cod_seccion";
            DropDownList34.DataBind();
            conexionBD.Close();
            conexionBD.Open();

            DropDownList35.DataSource = cmd.ExecuteReader();
            DropDownList35.DataTextField = "cod_seccion";
            DropDownList35.DataValueField = "cod_seccion";
            DropDownList35.DataBind();
            conexionBD.Close();
            conexionBD.Open();

            DropDownList36.DataSource = cmd.ExecuteReader();
            DropDownList36.DataTextField = "cod_seccion";
            DropDownList36.DataValueField = "cod_seccion";
            DropDownList36.DataBind();
            conexionBD.Close();
            conexionBD.Open();

            DropDownList37.DataSource = cmd.ExecuteReader();
            DropDownList37.DataTextField = "cod_seccion";
            DropDownList37.DataValueField = "cod_seccion";
            DropDownList37.DataBind();
            conexionBD.Close();
            conexionBD.Open();

            DropDownList38.DataSource = cmd.ExecuteReader();
            DropDownList38.DataTextField = "cod_seccion";
            DropDownList38.DataValueField = "cod_seccion";
            DropDownList38.DataBind();
            conexionBD.Close();
            conexionBD.Open();

            DropDownList39.DataSource = cmd.ExecuteReader();
            DropDownList39.DataTextField = "cod_seccion";
            DropDownList39.DataValueField = "cod_seccion";
            DropDownList39.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList40.DataSource = cmd.ExecuteReader();
            DropDownList40.DataTextField = "cod_seccion";
            DropDownList40.DataValueField = "cod_seccion";
            DropDownList40.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList41.DataSource = cmd.ExecuteReader();
            DropDownList41.DataTextField = "cod_seccion";
            DropDownList41.DataValueField = "cod_seccion";
            DropDownList41.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList42.DataSource = cmd.ExecuteReader();
            DropDownList42.DataTextField = "cod_seccion";
            DropDownList42.DataValueField = "cod_seccion";
            DropDownList42.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList43.DataSource = cmd.ExecuteReader();
            DropDownList43.DataTextField = "cod_seccion";
            DropDownList43.DataValueField = "cod_seccion";
            DropDownList43.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList44.DataSource = cmd.ExecuteReader();
            DropDownList44.DataTextField = "cod_seccion";
            DropDownList44.DataValueField = "cod_seccion";
            DropDownList44.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList45.DataSource = cmd.ExecuteReader();
            DropDownList45.DataTextField = "cod_seccion";
            DropDownList45.DataValueField = "cod_seccion";
            DropDownList45.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList46.DataSource = cmd.ExecuteReader();
            DropDownList46.DataTextField = "cod_seccion";
            DropDownList46.DataValueField = "cod_seccion";
            DropDownList46.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList47.DataSource = cmd.ExecuteReader();
            DropDownList47.DataTextField = "cod_seccion";
            DropDownList47.DataValueField = "cod_seccion";
            DropDownList47.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList48.DataSource = cmd.ExecuteReader();
            DropDownList48.DataTextField = "cod_seccion";
            DropDownList48.DataValueField = "cod_seccion";
            DropDownList48.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList49.DataSource = cmd.ExecuteReader();
            DropDownList49.DataTextField = "cod_seccion";
            DropDownList49.DataValueField = "cod_seccion";
            DropDownList49.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList50.DataSource = cmd.ExecuteReader();
            DropDownList50.DataTextField = "cod_seccion";
            DropDownList50.DataValueField = "cod_seccion";
            DropDownList50.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList51.DataSource = cmd.ExecuteReader();
            DropDownList51.DataTextField = "cod_seccion";
            DropDownList51.DataValueField = "cod_seccion";
            DropDownList51.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList52.DataSource = cmd.ExecuteReader();
            DropDownList52.DataTextField = "cod_seccion";
            DropDownList52.DataValueField = "cod_seccion";
            DropDownList52.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList53.DataSource = cmd.ExecuteReader();
            DropDownList53.DataTextField = "cod_seccion";
            DropDownList53.DataValueField = "cod_seccion";
            DropDownList53.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList54.DataSource = cmd.ExecuteReader();
            DropDownList54.DataTextField = "cod_seccion";
            DropDownList54.DataValueField = "cod_seccion";
            DropDownList54.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList55.DataSource = cmd.ExecuteReader();
            DropDownList55.DataTextField = "cod_seccion";
            DropDownList55.DataValueField = "cod_seccion";
            DropDownList55.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList56.DataSource = cmd.ExecuteReader();
            DropDownList56.DataTextField = "cod_seccion";
            DropDownList56.DataValueField = "cod_seccion";
            DropDownList56.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList57.DataSource = cmd.ExecuteReader();
            DropDownList57.DataTextField = "cod_seccion";
            DropDownList57.DataValueField = "cod_seccion";
            DropDownList57.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList58.DataSource = cmd.ExecuteReader();
            DropDownList58.DataTextField = "cod_seccion";
            DropDownList58.DataValueField = "cod_seccion";
            DropDownList58.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList59.DataSource = cmd.ExecuteReader();
            DropDownList59.DataTextField = "cod_seccion";
            DropDownList59.DataValueField = "cod_seccion";
            DropDownList59.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList60.DataSource = cmd.ExecuteReader();
            DropDownList60.DataTextField = "cod_seccion";
            DropDownList60.DataValueField = "cod_seccion";
            DropDownList60.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList61.DataSource = cmd.ExecuteReader();
            DropDownList61.DataTextField = "cod_seccion";
            DropDownList61.DataValueField = "cod_seccion";
            DropDownList61.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList62.DataSource = cmd.ExecuteReader();
            DropDownList62.DataTextField = "cod_seccion";
            DropDownList62.DataValueField = "cod_seccion";
            DropDownList62.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList63.DataSource = cmd.ExecuteReader();
            DropDownList63.DataTextField = "cod_seccion";
            DropDownList63.DataValueField = "cod_seccion";
            DropDownList63.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList64.DataSource = cmd.ExecuteReader();
            DropDownList64.DataTextField = "cod_seccion";
            DropDownList64.DataValueField = "cod_seccion";
            DropDownList64.DataBind();
            conexionBD.Close();

            conexionBD.Open();
            DropDownList65.DataSource = cmd.ExecuteReader();
            DropDownList65.DataTextField = "cod_seccion";
            DropDownList65.DataValueField = "cod_seccion";
            DropDownList65.DataBind();
            conexionBD.Close();



        }
    }


    protected void btn_Click(object sender, EventArgs e)
    {
        string datos = Request.QueryString["texto"].ToString();

        MySqlConnection conexionBD = new MySqlConnection(cadenaConexion);
        conexionBD.Open();
        MySqlCommand cmd = new MySqlCommand("insert into horaio values ('" +
            lbl1.Text + "','" + "LUNES" + "','" + datos + "','" + DropDownList1.SelectedValue.ToString() + "')", conexionBD);

        cmd.ExecuteReader();

        //Response.Write("los datos han sido guardados");


        conexionBD.Close();
    }
}