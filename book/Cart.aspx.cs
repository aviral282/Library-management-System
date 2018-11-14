using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class book_Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {

        lbllabel.Text = "Welcome " + Session["Name"].ToString();
        if (!Page.IsPostBack)
        {
            bind();
        }

    }
    public void bind()
    {
        SqlConnection con = new SqlConnection("Data Source=SUYASH_LAPTOP;Initial Catalog=DBUtil;Integrated Security=True");
        con.Open();
        SqlCommand cmd1 = new SqlCommand("SELECT * FROM [dbo].[Customer] WHERE [UserName]='" + Session["Name"].ToString() + "' ", con);

        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        SqlCommand cmd = new SqlCommand("Select SUM(Price) from Customer", con);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        DataSet ds1 = new DataSet();
        ad.Fill(ds1);
        Label2.Text = ds1.Tables[0].Rows[0][0].ToString();

        con.Close();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=SUYASH_LAPTOP;Initial Catalog=DBUtil;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("TRUNCATE TABLE [dbo].[Customer] ", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Session.RemoveAll();
        Response.Redirect("BookLogin.aspx");
    }
}