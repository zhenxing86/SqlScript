USE [fmcapp]
GO
/****** Object:  StoredProcedure [dbo].[fmc_click]    Script Date: 2014/11/24 23:06:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
------------------------------------
--用途：点击率
--项目名称：点击率 com.zgyey.fmcapp.web 
--说明: 
--时间：2013-6-17 15:50:29
--exec fmc_click 'fmc_expertsforum',1
------------------------------------
CREATE PROCEDURE [dbo].[fmc_click]
@tbname varchar(20),
@ID	int
	
AS 

set @tbname=CommonFun.dbo.FilterSQLInjection(@tbname)

exec ('update '+@tbname+ ' set click=click+1 where ID='+@ID)


select @ID

GO
