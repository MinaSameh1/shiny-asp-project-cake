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
        public DateTime published_date { set; get; }
        public DateTime uploadedDate { set; get; }
        public string series { set; get; }
        public string cover { set; get; }
        public string description { set; get; }
        public bool isApproved { set; get; }


        public Book() { }

        public Book(
            int BookID, string title, string author, int total_pages,
            int SelerID, string Lang, DateTime published_date,
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
            this.published_date = published_date;
            this.uploadedDate = uploadedDate;
            this.series = series;
            this.cover = cover;
            this.description = description;
            this.isApproved = isApproved;
        }

        public void DeleteFromDB()
        {
            if (this.BookID == 0 )
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
                              ", published_date = @Val7 " +
                              ", uploadedDate = @Val8 " +
                              ", series = @Val9 " +
                              ", cover = @Val10 " +
                              ", description = @Val11 " +
                              ", isApproved = @Val12 " +
                         "WHERE BookID = @BookID ";
            
            cmd.Parameters.Add( new SqlParameter()
            {
                ParameterName = "@Val1",
                SqlDbType = SqlDbType.VarChar,
                Size = 18,
                Value = this.title
            }); 

            cmd.Parameters.Add ( new SqlParameter(){
                ParameterName = "@Val2",
                SqlDbType = System.Data.SqlDbType.VarChar,
                Size = 18, 
                Value = this.author
        });
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val3",
                SqlDbType = System.Data.SqlDbType.VarChar,
                Size = 50,
                Value = this.total_pages
            });
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val4",
                SqlDbType = System.Data.SqlDbType.Int,
                Size = 4,
                Value = this.SelerID
            });
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val5",
                SqlDbType = System.Data.SqlDbType.VarChar,
                Size = 18,
                Value = this.Lang
            });

            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val7",
                SqlDbType = System.Data.SqlDbType.VarChar,
                Size = 18,
                Value = this.published_date
            });
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val8",
                SqlDbType = System.Data.SqlDbType.DateTime,
                Size = 18,
                Value = this.uploadedDate
            });
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val9",
                SqlDbType = System.Data.SqlDbType.VarChar,
                Size = 20,
                Value = this.series
            });
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val10",
                SqlDbType = System.Data.SqlDbType.VarChar,
                Size = 18,
                Value = this.cover
            });
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val11",
                SqlDbType = System.Data.SqlDbType.VarChar,
                Size = 500,
                Value = this.description
            });
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val12",
                SqlDbType = System.Data.SqlDbType.Int,
                Size = 4,
                Value = this.isApproved
            });
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@BookID",
                SqlDbType = System.Data.SqlDbType.Int,
                Size = 4,
                Value = this.BookID
            });
            cmd.Prepare();
            cmd.ExecuteNonQuery();
            db.close();
        }


        public void Insert()
        {
            Database db = new Database();
            db.OpenCon();
            SqlCommand cmd = db.getCmd();
            cmd.CommandText = "INSERT INTO books VALUES(@Val1 " +
                              ", @Val2 " +
                              ", @Val3 " +
                              ", @Val4 " +
                              ", @Val5 " +
                              ", @Val7 " +
                              ", @Val8 " +
                              ", @Val9 " +
                              ", @Val10 " +
                              ", @Val11 " +
                              ", @Val12 )";

            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val1",
                SqlDbType = SqlDbType.VarChar,
                Size = 18,
                Value = this.title
            });

            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val2",
                SqlDbType = System.Data.SqlDbType.VarChar,
                Size = 18,
                Value = this.author
            });
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val3",
                SqlDbType = System.Data.SqlDbType.VarChar,
                Size = 50,
                Value = this.total_pages
            });
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val4",
                SqlDbType = System.Data.SqlDbType.Int,
                Size = 4,
                Value = this.SelerID
            });
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val5",
                SqlDbType = System.Data.SqlDbType.VarChar,
                Size = 18,
                Value = this.Lang
            });

            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val7",
                SqlDbType = System.Data.SqlDbType.VarChar,
                Size = 18,
                Value = this.published_date
            });
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val8",
                SqlDbType = System.Data.SqlDbType.DateTime,
                Size = 18,
                Value = this.uploadedDate
            });
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val9",
                SqlDbType = System.Data.SqlDbType.VarChar,
                Size = 20,
                Value = this.series
            });
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val10",
                SqlDbType = System.Data.SqlDbType.VarChar,
                Size = 255,
                Value = this.cover
            });
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val11",
                SqlDbType = System.Data.SqlDbType.VarChar,
                Size = 500,
                Value = this.description
            });
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val12",
                SqlDbType = System.Data.SqlDbType.Int,
                Size = 4,
                Value = this.isApproved
            });

            cmd.Prepare();
            cmd.ExecuteNonQuery();
            db.close();
        }
    }
}