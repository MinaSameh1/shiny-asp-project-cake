<%@ Page Title="" Language="C#" MasterPageFile="~/InnerPage.Master" AutoEventWireup="true" CodeBehind="Download.aspx.cs" Inherits="ASPProject.Download" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


 <section id="hero" class="d-flex align-items-center">
    <div class="container position-relative" data-aos="fade-up" data-aos-delay="100">
      <div class="row justify-content-center">
        <div class="col-xl-7 col-lg-9 text-center">
          <h1 id="title">Thank you for Using our services</h1>
          <h2 id="down">Download begins now</h2>
        </div>
        <br />
        <br />
        <form runat=server  >
        <asp:Button ID="btnDownload" runat="server" Text="If Download Doesn't Begin Click Me! Download File" 
            OnClick="btnDownload_Click"/>
        </form>
      </div>
    </div>
</section>
<div onload="download()"></div>
<a id="dl" style="display: none" 
    href="DownloadFile.ashx" 
    download>Download</a>

<script type="text/javascript">
(function download() {
    document.getElementById('dl').click();
})()
</script>

</asp:Content>
