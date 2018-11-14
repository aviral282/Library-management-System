<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="registerpage.aspx.cs" Inherits="registerpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:Label ID="Label2" runat="server" BackColor="#552723" Text="Username" ForeColor="White"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 39px" Width="117px"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" BackColor="#552723" Text="password" ForeColor="White"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 41px"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" BackColor="#552723" Text="fullname" ForeColor="White"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 49px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" BackColor="#F4F4F4" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
   
</asp:Content>

