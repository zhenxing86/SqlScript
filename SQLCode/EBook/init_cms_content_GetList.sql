USE [edu_dx]
GO
/****** Object:  StoredProcedure [dbo].[init_cms_content_GetList]    Script Date: 2014/11/24 23:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[init_cms_content_GetList]
as


SELECT 
	       [contentid]    ,[categoryid]    ,[content]    ,[title]    ,[titlecolor]    ,[author]    ,[createdatetime]    ,[searchkey]    ,[searchdescription]    ,[browsertitle]    ,[viewcount]    ,[commentcount]    ,[orderno]    ,[commentstatus]    ,[ispageing]    ,[status]    ,[siteid]  	 FROM [cms_content]



GO
