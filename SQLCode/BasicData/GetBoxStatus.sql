USE [BasicData]
GO
/****** Object:  StoredProcedure [dbo].[GetBoxStatus]    Script Date: 2014/11/24 21:18:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
/*  
-- =============================================  
-- Author:  Master谭  
-- Create date: 2014-02-18  
-- Description: 过程任务盒子状态  
-- Memo: GetBoxStatus 12511   
*/  
CREATE PROCEDURE [dbo].[GetBoxStatus]   
 @kid int  
AS  
BEGIN  
 SET NOCOUNT ON;  
 --if @kid=0
 --select '1,1' BoxStatus
 --else
 SELECT   
  cast(CommonFun.dbo.fn_RoleGet(k.BoxStatus,1) as varchar(1))+','+  
  cast(CommonFun.dbo.fn_RoleGet(k.BoxStatus,2) as varchar(1))BoxStatus  
  FROM BasicData..kindergarten k   
  WHERE k.kid = @kid  
  
  
END  



GO
