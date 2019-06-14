USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[blog_thelp_docattachs_GetList]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[blog_thelp_docattachs_GetList]
@docid int
 AS 
	SELECT 
	attachsid,docid,title,filepath,filename,filesize,filetype,createdatetime
	 FROM blogapp..thelp_docattachs
	WHERE docid=@docid
GO
