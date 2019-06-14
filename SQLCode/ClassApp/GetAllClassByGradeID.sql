USE [ClassApp]
GO
/****** Object:  StoredProcedure [dbo].[GetAllClassByGradeID]    Script Date: 2014/11/24 22:57:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:	  liaoxin
-- Create date: 2011-6-29
-- Description:	根据年级ID获取班级列表
-- =============================================
CREATE PROCEDURE [dbo].[GetAllClassByGradeID]
@gradeid int ,
@userid int 
AS
BEGIN
   select cid,cname from basicdata..class  where grade=@gradeid  AND cid in (select cid from basicdata..user_class where userid=@userid)
END





GO
