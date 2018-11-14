<%@ Page Title="" Language="C#" MasterPageFile="~/book/MasterBook.master" AutoEventWireup="true" CodeFile="BookLogin.aspx.cs" Inherits="book_BookLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
        width: 287px;
    }
    .style5
    {
        width: 183px;
    }
    .style6
    {
        width: 287px;
        height: 19px;
    }
    .style7
    {
        width: 183px;
        height: 19px;
    }
    .style8
    {
        height: 19px;
    }
        .style9
        {
            width: 287px;
            height: 18px;
        }
        .style10
        {
            width: 183px;
            height: 18px;
        }
         .style11 {
             height: 18px;
         }
  
         .auto-style7 {
             width: 991px;
             text-align: center;
             text-transform: uppercase;
             font-weight: bold;
             height: 130px;
         }
    .auto-style9 {
        width: 232px;
    }
    .auto-style10 {
        width: 232px;
        height: 18px;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p>
         
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="auto-style7">
        <tr>
            <td class="style4">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="Label1" runat="server" Text="UserName:" Font-Bold="False"></asp:Label></td>
            <td class="auto-style9">
                &nbsp; &nbsp;<asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text="Password:" Font-Bold="False"></asp:Label></td>
            <td class="auto-style9">
                &nbsp; &nbsp;<asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Bold="False" Text="E-mail:"></asp:Label>
            </td>
            <td class="auto-style9">
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
               
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="55px" ImageUrl="logo/Login.png" OnClick="ImageButton1_Click" Width="84px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
                <br />
               
            </td>
            <td class="auto-style9">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="35px" ImageUrl="logo/Reset.jpg" OnClick="ImageButton2_Click" Width="118px" />
            </td>

            <td>
                <asp:ImageButton ID="ImageButton3" runat="server" Height="59px" ImageUrl="logo/signup.jpg" OnClick="ImageButton3_Click" Width="133px"/>
            </td>

        </tr>
        <tr>
            <td class="style9">
                
                </td>
            <td class="auto-style10">
                &nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblinvalid" runat="server" ForeColor="White" Visible="False" Font-Size="10pt"></asp:Label></td>
            <td class="style11">
                &nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                 </tr>
    </table>
     </p>
     <p>
         &nbsp;</p>
<p>


 
&nbsp;</p>
<p>
    &nbsp;</p>
<p>
    <br />
</p>
</asp:Content>
