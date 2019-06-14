USE [DrawApp]
GO
/****** Object:  StoredProcedure [dbo].[updateMyGallery]    Script Date: 2014/11/24 23:01:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	更新我的画廊图片
-- =============================================
CREATE PROCEDURE [dbo].[updateMyGallery]
@id varchar(100),@action int
AS
   if(@action =1)
      update Gallery set operatype=0,share=1 where photoId=@id
   if(@action =2)
      update Gallery set operatype=1,share=2 where photoId=@id
   if(@action =3)
      delete from Gallery where photoId=@id

GO
