USE [mcapptemp]
GO
/****** Object:  StoredProcedure [dbo].[GetUserDelInfoUpdateStatus]    Script Date: 2014/11/24 23:19:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

  
------------------------------------  
--用途：查询记录信息   
--项目名称：  
--说明：  
--时间：2012-10-16 21:55:38  
/*test  
  
exec [GetUserDelInfoUpdateStatus] 12511,'001251100',0,'2013-08-16 19:35:55'  
  
*/  
------------------------------------  
create PROCEDURE [dbo].[GetUserDelInfoUpdateStatus]  
@kid int,   
@lupdate datetime  
 AS  
  
 declare @server_cnt int  
      
 select @server_cnt=COUNT(*)   
  from BasicData..User_Del c      
   where c.kid=@kid and c.updatetime>=@lupdate  
 
 if(@server_cnt>0)  
  select 3 
 else  
  select 0  
  

GO
