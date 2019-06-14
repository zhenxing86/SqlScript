USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetChildBirthdayBoard]    Script Date: 2014/11/24 23:12:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[sp_GetChildBirthdayBoard]
@KID int, 
@CID int
AS
--	declare @KID int
--	declare @CID int
--	set @KID=1429
--	set @CID=5515


	select userid, name,birthday from t_Child 
	where datepart(mm,convert(datetime,birthday)) = datepart(mm,getdate()) and Kindergartenid=@KID 
	and ClassID = @CID and status = 1
GO
