using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class admin_view : System.Web.UI.Page
{
    string x = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();

    public void gridbind()
    {
        SqlConnection con = new SqlConnection(x);
        con.Open();

        string q = "select * from menu";

        SqlCommand cmd = new SqlCommand(q, con);

        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            GridView2.DataSource = dr;
            GridView2.DataBind();
        }

        dr.Dispose();
        con.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
        gridbind();
    }
    protected void Grideview2_Rowcommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "dlt")
        {
            SqlConnection con = new SqlConnection(x);
            con.Open();

            string q = "delete from menu where Id=@Id";

            SqlCommand cmd = new SqlCommand(q, con);

            cmd.Parameters.AddWithValue("@Id", e.CommandArgument);

            int ans = cmd.ExecuteNonQuery();

            gridbind();
            con.Close();
        }

        if (e.CommandName == "edt")
        {
            Response.Redirect("viewedt.aspx?id=" + e.CommandArgument);
        }
    }
}