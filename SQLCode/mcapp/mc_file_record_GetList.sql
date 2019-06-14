USE [mcapp]
GO
/****** Object:  StoredProcedure [dbo].[mc_file_record_GetList]    Script Date: 2014/11/24 23:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*      
author: xie      
altertime: 2014-09-16 17:40      
des: 获取待处理的晨检数据记录      
      
demo： mcapp     
    
select *from mc_file_record where ftype=6    
    
*/      
      
CREATE proc [dbo].[mc_file_record_GetList]      
as      
    
set rowcount 10    
    
update mc_file_record       
 set ftype = 1     
 output Deleted.id,Deleted.kid,Deleted.devid,Deleted.filepath,Deleted.[filename]      
where ftype=0     
    
    
GO
