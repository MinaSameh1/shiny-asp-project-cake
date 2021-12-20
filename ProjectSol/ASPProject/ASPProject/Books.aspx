<%@ Page Title="" Language="C#" MasterPageFile="~/InnerPage.Master" AutoEventWireup="true"
    CodeBehind="Books.aspx.cs" Inherits="ASPProject.Books" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
     <asp:TextBox ID="titleSearch" runat="server" />
<asp:Button ID="Button1" Text="Search" runat="server" OnClick="Search" />
<hr />

    <asp:GridView ID="GridView1" runat="server" AllowPaging="true" OnPreRender="GridView1_PreRender"
        PageSize="40" AutoGenerateColumns="False" class="table table-condensed table-hover"
        OnPageIndexChanging="OnPageIndexChanging"
         >
        
    <PagerSettings Mode="NumericFirstLast" PageButtonCount="4" FirstPageText="First" LastPageText="Last"/>  

        <Columns>

            <asp:TemplateField HeaderText="Cover">
                <ItemTemplate>
                    <img src='<%#Eval("cover")%>' />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Title" HeaderStyle-Width="200px">  
                <ItemTemplate>  
                    <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("title") %>'></asp:Label>  
                </ItemTemplate>  
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Author" HeaderStyle-Width="200px">  
                <ItemTemplate>  
                    <asp:Label ID="lblAuthor" runat="server" Text='<%# Eval("author") %>'></asp:Label>  
                </ItemTemplate>  
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Total Pages" HeaderStyle-Width="200px">  
                <ItemTemplate>  
                    <asp:Label ID="lblTotalPages" runat="server" Text='<%# Eval("total_pages") %>'></asp:Label>  
                </ItemTemplate>  
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Language" HeaderStyle-Width="200px">  
                <ItemTemplate>  
                    <asp:Label ID="lblLang" runat="server" Text='<%# Eval("Lang") %>'></asp:Label>  
                </ItemTemplate>  
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Published Date" HeaderStyle-Width="200px">  
                <ItemTemplate>  
                    <asp:Label ID="lblPubDate" runat="server" Text='<%# 
                    (Eval("published_date") == System.DBNull.Value) ? "" : Convert.ToDateTime(Eval("published_date")).ToShortDateString() 
                    %>'></asp:Label>  
                </ItemTemplate>  
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Uploaded Date" HeaderStyle-Width="200px">  
                <ItemTemplate>  
                    <asp:Label ID="lblUpDate" runat="server" Text='<%# String.IsNullOrEmpty(Eval("uploadedDate").ToString()) ? DateTime.MinValue : Eval("uploadedDate") %>'></asp:Label>  
                </ItemTemplate>  
            </asp:TemplateField>

            <asp:TemplateField HeaderText="series" HeaderStyle-Width="200px">  
                <ItemTemplate>  
                    <asp:Label ID="lblseries" runat="server" Text='<%# String.IsNullOrEmpty(Eval("series").ToString()) ? "Single" : Eval("series")%>'></asp:Label>  
                </ItemTemplate>  
            </asp:TemplateField>

                <asp:TemplateField HeaderStyle-Width="150px">
                    <itemtemplate>  
                            <asp:LinkButton ID="lkAdd" runat="server" OnClick="lnkView" CommandName="Add" CommandArgument=<%# Eval("BookID") %> >Buy</asp:LinkButton>  
                    </itemtemplate>
                </asp:TemplateField>

        </Columns>
    </asp:GridView>
    </form>
  <script type="text/javascript" src=.\include\js\JQuery-v3.6.9.js" ></script>
  <script type="text/javascript" src="assets/js/jquery.dataTables.min.js" />
  <script type="text/javascript">
      $(document).ready(function () {
          $('#GridView1').DataTable();
      });
  </script>
</asp:Content>
