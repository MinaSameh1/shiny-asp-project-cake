CREATE PROCEDURE spGetBookById
@ID int
as 
BEGIN 
	SELECT * 
	FROM books
	WHERE BookID = @ID
END
GO

USE project;
GO
CREATE TABLE books (
  BookID int IDENTITY(1,1) NOT NULL,
  title varchar(255) NOT NULL,
  author varchar(255) DEFAULT NULL,
  total_pages int DEFAULT NULL,
  SelerID int DEFAULT NULL,
  Lang varchar(50) DEFAULT NULL,
  price FLOAT DEFAULT NULL,
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

INSERT INTO books(title,author,total_pages,SelerID,Lang,price,published_date,uploadedDate,cover,description,isApproved) 
VALUES('testBook','testAuthor',100,1,'English',10.20,'1999-10-10','2021-05-10','cover/img1.png','This is a discription',1),
('testBook','testAuthor',200,2,'English',11.40,'1999-10-10','2021-05-10','cover/img2.png','This is a discription',1)
;

EXECUTE spGetBookById 2;

