USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[site_keyword_GetModel]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[site_keyword_GetModel]
@kid int
as

select s.siteid,keyword,description,shortname from  kwebcms..site s
inner join kwebcms..site_config c on c.siteid=s.siteid
 where s.siteid=@kid



GO
