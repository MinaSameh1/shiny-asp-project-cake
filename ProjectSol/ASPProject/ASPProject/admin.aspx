<%@ Page Title="" Language="C#" MasterPageFile="~/InnerPage.Master" AutoEventWireup="true"
    CodeBehind="admin.aspx.cs" Inherits="ASPProject.admin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-xl-7 col-lg-9 text-center">
        <h2 id="H1">
            Users</h2>

    </div>
    <form runat="server">
         <asp:TextBox ID="nameSearch" runat="server" />
         <asp:Button ID="Button1" Text="Search" runat="server" OnClick="SearchUser" />
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-condensed table-hover"
        AllowPaging="true" OnPageIndexChanging="OnPageIndexChangingGrid1" PageSize="40" 
        ShowFooter="true" 
        OnRowCommand="GridView1_OnRowCommand" OnRowDeleting="GridView1_RowDeleting"
        OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing"
        OnRowUpdating="GridView1_RowUpdating" 
        >
        <PagerSettings Mode="NumericFirstLast" PageButtonCount="4" FirstPageText="First"
            LastPageText="Last" />
        <Columns>
            <asp:TemplateField HeaderText="User ID" HeaderStyle-Width="50px">
                <ItemTemplate>
                    <asp:Label ID="lblID" runat="server" Text='<%# Eval("userID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User Name" HeaderStyle-Width="100px">
                <ItemTemplate>
                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("userName") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="nameText" runat="server" Text='<%# Eval("userName") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="nameNew" runat="server" Width="100px"> </asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" HeaderStyle-Width="100px">
                <ItemTemplate>
                    <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="EmailText" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="emailNew" runat="server" Width="100px"> </asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="pass" HeaderStyle-Width="100px">
                <ItemTemplate>
                    <asp:Label ID="lblPass" runat="server" Text='<%# Eval("pass") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="passText" runat="server" Text='<%# Eval("pass") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="passNew" runat="server" Width="100px"> </asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Admin" HeaderStyle-Width="100px">
                <ItemTemplate>
                    <asp:Label ID="lblType" runat="server" Text='<%# Eval("isAdmin") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="typeText" runat="server" Text='<%# Eval("isAdmin") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="typeNew" runat="server" Width="100px"> </asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:ImageButton ImageUrl="~/include/img/edit.png"  ID="btnEdit" runat="server" CommandName="Edit" ToolTip="Edit"
                        CommandArgument='<%# Eval("userID") %>' />
                    <asp:ImageButton ImageUrl="~/include/img/delete.png"  ID="Button1" runat="server" Text="Delete" CommandName="Delete" ToolTip="Delete"
                        CommandArgument='<%# Eval("userID") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:ImageButton ID="btnUpdate" runat="server" ImageUrl="~/include/img/check.png" CommandName="Update" ToolTip="Update"
                        CommandArgument='<%# Eval("userID") %>' />
                    <asp:ImageButton ID="btnCancel" runat="server" ImageUrl="~/include/img/cancel.png" CommandName="Cancel" ToolTip="Cancel"
                        CommandArgument='<%# Eval("userID") %>' />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:ImageButton  ID="btnAddUser" runat="server" ImageUrl="~/include/img/add.png" CommandName="Add" />
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <hr />
    <div class="col-xl-7 col-lg-9 text-center">
        <h2 id="down">
            Books
            </h2>
    </div>
         <asp:TextBox ID="titleSearch" runat="server" /> 
                  <asp:Button ID="Button2" Text="Search" runat="server" OnClick="SearchBook" />
         <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" class="table table-condensed table-hover"
            ShowFooter="true"
        AllowPaging="true" OnPageIndexChanging="OnPageIndexChangingGrid2" PageSize="40"
        OnRowCommand="GridView2_OnRowCommand"
         OnRowDeleting="GridView2_RowDeleting"
        OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowEditing="GridView2_RowEditing"
        OnRowUpdating="GridView2_RowUpdating" 
        >
        <PagerSettings Mode="NumericFirstLast" PageButtonCount="4" FirstPageText="First"
            LastPageText="Last" />
        <Columns>
        <asp:TemplateField Visible='false' HeaderStyle-Width="0px">
            <ItemTemplate>
                <asp:Label ID="BookID" runat="server" Text='<%# Eval("BookID") %>' Width="0px" />
            </ItemTemplate>
            <EditItemTemplate>
                            <asp:Label ID="BookID" runat="server" Text='<%# Eval("BookID") %>' Width="0px" />
            </EditItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="Cover" HeaderStyle-Width="100px">
                <ItemTemplate>
                    <img src='<%#Eval("cover")%>' width="100" height="200" alt="no cover found" />
                </ItemTemplate>
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload" runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:FileUpload ID="NewPDF" runat="server" />
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Title" HeaderStyle-Width="100px">
                <ItemTemplate>
                    <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID='titleText' runat="server" Text='<%# Eval("title")%>' Width="100px"></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID='newTitle' runat="server" Text='' Width="100px"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Author" HeaderStyle-Width="100px">
                <ItemTemplate>
                    <asp:Label ID="lblAuthor" runat="server" Text='<%# Eval("author") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="authorText" runat="server" Text='<%# Eval("author") %>' Width="100px"></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="newAuthor" runat="server" Width="100px"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Total Pages" HeaderStyle-Width="40px">
                <ItemTemplate>
                    <asp:Label ID="lblTotalPages" runat="server" Text='<%# Eval("total_pages") %>'></asp:Label>
                </ItemTemplate>
                 <EditItemTemplate>
                    <asp:TextBox ID="totalPagesText" runat="server" Text='<%# Eval("total_pages") %>' Width="40px"></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="newTotalPages" runat="server" Width="40px"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Language" HeaderStyle-Width="50px">
                <ItemTemplate>
                    <asp:Label ID="lblLang" runat="server" Text='<%# Eval("Lang") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="LangText" runat="server" Text='<%# Eval("Lang") %>' Width="40px"></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="newLang" runat="server" Width="40px"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Published Date" HeaderStyle-Width="100px">
                <ItemTemplate>
                    <asp:Label ID="lblPubDate" runat="server" Text='<%# 
                    (Eval("published_date") == System.DBNull.Value) ? "" : Convert.ToDateTime(Eval("published_date")).ToShortDateString() 
                    %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="pubDateText" runat="server" Width="100px"
                    Text='<%# (Eval("published_date") == System.DBNull.Value) ? "" : Convert.ToDateTime(Eval("published_date")).ToShortDateString()%> '
                    ></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="pubDateText">
                    </asp:CalendarExtender>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="newPublishData" runat="server" Width="100px"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtenderNew" runat="server" TargetControlID="newPublishData">
                    </asp:CalendarExtender>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Uploaded Date" HeaderStyle-Width="100px">
                <ItemTemplate>
                    <asp:Label ID="lblUpDate" runat="server" Text='<%# String.IsNullOrEmpty(Eval("uploadedDate").ToString()) ? DateTime.MinValue : Eval("uploadedDate") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:Label ID="lblUploadDate" runat="server" Text='<%# DateTime.Now %>' ></asp:Label>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:Label ID="lblUploadDate" runat="server" Text='<%# DateTime.Now %>'></asp:Label>
                </FooterTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="series" HeaderStyle-Width="200px">
                <ItemTemplate>
                    <asp:Label ID="lblseries" runat="server" Text='<%# String.IsNullOrEmpty(Eval("series").ToString()) ? "Single" : Eval("series")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="seriesText" runat="server" Text='<%# String.IsNullOrEmpty(Eval("series").ToString()) ? "Single" : Eval("series")%>' Width="50px" ></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="newSeries" runat="server" Width="50px"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:ImageButton ImageUrl="~/include/img/edit.png"  ID="btnEdit" runat="server" CommandName="Edit" ToolTip="Edit"
                        CommandArgument='<%# Eval("BookID") %>' />
                    <asp:ImageButton ImageUrl="~/include/img/delete.png"  ID="Button1" runat="server" Text="Delete" CommandName="Delete" ToolTip="Delete"
                        CommandArgument='<%# Eval("BookID") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:ImageButton ID="btnUpdate" runat="server" ImageUrl="~/include/img/check.png" CommandName="Update" ToolTip="Update"
                        CommandArgument='<%# Eval("BookID") %>' />
                    <asp:ImageButton ID="btnCancel" runat="server" ImageUrl="~/include/img/cancel.png" CommandName="Cancel" ToolTip="Cancel"
                        CommandArgument='<%# Eval("BookID") %>' />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:ImageButton  ID="btnAddUser" runat="server" ImageUrl="~/include/img/add.png" CommandName="Add" />
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    </form>
    <script type="text/javascript" src='./include/js/JQuery-v3.6.9.js'></script>
    <script type="text/javascript" src="assets/js/jquery.dataTables.min.js" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#GridView1').DataTable();
            $('#GridView2').DataTable();
        });
    </script>
</asp:Content>
