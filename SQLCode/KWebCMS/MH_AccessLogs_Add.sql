USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[MH_AccessLogs_Add]    Script Date: 2014/11/24 23:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		hanbin
-- Create date: 2009-06-01
-- Description:	Add 记录访问某个页面的情况
-- =============================================
CREATE PROCEDURE [dbo].[MH_AccessLogs_Add]
@Type nvarchar(50)='',
@Description nvarchar(1000)='',
@Module nvarchar(50)='',
@ObjectID int,
@Createdatetime datetime,
@fromip nvarchar(50)=''
AS
--BEGIN
--	IF EXISTS(SELECT * FROM AccessLogs WHERE [Type]=@Type AND Module=@Module AND ObjectID=@ObjectID AND fromip=@fromip Having GETDATE()<DATEADD(mi,5,Max(Createdatetime)))
--	BEGIN
--		RETURN 1
--	END
--	ELSE
--	BEGIN
--		INSERT INTO AccessLogs([Type],[Description],[Module],[ObjectID],[Createdatetime],[fromip])
--		VALUES(@Type,@Description,@Module,@ObjectID,GETDATE(),@fromip) 
--	END
--
--    IF @@ERROR <> 0
--    BEGIN
--        RETURN 0
--    END
--    ELSE
--    BEGIN
--        RETURN @@IDENTITY
--    END
--END





GO
