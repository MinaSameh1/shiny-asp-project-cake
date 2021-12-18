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
}