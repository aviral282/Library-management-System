<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="Issue.aspx.cs" Inherits="Issue" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            String tid;
            tid = Request.QueryString["tid"];
            if (tid != null)
            {
                txtTid.Text = tid;
                txtTid.Enabled = false;
            }

            txtDi.Text = DateTime.Today.ToShortDateString();
        }

    }

    protected void btnIssue_Click(object sender, EventArgs e)
    {
        // connect to db
        SqlConnection con = new SqlConnection(DBUtil.ConnectionString);

        try
        {
            con.Open();


            int tid = Int32.Parse(txtTid.Text);

            SqlCommand c2 = new SqlCommand("SELECT COUNT(*) FROM [dbo].[titles] WHERE ( [tid]= '" + tid +"')" , con);

            int tidExist = (int)c2.ExecuteScalar();

            if(tidExist > 0)
            {
                int mid = Int32.Parse(txtMid.Text);
                SqlCommand c3 = new SqlCommand("SELECT COUNT(*) FROM [dbo].[members] WHERE ( [mid]= '" + mid +"')" , con);
                //  SqlCommand c4 = new SqlCommand("SELECT [mname] FROM [dbo].[members] WHERE ( [mid]= '" + mid +"')" , con);
                //  SqlDataAdapter da = new SqlDataAdapter(c4);
                //  DataSet ds = new DataSet();
                // da.Fill(ds);
                // String mname = ds.Tables[0].Rows[0][0].ToString();


                int midExist = (int)c3.ExecuteScalar();

                if(midExist > 0)
                {
                   // con.Open();
                    SqlCommand cmd = new SqlCommand("[dbo].[issueBook]", con);
                    cmd.CommandType = CommandType.StoredProcedure;



                    cmd.Parameters.Add("@tid", SqlDbType.Int).Value = Int32.Parse(txtTid.Text);
                    cmd.Parameters.Add("@mid", SqlDbType.Int).Value = Int32.Parse(txtMid.Text);
                    cmd.Parameters.Add("@di", SqlDbType.Date).Value  = txtDi.Text;
                    cmd.Parameters.Add("@issuedby", SqlDbType.VarChar, 10).Value = (String)Session["uname"];
                    cmd.ExecuteNonQuery();

                    lblMsg.Text = "Issue of books is successful!";

                }

                else
                {
                    lblMsg.Text = "Invalid Member ID";

                }




            }
            else
            {
                lblMsg.Text = "Invalid Title ID";

            }

        }
        catch (Exception ex)
        {
            con.Close();
            lblMsg.Text = "Error :" + ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h2 style="color: #F3EFE0; font-family: &quot;Bookman Old Style&quot;">
        Issue Of Title</h2>
    <table>
        <tr>
            <td style="color: #efefef; font-family: 'comic Sans MS'; background-color: #552723;">
                Title ID</td>
            <td style="width: 100px; height: 26px;">
                <asp:TextBox ID="txtTid" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="background-color: #552723;">
                Member ID</td>
            <td style="width: 100px; height: 9px;">
                <asp:TextBox ID="txtMid" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="background-color: #552723;">
                Date of Isssue</td>
            <td style="width: 100px; height: 41px;">
                <asp:TextBox ID="txtDi" runat="server" TextMode="DateTime"></asp:TextBox></td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnIssue" runat="server" Text="Issue Title" OnClick="btnIssue_Click" /><br />
    <br />
    <asp:Label ID="lblMsg" runat="server" BackColor="#373737" ForeColor="#F3F3F3"></asp:Label><br />

</asp:Content>

