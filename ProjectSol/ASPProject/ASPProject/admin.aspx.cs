using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using ASPProject.Classes;
using System.IO;


namespace ASPProject
{
    public partial class admin : System.Web.UI.Page
    {
        DataTable Users;
        DataTable books;

        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            if( Session["userType"] == null || Session["userType"] == "User")
            {
               Response.Redirect("index.aspx");
            }
             */
            if (!Page.IsPostBack)
            {
                Grid1BindData();
                Grid2BindData();
            }
        }

        #region GRID1

        private void Grid1BindData()
        {
            Database db = new Database();
            db.OpenCon();
            Users = new DataTable();
            Users = db.getUsers();
            GridView1.DataSource = Users;
            GridView1.DataBind();
            db.close();
        }

        protected void OnPageIndexChangingGrid1(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Grid1BindData();
        }

        protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            GridView1.EditIndex = e.NewEditIndex;
            Grid1BindData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Label usrID = GridView1.Rows[e.RowIndex].FindControl("lblID") as Label;
            Database db = new Database();
            db.OpenCon();
            User user = db.getUser(Convert.ToInt32(usrID.Text));
            user.name = (GridView1.Rows[e.RowIndex].FindControl("nameText") as TextBox).Text;
            user.email = (GridView1.Rows[e.RowIndex].FindControl("EmailText") as TextBox).Text;
            user.pass = (GridView1.Rows[e.RowIndex].FindControl("passText") as TextBox).Text;
            user.isAdmin = String.IsNullOrEmpty(
                (GridView1.Rows[e.RowIndex].FindControl("typeText") as TextBox).Text
                ) ? false : true;
            DataClassMethods.DoUpdate(user);
            GridView1.EditIndex = -1;// no row in edit mode
            Grid1BindData();
        }

        protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
            Grid1BindData();
        }

        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            Console.WriteLine("TEST");
            if (e.CommandName == "Add")
            {
                String name = (GridView1.FooterRow.FindControl("nameNew") as TextBox).Text;
                String email = (GridView1.FooterRow.FindControl("emailNew") as TextBox).Text;
                String pass = (GridView1.FooterRow.FindControl("passNew") as TextBox).Text;
                String type = (GridView1.FooterRow.FindControl("typeNew") as TextBox).Text;
                User user = new User(name, pass, email, type);
                user.Insert();
                Grid1BindData();
            }
            if (e.CommandName == "Delete")
            {
                Database db = new Database();
                db.OpenCon();
                User user = db.getUser(Convert.ToInt32(e.CommandArgument.ToString()));
                DataClassMethods.DoDelete(user);
                Grid1BindData();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void SearchUser(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(nameSearch.Text))
            {
                Grid1BindData();
                return;
            }
            Database db = new Database();
            db.OpenCon();
            DataTable dt = db.getUserTable(nameSearch.Text);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        #endregion

        #region GRID2

        protected void SearchBook(object sender, EventArgs e)
        {
            Database db = new Database();
            db.OpenCon();
            DataTable dt = db.searchBook(titleSearch.Text);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            db.close();
        }

        protected void OnPageIndexChangingGrid2(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            Grid2BindData();
        }

        private void Grid2BindData()
        {
            Database db = new Database();
            db.OpenCon();
            books = new DataTable();
            books = db.getBooks();
            GridView2.DataSource = books;
            GridView2.DataBind();
        }

        protected void GridView2_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            Console.WriteLine("TEST");
            if (e.CommandName.Equals("Add"))
            {
                Book book = new Book();
                book.title = (GridView2.FooterRow.FindControl("newTitle") as TextBox).Text;
                book.author = (GridView2.FooterRow.FindControl("newAuthor") as TextBox).Text;
                book.total_pages = Convert.ToInt32((GridView2.FooterRow.FindControl("newTotalPages") as TextBox).Text);
                book.Lang = (GridView2.FooterRow.FindControl("newLang") as TextBox).Text;
                book.published_date = Convert.ToDateTime(
                    (GridView2.FooterRow.FindControl("newPublishData") as TextBox).Text
                    ).Date;
                book.uploadedDate = DateTime.Now;
                book.series = (GridView2.FooterRow.FindControl("newSeries") as TextBox).Text;
                book.description = "Yet to be implemented :D";
                book.isApproved = true;
                book.SelerID = Convert.ToInt32(Session["userID"].ToString());
                FileUpload file = (GridView2.FooterRow.FindControl("NewPDF") as FileUpload);
                if (file.HasFile)
                {
                    // Call a helper method routine to save the file.
                    // Specify the path to save the uploaded file to.
                    string savePath = "covers\";

                    // Get the name of the file to upload.
                    string fileName = file.FileName;

                    // Create the path and file name to check for duplicates.
                    string pathToCheck = savePath + fileName;

                    // Create a temporary file name to use for checking duplicates.
                    string tempfileName = "";

                    // Check to see if a file already exists with the, same name as the file to upload.      
                    if (File.Exists(pathToCheck))
                    {
                        int counter = 2;
                        while (File.Exists(pathToCheck))
                        {
                            // if a file with this name already exists,
                            // prefix the filename with a number.
                            tempfileName = counter.ToString() + fileName;
                            pathToCheck = savePath + tempfileName;
                            counter++;
                        }

                        fileName = tempfileName;
                    }
                    // Append the name of the file to upload to the path.
                    savePath += fileName;
                    String FullPath = Server.MapPath(savePath);
                    file.SaveAs(FullPath);
                    book.cover = savePath;
                }
                DataClassMethods.DoInsert(book);
                Grid2BindData();
            }
        }


        protected void GridView2_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            GridView2.EditIndex = e.NewEditIndex;
            Grid2BindData();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView2.Rows[e.RowIndex];
            Label bookID = GridView2.Rows[e.RowIndex].FindControl("BookID") as Label;
            Database db = new Database();
            db.OpenCon();
            Book book = db.getBook(Convert.ToInt32(bookID.Text));
            book.title = (GridView2.Rows[e.RowIndex].FindControl("titleText") as TextBox).Text;
            book.author = (GridView2.Rows[e.RowIndex].FindControl("authorText") as TextBox).Text;
            book.total_pages = Convert.ToInt32((GridView2.Rows[e.RowIndex].FindControl("totalPagesText") as TextBox).Text);
            book.Lang = (GridView2.Rows[e.RowIndex].FindControl("LangText") as TextBox).Text;
            book.published_date = Convert.ToDateTime((GridView2.Rows[e.RowIndex].FindControl("pubDateText") as TextBox).Text).Date;

            FileUpload file = GridView2.Rows[e.RowIndex].FindControl("FileUpload") as FileUpload;
            if (file.HasFile)
            {
                // Call a helper method routine to save the file.
                // Specify the path to save the uploaded file to.
                string savePath = "covers/";

                // Get the name of the file to upload.
                string fileName = file.FileName;

                // Create the path and file name to check for duplicates.
                string pathToCheck = savePath + fileName;

                // Create a temporary file name to use for checking duplicates.
                string tempfileName = "";

                // Check to see if a file already exists with the, same name as the file to upload.      
                if (File.Exists(pathToCheck))
                {
                    int counter = 2;
                    while (File.Exists(pathToCheck))
                    {
                        // if a file with this name already exists,
                        // prefix the filename with a number.
                        tempfileName = counter.ToString() + fileName;
                        pathToCheck = savePath + tempfileName;
                        counter++;
                    }

                    fileName = tempfileName;
                }
                // Append the name of the file to upload to the path.
                savePath += fileName;
                String FullPath = Server.MapPath(savePath);
                file.SaveAs(FullPath);
                book.cover = savePath;
            }
            DataClassMethods.DoUpdate(book);
            GridView2.EditIndex = -1;
            Grid2BindData();
        }

        protected void GridView2_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView2.EditIndex = -1;
            Grid2BindData();
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView2.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblTitle");
            Database db = new Database();
            db.OpenCon();
            Book book = db.getBook(lbldeleteid.Text);
            DataClassMethods.DoDelete(book);
            Grid2BindData();
        }

        #endregion
    }
}