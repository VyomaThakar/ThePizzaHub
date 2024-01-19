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

public partial class user_your_cart : System.Web.UI.Page
{
    string x = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();
   
    public void gridbind()
    {
        SqlConnection con = new SqlConnection(x);
        con.Open();

        string q = "select * from cart where unm=@unm";

        SqlCommand cmd = new SqlCommand(q, con);
        cmd.Parameters.AddWithValue("@unm", Session["unm"].ToString());
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }

        dr.Dispose();
        con.Close();
    }
    public void user()
    {
        if (!this.IsPostBack)
        {
            string x = WebConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();
            SqlConnection con = new SqlConnection(x);
            SqlCommand cmd = new SqlCommand("select unm, phone, email from signup where Id=@id", con);
            cmd.Parameters.AddWithValue("@id", Session["id"].ToString());
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    name.Text = sdr["unm"].ToString();
                    mno.Text = sdr["phone"].ToString();
                    email.Text = sdr["email"].ToString();
                    name.ReadOnly = true;
                    mno.ReadOnly = true;
                    email.ReadOnly = true;
                }
            }
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    if (Request.QueryString["pid"] != null)
        //    {
        //        SqlConnection con = new SqlConnection(x);
        //        con.Open();

        //        string q = "select * from foods where Id=@id";

        //        SqlCommand cmd = new SqlCommand(q, con);

        //        cmd.Parameters.AddWithValue("@id", Request.QueryString["pid"]);

        //        SqlDataReader dr = cmd.ExecuteReader();

        //        if (dr.HasRows)
        //        {
        //            dr.Read();
        //            string p_id = dr["Id"].ToString();
        //            string email = Session["email"].ToString();
        //            string image = dr["image"].ToString();
        //            string pname = dr["name"].ToString();
        //            string price = dr["price"].ToString();
        //            dr.Close();
        //            dr.Dispose();

        //            string i = "insert into cart(p_id,email,image,pname,price)values(@p_id,@email,@image,@pname,@price)";

        //            SqlCommand cmd1 = new SqlCommand(i, con);

        //            cmd1.Parameters.AddWithValue("@p_id", p_id.ToString());
        //            cmd1.Parameters.AddWithValue("@email", email.ToString());
        //            cmd1.Parameters.AddWithValue("@image", image.ToString());
        //            cmd1.Parameters.AddWithValue("@pname", pname.ToString());
        //            cmd1.Parameters.AddWithValue("@price", price.ToString());

        //            int ans = cmd1.ExecuteNonQuery();

        //        }
        //        con.Close();
        //    }
        //}
        
        gridbind();
        user();
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("menu.aspx");
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "dlt")
        {
            SqlConnection con = new SqlConnection(x);
            con.Open();

            string q = "delete from cart where Id=@Id";

            SqlCommand cmd = new SqlCommand(q, con);

            cmd.Parameters.AddWithValue("@Id", e.CommandArgument);

            int ans = cmd.ExecuteNonQuery();

            gridbind();
            con.Close();
            Response.Redirect("your_cart.aspx");
        }
        if (e.CommandName == "confirm")
        {
            if (IsPostBack)
            {
                Image photo = (Image)e.Item.FindControl("photo");
                string img = photo.ImageUrl.ToString();

                Label lbl_name = (Label)e.Item.FindControl("lbl_name");
                string lbl_pname = lbl_name.Text.ToString();

                Label lbl_price = (Label)e.Item.FindControl("lbl_price");
                string lbl_price1 = lbl_price.Text.ToString();

                Label text_qty = (Label)e.Item.FindControl("qty");
                string qt = text_qty.Text.ToString();


                SqlConnection con = new SqlConnection(x);
                con.Open();
                string insert = "insert into orders (name,mno,date,image,pname,qty,price,address,city,pincode,status)values(@name,@mno,@date,@image,@pname,@qty,@price,@address,@city,@pincode,@status)";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.Parameters.AddWithValue("@name", name.Text);
                cmd.Parameters.AddWithValue("@mno", mno.Text);
                cmd.Parameters.AddWithValue("@date", DateTime.Now);
                cmd.Parameters.AddWithValue("@image", img.ToString());
                cmd.Parameters.AddWithValue("@pname", lbl_pname.ToString());
                cmd.Parameters.AddWithValue("@qty", qt.ToString());
                cmd.Parameters.AddWithValue("@price", lbl_price1.ToString());
                cmd.Parameters.AddWithValue("@address", address.Text.ToString());
                cmd.Parameters.AddWithValue("@city", city.Text);
                cmd.Parameters.AddWithValue("@pincode", pincode.Text);
                cmd.Parameters.AddWithValue("@status", "Pending");
                cmd.ExecuteNonQuery();

                string q = "delete from cart where Id=@Id";

                SqlCommand cmd1 = new SqlCommand(q, con);

                cmd1.Parameters.AddWithValue("@Id", e.CommandArgument);

                int ans = cmd1.ExecuteNonQuery();

                gridbind();
                con.Close();
                Response.Redirect("message.aspx");
                //Response.Redirect("your_cart.aspx");
            }
        }
    }
}