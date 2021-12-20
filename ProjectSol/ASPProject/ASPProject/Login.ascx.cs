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
                Response.Redirect("Books.aspx");
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
                User user = new User();
                user = db.getUser(PassText.Text, UserName.Text);
                if (user.ID == 0)
                    Response.Redirect("Register Page.aspx"); 
                if (user.Blocked)
                {
                    return;
                }

                Session["userID"] = user.ID;
                Session["userType"] = user.isAdmin;
                Session["email"] = user.email;
                Session["userName"] = user.name;
                
                HttpCookie cookie = new HttpCookie("userName");
                cookie.Expires = DateTime.Now.AddMinutes(10);
                cookie["userName"] = user.name;
                Response.Cookies.Add(cookie);

                db.close();

                DataClassMethods.DoUpdate(user);

                if (Request.QueryString["bookID"] != null)
                {
                    Response.Redirect("Book Details.aspx?ID=" +
                        Int32.Parse(Request.QueryString["bookID"]));
                }
                Response.Redirect("index.aspx");

            }
        }
    }
}