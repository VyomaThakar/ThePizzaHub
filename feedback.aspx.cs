using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string x = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();
            SqlConnection con = new SqlConnection(x);
            con.Open();
            string insert = "insert into feedback(unm,email,feed)values(@unm,@email,@feed)";
            SqlCommand cmd = new SqlCommand(insert, con);
            cmd.Parameters.AddWithValue("@unm", unm.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
     
            cmd.Parameters.AddWithValue("@feed",feed.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            unm.Text = "";
            email.Text = "";
            feed.Text = "";
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }

}