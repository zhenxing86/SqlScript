USE [mcapptemp]
GO
/****** Object:  StoredProcedure [dbo].[updateteaidsyntag]    Script Date: 2014/11/24 23:19:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









------------------------------------
--select *from stuid_tmp
--select *from teaid_tmp
------------------------------------
CREATE PROCEDURE [dbo].[updateteaidsyntag]
@kid int
 AS 
	
--update t2 set syntag=1 from teaid_tmp t1 left join teainfo t2 on t1.oid=t2.teaid

--delete teaid_tmp where devid='001251102'
	 








GO
