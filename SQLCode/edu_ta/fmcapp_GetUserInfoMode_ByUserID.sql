USE [fmcapp]
GO
/****** Object:  StoredProcedure [dbo].[fmcapp_GetUserInfoMode_ByUserID]    Script Date: 2014/11/24 23:06:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
CREATE PROCEDURE [dbo].[fmcapp_GetUserInfoMode_ByUserID]  
 (@userid int,@a int=810)  
 AS   
  
 declare @isteacher int=0 
    declare @kid int ,@isvip int=0 
    
     
 select @isteacher=userid  
   from BasicData..[user]  
  where   
   userid=@userid   
   and deletetag=1  
   and usertype>0  
     
 select @kid=kid  
   from BasicData..[user]  
  where   
   userid=@userid   
   and deletetag=1  
     
  set @isvip=ossapp.dbo.addservice_vip_GetRule(@userid,@a)
   if(@isteacher>0 )
   begin
		set @isvip=1
   end
     
 select @userid,@isvip,@kid  
GO
