USE [mcapp]
GO
/****** Object:  StoredProcedure [dbo].[card_import]    Script Date: 2014/11/24 23:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master谭
-- Create date: 
-- Description:	
-- Memo:	
select * from cardinfo
exec card_import 12511,
	
*/
CREATE PROCEDURE [dbo].[card_import]
	@kid int,
	@cardno nvarchar(10)
AS

if(exists(select 1 from cardinfo where cardno=@cardno and kid=@kid))
begin
	select 1
end
else
begin
	insert into cardinfo (kid,card,CardType) 
		values(@kid, @cardno,2)
end

GO
