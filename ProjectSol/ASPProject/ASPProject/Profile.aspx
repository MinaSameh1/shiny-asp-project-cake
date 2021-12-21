<%@ Page Title="" Language="C#" MasterPageFile="~/InnerPage.Master" AutoEventWireup="true"
    CodeBehind="Profile.aspx.cs" Inherits="ASPProject.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-condensed table-hover"
     OnRowCommand="GridView1_OnRowCommand"
    OnRowCancelingEdit="GridView1_RowCancelingEdit"   
OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
    >
        <Columns>
            <asp:TemplateField HeaderText="User ID" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="lblID" runat="server" Text='<%# Eval("userID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User Name" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("userName") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="NameText" runat="server" Text='<%# Eval("userName") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="EmailText" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="pass" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="lblPass" runat="server" Text='<%# Eval("pass") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="passText" runat="server" Text='<%# Eval("pass") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:Button ID="btnEdit" runat="server"  Text="Edit" CommandName="Edit" ToolTip="Edit" CommandArgument='<%# Eval("userID") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update" ToolTip="Update" CommandArgument='<%# Eval("userID") %>' />
                </EditItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:Label ID="lblSuc" ForeColor="Green" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblFail" ForeColor="Red" runat="server" Text=""></asp:Label>
    
    </form>
    <script type="text/javascript" src='./include/js/JQuery-v3.6.9.js'></script>
    <script type="text/javascript" src="assets/js/jquery.dataTables.min.js" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#GridView1').DataTable();
        });
    </script>
</asp:Content>
