USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[kmp_KinMasterMessage_updateContent]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  
-- =============================================  
-- Author:  xie
-- Create date: 2013-11-01  
-- Description: 修改园长信息的回复
/*
memo: 
exec kmp_KinMasterMessage_updateContent 123,'很好，继续努力。',16535
*/
-- =============================================  
CREATE PROCEDURE [dbo].[kmp_KinMasterMessage_updateContent]  
@userid int,@content varchar(300),@id int   
AS  
BEGIN  
  update kmp..KinMasterMessage set [content]=@content where userid=@userid  and parentid=@id   
    
 if @@error<>0  
     return 0  
 else  
    return 1  
END  
  
  
--select * from kmp..GraduateMessage where parentid=16535

GO
