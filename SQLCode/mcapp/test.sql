USE [mcapp]
GO
/****** Object:  StoredProcedure [dbo].[test]    Script Date: 05/14/2013 14:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：test
------------------------------------
CREATE PROCEDURE [dbo].[test]

 AS

exec syn_all
exec addmcappdatamonitor 12511
select * from datamonitor

exec [getquerycmd] 12511,'001251100' 
SELECT *    
  FROM [mcapp].[dbo].[querycmd]
where kid=12511 and devid='001251100' --and status=1
and querytag=3
 
exec [getstuinfolist] 12511,'001251100'

exec [getteainfolist] 12511,'001251100'
select * From teainfo where kid=12511

exec [getcarddeleteinfo] 12511,'001251100'

select * from userdelete_tmp

SELECT [oid]      
      ,[usertype]
      ,[kid]
      ,[adate]
  FROM [mcapp].[dbo].[card_delete_tmp]
 
 select 12
  
GO
