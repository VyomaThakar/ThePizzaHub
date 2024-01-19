using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Web.Configuration;

public partial class forget : System.Web.UI.Page
{
    string x = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    DataSet ds = new DataSet();
        //    string x = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();
        //    using ( SqlConnection con = new SqlConnection(x))
        //    {
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("SELECT * FROM signup Where email= '" + txtemail.Text.Trim() + "'", con);
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    da.Fill(ds);
        //    con.Close();
        //    }
        //    if(ds.Tables[0].Rows.Count>0)
        //    {
        //        MailMessage Msg = new MailMessage();
        //        Msg.From = new MailAddress(txtemail.Text);
        //        Msg.Subject = "Your Password Details";
        //        Msg.Body = "Hi, <br/>Please Check Your Login Details<br/><br/>Your Username: " + ds.Tables[0].Rows[0]["unm"] + "<br/><br/>Your Email: " + ds.Tables[0].Rows[0]["email"] + "<br/><br/>Your Password: " + ds.Tables[0].Rows[0]["pass"] + "<br/><br/>::You Need Any Help You Contect Me On Call Or Message::<br/>Contect No:: 78***8***1 / 87***21**5"; 
        //        Msg.IsBodyHtml = true;
        //        Msg.To.Add(new MailAddress(txtemail.Text));
            
        //        SmtpClient smtp = new SmtpClient();
        //        smtp.Host = "smtp.gmail.com";
        //        smtp.EnableSsl = true;
        //        NetworkCredential NetworkCred = new NetworkCredential();
        //        NetworkCred.UserName = Msg.From.Address;
        //        NetworkCred.Password = WebConfigurationManager.AppSettings["Password"].ToString();
        //        smtp.UseDefaultCredentials = true;
        //        smtp.Credentials = NetworkCred;
        //        smtp.Port = 587;
        //        smtp.Send(Msg);

        //        //smtp.Credentials = new System.Net.NetworkCredential("pizzahub7404@gmail.com", "frwv rryb lhbj axqo");
        //        //smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
        //        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Password successfully sent to Your email')", true);
        //    }
        //    else
        //    {
        //        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Email sending failed...')", true);
        //    }
        //}
        ///*catch (Exception ex)
        //{
        //    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Error')", true);
        //    Console.WriteLine("{0} Exception caught.", ex);
        //}*/
        //txtemail.Text = "";
        //Response.Redirect("login.aspx");
    
        SqlConnection con = new SqlConnection(x);
        con.Open();

        string q = "select * from signup where email=@email ";

        SqlCommand cmd = new SqlCommand(q, con);

       
        cmd.Parameters.AddWithValue("@email", txtemail.Text);

        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Your  Password : @pass')", true);
            Label3.Visible = true;
            string pass = dr["pass"].ToString();
            Label3.Text = pass;
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Invalid Data...')", true);
        }
        dr.Dispose();
        con.Close();
    }
    }
