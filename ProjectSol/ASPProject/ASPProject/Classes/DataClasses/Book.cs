using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

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


        public Book() { }

        public Book(
            int BookID, string title, string author, int total_pages,
            int SelerID, string Lang, string price, DateTime published_date,
            DateTime uploadedDate, string series, string cover,
            string description, bool isApproved
            )
        {
            this.BookID = BookID;
            this.title = title;
            this.author = author;
            this.total_pages = total_pages;
            this.SelerID = SelerID;
            this.Lang = Lang;
            this.price = price;
            this.published_date = published_date;
            this.uploadedDate = uploadedDate;
            this.series = series;
            this.cover = cover;
            this.description = description;
            this.isApproved = isApproved;
        }

        public void DeleteFromDB()
        {
            if (this.BookID == 0 || this.BookID == null)
                return;
            Database db = new Database();
            db.OpenCon();
            db.DeleteObject("books", "BookID", this.BookID);
            db.close();
        }

        public void Update()
        {
            Database db = new Database();
            db.OpenCon();
            SqlCommand cmd = db.getCmd();
            cmd.CommandText = "UPDATE books " +
                           "SET title = @Val1 " +
                              ", author = @Val2 " +
                              ", total_pages = @Val3 " +
                              ", SelerID = @Val4 " +
                              ", Lang = @Val5 " +
                              ", price = @Val6 " +
                              ", published_date = @Val7 " +
                              ", uploadedDate = @Val8 " +
                              ", series = @Val9 " +
                              ", cover = @Val10 " +
                              ", description = @Val11 " +
                              ", isApproved = @Val12 " +
                         "WHERE BookID = @BookID ";
            cmd.Parameters.Add(this.title);
            cmd.Parameters.Add(this.author);
            cmd.Parameters.Add(this.total_pages);
            cmd.Parameters.Add(this.SelerID);
            cmd.Parameters.Add(this.Lang);
            cmd.Parameters.Add(this.price);
            cmd.Parameters.Add(this.published_date);
            cmd.Parameters.Add(this.uploadedDate);
            cmd.Parameters.Add(this.series);
            cmd.Parameters.Add(this.cover);
            cmd.Parameters.Add(this.description);
            cmd.Parameters.Add(this.isApproved);
            cmd.Parameters.Add(this.BookID);
            cmd.Prepare();
            cmd.ExecuteNonQuery();
            db.close();
        }
    }
}