USE CommonFun
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master̷
-- Create date: 
-- Description:	@type 0 ����һ�� 1 ����һ
-- Memo: 
select commonfun.dbo.fn_LastWeekBgnEnd(0)	
select commonfun.dbo.fn_LastWeekBgnEnd(1)		
*/
CREATE FUNCTION fn_LastWeekBgnEnd(@type int)
returns datetime
as
begin
	IF @type = 0 set @type = -6
	return	dateadd(d,datediff(d,0,getdate()),0) 
				- DATEPART(weekday, dateadd(d,datediff(d,0,getdate()),0) + @@DATEFIRST - 1) 
				+ @type
end
	--���ܿ�ʼʱ��
