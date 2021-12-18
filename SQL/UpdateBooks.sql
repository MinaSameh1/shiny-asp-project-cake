USE [project]
GO

UPDATE [dbo].[books]
   SET [title] = <title, varchar(255),>
      ,[author] = <author, varchar(255),>
      ,[total_pages] = <total_pages, int,>
      ,[SelerID] = <SelerID, int,>
      ,[Lang] = <Lang, varchar(50),>
      ,[price] = <price, float,>
      ,[published_date] = <published_date, date,>
      ,[uploadedDate] = <uploadedDate, datetime,>
      ,[series] = <series, varchar(200),>
      ,[cover] = <cover, varchar(20),>
      ,[description] = <description, text,>
      ,[isApproved] = <isApproved, int,>
 WHERE BookID = @Val
GO

