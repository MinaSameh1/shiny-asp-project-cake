using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPProject.Classes;

namespace ASPProject
{
    public partial class Register : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RegularExpressionValidator1.IsValid && CompareValidator1.IsValid)
            {
                Database db = new Database();
                db.OpenCon();
                User usr = db.getUser(pass.Value, name.Value);
                if (usr.email == email.Value || usr.name == name.Value)
                {
                    Label1.Text = "The username and email already exist!";
                    return;
                }
                db.close();

                User user = new User(
                    name.Value,
                    pass.Value,
                    email.Value
                    );
                DataClassMethods.DoInsert(user);
                Response.Redirect("index.aspx");
            }
        }
    }
}