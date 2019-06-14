USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[kinbaseinfo_GetKName]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  
/*      
-- Author:      xie  
-- Create date: 2014-04-24     
-- Description: 根据kid获取kname     
-- Memo:       
exec kinbaseinfo_GetKName       
 @kid = 12511   
*/      
CREATE PROCEDURE [dbo].[kinbaseinfo_GetKName]     
@kid int  
as  
  
  SELECT kname FROM basicdata..kindergarten 
   where kid = @kid  and deletetag =1 
GO
