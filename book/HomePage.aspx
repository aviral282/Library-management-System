<%@ Page Title="" Language="C#" MasterPageFile="~/book/MasterBook.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="book_HomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Timer ID="Timer1" Interval ="2000" runat="server">
    </asp:Timer>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
         <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
       </Triggers>
    
     <ContentTemplate>
    <asp:AdRotator ID="AdRotator1"  OnAdCreated="Page_Load" AdvertisementFile="HomePage.xml" runat="server" />
       >
          </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>

