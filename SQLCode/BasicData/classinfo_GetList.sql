USE BasicData
GO
/****** Object:  StoredProcedure [dbo].[classinfo_GetList]    Script Date: 12/18/2013 14:49:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*  
-- Author:      xie  
-- Create date: 2013-12-18
-- Description:  ����kid��ȡ�༶�б����༶��У��������԰���� 
-- Memo:    
exec classinfo_GetList 12511,1,10,'�����'
exec classinfo_GetList 12511,1,10,''
*/   
  
alter PROCEDURE [dbo].classinfo_GetList      
@kid int, 
@page int,
@size int,        
@cname nvarchar(20)
 AS       
begin      
   DECLARE @fromstring NVARCHAR(2000)   
 
   CREATE TABLE #t(col int)
	if @cname='' or @cname is null
	begin
		insert into #t
		select cid  from class where kid = @kid
	end
	else
	begin
		insert into #t
		select cid from class where kid = @kid and cname like '%'+@cname+'%'
	end

	;with cet as
	(
		select userid, cid,1 deletetag 
		 from User_Child u
		  inner join #t t on u.cid=t.col
		union
		select l.userid, l.cid, 0 deletetag 
		 from leave_kindergarten l
		 inner join #t t on l.cid=t.col
	)

	select  cet.cid,c.cname,c.deletetag,COUNT(1) TotalCnt, SUM(cet.deletetag) InSchoolCnt 
	 into #TT
	 from class c 
	  inner join cet 
	   on cet.cid=c.cid
	 group by cet.cid,c.cname,c.deletetag
	           
 --��ҳ��ѯ      
 exec sp_MutiGridViewByPager      
  @fromstring ='#TT ' ,      --���ݼ�      
  @selectstring =       
  ' cid,cname,deletetag,TotalCnt, InSchoolCnt ',      --��ѯ�ֶ�      
  @returnstring =       
  ' cid,cname,deletetag,TotalCnt, InSchoolCnt ',      --�����ֶ�      
  @pageSize = @Size,                 --ÿҳ��¼��      
  @pageNo = @page,                     --��ǰҳ      
  @orderString = ' deletetag,cname ',          --��������      
  @IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����      
  @IsRowNo = 0,           --�Ƿ�����к�      
  @D1 = @kid,   
  @S1 = @cname  
end 