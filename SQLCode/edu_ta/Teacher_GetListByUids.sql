USE [edu_ta]
GO
/****** Object:  StoredProcedure [dbo].[Teacher_GetListByUids]    Script Date: 2014/11/24 23:06:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Teacher_GetListByUids]
@kid int,
@uids varchar(100)
as 


exec('select userid,name 
from BasicData..[user] 
where kid='+@kid+' and userid in ('+@uids+')')

GO
