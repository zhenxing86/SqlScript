USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[invoice_UpdateState]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------
--update
------------------------------------
CREATE PROCEDURE [dbo].[invoice_UpdateState]
 @ID int,
 @state varchar(100)
 
 AS 

if(@state='作废')
begin
	UPDATE [invoice] SET 
 [state] = @state where ID=@ID
end
--else if(@state='待开发票')
--begin
--	UPDATE [invoice] SET 
-- [state] = @state where ID=@ID and state='作废'
--end
else 
begin
UPDATE [invoice] SET 
 [state] = @state where ID=@ID and [state]='待开发票'
 
 declare @pid varchar(100)
 select @pid=pid from [invoice] where ID=@ID

 exec('update payinfolog  set isinvoice=2 where  ID in ('+@pid+') ')
end


GO
