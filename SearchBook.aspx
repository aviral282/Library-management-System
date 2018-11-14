<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="SearchBook.aspx.cs" Inherits="SearchBook" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>

<script runat="server">


    protected void btnSearch_Click(object sender, EventArgs e)
    {
        String cond = " 1 = 1 ";

        if (txtTitle.Text.Length > 0)
            cond += "  and  title like '%" + txtTitle.Text + "%'";

        if (txtAuthor.Text.Length > 0)
            cond += "  and  authors like '%" + txtAuthor.Text + "%'";

        if (txtSubject.Text.Length > 0)
            cond += "  and  subcode like '%" + txtSubject.Text + "%'";

        if (txtFrom.Text.Length > 0)
            cond += "  and  dp >= '" + txtFrom.Text + "'";

        if (txtTo.Text.Length > 0)
            cond += "  and  dp <= '" + txtTo.Text + "'";

        if (chkAvailable.Checked)
            cond += "  and  status = 'a' ";
                 
        // get data from titles table
        SqlConnection con = new SqlConnection(DBUtil.ConnectionString);
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("select tid,title,subcode,authors,publisher,price, convert(varchar(10),dp,1) dp,status  from titles where " + cond, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "titles");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();  
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
       
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <h2 style="background-color: #efefef; width: 164px;">
    Search Titles</h2>
    <table>
        <tr>
            <td style="background-color: #552723; color: #fff;">
                Title :</td>
            <td style="background-color: #552723; color: #fff;" >
                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>&nbsp; Author :
                <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="background-color: #552723; color: #fff;">
                Subject :</td>
            <td style="background-color: #552723; color: #fff;" >
                <asp:TextBox ID="txtSubject" runat="server" Width="84px"></asp:TextBox>
                Purchased From :
                <asp:TextBox ID="txtFrom" runat="server" Width="59px"></asp:TextBox>&nbsp; To
                <asp:TextBox ID="txtTo" runat="server" Width="59px"></asp:TextBox></td>
        </tr>
    </table>
    <asp:CheckBox ID="chkAvailable" runat="server" Checked="True" Text="Only Available Books" BackColor="#552723" ForeColor="White" />
    &nbsp;
    <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" /><br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBUtilConnectionString2 %>" SelectCommand="SELECT * FROM [titles]"></asp:SqlDataSource>
</asp:Content>

