<%@ Page Title="" Language="C#" MasterPageFile="~/InnerPage.Master" AutoEventWireup="true" CodeBehind="Download.aspx.cs" Inherits="ASPProject.Download" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


 <section id="hero" class="d-flex align-items-center">
    <div class="container position-relative" data-aos="fade-up" data-aos-delay="100">
      <div class="row justify-content-center">
        <div class="col-xl-7 col-lg-9 text-center">
          <h1 id="title">Thank you for Using our services</h1>
          <h2 id="down">Download begins now</h2>
        </div>
        <form runat=server  >
        <iframe class=generate_file_asynchronously id=generate_file_asynchronously><a style="display:hidden;" href="DownloadFile.ashx"></a></iframe>
        <asp:Button ID="btnDownload" runat="server" Text="Download File" 
            OnClick="btnDownload_Click"/>
        </form>
      </div>
    </div>
</section>

<script type="text/javascript" src=.\include\js\JQuery-v3.6.9.js" ></script>
<script type="text/javascript">
    $('.generate_file_asynchronously').click(function () {
        var url = $(this).attr('href');
        $.get(url, function (file_url) {
            window.location.href = file_url;
        });

        return false;
    });

</script>

</asp:Content>
