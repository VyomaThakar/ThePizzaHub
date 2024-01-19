using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class admin_feedback : System.Web.UI.Page
{
    string x = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();
    public void disp()
    {
        SqlConnection con = new SqlConnection(x);
        con.Open();
        String q = "select * from feedback";

        SqlCommand cmd = new SqlCommand(q, con);
        SqlDataReader dr = cmd.ExecuteReader();

        GridView1.DataSource = dr;
        GridView1.DataBind();


    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["unm"] == null)
        {
            Response.Redirect("~/login.aspx");
        }
        disp();
    }
}