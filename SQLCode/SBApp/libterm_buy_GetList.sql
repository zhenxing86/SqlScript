USE [SBApp]
GO
/****** Object:  StoredProcedure [dbo].[libterm_buy_GetList]    Script Date: 2014/11/24 23:26:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create PROCEDURE [dbo].[libterm_buy_GetList]
 @userid int
 AS 

declare @vipstate int,@sbids varchar(1000)
set @vipstate=0
set @sbids=''
select @vipstate=a4 from ossapp..addservice
	where [uid]=@userid 
		and deletetag=1
		and describe='开通'
if(	@vipstate<>803)
begin	
select @sbids=@sbids+sbid+',' from dbo.my_book k
where userid=@userid 
end
select @vipstate,@sbids	
		

GO
