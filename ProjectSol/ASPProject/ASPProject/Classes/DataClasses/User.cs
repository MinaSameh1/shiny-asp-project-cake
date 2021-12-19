using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ASPProject.Classes.DataClasses;
using System.Data.SqlClient;
using System.Data;


namespace ASPProject.Classes 
{
    public class User : DataClass
    {
        public int ID { get; set; }
        public string name { get; set; }
        public int age { get; set; }
        public string email { get; set; }
        public string pass { get; set; }
        public DateTime LastAccess { get; set; }
        public DateTime DOB { get; set; }
        public bool Blocked { get; set; }
        public bool isAdmin { get; set; }

        public User() { }

        public User(string name, string pass, string email){
            this.ID = 0;
            this.name = name;
            this.pass = pass;
            this.email = email;
            this.age = 0;
            this.DOB = DateTime.Now;
            this.isAdmin = false;
            this.Blocked = false;
            this.LastAccess = DateTime.Now;
        }

        public User(
            int ID, string name, string pass, string email, int age, DateTime DOB, 
            bool isAdmin, bool Blocked, DateTime LastAccess
            )
        {
            this.ID = ID;
            this.name = name;
            this.pass = pass;
            this.email = email;
            this.age = age;
            this.DOB = DOB;
            this.isAdmin = isAdmin;
            this.Blocked = Blocked;
            this.LastAccess = LastAccess;
        }

         void DataClass.Update()
        {
            Database db = new Database();
            db.OpenCon();
            SqlCommand cmd = db.getCmd();
            cmd.CommandText = @"UPDATE users " +
                              "SET userName = @Val1 " +
                              ", pass = @Val2 " +
                              ", Email = @Val3 " +
                              ", age = @Val4 " +
                              ", DOB = @Val5 " +
                              ", isAdmin = @Val6 " +
                              ", UserBlocked = @Val7 " +
                              ", lastaccess = @Val8 " +
                              "WHERE userID = @ID";


            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val1",
                SqlDbType = SqlDbType.VarChar,
                Size = 18,
                Value = this.name
            });


            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val2",
                SqlDbType = SqlDbType.VarChar,
                Size = 18,
                Value = this.pass
            });

            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val3",
                SqlDbType = SqlDbType.VarChar,
                Size = 18,
                Value = this.email
            });

            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val4",
                SqlDbType = SqlDbType.Int,
                Size = 4,
                Value = this.age
            });

            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val5",
                SqlDbType = SqlDbType.Date,
                Size = 30,
                Value = this.DOB
            });


            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val6",
                SqlDbType = SqlDbType.Int,
                Size = 4,
                Value = this.isAdmin ? 1 : 0
            });

            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val7",
                SqlDbType = SqlDbType.Int,
                Size = 4,
                Value = this.Blocked ? 1 : 0
            });

            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@val8",
                SqlDbType = SqlDbType.DateTime,
                Size = 30,
                Value = this.LastAccess
            });

            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@ID",
                SqlDbType = SqlDbType.Int,
                Size = 4,
                Value = this.ID
            });

            cmd.Prepare();
            cmd.ExecuteNonQuery();
            db.close();
        }

         void DataClass.DeleteFromDB()
         {
             if (this.ID == 0 || this.ID == null)
                 return;
             Database db = new Database();
             db.OpenCon();
             db.DeleteObject("users", "ID", this.ID);
         }


         public void Insert()
         {
             try
             {
                 Database db = new Database();
                 db.OpenCon();
                 SqlCommand cmd = db.getCmd();
                 cmd.CommandText = @"INSERT INTO users VALUES( " +
                                   " @Val1 " +
                                   ", @Val2 " +
                                   ", @Val3 " +
                                   ", @Val4 " +
                                   ", @Val5 " +
                                   ", @Val6 " +
                                   ", @Val7 " +
                                   ", @Val8 ) ";


                 cmd.Parameters.Add(new SqlParameter()
                 {
                     ParameterName = "@Val1",
                     SqlDbType = System.Data.SqlDbType.VarChar,
                     Size = 18,
                     Value = this.name
                 });


                 cmd.Parameters.Add(new SqlParameter()
                 {
                     ParameterName = "@Val2",
                     SqlDbType = SqlDbType.VarChar,
                     Size = 17,
                     Value = this.pass
                 });

                 cmd.Parameters.Add(new SqlParameter()
                 {
                     ParameterName = "@Val3",
                     SqlDbType = SqlDbType.VarChar,
                     Size = 18,
                     Value = this.email
                 });

                 cmd.Parameters.Add(new SqlParameter()
                 {
                     ParameterName = "@Val4",
                     SqlDbType = SqlDbType.Int,
                     Size = 4,
                     Value = this.age
                 });

                 cmd.Parameters.Add(new SqlParameter()
                 {
                     ParameterName = "@Val5",
                     SqlDbType = SqlDbType.DateTime,
                     Size = 30,
                     Value = this.DOB
                 });


                 cmd.Parameters.Add(new SqlParameter()
                 {
                     ParameterName = "@Val6",
                     SqlDbType = SqlDbType.Int,
                     Size = 4,
                     Value = this.isAdmin ? 1 : 0
                 });

                 cmd.Parameters.Add(new SqlParameter()
                 {
                     ParameterName = "@Val7",
                     SqlDbType = SqlDbType.Int,
                     Size = 4,
                     Value = this.Blocked ? 1 : 0
                 });

                 cmd.Parameters.Add(new SqlParameter()
                 {
                     ParameterName = "@val8",
                     SqlDbType = SqlDbType.DateTime,
                     Size = 30,
                     Value = this.LastAccess
                 });

                 cmd.Prepare();
                 cmd.ExecuteNonQuery();
                 db.close();
             }
             catch (Exception ex)
             {
                 throw new Exception("EX:" + ex);
             }
         }
    }
}