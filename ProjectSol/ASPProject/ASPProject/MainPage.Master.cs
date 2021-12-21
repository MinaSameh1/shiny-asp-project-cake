using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPProject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                panel1.Visible = false;
                ProfilePanel.Visible = true;
                admin.Visible = (((String)Session["userType"]) == "Admin");
            }
        }
    }
}