using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ASPProject
{
    public partial class InnerPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                panel1.Visible = false;
                ProfilePanel.Visible = true;
            }
        }

        public string getPageName()
        {
                //Get the Current Page Name.
                return Path.GetFileNameWithoutExtension(Page.AppRelativeVirtualPath);
        }
    }
}