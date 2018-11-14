using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class book_Book2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ins(int UsrID, String name)
    {
        SqlConnection con = new SqlConnection(" Data Source=SUYASH_LAPTOP;Initial Catalog=DBUtil;Integrated Security=True");
        con.Open();
        SqlCommand c = new SqlCommand("Select [Item],[Price] from [dbo].[Product4] where [Item] ='" + name + "' ", con);
        SqlDataAdapter d = new SqlDataAdapter(c);
        DataSet s = new DataSet();
        d.Fill(s);

        String item = s.Tables[0].Rows[0][0].ToString();
        Decimal money = Convert.ToDecimal(s.Tables[0].Rows[0][1]);

        SqlCommand cm = new SqlCommand("Insert into [dbo].[Customer] ([Id],[Username],[Item],[Price]) Values('" + UsrID + "','" + Session["Name"].ToString() + "','" + item + "','" + money + "')", con);

        cm.ExecuteNonQuery();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("Data Source=SUYASH_LAPTOP;Initial Catalog=DBUtil;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT [Id] FROM [dbo].[Register_Table1] WHERE [Username]='" + Session["Name"].ToString() + "' ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        int UsrID = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
        con.Close();

        if (CheckBox1.Checked == true)
        {
            ins(UsrID, "A Thousand Splendid Suns");
        }
        if (CheckBox2.Checked == true)
        {
            ins(UsrID, "I Too Had A Love Story");
        }
        if (CheckBox3.Checked == true)
        {
            ins(UsrID, "If Tommorow Comes");
        }
        if (CheckBox4.Checked == true)
        {
            ins(UsrID, "Marry Me Stranger");
        }
        if (CheckBox5.Checked == true)
        {
            ins(UsrID, "One Indian Girl ");
        }
        if (CheckBox6.Checked == true)
        {
            ins(UsrID, "One Part Woman");
        }

        Response.Redirect("Cart.aspx");
    }
}


/* 
*/
