USE [KWebCMS]
GO
/****** Object:  StoredProcedure [dbo].[kmp_T_DictionarySetting]    Script Date: 2014/11/24 23:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		lx
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[kmp_T_DictionarySetting] 
@dic_id int,
@kid int 
AS
BEGIN
     declare @count int
     select @count=count(*) from T_DictionarySetting where kid=@kid
     IF @count=4 
      BEGIN
       return 0
      END 
     ELSE 
       BEGIN
         insert into T_DictionarySetting(kid,dic_id) values (@kid,@dic_id)
         return 1
       END
END

GO
