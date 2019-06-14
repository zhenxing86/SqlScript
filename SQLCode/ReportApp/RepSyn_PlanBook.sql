USE [ReportApp]
GO
/****** Object:  StoredProcedure [dbo].[RepSyn_PlanBook]    Script Date: 2014/11/24 23:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








--select * From reportapp..rep_homebook
-- =============================================
-- Author:		<Author,,along>
-- Create date: <Create Date,,2011-08-19>
-- Description:	
--exec [RepSyn_PlanBook]  '2011-08-14','2011-08-07'
-- =============================================
create PROCEDURE [dbo].[RepSyn_PlanBook]  
@splitdate_t datetime,
@splitdate_l datetime
AS
BEGIN
	declare @classid int
	declare @thisweeknum int
	declare @lastweeknum int
	declare @tnbid int

			declare pbookrs insensitive cursor for 
			select cid From basicdata..class where deletetag=1 and iscurrent=1
			open pbookrs
			fetch next from pbookrs into @classid
			while @@fetch_status=0
			begin
				select @thisweeknum=0
				select @lastweeknum=0
				insert into ReportApp..rep_plantbook(classid,thisweeknum,lastweeknum,bookid)values(@classid,@thisweeknum,@lastweeknum,0)

				fetch next from pbookrs into @classid
			end
			close pbookrs
			deallocate pbookrs
END








GO
