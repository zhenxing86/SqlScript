USE [fmcapp]
GO
/****** Object:  StoredProcedure [dbo].[fmc_authorityexpert_Delete]    Script Date: 06/18/2013 16:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--��;������idɾ��ר�ҽ�̳��Ϣ
--��Ŀ���ƣ���ͥ�������� com.zgyey.fmcapp.cms  
--˵��: 
--ʱ�䣺2013-6-17 15:50:29
--exec fmc_authorityexpert_Delete 1
------------------------------------
ALTER PROCEDURE [dbo].[fmc_authorityexpert_Delete]
@id int
 AS 
	DELETE [fmc_authorityexpert]
	 WHERE ID=@id 



