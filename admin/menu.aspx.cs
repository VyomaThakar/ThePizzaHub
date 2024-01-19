using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;

public partial class admin_menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        
            string x = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();

            SqlConnection con = new SqlConnection(x);
            con.Open();

            string q = "insert into menu(photo,nm,descr,price)values(@photo,@nm,@descr,@price)";

            SqlCommand cmd = new SqlCommand(q, con);

            if (photo.HasFile)
            {
                string fname = photo.PostedFile.FileName.ToString();
                string ftype = Path.GetExtension(fname);
                double fsize = photo.PostedFile.ContentLength;

                if (ftype == ".jpg" || ftype == ".png" || ftype == ".JPG" || ftype == ".PNG")
                {
                    if (fsize < 10240000)
                    {
                        if (!Directory.Exists(Server.MapPath("images/")))
                        {
                            Directory.CreateDirectory(Server.MapPath("images/"));
                        }
                        photo.SaveAs(Server.MapPath("../images/") + fname);
                        cmd.Parameters.AddWithValue("@photo", "../images/" + fname);
                    }
                }
            }
            else
            {
                cmd.Parameters.AddWithValue("@photo", "");
            }
            
            cmd.Parameters.AddWithValue("@nm", nm.Text);
            cmd.Parameters.AddWithValue("@descr", desc1.Text);
            cmd.Parameters.AddWithValue("@price", price.Text);

            int rec = cmd.ExecuteNonQuery();

            if (rec > 0)
            {
                Response.Write("Menu add Succefully");
            }
            con.Close();
    }
}