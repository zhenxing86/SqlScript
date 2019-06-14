USE [mcapptemp]
GO
/****** Object:  StoredProcedure [dbo].[sms_man_kid_GetList]    Script Date: 2014/11/24 23:19:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sms_man_kid_GetList]
 AS

select  smk.kid,smk.userid,ub.mobile,ub.name,smk.roletype
	from mcapp..sms_man_kid smk
	inner join BasicData..[user] ub 
		  on smk.userid = ub.userid and smk.roletype>0 and smk.roletype<3
	where ub.mobile is not null 
	

GO
