USE [GBApp]
GO
/****** Object:  StoredProcedure [dbo].[UpdateGBRefreshTag]    Script Date: 2014/11/24 23:07:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[UpdateGBRefreshTag]
@gbid int
 AS 	


	insert into gbrefreshtag(gbid)
     values(@gbid)

	
	IF @@ERROR <> 0 
	BEGIN 		
	   RETURN (-1)
	END
	ELSE
	BEGIN	
	   RETURN (1)
	END



GO
