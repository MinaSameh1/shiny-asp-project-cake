using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace ASPProject.Classes.DataClasses
{
    public class pdf : DataClass
    {

        public string pdfLocation { get; set; }

        public int BookID { get; set; }

        public int pdfId { get; set; }


        public void DeleteFromDB()
        {
            if (this.pdfId == 0 ||  this.pdfId == null)
                return;
            Database db = new Database();
            db.OpenCon();
            db.DeleteObject("pdf", "pdfID", this.pdfId);
        }

        void DataClass.Update()
        {
            Database db = new Database();
            db.OpenCon();
            SqlCommand cmd = db.getCmd();
            cmd.CommandText = "UPDATE pdf " +
                            "SET bookID = @Val1 " +
                            ", pdfLocation = @Val2 " +
                            "WHERE pdfID = @pdfid ";
            cmd.Parameters.Add(this.BookID);
            cmd.Parameters.Add(this.pdfLocation);
            cmd.Parameters.Add(this.pdfId);
            cmd.Prepare();
            cmd.ExecuteNonQuery();
            db.close();
        }
    }
}