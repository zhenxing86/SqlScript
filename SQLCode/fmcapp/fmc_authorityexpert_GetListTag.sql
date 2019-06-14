USE [fmcapp]
GO
/****** Object:  StoredProcedure [dbo].[fmc_authorityexpert_GetListTag]    Script Date: 06/18/2013 18:03:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--��;����ȡר�ҽ�̳��Ϣ
--��Ŀ���ƣ���ͥ�������� com.zgyey.fmcapp.cms  
--˵��: 
--ʱ�䣺2013-6-17 15:50:29
--exec fmc_authorityexpert_GetListTag '�׶��ɳ�','�׶��ɳ�ר��','sfsadfdsaf','http://www.hao123.com/',123,'2013-06-17 10:00:00',1
------------------------------------
ALTER PROCEDURE [dbo].[fmc_authorityexpert_GetListTag]
 @page int
,@size int
AS 

declare @pcount int

SELECT @pcount=count(1) FROM [fmc_authorityexpert] where deletetag =1

IF(@page>1)
	BEGIN
	
		DECLARE @prep int,@ignore int

		SET @prep=@size*@page
		SET @ignore=@prep-@size
		
		if(@pcount<@ignore)
		begin
			set @page=@pcount/@size
			if(@pcount%@size<>0)
			begin
				set @page=@page+1
			end
			SET @prep=@size*@page
			SET @ignore=@prep-@size
		end

		DECLARE @tmptable TABLE
		(
			row int IDENTITY(1,1),
			tmptableid bigint
		)

		SET ROWCOUNT @prep
		INSERT INTO @tmptable(tmptableid)
		SELECT  ID  FROM [fmc_authorityexpert] where deletetag=1

		SET ROWCOUNT @size
		SELECT @pcount,[ID],name,post,direction,smallimg,[uid],intime,orderby,deletetag,(select COUNT(1) from fmc_expertsforum e where e.expertid =g.ID and e.deletetag=1) videocnt
		  FROM  @tmptable AS tmptable		
		  INNER JOIN [fmc_authorityexpert] g
		  ON  tmptable.tmptableid=g.ID and g.deletetag=1
		  WHERE row>@ignore 

end
else
begin
SET ROWCOUNT @size

SELECT  @pcount,[ID],name,post,direction,smallimg,[uid],intime,orderby,deletetag,(select COUNT(1) from fmc_expertsforum e where e.expertid =g.ID and e.deletetag=1) videocnt 
  FROM [fmc_authorityexpert] g 
  where g.deletetag=1
end


