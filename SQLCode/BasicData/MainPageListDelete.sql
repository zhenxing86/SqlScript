USE [BasicData]
GO
/****** Object:  StoredProcedure [dbo].[MainPageListDelete]    Script Date: 2014/11/24 21:18:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*  
-- Author:      Master谭  
-- Create date: 2013-12-3  
-- Description: 
-- Memo:
[MainPageListDelete] 1, 302982
*/  
--  
create PROC [dbo].[MainPageListDelete]
	@tag int,
	@tagvalue int
AS
BEGIN  
	
	DELETE MainPageList WHERE Tag=@tag AND TagValue=@tagvalue
	
END

GO
