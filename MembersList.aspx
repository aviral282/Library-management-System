<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="MembersList.aspx.cs" Inherits="MembersList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h2 style="background-color: #552723; width: 263px; color: #fff;">Members Information</h2>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="mid" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both" style="margin-right: 5px" Width="360px" CellSpacing="2">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
            mname:
            <asp:Label ID="mnameLabel" runat="server" Text='<%# Eval("mname") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
            occupation:
            <asp:Label ID="occupationLabel" runat="server" Text='<%# Eval("occupation") %>' />
            <br />
            mid:
            <asp:Label ID="midLabel" runat="server" Text='<%# Eval("mid") %>' />
            <br />
            <br />
         </ItemTemplate>
         <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
         <SeparatorTemplate>
         <hr />
         </SeparatorTemplate> 
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBUtilConnectionString2 %>"
        SelectCommand="SELECT [mname], [email], [occupation], [mid] FROM [members]"></asp:SqlDataSource>

</asp:Content>

