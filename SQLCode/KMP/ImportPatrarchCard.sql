USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[ImportPatrarchCard]    Script Date: 2014/11/24 23:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,along>
-- Create date: <Create Date,,2007-07-06>
-- Description:	<Description,,开通卡绑定>
-- =============================================
CREATE PROCEDURE [dbo].[ImportPatrarchCard] 
	@UserID int,
	@KID int,
	@CardNo nvarchar(50),
	@SubNo int
AS
declare @PID int
declare @enrolnum bigint
BEGIN

insert into patriarch (userid,usertype) values (@UserID,0)
SELECT @PID = @@IDENTITY 
insert into patriarchcard (pid,cardno) values(@PID,@cardno)
insert into patriarch_interface(KID,PID,UserID,actiontype,actiontime,status,usertype,subno)
values(@KID,@PID,@UserID,0,getdate(),0,0,@SubNo)
--delete bind_interface where pid=@PID
select @enrolnum=enrolnum from card where cardno=@cardno and kid=@KID
insert into bind_interface(kid,userid,pid,cardno,enrolnum,actiontype,issyn,subno)
values(@KID,@UserID,@PID,@cardno,@enrolnum,0,0,@SubNo)
update card set status=1 where cardno=@cardno and kid=@KID and SubNo=@SubNo


END











GO
