using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class admin_viewedt : System.Web.UI.Page
{
    string x = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);

            SqlConnection con = new SqlConnection(x);
            con.Open();

            string s = "select * from menu where Id=@id";

            SqlCommand cmd = new SqlCommand(s, con);

            cmd.Parameters.AddWithValue("@id", id);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                dr.Read();
                no.Text = dr["Id"].ToString();
                name.Text = dr["nm"].ToString();
                description.Text = dr["descr"].ToString();
                price.Text = dr["price"].ToString();
            }

            dr.Dispose();
            con.Close();
        }
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
         SqlConnection con = new SqlConnection(x);
        con.Open();

        string u = "update menu set nm=@nm,  descr=@descr ,price=@price where Id=@id";

        SqlCommand cmd = new SqlCommand(u, con);

        cmd.Parameters.AddWithValue("@id", no.Text);
        cmd.Parameters.AddWithValue("@nm", name.Text.ToString());
        
        cmd.Parameters.AddWithValue("@descr", description.Text.ToString());
        cmd.Parameters.AddWithValue("@price", price.Text.ToString());
       
        
        int ans=cmd.ExecuteNonQuery();

        if (ans > 0)
        {
            con.Close();
           Response.Redirect("view.aspx");
        }
        else
        {
            Response.Write("no");
        }

    }
}