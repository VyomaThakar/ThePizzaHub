using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;

public partial class feedback : System.Web.UI.Page
{
    public void user()
    {
        if (!this.IsPostBack)
        {
            string x = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();
            SqlConnection con = new SqlConnection(x);
            SqlCommand cmd = new SqlCommand("select unm, email from signup where Id=@id", con);
            cmd.Parameters.AddWithValue("@id", Session["id"].ToString());
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    unm.Text = sdr["unm"].ToString();
                    email.Text = sdr["email"].ToString();
                    unm.ReadOnly = true;
                    email.ReadOnly = true;
                }
            }
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        user();
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