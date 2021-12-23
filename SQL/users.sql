CREATE PROCEDURE spGetUserByID
@ID int
as 
BEGIN 
	SELECT * 
	FROM users
	WHERE userID = @ID
END
-------------------------
use project;
GO 
DROP TABlE users;
GO

CREATE TABLE users (
  userID int IDENTITY(1,1) NOT NULL,
  userName varchar(18) NOT NULL,
  pass varchar(17) NOT NULL,
  Email varchar(255) NOT NULL,
  age int DEFAULT NULL,
  DOB date DEFAULT NULL,
  isAdmin INT DEFAULT(0) NOT NULL,
  UserBlocked INT DEFAULT(0) NOT NULL,
  lastaccess datetime DEFAULT NULL,
  PRIMARY KEY (userID)
);
GO

-- A few inserts 
INSERT INTO users(userName,pass,age,Email,UserBlocked) VALUES('user','1234',18,'user@email.com',0);
INSERT INTO users(userName,pass,age,Email,UserBlocked) VALUES('user2','12345',21,'user@email.com',0);
INSERT INTO users(userName,pass,age,Email,UserBlocked) VALUES('Nameee','1234',18,'user@email.com',0);

-- a Procedure
Execute spGetUserByID 1
