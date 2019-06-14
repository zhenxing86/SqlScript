USE [AppLogs]
GO
/****** Object:  StoredProcedure [dbo].[TbList_GetList]    Script Date: 2014/11/24 21:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================    
-- Author:  xzx    
-- Project: com.zgyey.ossapp    
-- Create date: 2013-11-15    
-- Description: 获取监控表信息    
-- =============================================    
create PROCEDURE [dbo].[TbList_GetList]    
AS    
BEGIN    
    
SET NOCOUNT ON   
 select tbid,dbname,tbname,descript,keycol,keycol2,keycol3,kidinfo from TbList
    
end

GO
