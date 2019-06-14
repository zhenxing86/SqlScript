USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[addservice_vip_Add]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[addservice_vip_Add]
@typename varchar(100)
,@kid int
,@cid int
,@cuid varchar(5000)
,@p1 int
,@ftime datetime
,@ltime datetime
,@ispay int
,@isopen int
,@paytime datetime
,@isproxy int
,@uid int
as



if(@typename= 'kin')
begin

exec [addservice_vip_Add_kin] @typename,@kid,@cid,@cuid,@p1,@ftime,@ltime,@ispay,@isopen,@paytime,@isproxy,@uid


end
else if(@typename= 'class')
begin

exec [addservice_vip_Add_class] @typename,@kid,@cid,@cuid,@p1,@ftime,@ltime,@ispay,@isopen,@paytime,@isproxy,@uid

end
else if(@typename= 'child')
begin

exec [addservice_vip_Add_child] @typename,@kid,@cid,@cuid,@p1,@ftime,@ltime,@ispay,@isopen,@paytime,@isproxy,@uid

end

exec addservice_status_Add @typename,@kid,@cid,@cuid,@p1,@ftime,@ltime,@isopen,@uid  


GO
