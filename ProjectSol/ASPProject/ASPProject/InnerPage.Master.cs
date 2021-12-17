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

        }

        public string getPageName()
        {
            if (!this.IsPostBack)
            {
                //Get the Current Page Name.
                return Path.GetFileNameWithoutExtension(Page.AppRelativeVirtualPath);
            }
            else
                return "";
        }
    }
}