using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class signup : System.Web.UI.Page
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

            string q = "insert into signup(unm,pass,email,phone,utype)values(@unm,@pass,@email,@phone,'user')";

            SqlCommand cmd = new SqlCommand(q, con);

            cmd.Parameters.AddWithValue("@unm", unm.Text);
            cmd.Parameters.AddWithValue("@pass", pass.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@phone", phone.Text);
           
            int rec = cmd.ExecuteNonQuery();

            if (rec > 0)
            {
                Response.Write("Signup Succefully");
               
            }
            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
      

    }
}