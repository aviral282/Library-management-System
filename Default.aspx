<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 style="color: #F3EFE0; font-family: 'Book Antiqua'">
        Recent Issues</h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="tid" DataNavigateUrlFormatString="titleinfo.aspx?tid={0}"
                    DataTextField="title" HeaderText="Title" />
                <asp:HyperLinkField DataNavigateUrlFields="mid" DataNavigateUrlFormatString="memberinfo.aspx?mid={0}"
                    DataTextField="mname" HeaderText="Member" />
                <asp:BoundField DataField="di" HeaderText="Issued On" SortExpression="di" />
                <asp:BoundField DataField="fullname" HeaderText="Issued By" SortExpression="fullname" />
            </Columns>
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
        &nbsp;</p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBUtilConnectionString2 %>"
       SelectCommand="select top 10 i.tid, i.mid,title, mname, convert(varchar(10),di,1)  di, fullname&#13;&#10;from users u, issues i, titles t, members m&#13;&#10;where u.uname = i.issuedby  and  i.tid = t.tid and i.mid = m.mid&#13;&#10;order by  di  desc">   
            </asp:SqlDataSource>
<asp:Label ID="Label2" runat="server" BackColor="Black" Text="Label" ForeColor="#FF9900"></asp:Label>
<br />
<br />
</asp:Content>

