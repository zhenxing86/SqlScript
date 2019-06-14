USE [mcapp]
GO

/****** Object:  StoredProcedure [dbo].[tcf_setting_GetModel_By_SerialNo]    Script Date: 07/23/2013 13:22:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		xzx
-- Project: com.zgyey.ossapp
-- Create date: 2013-07-22
-- Description:	����id������ȡ����ǹ�����豸��Ϣʵ��
-- =============================================
create PROCEDURE [dbo].[tcf_setting_GetModel_By_SerialNo]
@serialno nvarchar(20)
AS
BEGIN

SELECT [id],[serialno],[kid],[xmsj],[lsavesj],[gunnum]
,[devid],[alarmt],[tox],[tax],[tx0A],[tx0B],[t5A]
,[t5B],[t10A],[t10B],[t15A],[t15B],[t20A],[t20B]
,[t25A],[t25B],[t30A],[t30B],[t35A],[t35B],[t40A]
,[t40B],[td40A],[td40B]
  FROM [mcapp].[dbo].[tcf_setting]
  where serialno = @serialno

END


GO


