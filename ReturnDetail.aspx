<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="ReturnDetail.aspx.cs" Inherits="ReturnDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Text="Return Detail"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" Height="119px" Width="335px" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="tid" DataSourceID="SqlDataSource1" CellSpacing="2">
        <Columns>
            <asp:BoundField DataField="tid" HeaderText="tid" ReadOnly="True" SortExpression="tid" />
            <asp:BoundField DataField="mid" HeaderText="mid" SortExpression="mid" />
            <asp:BoundField DataField="di" HeaderText="di" SortExpression="di" />
            <asp:BoundField DataField="dr" HeaderText="dr" SortExpression="dr" />
            <asp:BoundField DataField="issuedby" HeaderText="issuedby" SortExpression="issuedby" />
            <asp:BoundField DataField="returnedto" HeaderText="returnedto" SortExpression="returnedto" />
            <asp:BoundField DataField="fineamt" HeaderText="fineamt" SortExpression="fineamt" />
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
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBUtilConnectionString4 %>" SelectCommand="SELECT * FROM [returns]"></asp:SqlDataSource>
   
</asp:Content>

