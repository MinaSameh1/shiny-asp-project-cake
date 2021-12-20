using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASPProject
{
    public class DownloadFile : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            System.Web.HttpResponse response = System.Web.HttpContext.Current.Response;
            response.ClearContent();
            response.Clear();
            response.ContentType =  "application/pdf";
            response.AddHeader("Content-Disposition",
                               "attachment; filename=Book.pdf;");
            response.TransmitFile("Book.pdf");
            response.Flush();
            response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}