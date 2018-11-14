<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="none" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="changePassword.aspx.cs" Inherits="changePassword" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<script runat="server">

    protected void btnChange_Click(object sender, EventArgs e)
    {


        // connect to db
        SqlConnection con = new SqlConnection(DBUtil.ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update users set pwd=@newpwd where uname = @uname and pwd = @oldpwd", con);
            cmd.Parameters.Add("@newpwd", SqlDbType.VarChar, 10).Value = txtNewPwd.Text;
            cmd.Parameters.Add("@uname", SqlDbType.VarChar, 10).Value = (String) Session["uname"];
            cmd.Parameters.Add("@oldpwd", SqlDbType.VarChar, 10).Value = txtOldPwd.Text;

            if (cmd.ExecuteNonQuery() == 1)
                lblMsg.Text = "Password Changed Successfully!";
            else
                lblMsg.Text = "Sorry! Old password is not valid";  
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error :" + ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 style="background-color: #efefef">
        Change Password</h2>
    <table>
        <tr>
            <td style="color: #ffffff; font-family: 'comic Sans MS'; background-color: #552723;">
                Old Password :</td>
            <td >
                <asp:TextBox ID="txtOldPwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOldPwd"
                    ErrorMessage="Old password is required!" BackColor="White"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="color: #ffffff; font-family: 'comic Sans MS'; background-color: #552723;" >
                New Password :</td>
            <td >
                <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewPwd"
                    ErrorMessage="New password is required!" BackColor="White"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="color: #ffffff; font-family: 'comic Sans MS'; background-color: #552723;" >
                Confirm Password:</td>
            <td >
                <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPwd"
                    ControlToValidate="txtConfirmPwd" ErrorMessage="New and confirm passwords do not match!" BackColor="White"></asp:CompareValidator></td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnChange" runat="server" Text="Change Password" OnClick="btnChange_Click" /><br />
    <br />
    <asp:Label ID="lblMsg" runat="server" BackColor="#373737" ForeColor="#F4F4F4"></asp:Label><br />


</asp:Content>

