USE [fmcapp]
GO
/****** Object:  StoredProcedure [dbo].[fmc_authorityexpert_Add]    Script Date: 06/18/2013 18:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--��;������ר�ҽ�̳��Ϣ
--��Ŀ���ƣ���ͥ�������� com.zgyey.fmcapp.cms  
--˵��: 
--ʱ�䣺2013-6-17 15:50:29
--exec fmc_authorityexpert_Add '�׶��ɳ�','�׶��ɳ�ר��','sfsadfdsaf','http://www.hao123.com/',123,'2013-06-17 10:00:00',1
------------------------------------
ALTER PROCEDURE [dbo].[fmc_authorityexpert_Add]
@name	nvarchar(50),
@post	nvarchar(50),
@direction	nvarchar(100),
@smallimg	nvarchar(100),
@uid	int,
@intime	datetime,
@orderby	int,
@deletetag	int

AS 
INSERT INTO [fmc_authorityexpert](name,post,direction,smallimg,[uid],intime,orderby,deletetag)
  VALUES(@name,@post,@direction,@smallimg,@uid,@intime,@orderby,@deletetag)

declare @ID int
set @ID=@@IDENTITY
RETURN @ID



