USE [BlogApp]
GO
/****** Object:  StoredProcedure [dbo].[blog_postsyscategory_relation_Add]    Script Date: 2014/11/25 11:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[blog_postsyscategory_relation_Add]
	@contentid int,
    @categoryid int
AS
BEGIN
   
	insert into blog_postsyscategory_relation(postid,actiondate,categoryid)
	values(@contentid,getdate(),@categoryid)

    IF @@ERROR <> 0
    BEGIN
        RETURN 0
    END
    ELSE
    BEGIN
        RETURN 1
    END
END



GO
