USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[addservice_vip_Excel_v2_Update]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--update
------------------------------------
CREATE PROCEDURE [dbo].[addservice_vip_Excel_v2_Update]
 @ID int,
 @cname varchar(200),
 @cuname varchar(200),
 @isproxy int--//0:更新班级和名称,1:更新班级

 
 AS 
 
 if(@isproxy=0)
 begin
 	UPDATE [addservice_vip_Excel_v2] SET 
 [cname] = @cname,
 [cuname] = @cuname
 	 WHERE ID=@ID 
 
 end
 else
 begin
 	UPDATE [addservice_vip_Excel_v2] SET 
 [cname] = @cname
 	 WHERE ID=@ID 
 
 end
 
 




GO
