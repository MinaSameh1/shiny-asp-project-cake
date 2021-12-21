using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using ASPProject.Classes;
using ASPProject.Classes.DataClasses;
using System.Data.SqlClient;
using System.Data;

namespace ASPProject
{                                   // DB interface created by me
    public sealed class Database : DatabaseInterface
    {
        SqlConnection con = null;
        SqlCommand cmd = null;
        String ConnectionString = "";

        // Start the connection in the constructor
        public Database()
        {
            con = new SqlConnection();

            ConnectionStringSettings Settings = ConfigurationManager.ConnectionStrings["DBConnection"];

            if (Settings == null || string.IsNullOrEmpty(Settings.ConnectionString))
                throw new Exception("Fatal error: missing connecting string in web.config file");

            ConnectionString = Settings.ConnectionString;

            con.ConnectionString = (
                ConnectionString
                );
        }

        // Opens a connection, a step that must happen
        public void OpenCon()
        {
            con.Open();
        }

        // Prepares our CMD for sql Commands
        public void PrepareCmd()
        {
            cmd = new SqlCommand(null, con);
        }

        // Gets the CMD for outside use.
        public SqlCommand getCmd()
        {
            if (cmd == null)
            {
                this.PrepareCmd();
            }
            return cmd;
        }

        // Closes all DB Connections
        public void close()
        {
            if ( cmd != null )
                cmd.Dispose();
            con.Close();
        }

        // Returns a reader that has the Query executed
        public System.Data.SqlClient.SqlDataReader getReader(string Query)
        {
            cmd.CommandText = Query;
            SqlDataReader reader = cmd.ExecuteReader();
            return reader;
        }

        // Returns a table using DataTable for use in gridTables etc
        public System.Data.DataTable getTable(string TableName)
        {
            if (cmd == null)
            {
                this.PrepareCmd();
            }
            cmd.CommandText =
                "SELECT * FROM @TableName";
            cmd.Parameters.Add(
                new SqlParameter()
                {
                    ParameterName = "@TableName",
                    SqlDbType = SqlDbType.VarChar,
                    Size = 18,
                    Value = TableName
                }
            );
            cmd.Prepare();
            DataTable dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            return dt;
        }

        // Gets our connection for outside use
        public SqlConnection getCon() { return con; }


        // Searchs in DB for user and returns a User Object
        public User getUser(string pass, string name = "0", string email = "0")
        {
            try
            {
                if (cmd == null)
                {
                    PrepareCmd();
                }

                if (name == "0" && email != "0")
                {
                    cmd.CommandText =
                        @"SELECT * FROM users WHERE Email=@Val1 AND pass=@Val2";
                    cmd.Parameters.Add(email);
                    cmd.Parameters.Add(pass);
                }
                else if (name != "0" && email == "0")
                {
                    cmd.CommandText =
                        @"SELECT * FROM users WHERE userName= @Val1 AND pass = @Val2 ";
                    cmd.Parameters.Add(new SqlParameter()
                    {
                        ParameterName = "@Val1",
                        SqlDbType = SqlDbType.VarChar,
                        Size = 18,
                        Value = name
                    });

                    cmd.Parameters.Add(new SqlParameter()
                    {
                        ParameterName = "@Val2",
                        SqlDbType = SqlDbType.VarChar,
                        Size = 18,
                        Value = pass
                    });
                }
                else
                {
                    cmd.CommandText =
                        @"SELECT * FROM users WHERE userName = @Val1 AND Email = @Val2 AND pass = @Val3";
                    cmd.Parameters.Add(new SqlParameter()
                    {
                        ParameterName = "@Val1",
                        SqlDbType = SqlDbType.VarChar,
                        Size = 18,
                        Value = name
                    });

                    cmd.Parameters.Add(new SqlParameter()
                    {
                        ParameterName = "@Val2",
                        SqlDbType = SqlDbType.VarChar,
                        Size = 18,
                        Value = email
                    });

                    cmd.Parameters.Add(new SqlParameter()
                    {
                        ParameterName = "@Val3",
                        SqlDbType = SqlDbType.VarChar,
                        Size = 18,
                        Value = pass
                    });
                }
                cmd.Prepare();
                User user = new User();
                DataTable dt = new DataTable();
                using (var reader = cmd.ExecuteReader())
                {
                    if (reader.FieldCount == 0)
                        return new User();
                    while (reader.Read())
                    {

                        // Fill the user object with the data
                        user = new User(
                            reader.GetInt32(0),
                        reader.GetString(1).ToString(),
                        reader.GetString(2).ToString(),
                        reader.GetString(3).ToString(),
                        reader.GetInt32(4),
                        reader.IsDBNull(5) ? DateTime.MinValue : reader.GetDateTime(5),
                        (reader.IsDBNull(6) ? false : reader.GetInt32(6) == 1 ? true : false),
                        reader.GetInt32(7) == 0 ? false : true,
                        reader.IsDBNull(8) ? DateTime.MinValue : reader.GetDateTime(8)
                           );
                    }
                }
                // return it 
                return user;
            }
            catch (Exception ex)
            {
                throw new Exception(ex + "");
            }
        }

        // Gets the user by id
        public User getUser(int ID)
        {
            try
            {
                if (cmd == null)
                {
                    PrepareCmd();
                }
                cmd.CommandText =
                    @"SELECT * FROM users WHERE userID=@Val";
                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@Val",
                    SqlDbType = SqlDbType.Int,
                    Size = 4,
                    Value = ID
                });

                cmd.Prepare();
                User user = new User();
                // This will auto dispose of the reader after we are done
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.FieldCount == 0)
                        return new User();
                    // Fill the user object with the data
                    while (reader.Read())
                    {
                        user.ID = reader.GetInt32(0);
                        user.name = reader.GetString(1);
                        user.pass = reader.GetString(2);
                        user.email = reader.GetString(3);
                        user.age = reader.GetInt32(4);
                        user.DOB = reader.IsDBNull(5) ? DateTime.Now : reader.GetDateTime(5);
                        user.isAdmin =
                            (reader.IsDBNull(6) ? false : reader.GetInt32(6) == 1 ? true : false);
                        user.Blocked = reader.GetInt32(7) == 0 ? false : true;
                        user.LastAccess = reader.IsDBNull(8) ? DateTime.Now : reader.GetDateTime(8);
                    }
                }
                // return it 
                return user;
            }
            catch
            {
                throw new Exception("Fatal Error:  error in GetUser by ID");
            }
        }

        // Gets the PDF by ID
        public pdf getPdf(int BookID)
        {
            try
            {
                if (cmd == null)
                {
                    PrepareCmd();
                }
                cmd.CommandText =
                    @"SELECT * FROM pdf WHERE bookID=@Val";
                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@Val",
                    SqlDbType = SqlDbType.Int,
                    Size = 4,
                    Value = BookID
                });

                cmd.Prepare();
                pdf pdf = new pdf();
                // This will auto dispose of the reader after we are done
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.FieldCount == 0)
                        return new pdf();
                    // Fill the user object with the data
                    while (reader.Read())
                    {
                        pdf.pdfId = reader.GetInt32(0);
                        pdf.BookID = reader.GetInt32(1);
                        pdf.pdfLocation = reader.GetString(2);
                    }
                }
                // return it 
                return pdf;
            }
            catch
            {
                throw new Exception("Fatal Error: error in GetPdf by ID");
            }
        }

        // Gets all the books
        public DataTable getBooks()
        {
            try
            {
                if (cmd == null)
                {
                    PrepareCmd();
                }
                cmd.CommandText =
                    @"SELECT * FROM books";
                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                return dt;
            }
            catch
            {
                throw new Exception("Fatal Error: error in GetBooks");
            }
        }

        // Gets all the books
        public DataSet getDataSetBooks()
        {
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(
                    "SELECT * FROM books", con
                    );
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
            catch
            {
                throw new Exception("Fatal Error: error in GetBooks");
            }
        }

        public DataTable searchBook(String title)
        {
            if (cmd == null)
            {
                PrepareCmd();
            }
            cmd.CommandText =
                @"SELECT * FROM books WHERE title LIKE '%'+@Val+'%'";
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@Val",
                SqlDbType = SqlDbType.VarChar,
                Size = 18,
                Value = title
            });
            cmd.Prepare();
            DataTable dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            return dt;
        }

        // Gets the book using ID
        public Book getBook(int ID)
        {
            try
            {
                if (cmd == null)
                {
                    PrepareCmd();
                }
                cmd.CommandText =
                    @"SELECT * FROM books WHERE BookID=@ID";
                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@ID",
                    SqlDbType = SqlDbType.Int,
                    Size = 4,
                    Value = ID
                });
                SqlDataReader reader;
                Book book = new Book(); ;
                using (reader = cmd.ExecuteReader())
                {
                    if (reader.FieldCount == 0)
                        return new Book();
                    while(reader.Read()) {
                    book.BookID = reader.GetInt32(0);
                    book.title = reader.GetString(1);
                    book.author = reader.GetString(2);
                    book.total_pages = reader.GetInt32(3);
                    book.SelerID = reader.GetInt32(4);
                    book.Lang = reader.GetString(5);
                    book.published_date = reader.GetDateTime(6);
                    if (!reader.IsDBNull(7))
                        book.uploadedDate = reader.GetDateTime(7);
                    else
                        book.uploadedDate = DateTime.Now;
                    if (!reader.IsDBNull(8))
                        book.series = reader.GetString(8);
                    else
                        book.series = "nan";
                    book.cover = reader.GetString(9);
                    book.description = reader.GetString(10);
                    book.isApproved = (reader.GetInt32(11) == 1) ? true : false;
                    }
                }
                return book;

            }
            catch (Exception ex)
            {
                throw new Exception("Fatal Error: error in GetBook\n" + ex);
            }
        }



        // Gets all the books
        public List<Book> getListBooks()
        {
            try
            {
                if (cmd == null)
                {
                    PrepareCmd();
                }
                cmd.CommandText =
                    @"SELECT * FROM books";
                List<Book> lst = new List<Book>();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Book book = new Book(
                        reader.GetInt32(0),
                        reader.GetString(1),
                        reader.GetString(2),
                        reader.IsDBNull(3) ? 0 : reader.GetInt32(3),
                        reader.GetInt32(4),
                        reader.IsDBNull(5) ? "unknown" :reader.GetString(5),
                        reader.IsDBNull(6) ? DateTime.MinValue : reader.GetDateTime(6),
                        reader.IsDBNull(7) ? DateTime.MinValue : reader.GetDateTime(7),
                        reader.IsDBNull(8) ? "none" : reader.GetString(8),
                        reader.GetString(9),
                        reader.GetString(10),
                        (reader.GetInt32(11)) == 1 ? true : false
                        );
                    lst.Add(book);
                }
                return lst;
            }
            catch(Exception ex)
            {
                throw new Exception("Fatal Error: error in GetBooks:" + ex);
            }
        }
        // Gets all the users
        public DataTable getUsers()
        {
            try
            {
                if (cmd == null)
                {
                    PrepareCmd();
                }
                cmd.CommandText =
                    @"SELECT * FROM users";
                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                return dt;
            }
            catch
            {
                throw new Exception("Fatal Error: error in GetUsers");
            }
        }

        // Gets all the pdfs and books
        public DataTable getPDFsBooks()
        {
            try
            {
                if (cmd == null)
                {
                    PrepareCmd();
                }
                cmd.CommandText =
                    @"SELECT * FROM books LEFT JOIN pdf ON books.bookID = pdf.BookID;";
                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                return dt;
            }
            catch
            {
                throw new Exception("Fatal Error: error in GetPDs and Books");
            }
        }

        // Deletes obj from DB using its ID
        public void DeleteObject(string TableName, String ObjName, int ObjId)
        {
            try
            {
                if (cmd == null)
                {
                    PrepareCmd();
                }
                cmd.CommandText =
                    @"DELETE FROM @Table WHERE @ObjName=@ObjId";

                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@Table",
                    SqlDbType = SqlDbType.VarChar,
                    Size = 18,
                    Value = TableName
                });

                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@ObjName",
                    SqlDbType = SqlDbType.VarChar,
                    Size = 18,
                    Value = ObjName
                });

                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@ObjId",
                    SqlDbType = SqlDbType.Int,
                    Size = 4,
                    Value = ObjId
                });
                cmd.Prepare();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Fatal Error: error in GetUser by values" + ex);
            }
        }

        internal DataTable getUserTable(int id)
        {
        try
        {
                if (cmd == null)
                {
                    PrepareCmd();
                }
                cmd.CommandText =
                    @"SELECT * FROM users WHERE userID=@Val";
                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@Val",
                    SqlDbType = SqlDbType.Int,
                    Size = 4,
                    Value = id
                });

                cmd.Prepare();
                DataTable td = new DataTable();
                td.Load(cmd.ExecuteReader());
                return td;
            }
            catch
            {
                throw new Exception("Fatal Error:  error in GetUser by ID");
            }
        }
    }
}

/*
-- This is a statment to get Books with their genres
SELECT books.BookID, books.title , genres.genreName FROM books
JOIN booksgenres ON books.bookID = booksgenres.bookID 
JOIN genres ON genres.genreID = booksgenres.genreID 
*/