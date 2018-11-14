<%@ Page Language="C#" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Data.SqlClient" %>


<!DOCTYPE html>

<script runat="server">
    public class DBUtil
    {
        public static String ConnectionString
        {
            get
            {
                return "Data Source=SUYASH_LAPTOP;Initial Catalog=DBUtil;Integrated Security=True";
            }

        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {


        SqlConnection con = new SqlConnection(DBUtil.ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select fullname from users where uname = @uname and pwd  = @pwd", con);
            cmd.Parameters.Add("@uname", SqlDbType.VarChar, 10).Value = txtUname.Text;
            cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 10).Value = txtPwd.Text;

            String fullname = (String)cmd.ExecuteScalar();
            if (fullname == null)
                lblmsg.Text = "Invalid Login!";
            else
            {
                Session.Add("uname", txtUname.Text);
                Session.Add("fullname", fullname);
                FormsAuthentication.RedirectFromLoginPage(txtUname.Text, false);
            }

        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
        finally
        {
            con.Close();
        } 

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
</head>
<body>
    <form id="form1" runat="server">
       <h1 style="background-color: #552723; color: #EAE3EA;">Library Managment</h1>
            <table width="100%" height="500px" border="0">
                <tr>
                    <td  width="30%" align="top" bgcolor="#99ccff" style="background-color: #985735; color: #FFFFFF;">
                        <h3 style="color: #EAE3EA">
                            Login<br />
                        </h3>
                        Username<br />
                        <asp:TextBox ID="txtUname" runat="server" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUname"
                            Display="None" ErrorMessage="Username is required!" ForeColor="#EAE3EA"></asp:RequiredFieldValidator><br />
                        Password<br />
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="150px"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" Display="None"
                            ErrorMessage="Password is required!" ForeColor="#EAE3EA"></asp:RequiredFieldValidator><br />
                        <br />
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /><br />
                        <br />
                        <asp:Label ID="lblmsg" runat="server" Font-Bold="True"></asp:Label><br />
                        <br />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Login Errors:" />
                    </td>
                    <td align="top" style="width: 525px; background-image: url('Images/i7.jpg');">
                        <h4 style="color: #EAE3EA; font-weight: bolder; text-decoration: underline; font-family: 'comic Sans MS'; background-color: #000000;">This application allows you to do the follwoing: </h4>
                        <ul style="text-decoration: underline blink; font-weight: 400; font-style: italic; font-family: 'Leelawadee UI'; color: #EAE3EA; background-color: #000000;">
                            <li style="color: #FFFFFF">Search for books</li>
                                <li style="color: #FFFFFF">Add members</li>
                                <li aria-expanded="undefined" style="color: #FFFFFF">Add books</li>
                                <li style="color: #FFFFFF">Issue books</li>
                                <li style="color: #FFFFFF">Return books</li>
                        </ul>
                        <br />
                    </td>
                </tr>
            </table>
        </form>
</body>
</html>
