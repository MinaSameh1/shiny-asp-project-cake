<%@ Page Title="" Language="C#" MasterPageFile="~/InnerPage.Master" AutoEventWireup="true" CodeBehind="termsEtc.aspx.cs" Inherits="ASPProject.termsEtc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <section id="hero" class="d-flex align-items-center">
    <div class="container position-relative" data-aos="fade-up" data-aos-delay="100">
      <div class="row justify-content-center">
        <div class="col-xl-7 col-lg-9 text-center">
          <h1 id="title">Terms and services ETC</h1>
        </div>
        <br />
        <br />
        <form id="Form1" runat=server  >
        <asp:Button ID="btnDownload" runat="server" Text="If Download Doesn't Begin Click Me! Download File" 
            OnClick="btnDownload_Click"/>
        </form>
      </div>
    </div>
</section>
</asp:Content>
