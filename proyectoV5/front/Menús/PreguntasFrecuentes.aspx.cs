using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class front_PreguntasFrecuentes : System.Web.UI.Page
{
	string cadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexionCALUFA"].ConnectionString;

}

	public partial class faq : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
		}
	}
