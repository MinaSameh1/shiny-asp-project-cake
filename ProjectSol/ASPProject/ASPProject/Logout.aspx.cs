using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPProject
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if( Session != null )
                Session.Clear();
            if (Response.Cookies != null)
                Response.Cookies.Clear();
            Response.Redirect("index.aspx");
        }
    }
}