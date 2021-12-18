using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASPProject.Classes
{
    public class Book : DataClass
    {
        public int BookID { set; get; }
        public string title { set; get; }
        public string author { set; get; }
        public int total_pages { set; get; }
        public int SelerID { set; get; }
        public string Lang { set; get; }
        public string price { set; get; }
        public DateTime published_date { set; get; }
        public DateTime uploadedDate { set; get; }
        public string series { set; get; }
        public string cover { set; get; }
        public string description { set; get; }
        public bool isApproved { set; get; }


        public void DeleteFromDB()
        {
            if (this.BookID == null)
                return;
            Database db = new Database();
            db.OpenCon();
            db.DeleteObject("books", "BookID", this.BookID);
            db.close();
        }

        public void Update()
        {
            Database db = new Database();
            
        }
    }
}