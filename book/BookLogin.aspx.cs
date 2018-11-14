using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class book_BookLogin : System.Web.UI.Page
{
    Boolean exists = false;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=SUYASH_LAPTOP;Initial Catalog=DBUtil;Integrated Security=True");
        con.Open();
        using (SqlCommand cmd = new SqlCommand("SELECT Count(Username) As Usercount FROM [Register_Table1] WHERE[Username] = '" + txtusername.Text + "' AND[Password] = '" + txtpassword.Text + "' AND[E_mail] = '" + TextBox1.Text + "' COLLATE SQL_Latin1_General_CP1_CS_AS ", con))
        {
            cmd.Parameters.AddWithValue("Username", txtusername.Text);
            exists = (int)cmd.ExecuteScalar() > 0;

        }

        if (exists)
        {
            Session["Name"] = txtusername.Text;
            Response.Redirect("Book1.aspx");
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You are Login Successfully')", true);

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You are not Registered')", true);
            lblinvalid.Text = "Invalid Username/Password";
        }
    }



    protected void ImageButton2_Click(object sender, EventArgs e)
    {
        txtusername.Text = "";
        txtpassword.Text = "";
        TextBox1.Text = "";
    }

    protected void ImageButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegisterBook.aspx");
    }

}