using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASPProject.Classes
{
    public interface DataClass
    {
        // Deletes it from DB
         void DeleteFromDB();
        // Updates it in DB
          void Update();
        // Inserts 
          void Insert();
    }

    public class DataClassMethods
    {
        public static void DoUpdate(DataClass data)
        {
            data.Update();
        }

        public static void DoInsert(DataClass data)
        {
            data.Insert();
        }

        public static void DoDelete(DataClass data)
        {
            data.DeleteFromDB();
        }
    }

}