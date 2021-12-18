using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using ASPProject.Classes.DataClasses;

namespace ASPProject.Classes
{
    /*
     * @author: Mina Sameh Wadie
     * interface for db
     */
    public interface DatabaseInterface
    {
        // Opens connection to db
         void OpenCon();
        // Gets the connection for use if needed
         SqlConnection getCon();
        // Starts the cmd and prepares it
         void PrepareCmd();
        // Gets the cmd for use if needed
         SqlCommand getCmd();
        // Closes the DB
         void close();
        // Gets a reader 
         SqlDataReader getReader(String Query);
        // Returns DataTable for use from DBName
         DataTable getTable(String tableName);
        // Checks users data and returns a user object
         User getUser(String email, String password, String name = null);
        // Gets the user by ID
         User getUser(int ID);
        // Gets a pdf by bookID
         pdf getPdf(int BookID);
        // Gets All Books
         DataTable getBooks();
        // Gets All users
         DataTable getUsers();
        // Get all PDFs and Book Details
         DataTable getPDFsBooks();
        // Executes Query
         void DeleteObject(String TableName, String ObjName, int ObjId);
    }
}