CREATE PROCEDURE spGetUserByID
@ID int
as 
BEGIN 
	SELECT * 
	FROM users
	WHERE userID = @ID
END

