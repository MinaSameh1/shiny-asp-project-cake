CREATE PROCEDURE spGetUserByID
@ID int
as 
BEGIN 
	SELECT * 
	FROM users
	WHERE userID = @ID
END

GO 

use project;
GO 

CREATE TABLE users (
  userID int IDENTITY(1,1) NOT NULL,
  userName varchar(17) DEFAULT NULL,
  pass varchar(255) DEFAULT NULL,
  Email varchar(255) DEFAULT NULL,
  age int DEFAULT NULL,
  DOB date DEFAULT NULL,
  isAdmin int DEFAULT NULL,
  UserBlocked INT DEFAULT NULL,
  lastaccess datetime DEFAULT NULL,
  PRIMARY KEY (userID)
);
GO

-- A few inserts 
INSERT INTO users(userName,pass,age,Email,UserBlocked) VALUES('user','1234',18,'user@email.com',0);
INSERT INTO users(userName,pass,age,Email,UserBlocked) VALUES('user2','1234',21,'user@email.com',0);
INSERT INTO users(userName,pass,age,Email,UserBlocked) VALUES('Nameee','1234',18,'user@email.com',0);

-- a Procedure
Execute spGetUserByID 1

