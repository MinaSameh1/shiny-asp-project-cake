using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPProject.Classes;

namespace ASPProject
{
    public partial class Login : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            RequiredFieldValidator1.Validate();
            RequiredFieldValidator2.Validate();
            if (RequiredFieldValidator1.IsValid && RequiredFieldValidator2.IsValid)
            {
                Database db = new Database();
                db.OpenCon();
                db.PrepareCmd();
                User user = db.getUser(PassText.Text, UserName.Text);
                if (user.Blocked)
                {

                    return;
                }

                Session["userID"] = user.ID;
                Session["userType"] = user.isAdmin;
                Session["email"] = user.email;
                Session["userName"] = user.name;

                db.close();
                DataClassMethods.DoUpdate(user);

                Response.Redirect("index.aspx");

            }
        }
    }
}