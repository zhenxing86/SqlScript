USE [fmcapp]
GO
/****** Object:  StoredProcedure [dbo].[fmc_expertsforum_Update]    Script Date: 06/18/2013 18:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--��;���޸�ר�ҽ�̳��Ϣ
--��Ŀ���ƣ���ͥ�������� com.zgyey.fmcapp.cms  
--˵��: 
--ʱ�䣺2013-6-17 15:50:29
--exec fmc_expertsforum_Update '�׶��ɳ�','�׶��ɳ�ר��','sfsadfdsaf','http://www.hao123.com/',123,'2013-06-17 10:00:00',1
------------------------------------

ALTER PROCEDURE [dbo].[fmc_expertsforum_Update]
@id int,
@expertid int,
@title	nvarchar(50),
@describe	nvarchar(500),
@smallimg	varchar(500),
@url	varchar(500),
@uid	int,
@click int,
@deletetag	int
	
AS 

	UPDATE [fmc_expertsforum] 
	  SET expertid=@expertid,title=@title,describe=@describe,smallimg=@smallimg,
	  url=@url,[uid]=@uid,click=@click,deletetag=@deletetag 
	  FROM [fmc_expertsforum]  
 	  WHERE ID=@id



