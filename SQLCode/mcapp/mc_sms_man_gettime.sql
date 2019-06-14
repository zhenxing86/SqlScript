USE [mcapp]
GO
/****** Object:  StoredProcedure [dbo].[mc_sms_man_gettime]    Script Date: 2014/11/24 23:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mc_sms_man_gettime]  
 @kid int  
AS  
BEGIN  
 if not exists( select 1 from mcapp..kindergarten where kid = @kid )  
 begin  
  insert into  mcapp..kindergarten(kid,kname,smstime)  
  select kid,kname,1  
  from basicdata..kindergarten k  
  where kid = @kid  
 end  
   
 select smstime from  mcapp..kindergarten  
  where kid = @kid   
  
END 
GO
