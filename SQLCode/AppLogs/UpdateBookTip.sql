USE [AppConfig]
GO
/****** Object:  StoredProcedure [dbo].[UpdateBookTip]    Script Date: 2014/11/24 21:11:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[Get_User_Tip] 12511,1

create  PROCEDURE [dbo].[UpdateBookTip]
@userid int
 AS 

declare @hastip int
select @hastip = COUNT(1) from book_tip_log where userid=@userid

if(@hastip=0)
begin
	insert into book_tip_log (userid)values(@userid)
end

	update book_tip_log  
		set sbook=1
			where userid=@userid


	


GO
