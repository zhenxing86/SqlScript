USE [GBAppTemp]
GO
/****** Object:  StoredProcedure [dbo].[userid_temp_ADD]    Script Date: 2014/11/24 23:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[userid_temp_ADD]
@userid int,
@tempid int	
 AS 	

if(not exists(select * from ebook..uid_temp where userid=@userid and tempid=@tempid))
begin
	insert into ebook..uid_temp(userid,tempid,actiondate)
     values(@userid,@tempid,getdate())
end
	
	IF @@ERROR <> 0 
	BEGIN 		
	   RETURN (-1)
	END
	ELSE
	BEGIN	
	   RETURN (1)
	END


GO
