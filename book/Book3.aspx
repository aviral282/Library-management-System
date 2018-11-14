<%@ Page Title="" Language="C#" MasterPageFile="~/book/MasterBook.master" AutoEventWireup="true" CodeFile="Book3.aspx.cs" Inherits="book_Book3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 123px;
        }
        .style3
        {
            width: 123px;
            height: 21px;
        }
        .style4
        {
            height: 21px;
        }
        .style5
        {
            width: 270px;
        }
        .style6
        {
            height: 21px;
            width: 270px;
        }
         .auto-style7 {
             width: 123px;
             height: 51px;
         }
         .auto-style8 {
             height: 51px;
             width: 270px;
         }
         .auto-style9 {
             height: 51px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image9" runat="server" Height="41px" ImageUrl="SelfHelp/download.png" Width="44px" />
            </td>
            <td>
            &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="auto-style7">
&nbsp;&nbsp;
            </td>
            <td class="auto-style8">
                <asp:Panel ID="Panel1" runat="server" Height="476px" Width="336px">
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Image ID="Image1" runat="server" Height="256px" Width="145px" ImageUrl="SelfHelp/the-4-hour-work-week-e.jpeg" />
                    <br />
                    <br />
                    <asp:Label ID="Label28" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Product Id" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id1" runat="server" Text="SH1"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Label ID="Label29" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Book" ForeColor="#999999"></asp:Label>
                    &nbsp;
                    <asp:Label ID="lm1" runat="server" Text="The 4-Hour Work Week"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> <asp:Label ID="Label30" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Amount" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="la1" runat="server" Text="Rs. 220"></asp:Label>
                    &nbsp;<br />
                    <asp:Label ID="Label31" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Description" ForeColor="#999999"></asp:Label>
                    &nbsp;
                    <asp:Label ID="ld1" runat="server" Text="Unlock the Redmi 3S Prime with the super-fast fingerprint sensor and enjoy a world of lag-free multitasking with the quick and powerful Snapdragon processor and the versatile 3GB RAM." Font-Bold="False" Font-Size="10px"></asp:Label>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="add to cart" />
                    &nbsp;&nbsp;&nbsp;</asp:Panel>
            </td>
            <td class="auto-style9">
                <asp:Panel ID="Panel2" runat="server" Height="472px" Width="321px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Image ID="Image2" runat="server" Height="257px" 
                        style="margin-left: 0px; margin-top: 0px;" Width="133px" ImageUrl="SelfHelp/the-power-of-habit-why-whb.jpeg" />
                    <br />
                    <br />
                    <asp:Label ID="Label33" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Product Id" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id2" runat="server" Text="SH2"></asp:Label>
                    <br />
                    <asp:Label ID="Label34" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Book" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="lm2" runat="server" Text="The Power Of Habit"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> <asp:Label ID="Label35" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Amount" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="la2" runat="server" Text="Rs. 299"></asp:Label>
                    <br />
                    <asp:Label ID="Label36" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Description" ForeColor="#999999"></asp:Label>
                    &nbsp;
                    <asp:Label ID="ld2" runat="server" Text="Upgrade to the Redmi Note 4 and experience power like never before. The Redmi Note 4 offers high-speed performance along with a long battery life." Font-Bold="False" Font-Size="10px"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="CheckBox2" runat="server" Text="add to cart" />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style2">
&nbsp;</td>
            <td class="style5">
                <asp:Panel ID="Panel3" runat="server" Height="481px" Width="325px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Image ID="Image3" runat="server" Height="253px" Width="136px" ImageUrl="SelfHelp/the-secret-.jpeg" />
                    <br />
                    <br />
                    <asp:Label ID="Label38" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Product Id" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id3" runat="server" Text="SH3"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label39" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Book" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lm3" runat="server" Text="The Secret"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> <asp:Label ID="Label42" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Amount" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="la3" runat="server" Text="Rs. 599"></asp:Label>
                    <br />
                    <asp:Label ID="Label40" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Description" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="ld3" runat="server" Text="Featuring a sharp profile and a lightweight body and powered by the Snapdragon 820 processor, the MI 5 is perfect for your fast lifestyle. Now you can game even faster with the Adreno 530 graphics processor." Font-Bold="True" Font-Names="Arial" Font-Size="10px"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="CheckBox3" runat="server" Text="add to cart" />
                </asp:Panel>
            </td>
            <td>
                <asp:Panel ID="Panel4" runat="server" Height="486px" Width="318px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Image ID="Image4" runat="server" Height="257px" Width="133px" ImageUrl="SelfHelp/think-and-growf.jpeg" />
                    <br />
                    <br />
                    <asp:Label ID="Label43" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Product Id" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id4" runat="server" Text="SH4"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label44" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Book"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="lm4" runat="server" Text="Think And Grow Rich"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<br /> &nbsp;<asp:Label ID="Label47" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Amount"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="la4" runat="server" Text="Rs. 250"></asp:Label>
                    <br />
                    <asp:Label ID="Label45" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Description"></asp:Label>
                    &nbsp;
                    <asp:Label ID="ld4" runat="server" Font-Size="10px" Text="To achieve flagship status, a phone must have more than a 1080p resolution. Instead, the Mi 4i comes with a 12.7 cm (5) Sharp / JDI display, with up to 95% of colors from the NTSC palette."></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox4" runat="server" Text="add to cart" />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                <asp:Panel ID="Panel5" runat="server" Height="453px" Width="329px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Image ID="Image5" runat="server" Height="242px" Width="137px" ImageUrl="SelfHelp/you-can-win-a.jpeg" />
                    <br />
                    <br />
                    <asp:Label ID="Label48" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Product Id" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id5" runat="server" Text="SH5"></asp:Label>
                    <br />
                    <asp:Label ID="Label49" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Book" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lm5" runat="server" Text="You Can Win"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label50" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Amount"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="la5" runat="server" Text="rs. 750"></asp:Label>
                    <br />
                    <asp:Label ID="Label51" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Description"></asp:Label>
                    &nbsp;
                    <asp:Label ID="ld5" runat="server" Text="The powerful new member of the Mi family is here - the Mi 4. This piece of metallic beauty is built with state-of-the-art components and performs like a bat out of hell." Font-Bold="False" Font-Size="10px"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox5" runat="server" Text="add to cart" />
                </asp:Panel>
            </td>
            <td>
                <asp:Panel ID="Panel6" runat="server" Height="464px" Width="329px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Image ID="Image8" runat="server" Height="241px" Width="131px" ImageUrl="SelfHelp/the-change-book-o.jpeg" />
                    <br />
                    <br />
                    <asp:Label ID="Label63" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Product Id" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id6" runat="server" Text="SH6"></asp:Label>
                    <br />
                    <asp:Label ID="Label64" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Book" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lm6" runat="server" Text="The Change Book"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;<asp:Label ID="Label67" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Amount" ForeColor="#999999" ToolTip=" "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="la6" runat="server" Text="Rs. 500"></asp:Label>
                    <br />
                    <asp:Label ID="Label65" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Description" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="ld6" runat="server" Text="An indispensable companion, the Redmi Note 3 offers high-speed performance along with a long battery life. So stay on top of email and social media updates, take and share photos, and play games and music wherever you go." Font-Bold="False" Font-Size="10px"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="CheckBox6" runat="server" Text="add to cart" />
                </asp:Panel>
            </td>
        </tr>
     
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#99FF99" ForeColor="#FF0066" Text="Go to cart" Width="117px" OnClick="Button1_Click1" />
            </td>
            <td>
               <asp:LinkButton ID="l1" runat="server"><a href="Book1.aspx">1</a></asp:LinkButton>
                <asp:LinkButton ID="l2" runat="server"><a href="Book2.aspx">2</a></asp:LinkButton>
                <asp:LinkButton ID="l3" runat="server"><a href="Book3.aspx">3</a></asp:LinkButton>
              
            </td>
        </tr>
    </table>
</asp:Content>


