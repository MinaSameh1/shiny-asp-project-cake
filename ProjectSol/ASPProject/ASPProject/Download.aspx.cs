using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

namespace ASPProject
{
    public partial class Download : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {


            if (!Page.IsPostBack)
            {
                Response.AddHeader("Refresh", "3; url=Profile.aspx");
                down(Response);
            }
        }

        protected void down(HttpResponse Response)
        {
            Response.Redirect("DownloadFile.ashx");
        }


        protected void btnDownload_Click(object sender, EventArgs e)
        {
            Response.Redirect("DownloadFile.ashx");
        }

    }
}

