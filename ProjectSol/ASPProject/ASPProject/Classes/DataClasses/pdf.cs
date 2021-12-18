using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASPProject.Classes.DataClasses
{
    public class pdf : DataClass
    {

        public string pdfLocation { get; set; }

        public int BookID { get; set; }

        public int pdfId { get; set; }


        public void DeleteFromDB()
        {
            if (this.pdfId == null)
                return;
            Database db = new Database();
            db.OpenCon();
            db.DeleteObject("pdf", "pdfID", this.pdfId);
        }

        void DataClass.Update()
        {
            throw new NotImplementedException();
        }
    }
}