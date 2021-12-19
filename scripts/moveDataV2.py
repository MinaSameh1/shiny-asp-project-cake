import getpass
from random import randint,uniform
import pandas as pd
import pyodbc 
import json
import simplejson

all_books = pd.read_json('book_best_001_025.jl', lines=True, encoding='utf-8')


def main():
    # First connect to db
            #password=getpass.getpass("Enter Password:"),
    connection = pyodbc.connect("Driver={SQL Server Native Client 11.0};"
                      "Server=MINADESKTOP\\SQLEXPRESS;"
                      "Database=project;"
                      "Trusted_Connection=yes;")
    # Check if connection is working
    print("Connected to DB")
    cur = connection.cursor()
    # Loop the data to insert it 
    for i in range(2,584):
        # Prepare description file
        desc = open("./description/desc (" + str(i+1) + ").txt", "r", encoding="utf-8")

        genres = all_books["genres"][i]
        print(f'{str(all_books["series"][i])}')
        if str(all_books["series"][i]) == "nan":
            series = None
        else:
            series = all_books["series"][i]
        if str(all_books["language"][i]) == "nan":
            language = None
        else:
            language = all_books["language"][i]
        if str(all_books["num_pages"][i]) == "nan":
            num_pages = None
        else:
            num_pages = all_books["num_pages"][i]
        if str(all_books["publish_date"][i]) == "nan" :
            publish_date = None
        else:
            publish_date = all_books["publish_date"][i]

    # Tuple Data Set 
        data = (
                all_books["title"][i],
                all_books["author"][i],
                num_pages,
                randint(1,6000),
                language,
                publish_date,
                series,
                "covers/cover" + str(i) + ".png",
                str(desc.read()),
                int(1)
                )
        # INSERT:
        # The book itself
        SQLINSERT = "INSERT INTO books(title,author,total_pages,SelerID,Lang,published_date,series,cover,description,isApproved) VALUES( ?, ?, ?,  ?,  ?,  ?, ?,  ?, ?, ?);"
        cur.execute( SQLINSERT , data )
        #cur.execute("SET FOREIGN_KEY_CHECKS=0")
        print("BOOK INSERTED!")
    # Get BOOK ID
        cur.execute("SELECT TOP 1 BookID from books ORDER BY BookID DESC")
        result = cur.fetchall()
        bookID = result[0][0]
    # Book Genre
    # Check that its not empty first
        if not isinstance(genres, float): 
            for genre in genres:
                # Get the genre ID
                cur.execute("SELECT * FROM genres WHERE genreName=?",(genre, ))
                genreID = cur.fetchall()
    # If no genre found add it 
                if len(genreID) == 0:
                    cur.execute("INSERT INTO genres(genreName) VALUES(?)", (genre,))
                    cur.execute("SELECT * FROM genres WHERE genreName=?",(genre, )) 
                    genreID = cur.fetchall()
                bookgenre = ( bookID, genreID[0][0] )
                cur.execute("INSERT INTO BooksGenres VALUES(?,?)",bookgenre)
    # Confirm
        #cur.execute("SET FOREIGN_KEY_CHECKS=1")
        connection.commit()
    # Print OK
        desc.close
        print("INSERT NUMBER " + str(i) + " IS SUCCESSFUL!")

if __name__ == "__main__":
    main()
