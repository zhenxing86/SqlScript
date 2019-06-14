USE [zgyeycms_right]
GO
/****** Object:  StoredProcedure [dbo].[role_rightSingleInfo]    Script Date: 2014/11/24 23:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		张启平
-- Create date: 2010-8-5
-- Description:	获取指定权限信息
-- =============================================
CREATE PROCEDURE [dbo].[role_rightSingleInfo]
@right_id int
AS
SELECT
    right_id,up_right_id,right_name,right_code
FROM
    sac_right
WHERE
    right_id=@right_id



GO
