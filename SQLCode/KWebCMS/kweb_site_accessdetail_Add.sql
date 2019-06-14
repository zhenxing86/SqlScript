USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[kweb_site_accessdetail_Add]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











-- =============================================
-- Author:		hanbin
-- Create date: 2009-04-22
-- Description:	Add
-- =============================================
CREATE PROCEDURE [dbo].[kweb_site_accessdetail_Add]
@siteid int,
@fromip nvarchar(20)
AS
BEGIN
--	BEGIN TRANSACTION

/**/
--	DECLARE @MaxDateTime DateTime
--	SELECT top 1 @MaxDateTime=accessdatetime FROM site_accessdetail 
--	WHERE siteid=@siteid AND fromip=@fromip order by accessdatetime desc
--	IF (@MaxDateTime IS NULL OR DATEADD(Mi,1,@MaxDateTime)<GETDATE())
--	BEGIN
	INSERT INTO logdata..site_accessdetail VALUES(@siteid,GETDATE(),@fromip)
--
		--UPDATE site SET accesscount=accesscount+1 WHERE siteid=@siteid	
--	END

--if(@siteid=13326 or @siteid=9425 or @siteid=1208)
--begin
--	UPDATE site SET accesscount=accesscount+1 WHERE siteid=@siteid
--end

	IF @@ERROR <> 0
	BEGIN
	--	ROLLBACK TRANSACTION
		RETURN 0
	END
	ELSE
	BEGIN
	--	COMMIT TRANSACTION
		RETURN 1
	END
END





--select * from site_accessdetail where siteid=12511
























GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'幼儿园ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'PROCEDURE',@level1name=N'kweb_site_accessdetail_Add', @level2type=N'PARAMETER',@level2name=N'@siteid'
GO
