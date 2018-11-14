<%@ Page Language="C#" MasterPageFile="~/mainMasterPage.master" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 style="background-color: #552723; color: #ffffff;">
        Member Information</h2>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="mid"
        DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="mid" HeaderText="Member ID" ReadOnly="True" SortExpression="mid" />
            <asp:BoundField DataField="mname" HeaderText="Member Name" SortExpression="mname" />
            <asp:BoundField DataField="depositamt" HeaderText="Deposit Amt" SortExpression="depositamt" />
            <asp:BoundField DataField="djoin" HeaderText="Date Of Joining" SortExpression="djoin" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="occupation" HeaderText="Occupation" SortExpression="occupation" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBUtilConnectionString %>"
        SelectCommand="SELECT * FROM [members] WHERE ([mid] = @mid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="mid" QueryStringField="mid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <h3 style="background-color: #552723; color: #ffffff">
        Current Issues</h3>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="title"
        DataSourceID="SqlDataSource2" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <Columns>
            <asp:BoundField DataField="title" HeaderText="Title" ReadOnly="True" SortExpression="title" />
            <asp:BoundField DataField="di" HeaderText="Issued On" SortExpression="di" />
            <asp:BoundField DataField="issuedby" HeaderText="Issued By" SortExpression="issuedby" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBUtilConnectionString %>"
        SelectCommand="select  title, di, issuedby&#13;&#10;from  titles t, issues i&#13;&#10;where   t.tid = i.tid and  mid = @mid">
        <SelectParameters>
            <asp:QueryStringParameter Name="mid" QueryStringField="mid" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <h3 style="color: #fff; background-color: #552723">
        Old Issues<br />
    </h3>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <Columns>
            <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
            <asp:BoundField DataField="di" HeaderText="Issued On" SortExpression="di" />
            <asp:BoundField DataField="issuedby" HeaderText="Issued By" SortExpression="issuedby" />
            <asp:BoundField DataField="dr" HeaderText="Returned On" SortExpression="dr" />
            <asp:BoundField DataField="returnedto" HeaderText="Returned To" SortExpression="returnedto" />
            <asp:BoundField DataField="fineamt" HeaderText="Fine Amt" SortExpression="fineamt" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DBUtilConnectionString %>"
        SelectCommand="select title, di, issuedby,  dr, returnedto,fineamt&#13;&#10;from  returns  r, titles t&#13;&#10;where r.tid = t.tid and  mid = @mid">
        <SelectParameters>
            <asp:QueryStringParameter Name="mid" QueryStringField="mid" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

