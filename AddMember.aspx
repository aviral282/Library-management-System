<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="AddMember.aspx.cs" Inherits="AddMember" %>

<%@import Namespace="System.Data" %>
<%@import Namespace="System.Data.SqlClient" %>
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
    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(DBUtil.ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select isnull(max(mid),0)+1 from members",con);
            int mid=(int)cmd.ExecuteScalar();
            cmd.CommandText="insert into members values(@mid,@mname,@depositeamt,@djoin,@email,@occupation)";
            cmd.Parameters.Add("@mid",SqlDbType.Int).Value = mid;
            cmd.Parameters.Add("@mname",SqlDbType.VarChar,30).Value=txtname.Text;
            cmd.Parameters.Add("@depositeamt",SqlDbType.Int).Value=txtdepositamt.Text;
            cmd.Parameters.Add("@djoin",SqlDbType.Date).Value=txtdj.Text;
            cmd.Parameters.Add("@email",SqlDbType.VarChar,40).Value=txtemail.Text;
            cmd.Parameters.Add("@occupation",SqlDbType.VarChar,50).Value=txtoccupation.Text;
            cmd.ExecuteNonQuery();
            lblmsg.Text="Member has been added successfully with ID = " +mid;
        }
        catch (Exception ex)
        {
           lblmsg.Text = "error" +ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 style="background-color: #F4F4F4; width: 214px; height: 36px;">Add New Member</h2>
    <table>
        <tr>
            <td style="color: #EFEFEF; font-family: 'comic Sans MS'; font-weight: bold; font-style: italic; background-color: #552723;">
                Member Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="color: #EFEFEF; font-family: 'comic Sans MS'; font-weight: bold; font-style: italic; background-color: #552723;">
               Deposit Amount</td>
            <td>
                <asp:TextBox ID="txtdepositamt" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="color: #EFEFEF; font-family: 'comic Sans MS'; font-weight: bold; font-style: italic; background-color: #552723;">
                Date of Joining</td>
            <td >
                <asp:TextBox ID="txtdj" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="color: #EFEFEF; font-family: 'comic Sans MS'; font-weight: bold; font-style: italic; background-color: #552723;">Email Address</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="color: #EFEFEF; font-family: 'comic Sans MS'; font-weight: bold; font-style: italic; background-color: #552723;">
                Occupation</td>
            <td>
                <asp:TextBox ID="txtoccupation" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <asp:Button ID="btnadd" runat="server" Text="Add Member" OnClick="btnadd_Click" /><br />
    <asp:Label ID="lblmsg" runat="server" BackColor="White" ForeColor="#552723"></asp:Label><br />
</asp:Content>

