USE [fmcapp]
GO
/****** Object:  StoredProcedure [dbo].[fmc_microvideo_DeleteTag]    Script Date: 06/18/2013 16:16:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--��;������idɾ��΢��Ƶ��Ϣ
--��Ŀ���ƣ���ͥ�������� com.zgyey.fmcapp.cms  
--˵��: ҵ���ϵ�ɾ��
--ʱ�䣺2013-6-17 15:50:29
--exec fmc_microvideo_Delete 1
------------------------------------
ALTER PROCEDURE [dbo].[fmc_microvideo_DeleteTag]
@id int
 AS 
	update [fmc_microvideo] set deletetag=0
	 WHERE ID=@id 




