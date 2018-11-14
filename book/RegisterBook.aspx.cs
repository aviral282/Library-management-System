using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class book_RegisterBook : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=SUYASH_LAPTOP;Initial Catalog=DBUtil;Integrated Security=True");
        con.Open();
        string name = TextBox1.Text;
        string password = TextBox7.Text;
        string gender = string.Empty;
        if (RadioButton1.Checked)
        {
            gender = "Male";
        }
        else if (RadioButton2.Checked)
        {
            gender = "Female";
        }
        string address = TextBox9.Text;
        string postcode = TextBox2.Text;
        string city = TextBox3.Text;
        string state = TextBox4.Text;
        string mobile_no = TextBox5.Text;
        string email = TextBox6.Text;

        string query = "Insert into [dbo].[Register_Table1] ([Username],[Password],[Gender],[Address],[Post_code],[City],[State],[Mobile_no],[E_mail]) Values ('" + name + "','" + password + "','" + gender + "','" + address + "', '" + postcode + "', '" + city + "', '" + state + "', '" + mobile_no + "', '" + email + "')";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registration Successfull')", true);
        Response.Redirect("BookLogin.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox9.Text = "";
    }
}