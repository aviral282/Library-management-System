<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="ReturnBook.aspx.cs" Inherits="ReturnBook" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            txtRdate.Text = DateTime.Today.ToShortDateString();
    }

    protected void btnReturn_Click(object sender, EventArgs e)
    {
        // connect to db
        SqlConnection con = new SqlConnection(DBUtil.ConnectionString);
        try
        {
            con.Open();
            int rr = 10;
            int fine = 0;
            DateTime dr = DateTime.Parse( txtRdate.Text);
            SqlCommand cm = new SqlCommand("Select [di] from [dbo].[issues] where [tid] = '"+ txtTid.Text +"'",con);
            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DateTime di = DateTime.Parse(ds.Tables[0].Rows[0][0].ToString());
            int diff = (dr - di).Days;
            if(diff > 15)
            {
                int d = diff - 15;
                fine = rr * d;
            }

            SqlCommand cmd = new SqlCommand("returnBook", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@tid", SqlDbType.Int).Value = Int32.Parse(txtTid.Text);
            cmd.Parameters.Add("@dr", SqlDbType.DateTime).Value = txtRdate.Text;
            cmd.Parameters.Add("@user", SqlDbType.VarChar, 10).Value = (String)Session["uname"];
            cmd.Parameters.Add("@fine", SqlDbType.Int).Value = fine;

            cmd.ExecuteNonQuery();

            lblMsg.Text = "Return of books is successful!";
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error :" + ex.Message;
        }
        finally
        {
            con.Close();
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        /*  SqlConnection con = new SqlConnection(DBUtil.ConnectionString);
          con.Open();
          SqlCommand cmd = new SqlCommand("SELECT TOP 1 * from [dbo].[issues] WHERE [tid] = '" + txtTid.Text + "' ORDER BY [di] DESC",con);
         // SqlCommand cmd = new SqlCommand("SELECT TOP FROM (SELECT * FROM [dbo].[issues]  WHERE [tid] = '" + txtTid + "' ORDER BY [Date] DESC) WHERE ROWNUM = 1",con);
          SqlDataAdapter da = new SqlDataAdapter(cmd);
          DataSet ds = new DataSet();
          da.Fill(ds);
          GridView1.Visible = true;
          GridView1.DataSource = ds; 
          GridView1.DataBind();
          */
        //   Response.Redirect("bookinfo.aspx?tid=" + txtTid.Text);

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h2 style="background-color: #efefef; width: 190px; height: 35px;">Return Of Book</h2>
    <table>
    <tr>
    <td style="background-color: #efefef">Title Id : </td>
    <td><asp:TextBox ID="txtTid" runat="server" Width="69px"></asp:TextBox>
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Get Details</asp:LinkButton><br />
    </td>
    </tr>
    <tr>
    <td colspan=2>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84"
        DataKeyNames="title" DataSourceID="SqlDataSource1" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="title" HeaderText="Title" ReadOnly="True" SortExpression="title" />
            <asp:BoundField DataField="mname" HeaderText="Member Name" SortExpression="mname" />
            <asp:BoundField DataField="di" HeaderText="Date of Issue" SortExpression="di" />
            <asp:BoundField DataField="issuedby" HeaderText="Issued By" SortExpression="issuedby" />
            <asp:BoundField DataField="fine" HeaderText="Fine Amount" ReadOnly="True" SortExpression="fine" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBUtilConnectionString2 %>"
        SelectCommand="select  title, mname, di, issuedby,  fine=&#13;&#10;     case  &#13;&#10;      when   datediff(dd,di,getdate()) > 15 then   datediff(dd,di,getdate()) - 15 &#13;&#10;      else 0&#13;&#10;    end&#13;&#10;from   titles t, members m, issues i&#13;&#10;where  t.tid = i.tid and i.mid = m.mid  and i.tid = @tid">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtTid" Name="tid" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    
        <br />
        <asp:GridView ID="GridView1" runat="server" Height="151px" Visible="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <br />
    
    </td>
    </tr>
    <tr>
    <td style="background-color: #efefef">
    Return Date :
    </td>
    <td style="color: #fff; background-color: #552723">
    <asp:TextBox ID="txtRdate" runat="server" Width="81px" TextMode="DateTime"></asp:TextBox>
    (mm/dd/yy)<br />
    </td>
    </tr>
    </table>
    <asp:Button ID="btnReturn" runat="server" Text="Return Book" OnClick="btnReturn_Click" /><br />
    <br />
    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" BackColor="#552723" ForeColor="White"></asp:Label><br />
</asp:Content>

