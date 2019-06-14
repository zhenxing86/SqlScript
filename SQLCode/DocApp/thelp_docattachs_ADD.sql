USE [DocApp]
GO
/****** Object:  StoredProcedure [dbo].[thelp_docattachs_ADD]    Script Date: 2014/11/24 23:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------------------------------------
--用途：增加文档附件
--项目名称：ZGYEYBLOG
--说明：
--时间：2008-10-03 22:21:32
--作者：along
------------------------------------
CREATE PROCEDURE [dbo].[thelp_docattachs_ADD]
@docid int,
@title nvarchar(30),
@filepath nvarchar(200),
@filename nvarchar(200),
@filesize nvarchar(200),
@filetype int

 AS 
	INSERT INTO thelp_docattachs(
	[docid],[title],[filepath],[filename],[filesize],[filetype],[createdatetime]
	)VALUES(
	@docid,@title,@filepath,@filename,@filesize,@filetype,getdate()
	)
	
		
	--DECLARE @name nvarchar(50),@LOGdescription nvarchar(300),@bloguserid int,@doctitle nvarchar(30)
	--SELECT @name=t1.nickname ,@bloguserid=t1.userid,@doctitle=t3.title FROM blog_user t1 INNER JOIN thelp_categories t2 ON t1.userid=t2.userid 
	--	INNER JOIN thelp_documents t3 ON t2.categoryid=t3.categoryid  WHERE t3.docid=@docid
	
   --SET @LOGdescription='<a href="http://blog.zgyey.com/'+cast(@bloguserid as nvarchar(20))+'/index.html" target="_blank">'+@name+'</a>  在文档<a href="http://blog.zgyey.com/'+cast(@bloguserid as nvarchar(20))+'/thelp/thelpdocview_'+cast(@docid as nvarchar(20))+'.html" target="_blank"> <<'+@doctitle+'>></a> 上传了附件 " '+@title+' "'
	IF @@ERROR <> 0 
	BEGIN 		
	   RETURN(-1)
	END
	ELSE
	BEGIN	
		--EXEC sys_actionlogs_ADD @bloguserid,@name,@LOGdescription ,'13'
	   RETURN @@IDENTITY
	END










GO
