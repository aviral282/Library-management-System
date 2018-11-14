using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registerpage : System.Web.UI.Page
{
    public class DBUtil
    {
        public static String ConnectionString
        {
            get
            {
                return "Data Source=SUYASH_LAPTOP;Initial Catalog=DBUtil;Integrated Security=True";
            }

        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

      protected void Button1_Click1(object sender, EventArgs e)
    {

                SqlConnection con = new SqlConnection(DBUtil.ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into users values(@uname,@pwd,@fullname)",con);
            // int mid = (int)cmd.ExecuteScalar();
            //cmd.CommandText = "insert into users values(@uname,@pwd,@fullname)";
            cmd.Parameters.Add("@uname", SqlDbType.VarChar, 10).Value = TextBox1.Text;
            cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 10).Value = TextBox2.Text;
            cmd.Parameters.Add("@fullname", SqlDbType.VarChar, 10).Value = TextBox3.Text;

            cmd.ExecuteNonQuery();
            Label5.Text = "Member has been added successfully";
            Response.Redirect("login.aspx");
        }
        catch (Exception ex)
        {
            Label5.Text = "error" + ex.Message;
        }

    }

   
}