USE [CardApp]
GO
/****** Object:  StoredProcedure [dbo].[initcard]    Script Date: 2014/11/24 22:56:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO













-- =============================================
-- Author:		<Author,,along>
-- Create date: <Create Date,,2007-07-06>
-- Description:	
--exec initcard 5314
-- =============================================
CREATE PROCEDURE [dbo].[initcard] 
@kid int
AS
--BEGIN
--	declare @cardno int
--			declare @guid nvarchar(50)
--declare @enrolnum int
--set @enrolnum=65530
--declare rs2 insensitive cursor for 
--			select cardno From card where kid=@kid
--			open rs2
--			fetch next from rs2 into @cardno
--			while @@fetch_status=0
--			begin
--	--			update card set enrolnum=@enrolnum where cardno=@cardno 
--				fetch next from rs2 into @cardno
--				set @enrolnum=@enrolnum-1
--			end
--			close rs2
--			deallocate rs2

--END





GO
