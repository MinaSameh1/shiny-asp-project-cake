<%@ Page Title="" Language="C#" MasterPageFile="~/InnerPage.Master" AutoEventWireup="true" CodeBehind="Page.aspx.cs" Inherits="ASPProject.Page" %>



<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <form runat=server>
    This is a page! <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
    </form>

</asp:Content>





