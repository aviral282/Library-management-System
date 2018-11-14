<%@ Page Title="" Language="C#" MasterPageFile="~/mainMasterPage.master" AutoEventWireup="true" CodeFile="AddTitle.aspx.cs" Inherits="AddTitle" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<script runat="server">

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        WebServiceLibrary wbs = new WebServiceLibrary();
       

        SqlConnection con = new SqlConnection("Data Source=SUYASH_LAPTOP;Initial Catalog=DBUtil;Integrated Security=True");
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(" select isnull(max(tid),0) + 1 from titles", con);
            int tid = (int)cmd.ExecuteScalar();

            cmd.CommandText = "insert into titles values(@tid,@title,@subcode,@authors,@price,@dp,@publisher,'a')";
            cmd.Parameters.Add("@tid", SqlDbType.Int).Value = tid;
            cmd.Parameters.Add("@title", SqlDbType.VarChar, 30).Value = txtTitle.Text;
            cmd.Parameters.Add("@subcode", SqlDbType.VarChar, 10).Value = ddlSubject.SelectedValue;
            cmd.Parameters.Add("@authors", SqlDbType.VarChar, 50).Value = txtAuthors.Text;
            cmd.Parameters.Add("@publisher", SqlDbType.VarChar, 30).Value = txtPublisher.Text;
            cmd.Parameters.Add("@price", SqlDbType.Int).Value = Int32.Parse(txtPrice.Text);
            cmd.Parameters.Add("@dp", SqlDbType.Date).Value = txtDp.Text;
            cmd.ExecuteNonQuery();
            lblMsg.Text = "New title added successfully!  Id = " + tid;
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
        Add Title</h2>
    <p>
        <table>
            <tr>
                <td style="background-color: #552723; color: #ffffff;" >
                    Title</td>
                <td >
                    <asp:TextBox ID="txtTitle" runat="server" Width="201px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="background-color: #552723; color: #ffffff;" >
                    Authors</td>
                <td >
                    <asp:TextBox ID="txtAuthors" runat="server" Width="198px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="background-color: #552723; color: #ffffff;" >
                    Publisher</td>
                <td >
                    <asp:TextBox ID="txtPublisher" runat="server" Width="196px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="background-color: #552723; color: #ffffff;" >
                    Subject</td>
                <td >
                    <asp:DropDownList ID="ddlSubject" runat="server" DataSourceID="SqlDataSource1" DataTextField="subname"
                        DataValueField="subcode" Width="149px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBUtilConnectionString2 %>"
                        SelectCommand="SELECT [subcode], [subname] FROM [subjects]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="background-color: #552723; color: #ffffff;" >
                    Date Of Purchase</td>
                <td style="color: #552723; background-color: #ffffff;" >
                    <asp:TextBox ID="txtDp" runat="server" Width="91px"></asp:TextBox>
                    (mm/dd/yy)</td>
            </tr>
            <tr>
                <td style="background-color: #552723; color: #ffffff;" >
                    Price</td>
                <td >
                    <asp:TextBox ID="txtPrice" runat="server" Width="88px"></asp:TextBox></td>
            </tr>
        </table>
    </p>
    <p>
        <asp:Button ID="btnAdd" runat="server" Text="Add Title" OnClick="btnAdd_Click" />&nbsp;</p>
    <p>
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" BackColor="#EFEFEF"></asp:Label>&nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

