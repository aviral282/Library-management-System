<%@ Page Title="" Language="C#" MasterPageFile="~/book/MasterBook.master" AutoEventWireup="true" CodeFile="Book2.aspx.cs" Inherits="book_Book2" %>


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
              height: 36px;
          }
          .auto-style8 {
              height: 36px;
              width: 270px;
          }
          .auto-style9 {
              height: 36px;
          }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image9" runat="server" Height="35px" Width="112px" ImageUrl="Novel/7dd85708692ad7cc388dd4ad23f6b7e8.jpg"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
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
                <asp:Panel ID="Panel1" runat="server" Height="502px" Width="336px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="203px" ImageUrl="Novel/a-thousand-splendid-suns-originaw.jpeg" Width="141px" />
                    <br />
                    <br />
                    <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Product Id"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id1" runat="server" Font-Bold="False" Text="Nov1"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Book"></asp:Label>
                    &nbsp;
                    <asp:Label ID="lm1" runat="server" Text="A Thousand Splendid Suns" Font-Bold="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;<asp:Label ID="Label30" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Amount" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="la1" runat="server" Text="Rs. 210"></asp:Label>
                    &nbsp;<br />
                    <br />
                    <asp:Label ID="Label31" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Description" ForeColor="#999999"></asp:Label>
                    &nbsp;
                    <asp:Label ID="ld1" runat="server" Text="
Mariam is only fifteen when she is sent to Kabul to marry Rasheed. Nearly two decades later, a friendship grows between Mariam and a local teenager, Laila, as strong as the ties between mother and daughter. When the Taliban take over, life becomes a desperate struggle against starvation, brutality and fear. Yet love can move a person to act in unexpected ways" Font-Size="10px"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Add to cart" />
                    &nbsp;&nbsp;&nbsp;</asp:Panel>
            </td>
            <td class="auto-style9">
                <asp:Panel ID="Panel2" runat="server" Height="550px" Width="321px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Image ID="Image2" runat="server" Height="206px" 
                        style="margin-left: 0px; margin-top: 0px;" Width="123px" ImageUrl="Novel/i-too-had-a-love-story-og.jpeg" />
                    <br />
                    <br />
                    <asp:Label ID="Label33" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Product Id" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id2" runat="server" Text="Nov2" Font-Bold="False"></asp:Label>
                    <br />
                    <asp:Label ID="Label34" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Book" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="lm2" runat="server" Text="I Too Had A Love Story" Font-Bold="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> <asp:Label ID="Label35" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Amount" ForeColor="#999999"></asp:Label>
                    <asp:Label ID="la2" runat="server" Text="Rs. 290"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label36" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Description" ForeColor="#999999"></asp:Label>
                    &nbsp;
                    <asp:Label ID="ld2" runat="server" Text="I Too Had A Love Story is a romantic saga of two people belonging to the modern day world of the Internet and gadgets. The story begins as four friends plan a reunion after many years. As their discussion becomes casual and moves to their plans for their partners, Ravin, the protagonist, gets inclined to create an account on a matrimonial website. He comes across a girl named Khushi on this website and starts falling in love with her.
" Font-Size="10px"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="CheckBox2" runat="server" Text="Add to cart" />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style2">
&nbsp;</td>
            <td class="style5">
                <asp:Panel ID="Panel3" runat="server" Height="528px" Width="328px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Image ID="Image3" runat="server" Height="241px" Width="137px" ImageUrl="Novel/if-tomorrow-comes-orig.jpeg" />
                    <br />
                    <br />
                    <asp:Label ID="Label38" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Product Id" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id3" runat="server" Text="Nov3" Font-Bold="False"></asp:Label>
                    <br />
                    <asp:Label ID="Label39" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Book" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="lm3" runat="server" Text="If Tommorow COmes" Font-Bold="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> <asp:Label ID="Label42" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Amount" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="la3" runat="server" Text="Rs. 300"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label40" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Description"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="ld3" runat="server" Font-Size="10px" Text="
If Tomorrow Comes is the story of a young woman who is framed for a crime she never committed, and her quest to reclaim her shattered life, while she hits back at those who were responsible for her ordeal.
Tracy Whitney, the protagonist of If Tomorrow Comes, is young, intelligent, beautiful and also very naive and trusting."></asp:Label>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="Add to cart" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Panel>
            </td>
            <td>
                <asp:Panel ID="Panel4" runat="server" Height="542px" Width="322px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Image ID="Image4" runat="server" Height="239px" Width="133px" ImageUrl="Novel/marry-me-stranger-zch.jpeg" />
                    <br />
                    <br />
                    <asp:Label ID="Label43" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Product Id" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id4" runat="server" Text="Nov4" Font-Bold="False"></asp:Label>
                    <br />
                    <asp:Label ID="Label44" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Book" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="lm4" runat="server" Text="Marry Me Stranger" Font-Bold="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br /> <asp:Label ID="Label47" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Amount" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="la4" runat="server" Text="Rs. 499"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label45" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Description"></asp:Label>
&nbsp;
                    <asp:Label ID="ld4" runat="server" Font-Size="10px" Text="Marry Me, Stranger follows the life of a young and independent girl, Rivanah Bannerjee, living by herself in Mumbai. She has loving parents, adorable boyfriend and an amazing job. But there is just one problem – her life is in danger! Someone has been stalking her, watching her every move and trying to manipulate and control her just about perfect life. "></asp:Label>
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox4" runat="server" Text="Add to cart" />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                <asp:Panel ID="Panel5" runat="server" Height="521px" Width="322px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Image ID="Image5" runat="server" Height="215px" Width="124px" ImageUrl="Novel/one-indian-girl-.jpeg" />
                    <br />
                    <br />
                    <asp:Label ID="Label48" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Product Id" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id5" runat="server" Text="Nov5" Font-Bold="False"></asp:Label>
                    <br />
                    <asp:Label ID="Label49" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Book" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="lm5" runat="server" Text="One Indian Girl" Font-Bold="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label50" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Amount" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="la5" runat="server" Text="Rs. 450"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label51" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Description"></asp:Label>
&nbsp;
                    <asp:Label ID="ld5" runat="server" Font-Bold="False" Font-Size="10px" Text="
Hi, I'm Radhika Mehta and I'm getting married this week. I work at Goldman Sachs, an investment bank. Thank you for reading my story. However, let me warn you. You may not like me too much.
One, I make a lot of money.
Two, I have an opinion on everything.
Three, I have had a boyfriend before. Okay, maybe two.
?"></asp:Label>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox5" runat="server" Text="Add to cart" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </asp:Panel>
            </td>
            <td>
                <asp:Panel ID="Panel6" runat="server" Height="510px" Width="331px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:Image ID="Image8" runat="server" Height="213px" Width="129px" ImageUrl="Novel/one-part-woman-origin).jpeg" />
                    <br />
                    <br />
                    <asp:Label ID="Label63" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Product Id" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id6" runat="server" Text="Nov6" Font-Bold="False"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label64" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Book"></asp:Label>
&nbsp;
                    <asp:Label ID="lm6" runat="server" Font-Bold="False" Text="One Part Woman"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label67" runat="server" Text="Amount" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="la6" runat="server" Text="Rs. 240"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label65" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Description" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="ld6" runat="server" Text="
One Part Woman is the English translation of Madhorubagan, a Tamil novel by Perumal Murugan. Much debated in the recent past for its content, the novel is based on ancient cultural practice among Tamil Hindus. It depicts the story of a childless couple that has a strong urge to have one, with judicious sensitivity, gentleness, and anguish by turns." Font-Bold="False" Font-Overline="False" Font-Size="10px"></asp:Label>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox6" runat="server" Text="Add to cart" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Panel>
            </td>
        </tr>
        
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#6666FF" ForeColor="Red" OnClick="Button1_Click" Text="Go To cart" Width="128px" />
            </td>
            <td>
                   <asp:LinkButton ID="l1" runat="server"><a href="Book1.aspx">1</a></asp:LinkButton>
                <asp:LinkButton ID="l2" runat="server"><a href="Book2.aspx">2</a></asp:LinkButton>
                <asp:LinkButton ID="l3" runat="server"><a href="Book3.aspx">3</a></asp:LinkButton>
                
            </td>
        </tr>
    </table>
</asp:Content>
