USE [fmcapp]
GO
/****** Object:  StoredProcedure [dbo].[fmc_expertsforum_Add]    Script Date: 06/18/2013 18:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--��;������ר�ҽ�̳��Ϣ
--��Ŀ���ƣ���ͥ�������� com.zgyey.fmcapp.cms  
--˵��: 
--ʱ�䣺2013-6-17 15:50:29
--exec fmc_expertsforum_Add '�׶��ɳ�','�׶��ɳ�ר��','sfsadfdsaf','http://www.hao123.com/',123,'2013-06-17 10:00:00',1
------------------------------------
ALTER PROCEDURE [dbo].[fmc_expertsforum_Add]
@expertid int,
@title	nvarchar(50),
@describe	nvarchar(500),
@smallimg	varchar(500),
@url	varchar(500),
@uid	int,
@click int,
@deletetag	int
	
AS 
INSERT INTO [fmc_expertsforum](expertid,title,describe,smallimg,url,[uid],intime,click,deletetag)
  VALUES(@expertid,@title,@describe,@smallimg,@url,@uid,GETDATE(),@click,@deletetag)

declare @ID int
set @ID=@@IDENTITY
RETURN @ID



