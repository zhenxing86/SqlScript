USE [AppConfig]
GO
/****** Object:  StoredProcedure [dbo].[Get_Book_Tip]    Script Date: 2014/11/24 21:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--Get_Book_Tip 288556,2
create  PROCEDURE [dbo].[Get_Book_Tip] 
@userid int
 AS 

	declare @hastip int
	select @hastip = COUNT(1) from book_tip_log where userid=@userid

	if(@hastip=0)
	begin
		insert into book_tip_log (userid)values(@userid)
	end

	declare @book int

	select @book=sbook
		from book_tip_log
			where userid=@userid
	select @book
	return

GO
