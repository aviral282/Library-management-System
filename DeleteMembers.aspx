<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="DeleteMembers.aspx.cs" Inherits="DeleteMembers" %>

<%@import Namespace="System.Data" %>
<%@import Namespace="System.Data.SqlClient" %>

<script runat="server">

    protected void lbDetails_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(DBUtil.ConnectionString);
        con.Open();
        SqlCommand c4 = new SqlCommand("SELECT * FROM [dbo].[members] WHERE ( [mid]= '" + txtMid.Text  +"')" , con);
        SqlDataAdapter da = new SqlDataAdapter(c4);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.Visible = true;
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();

    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(DBUtil.ConnectionString);
        con.Open();
        SqlCommand c2 = new SqlCommand("SELECT COUNT(*) FROM [dbo].[issues] where [mid ] = '" + txtMid.Text +"'" , con);

        int midExist = (int)c2.ExecuteScalar();

        if (midExist > 0)
        {
            Label2.Text = "Member cannot be Deleted. Member still has books to be returned";
        }

        else {
             SqlCommand cmd = new SqlCommand("Delete from [dbo].[members] where [mid ] = '" + txtMid.Text + "'", con);
            cmd.ExecuteNonQuery();
            Label2.Text = "Member Successfuly Deleted";
           
        }
        con.Close();

    }

</script>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h2 style="font-family: 'comic Sans MS'; color: #0A1612; background-color: #efefef; width: 186px;">
        Delete Member</h2>
    <p style="font-family: 'comic Sans MS'; color: #f4f4f4; background-color: #552723;">
        Enter member id :
        <asp:TextBox ID="txtMid" runat="server" Width="72px"></asp:TextBox>
        <asp:LinkButton ID="lbDetails" runat="server" OnClick="lbDetails_Click">Get Details</asp:LinkButton></p>
    <p>
        <asp:GridView ID="GridView1" runat="server" Visible="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
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
        </p>
    <p>
        <asp:Button ID="btnDelete" runat="server" Text="Delete Member" OnClick="btnDelete_Click" />&nbsp;</p>
     <p>
         <asp:Label ID="Label2" runat="server" Text="Label" BackColor="White"></asp:Label>
     </p>

</asp:Content>

