<%@ Page Title="" Language="C#" MasterPageFile="~/book/MasterBook.master" AutoEventWireup="true" CodeFile="Book1.aspx.cs" Inherits="book_Book1" %>

<script runat="server">

    
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" align="center" Runat="Server">
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
             width: 160px;
             text-align: center;
             text-transform: uppercase;
             font-weight: bold;
             height: 1249px;
         }
         .auto-style10 {
             height: 16px;
         }
         .auto-style11 {
             width: 132px;
             height: 28px;
         }
         .auto-style13 {
             width: 132px;
             color: #ffffff;
             height: 29px;
         }
         .auto-style15 {
             height: 29px;
         }
         .auto-style16 {
             width: 132px;
             color: #ffffff;
             height: 16px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblid" align="center" runat="server" Font-Size="30px" ForeColor="#3366FF" Text="Label"></asp:Label>
    <br />
    <br />
    <table class="auto-style7">
        <tr>
            <td class="auto-style16">
                </td>
            <td class="auto-style8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image11" runat="server" Height="47px" Width="52px"  src="Imagesbook/eduBook%20ogo.jpg" />
            </td>
            <td class="auto-style10">
            &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="auto-style11">
&nbsp;&nbsp;
            </td>
            <td class="auto-style8">
                <asp:Panel ID="Panel1" runat="server" Height="498px" Width="336px">
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="226px" src="Imagesbook/civil-engineering-origina.jpeg" Width="146px" />
                
                     <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Product Id"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id1" runat="server" Font-Bold="False" Font-Size="15px" Text="EDU1"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Book"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lm1" runat="server" Font-Size="15px" Text="Civil Engineering" Font-Bold="False"></asp:Label>
                    &nbsp;<br /> <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Amount"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="la1" runat="server" Text="RS. 300"></asp:Label>
                    &nbsp;<br />&nbsp;&nbsp;
                    <br />
                    &nbsp;<asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Description"></asp:Label>
                    &nbsp;
                    <asp:Label ID="ld1" runat="server" Font-Size="10px" Text="
Civil Engineering: Conventional And Objective Type Reprint 2006 Edition is authored by J.K.Gupta and K.S.Khurmi. It is useful for students doing their B.Sc. The book is essential for candidates applying for their Civil Engineering exam."></asp:Label>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Add To Cart" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</asp:Panel>
            </td>
            <td class="auto-style5">
                <asp:Panel ID="Panel2" runat="server" Height="569px" Width="321px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image2" runat="server" Height="240px" 
                        style="margin-left: 0px; margin-top: 0px;" Width="125px" src="Imagesbook/complete-german.jpeg"/>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Product Id"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id2" runat="server" Font-Bold="False" Text="EDU2"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Book"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="lm2" runat="server" Text="Complete German" Font-Bold="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label35" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Amount"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="la2" runat="server" Text="Rs. 250"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label36" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Description"></asp:Label>
                    &nbsp;
                    <asp:Label ID="ld2" runat="server" Text="The book will help the readers to master the four key skills of reading, writing, listening, and speaking. The book comprises of real-life conversations, vocabulary building exercises, grammar explanations and several practice exercises for a good grasp of the language. Moreover, the book follows the interactive Discovery Method of teaching the language." Font-Size="10px"></asp:Label>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Add To Cart" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                &nbsp;</td>
            <td class="auto-style8">
                <asp:Panel ID="Panel3" runat="server" Height="531px" Width="328px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image3" runat="server" Height="239px" Width="128px" src="Imagesbook/concepts-of-physics.jpeg"/>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label38" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Product Id" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id3" runat="server" Text="EDU3" Font-Bold="False"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label39" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Book"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lm3" runat="server" Text="Concept Of Physics" Font-Bold="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label42" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Amount" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="la3" runat="server" Text="RS. 470"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label40" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Description" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="ld3" runat="server" Text="
H C Verma’s Concepts Of Physics is an all-inclusive book, which serves to detail out the ABC of physics in an intricate manner making it an ideal book for not only the higher secondary students, but also for those who are preparing for their competitive examinations." Font-Size="10px"></asp:Label>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="Add To Cart" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </asp:Panel>
            </td>
            <td>
                <asp:Panel ID="Panel4" runat="server" Height="549px" Width="322px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image4" runat="server" Height="235px" Width="129px" src="Imagesbook/electric-machines-original.jpeg"/>
                    <br />
        
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label43" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Product Id"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id4" runat="server" Font-Bold="False" Text="EDU4"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label44" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Book"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="lm4" runat="server" Font-Bold="False" Text="Electric Machines"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label47" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Amount" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="la4" runat="server" Text="Rs. 320"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label45" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Description"></asp:Label>
                    &nbsp;
                    <asp:Label ID="ld4" runat="server" Text="
This new edition provides an excellent foundation to the theory of electromechanical devices with emphasis on rotating electric machines. The theory and applications of various machines are treated at appropriate places in the book. Extensive coverage on the systematic development of circuit model equivalent of both transformers and machines is given in the text." Font-Size="10px"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;<asp:CheckBox ID="CheckBox4" runat="server" Text="Add To Cart" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                &nbsp;</td>
            <td class="auto-style8">
                <asp:Panel ID="Panel5" runat="server" Height="526px" Width="322px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image5" runat="server" Height="207px" src="Imagesbook/indian-history-origi.jpeg" Width="120px" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label48" runat="server" Text="Product Id" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id5" runat="server" Font-Bold="False" Text="EDU5"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label49" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Book"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="lm5" runat="server" Font-Bold="False" Text="Indian History"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label50" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Amount"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="la5" runat="server" Text="Rs. 600"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label51" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Description"></asp:Label>
                    &nbsp;
                    <asp:Label ID="ld5" runat="server" Font-Size="10px" Text="Indian History is an ideal study manual for students appearing for competitive or civil service examinations. It is systematically divided into three sections and every section features a chronological chart at the beginning. This chart shows the order and sequence of events, allowing students to take a quick glimpse of it"></asp:Label>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox5" runat="server" Text="Add To Cart" />
                </asp:Panel>
            </td>
            <td>
                <asp:Panel ID="Panel6" runat="server" Height="529px" Width="331px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image8" runat="server" Height="217px" src="Imagesbook/mechanical-engineering.jpeg" Width="129px" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label63" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Product Id"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id6" runat="server" Font-Bold="False" Text="EDU6"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label64" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Book"></asp:Label>
                    &nbsp;
                    <asp:Label ID="lm6" runat="server" Text="Mechanical Engineering" Font-Bold="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label67" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Amount" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="la6" runat="server" Text="Rs. 299"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label65" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Description" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="ld6" runat="server" Text="
For the students of U.P.S.C. (Engg services); IAS (Engg. group); B.Sc Engg; Diploma and other competitive courses.
More than one thousand Objective Type Questions from various examining bodies have been added. The solutions to Important Objective type Questions have been added at the end of this treatise." Font-Size="10px"></asp:Label>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox6" runat="server" Text="Add To Cart" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                </td>
            <td class="auto-style8">
                <br __designer:mapid="72" />
                <asp:Panel ID="Panel7" runat="server" Height="544px" Width="331px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;<asp:Image ID="Image10" runat="server" Height="232px" Width="136px" src="Imagesbook/modern-approach-to-chemica.jpeg" />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label72" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Product Id" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id7" runat="server" Text="EDU7" Font-Bold="False"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label73" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Book"></asp:Label>
                    &nbsp;
                    <asp:Label ID="lm7" runat="server" Text="Chemical Calculations" Font-Bold="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label74" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Amount" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="la7" runat="server" Text="Rs. 350"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label75" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Description"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="ld7" runat="server" Font-Size="10px" Text="
This book is indispensable for science students at the +2 (intermediate) level, especially for those who are preparing for the entrance examinations of engineering and medical colleges. This book highlights the importance of the concept of mole in solving problems quickly and easily."></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="CheckBox7" runat="server" Text="Add To Cart" />
                </asp:Panel>
            </td>
            <td class="auto-style10">
                <br __designer:mapid="72" />
                <asp:Panel ID="Panel8" runat="server" Height="555px" Width="331px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image9" runat="server" Height="236px" Width="129px" src="Imagesbook/quantitative-aptitude-for-competitive.jpeg"/>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label68" runat="server" Font-Bold="True" 
                        Font-Names="Times New Roman" Font-Size="Medium" Text="Product Id" ForeColor="#999999"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id8" runat="server" Text="EDU8" Font-Bold="False"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="Label69" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Book"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lm8" runat="server" Text="Quantitative Aptitude" Font-Bold="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label70" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Amount"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="la8" runat="server" Text="Rs. 480"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label71" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#999999" Text="Description"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="ld8" runat="server" Font-Size="10px" Text="
Quantitative Aptitude For Competitive Examinations comprehensively covers topics for the Quantitative Aptitude and Data Interpretation section of competitive exams like management entrance exams, job recruitment exams etc."></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:CheckBox ID="CheckBox8" runat="server" Text="Add To Cart" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                </td>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" BackColor="#993333" ForeColor="#FF5050" OnClick="Button1_Click" Text="Go To cart" Width="139px" />
                </td>
            <td class="auto-style15">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:LinkButton ID="l1" runat="server"><a href="Book1.aspx">1</a></asp:LinkButton>
                <asp:LinkButton ID="l2" runat="server"><a href="Book2.aspx">2</a></asp:LinkButton>
                <asp:LinkButton ID="l3" runat="server"><a href="Book3.aspx">3</a></asp:LinkButton>
              
            </td>
        </tr>
    </table>
    <br />
</asp:Content>


