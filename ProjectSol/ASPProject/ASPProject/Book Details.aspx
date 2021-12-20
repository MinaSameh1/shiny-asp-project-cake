<%@ Page Title="" Language="C#" MasterPageFile="~/InnerPage.Master" AutoEventWireup="true" CodeBehind="Book Details.aspx.cs" Inherits="ASPProject.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


  <main id="main">


    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-8">
            <div class="portfolio-details-slider swiper">
              <div class="swiper-wrapper align-items-center">
                <div>
                  <img id=img1 alt="" width=800 height=900 runat=server>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4">

            <div class="portfolio-info">
          <form id="Form1" runat=server>

              <h3>Book information</h3>
              <ul>
                <li><strong>Title</strong>: <span id="titleSpan" runat=server></span></li>
                <li><strong>Author</strong>: <span id="author" runat=server></span></li>
                <li><strong>Language</strong>: <span id="lang" runat=server></span></li>
                <li><strong>Total Pages:</strong>: <span id="totalPages" runat=server></span></li>
                <li><strong>Book publish date</strong>:<span id="publishDate" runat=server></span></li>
                <li><asp:Button ID="Button1" runat="server" 
                Text="Get Book" onclick="Button1_Click"></asp:Button> </li>
              </ul>
            </div>
            <div class="portfolio-description">
              <h2>Description</h2>
              <p>
                    <span id="desc" runat=server></span>
              </p>
          </form>

            </div>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Details Section -->
    </main>
          <!-- All the links in the footer should remain intact. -->
          <!-- You can delete the links only if you purchased the pro version. -->
          <!-- Licensing information: https://bootstrapmade.com/license/ -->
          <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/onepage-multipurpose-bootstrap-template/ -->
         

</asp:Content>
