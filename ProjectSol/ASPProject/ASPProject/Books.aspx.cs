using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using ASPProject.Classes;
using System.Data;
using System.Data.Sql;
using System.Text.RegularExpressions;
using System.Data.SqlClient;

namespace ASPProject
{
    public partial class Books : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.UseAccessibleHeader = true;
        }

        protected void BindData()
        {
            Database db = new Database();
            db.OpenCon();
            DataSet dt = db.getDataSetBooks();
            GridView1.DataSource = dt;
            GridView1.DataBind();
            db.close();
        }  

        protected void GridView1_PreRender(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.BindData();
                Label1.Text = "Displaying Page " + (GridView1.PageIndex + 1).ToString() +
    " of " + (GridView1.PageCount + 1).ToString();
            }
        }

        protected String getBooksCount()
        {
            Database db = new Database();
            db.OpenCon();
            Int32 count = db.getListBooks().Count;
            return count.ToString();
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindData();
        }


        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[0].Text = Regex.Replace(e.Row.Cells[0].Text, titleSearch.Text.Trim(), delegate(Match match)
                {
                    return string.Format("<span style = 'background-color:#D9EDF7'>{0}</span>", match.Value);
                }, RegexOptions.IgnoreCase);
            }
        }

        protected void Search(object sender, EventArgs e)
        {
            Database db = new Database();
            db.OpenCon();
            DataTable dt = db.searchBook(titleSearch.Text);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName != "Add") return;
            int id = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("Book Details.aspx?ID=" + id);
        }

        protected void lnkView(object sender, EventArgs e)
        {
            Int32 Id = int.Parse((sender as LinkButton).CommandArgument);
            Response.Redirect("Book Details.aspx?ID=" + Id);
        }
    }
}