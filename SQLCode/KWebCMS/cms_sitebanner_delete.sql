USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[cms_sitebanner_delete]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc  [dbo].[cms_sitebanner_delete]
@id int
as
begin
 delete from Site_Banner where id=@id
 if(@@ERROR<>0)
 begin
	return -1
 end
 else
 begin
	return 1
 end
end

GO
