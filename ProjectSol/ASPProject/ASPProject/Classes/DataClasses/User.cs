using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ASPProject.Classes.DataClasses;


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


        void DataClass.DeleteFromDB()
        {
            throw new NotImplementedException();
        }

        void DataClass.Update()
        {
            throw new NotImplementedException();
        }
    }
}