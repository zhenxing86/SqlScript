USE [NGBApp]
GO
/****** Object:  StoredProcedure [dbo].[and_hb_dpg_child_GetModelV2]    Script Date: 2014/11/24 23:18:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*    
-- Author:      xie
-- Create date: 2014-04-15    
-- Description: 手机客户端获取发展评估内容及小朋友的发展评估得分(web)  
-- Memo:  
and_hb_dpg_child_GetModelV2 46144,'2014-0'    
*/     
CREATE Procedure [dbo].[and_hb_dpg_child_GetModelV2]
@gbid Int    
as  
Select target, district From NGBApp.dbo.devetarget Where grade = 1 Order by orderno 

Select DevEvlPoint From NGBApp.dbo.growthbook a Where gbid = @gbid  

GO
