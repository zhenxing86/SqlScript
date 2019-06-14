USE [NGBApp]
GO
/****** Object:  StoredProcedure [dbo].[and_hb_lifephoto_child_GetList]    Script Date: 2014/11/24 23:18:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*  
-- Author:      蔡杰
-- Create date: 2014-04-15  
-- Description: 手机客户端获取指定幼儿的生活剪影照片
-- Memo:    
*/   
CREATE Procedure [dbo].[and_hb_lifephoto_child_GetList]
@gbid Int
as

Select photoid, photo_desc, m_path From NGBApp.dbo.tea_UpPhoto Where gbid = @gbid and deletetag = 1 and pictype = 1

GO
