use project;
GO

CREATE TABLE pdf (
	pdfID INT NOT NULL IDENTITY(1,1) PRIMARY key,
	bookID INT NOT NULL DEFAULT 0,
	pdfLocation VARCHAR(MAX) NOT NULL DEFAULT '',
	CONSTRAINT fk_pdfbookID FOREIGN KEY (bookID) REFERENCES books(BookID)
);

INSERT INTO pdf VALUES(1,'./pdf/book1.pdf');

SELECT * FROM books 
LEFT JOIN pdf ON books.bookID = pdf.BookID;

DELETE FROM books WHERE BookID = 6

