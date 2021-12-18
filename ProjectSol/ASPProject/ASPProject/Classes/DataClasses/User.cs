using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ASPProject.Classes.DataClasses;
using System.Data.SqlClient;


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

        void DataClass.DeleteFromDB()
        {
            if (this.ID == 0 || this.ID == null)
                return;
            Database db = new Database();
            db.OpenCon();
            db.DeleteObject("users", "ID", this.ID);
        }

        void DataClass.Update()
        {
            Database db = new Database();
            db.OpenCon();
            SqlCommand cmd = db.getCmd();
            cmd.CommandText = "UPDATE users " +
                              "SET userName = @Val1 "  +
                              ", pass = @Val2 " + 
                              ", Email = @Val3 " + 
                              ", age = @Val4 " + 
                              ", DOB = @Val5 " +
                              ", isAdmin = @Val6 " +
                              ", UserBlocked = @Val7 " +
                              ", lastaccess = @Val8 " +
                              "WHERE userID = @ID";
            cmd.Parameters.Add(this.name);
            cmd.Parameters.Add(this.pass);
            cmd.Parameters.Add(this.email);
            cmd.Parameters.Add(this.age);
            cmd.Parameters.Add(this.DOB);
            cmd.Parameters.Add(this.isAdmin);
            cmd.Parameters.Add(this.Blocked);
            cmd.Parameters.Add(this.LastAccess);
            cmd.Parameters.Add(this.ID);
            cmd.Prepare();
            cmd.ExecuteNonQuery();
            db.close();
        }
    }
}