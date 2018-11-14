<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="UpdateMembers.aspx.cs" Inherits="UpdateMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h2 style="background-color: #efefef">
        Update Members</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="mid"
        DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="mid" HeaderText="mid" ReadOnly="True" SortExpression="mid" />
            <asp:BoundField DataField="mname" HeaderText="mname" ReadOnly="True" SortExpression="mname" />
            <asp:BoundField DataField="djoin" HeaderText="djoin" ReadOnly="True" SortExpression="djoin" />
            <asp:BoundField DataField="depositamt" HeaderText="depositamt" SortExpression="depositamt" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="occupation" HeaderText="occupation" SortExpression="occupation" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBUtilConnectionString2 %>"
        DeleteCommand="DELETE FROM [members] WHERE [mid] = @mid" InsertCommand="INSERT INTO [members] ([mid], [mname], [depositamt], [djoin], [email], [occupation]) VALUES (@mid, @mname, @depositamt, @djoin, @email, @occupation)"
        SelectCommand="SELECT * FROM [members]" UpdateCommand="UPDATE [members] SET [depositamt] = @depositamt, [email] = @email, [occupation] = @occupation WHERE [mid] = @mid">
        <DeleteParameters>
            <asp:Parameter Name="mid" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="depositamt" Type="Int32" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="occupation" Type="String" />
            <asp:Parameter Name="mid" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="mid" Type="Int32" />
            <asp:Parameter Name="mname" Type="String" />
            <asp:Parameter Name="depositamt" Type="Int32" />
            <asp:Parameter Name="djoin" Type="DateTime" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="occupation" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

