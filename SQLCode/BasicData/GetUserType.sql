USE [BasicData]
GO
/****** Object:  StoredProcedure [dbo].[GetUserType]    Script Date: 2014/11/24 21:18:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master谭
-- Create date: 
-- Description:	获取用户实体
-- Memo:		
*/
CREATE PROCEDURE [dbo].[GetUserType]
	@userid int
AS
BEGIN
	select usertype from [user] where userid=@userid
END

GO
