USE [NGBApp]
GO
/****** Object:  StoredProcedure [dbo].[and_hb_temp_GetModel]    Script Date: 2014/11/24 23:18:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*  
-- Author:      蔡杰
-- Create date: 2014-04-15  
-- Description: 手机客户端获取模板
-- Memo:    
*/   
CREATE Procedure [dbo].[and_hb_temp_GetModel] 
@Type Varchar(50) = ''
as

if @Type = '期末总评'
  Select id pagetplid, tmpcontent tplname From zgyey_om..hb_remark_temp Where tmptype = '期末评语' and status = 1
else
  Select pagetplid, tplname From NGBApp.dbo.PageTpl Order by orderno


GO
