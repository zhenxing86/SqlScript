USE [BasicData]
GO
/****** Object:  StoredProcedure [dbo].[GetUserModelByKids_Update]    Script Date: 2014/11/24 21:18:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetUserModelByKids_Update]
@userid int
AS
BEGIN
update [user] set [password]='7C4A8D09CA3762AF61E59520943DC26494F8941B'
where userid=@userid and usertype in(97,98)

END


GO
