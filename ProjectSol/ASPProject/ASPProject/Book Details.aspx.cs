using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPProject.Classes;

namespace ASPProject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Database db = new Database();
            db.OpenCon();
            if (Request.QueryString["ID"] != null)
            {

                Book book = db.getBook(Int32.Parse(Request.QueryString["ID"]));
                if (book.isApproved)
                {
                    img1.Src = book.cover;
                    titleSpan.InnerText = book.title;
                    author.InnerText = book.author;
                    lang.InnerText = book.Lang;
                    publishDate.InnerText = book.published_date + "";
                    desc.InnerText = book.description;
                    totalPages.InnerText = book.total_pages + "";
                }
            }
            else
                Response.Redirect("index.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["userID"] == null)
            {
                Response.Redirect("Login Page.aspx?bookID=" + Request.QueryString["ID"]);
            }
        }
    }
}