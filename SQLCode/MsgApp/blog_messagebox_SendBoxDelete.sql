USE [MsgApp]
GO
/****** Object:  StoredProcedure [dbo].[blog_messagebox_SendBoxDelete]    Script Date: 2014/11/24 23:15:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE PROCEDURE [dbo].[blog_messagebox_SendBoxDelete]
@UserId int
 AS
update  blog_messagebox set deletetag=0
	 WHERE fromuserid=@UserId 

	IF @@ERROR <> 0 
		BEGIN		
		  RETURN(-1)
		END
		ELSE
		BEGIN		
		  RETURN (1)
		END

GO
