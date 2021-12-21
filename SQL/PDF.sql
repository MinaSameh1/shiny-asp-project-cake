use project;
GO
DROP TABLE pdf;
GO
DROP TABLE pdfDownloaded;
GO


CREATE TABLE pdf (
	pdfID INT NOT NULL IDENTITY(1,1) PRIMARY key,
	bookID INT NOT NULL DEFAULT 0,
	pdfLocation VARCHAR(MAX) NOT NULL DEFAULT '',
	CONSTRAINT fk_pdfbookID FOREIGN KEY (bookID) REFERENCES books(BookID)
);
GO
CREATE TABLE pdfDownloaded (
	BookID INT NOT NULL,
	userID INT NOT NULL, 
	Downloaded DateTime NOT NULL,
	CONSTRAINT fk_pdf_downloaded_user FOREIGN KEY (userID) REFERENCES users(userID)
);
GO

INSERT INTO pdf VALUES(1,'./pdf/book1.pdf');

SELECT * FROM books 
LEFT JOIN pdf ON books.bookID = pdf.BookID;

