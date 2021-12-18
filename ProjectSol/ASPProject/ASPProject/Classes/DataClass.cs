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
    }

    public class DataClassMethods
    {
        public static void DoUpdate(DataClass dataClass)
        {
            dataClass.Update();
        }

        public static void DoDelete(DataClass dataClass)
        {
            dataClass.DeleteFromDB();
        }
    }

}