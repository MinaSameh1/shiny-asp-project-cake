use project;
GO
DROP TABLE pdfDownloaded;
GO


CREATE TABLE pdfDownloaded (
	BookID INT NOT NULL,
	userID INT NOT NULL, 
	Downloaded DateTime NOT NULL,
	CONSTRAINT fk_pdf_downloaded_user FOREIGN KEY (userID) REFERENCES users(userID)
);
GO



