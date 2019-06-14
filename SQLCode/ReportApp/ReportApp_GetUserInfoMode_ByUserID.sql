USE [ReportApp]
GO
/****** Object:  StoredProcedure [dbo].[ReportApp_GetUserInfoMode_ByUserID]    Script Date: 2014/11/24 23:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		xzx
-- Create date: 2013-05-9
-- Description: 获取用户基本信息
--exec ReportApp_GetUserInfoMode_ByUserID 84557
-- =============================================
CREATE PROCEDURE [dbo].[ReportApp_GetUserInfoMode_ByUserID]
@userid int
AS
BEGIN
      
declare @kid int, @usertype int, @isngbapp int=0  
     

      
select @kid=u.kid,@usertype=u.usertype
 from BasicData..[user] u
 where u.userid = @userid
 
 select @isngbapp=COUNT(1) from blogapp..permissionsetting where kid=@kid and ptype=77
 if(@isngbapp>0) set @isngbapp=0
 else set @isngbapp=1
 
 select @userid,@kid,@usertype,@isngbapp

END

GO
