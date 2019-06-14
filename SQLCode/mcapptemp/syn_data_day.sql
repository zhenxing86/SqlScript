USE [mcapptemp]
GO
/****** Object:  StoredProcedure [dbo].[syn_data_day]    Script Date: 2014/11/24 23:19:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master谭
-- Create date: 
-- Description:	
-- Memo:		
*/
CREATE PROCEDURE [dbo].[syn_data_day]
as
BEGIN
	SET NOCOUNT ON
---stu_at
	INSERT INTO mcapp.dbo.stu_at_month
						 (stuid, card, cdate, ctype, adate, devid,gunid,kid)
			 SELECT stuid, card, cdate, ctype, adate, devid,gunid,kid
					FROM mcapp.dbo.stu_at_day

	truncate table stu_at_day 

	update stu_mc_day set Status = 1 where Status = 0

	--teacher
	INSERT INTO mcapp.dbo.tea_at_month
						 (teaid, card, cdate, ctype, adate, devid,gunid, kid)
			 SELECT teaid, card, cdate, ctype, adate, devid,gunid, kid
					FROM mcapp.dbo.tea_at_day

	truncate table tea_at_day

END 

GO
