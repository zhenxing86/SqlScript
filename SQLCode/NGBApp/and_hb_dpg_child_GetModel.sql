USE [NGBApp]
GO
/****** Object:  StoredProcedure [dbo].[and_hb_dpg_child_GetModel]    Script Date: 2014/11/24 23:18:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*  
-- Author:      蔡杰
-- Create date: 2014-04-15  
-- Description: 手机客户端查看小朋友的发展评估
-- Memo:    
*/   
CREATE Procedure [dbo].[and_hb_dpg_child_GetModel]
@gbid Int
as

Select DevEvlPoint From NGBApp.dbo.growthbook a Where gbid = @gbid

GO
