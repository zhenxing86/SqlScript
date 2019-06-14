USE [mcapp]
GO
/****** Object:  StoredProcedure [dbo].[mc_applyphoto_Add]    Script Date: 2014/11/24 23:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--0:待上传；1：已上传
CREATE PROCEDURE [dbo].[mc_applyphoto_Add] 
@kid int
,@applyuserid int
,@stuids varchar(2000)
,@photodate varchar(2000)
 AS 
 
 declare @mc_pid int
 
 insert into dbo.mc_applyphoto(kid,applyuserid,applytime,applystate)
 values(@kid,@applyuserid,GETDATE(),1)
 
 set @mc_pid=@@IDENTITY
 
 
insert into dbo.mc_applyphoto_stuid(mc_pid,stuid)
 select @mc_pid,col from BasicData.dbo.f_split(@stuids,',')
 
 
 
 insert into dbo.mc_applyphoto_date(mc_pid,photodate)
 select @mc_pid,col from BasicData.dbo.f_split(@photodate,',')
 


GO
