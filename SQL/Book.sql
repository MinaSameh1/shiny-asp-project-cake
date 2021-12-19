CREATE PROCEDURE spGetBookById
@ID int
as 
BEGIN 
	SELECT * 
	FROM books
	WHERE BookID = @ID
END
GO
------------------------------------

USE project;
GO
DROP TABLE BooksGenres;
GO
DROP TABLE genres;
GO
DROP Table books;
GO

CREATE TABLE books (
  BookID int IDENTITY(1,1) NOT NULL,
  title varchar(255) NOT NULL,
  author varchar(255) DEFAULT NULL,
  total_pages int DEFAULT NULL,
  SelerID int DEFAULT NULL,
  Lang varchar(50) DEFAULT NULL,
  published_date date DEFAULT NULL,
  uploadedDate datetime DEFAULT NULL,
  series varchar(200) DEFAULT NULL,
  cover varchar(20) DEFAULT NULL,
  description text DEFAULT NULL,
  isApproved int DEFAULT NULL,
  PRIMARY KEY (BookID),
  CONSTRAINT FK_SelerID FOREIGN KEY (SelerID) REFERENCES users(userID) ON DELETE CASCADE ON UPDATE CASCADE
);
GO

CREATE TABLE genres(
	genreID INT IDENTITY(1,1) NOT NULL,
	genreName VARCHAR(255) NOT NULL,
	PRIMARY KEY(genreID)
);
GO
CREATE TABLE BooksGenres(
	bookID INT,
	genreID INT,
	CONSTRAINT FK_genreID FOREIGN KEY (genreID) REFERENCES genres(genreID),
	CONSTRAINT FK_genresbookID FOREIGN KEY (bookID) REFERENCES Books(BookID)
);
GO

INSERT INTO genres(genreName) VALUES('Fiction');
INSERT INTO genres(genreName) VALUES('Fantasy');
INSERT INTO genres(genreName) VALUES('Young Adult');
INSERT INTO genres(genreName) VALUES('Romance');
INSERT INTO genres(genreName) VALUES('Novels');
INSERT INTO genres(genreName) VALUES('Classics');
INSERT INTO genres(genreName) VALUES('Literature');
INSERT INTO genres(genreName) VALUES('Contemporary');
INSERT INTO genres(genreName) VALUES('Historical');
INSERT INTO genres(genreName) VALUES('Audio book');
INSERT INTO genres(genreName) VALUES('Adventure Adult');
INSERT INTO genres(genreName) VALUES('Historical Fiction');
INSERT INTO genres(genreName) VALUES('Mystery');
INSERT INTO genres(genreName) VALUES('Science Fiction');
INSERT INTO genres(genreName) VALUES('Cultural');
INSERT INTO genres(genreName) VALUES('Paranormal');
INSERT INTO genres(genreName) VALUES('Thriller');
INSERT INTO genres(genreName) VALUES('Magic');
INSERT INTO genres(genreName) VALUES('Childrens');
INSERT INTO genres(genreName) VALUES('Urban Fantasy');
INSERT INTO genres(genreName) VALUES('Drama');
INSERT INTO genres(genreName) VALUES('Science Fiction Fantasy');
INSERT INTO genres(genreName) VALUES('European');
INSERT INTO genres(genreName) VALUES('Literature');
INSERT INTO genres(genreName) VALUES('Adult Fiction');
INSERT INTO genres(genreName) VALUES('Supernatural');
INSERT INTO genres(genreName) VALUES('Teen');
INSERT INTO genres(genreName) VALUES('Nonfiction');
INSERT INTO genres(genreName) VALUES('Literary Fiction');
INSERT INTO genres(genreName) VALUES('Paranormal Romance');
INSERT INTO genres(genreName) VALUES('Gothic');

INSERT INTO books(title,author,total_pages,SelerID,Lang,price,published_date,uploadedDate,cover,description,isApproved) 
VALUES('testBook','testAuthor',100,1,'English',10.20,'1999-10-10','2021-05-10','cover/img1.png','This is a discription',1),
('testBook','testAuthor',200,2,'English',11.40,'1999-10-10','2021-05-10','cover/img2.png','This is a discription',1)
;