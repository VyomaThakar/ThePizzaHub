using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class login : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void log_Click(object sender, EventArgs e)
    {
        string x = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();

        SqlConnection con = new SqlConnection(x);

        con.Open();

        SqlCommand cmd = new SqlCommand("select id,unm,pass,utype from signup where unm=@unm and pass=@pass",con);

        cmd.Parameters.AddWithValue("@unm", unm.Text.ToString());
        cmd.Parameters.AddWithValue("@pass", pass.Text.ToString());

        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            dr.Read();
            if (dr["utype"].ToString() == "user")
            {
                Session["id"] = dr["Id"].ToString();
                Session["unm"] = unm.Text;
                Response.Redirect("user/index.aspx");
            }
            else
            {
                Session["id"] = dr["Id"].ToString();
                Session["unm"] = unm.Text;
                Response.Redirect("admin/index.aspx");
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page,typeof(Page),"ClientScript","alert('Invalid unm and pass.')",true);
        }
        con.Close();
    }
}