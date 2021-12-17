CREATE PROCEDURE spGetBookById
@ID int
as 
BEGIN 
	SELECT * 
	FROM books
	WHERE BookID = @ID
END

