USE [BasicData]
GO
/****** Object:  StoredProcedure [dbo].[ModifyGrade]    Script Date: 2014/11/24 21:18:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ModifyGrade]      
@userid int,      
@grade int      
as      
begin      
 update [user] set jzxxgrade=@grade where userid=@userid       
 if(@@ERROR<>0)    
 return -1    
 else    
 return @userid     
end
GO
