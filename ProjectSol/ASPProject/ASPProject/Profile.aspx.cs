using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using ASPProject.Classes;
using System.Data.SqlClient;

namespace ASPProject
{
    public partial class Profile : System.Web.UI.Page
    {
        Int32 id;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                if (Session["userID"] == null)
                    Response.Redirect("index.aspx");

                Database db = new Database();
                db.OpenCon();
                id = int.Parse(Session["userID"] + "");
                dt = db.getUserTable(id);
                db.close();
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                else
                {
                    dt.Rows.Add(dt.NewRow());
                    GridView1.DataSource = dt;
                    GridView1.Rows[0].Cells.Clear();
                    GridView1.Rows[0].Cells.Add(new TableCell());
                    GridView1.Rows[0].Cells[0].ColumnSpan = dt.Columns.Count;
                    GridView1.Rows[0].Cells[0].Text = "Must login First!";
                    GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                }
            }
        }

        protected void BindData()
        {

            Database db = new Database();
            db.OpenCon();
            id = int.Parse(Session["userID"] + "");
            dt = db.getUserTable(id);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            db.close();
        }


        protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            GridView1.EditIndex = e.NewEditIndex;
            BindData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Label usrID = GridView1.Rows[e.RowIndex].FindControl("lblID") as Label;
            Int32 userID = int.Parse(usrID.Text);
            Database db = new Database();
            db.OpenCon();
            User user = db.getUser(userID);
            TextBox name = GridView1.Rows[0].FindControl("NameText") as TextBox;
            TextBox email = GridView1.Rows[0].FindControl("EmailText") as TextBox;
            TextBox pass = GridView1.Rows[0].FindControl("passText") as TextBox;
            user.name = name.Text;
            user.email = email.Text;
            user.pass = pass.Text;
            user.LastAccess = DateTime.Now;
            DataClassMethods.DoUpdate(user);
            dt = db.getUserTable(userID);
            GridView1.DataSource = dt;
            db.close();
            GridView1.EditIndex = -1;
            GridView1.DataBind();
        }


        protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
            BindData();
        }


        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            Console.WriteLine("TEST");
            if (e.CommandName != "Edit" || e.CommandName != "Update") return;

            /*
            if (e.CommandName == "Update")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                int userID = Convert.ToInt32(GridView1.DataKeys[0].Values[0]);
                Database db = new Database();
                User user = db.getUser(userID);
                TextBox name = GridView1.Rows[0].FindControl("NameText") as TextBox;
                TextBox email = GridView1.Rows[0].FindControl("EmailText") as TextBox;
                TextBox pass = GridView1.Rows[0].FindControl("passText") as TextBox;
                user.name = name.Text;
                user.email = email.Text;
                user.pass = pass.Text;
                user.LastAccess = DateTime.Now;
                DataClassMethods.DoUpdate(user);
             */
        }



        /* Was gonna use it but meh
        private DataTable GenerateRowsToColumnsTable(DataTable MainTable)
        {
            DataTable OutputTable = new DataTable();

            // Add columns by looping rows
            // Header row's first column is same as in MainTable
            OutputTable.Columns.Add(MainTable.Columns[0].ColumnName.ToString());

            // Header row's second column onwards, 'MainTable's first column taken
            foreach (DataRow inRow in MainTable.Rows)
            {
                string newColName = inRow[0].ToString();
                OutputTable.Columns.Add(newColName);
            }

            // Add rows by looping columns       
            for (int rCount = 1; rCount <= MainTable.Columns.Count - 1; rCount++)
            {
                DataRow newRow = OutputTable.NewRow();

                // First column is MainTable's Header row's second column
                newRow[0] = MainTable.Columns[rCount].ColumnName.ToString();
                for (int cCount = 0; cCount <= MainTable.Rows.Count - 1; cCount++)
                {
                    string colValue = MainTable.Rows[cCount][rCount].ToString();
                    newRow[cCount + 1] = colValue;
                }
                OutputTable.Rows.Add(newRow);
            }

            return OutputTable;
        }
         */

    }
}