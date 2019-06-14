USE SMS
go
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master̷
-- Create date: 2013-07-02
-- Description:	���س�ֵ��ʷ
-- Memo:		exec smsapp_smsbase_GetListTag '2012-01-01','2013-12-12',12511,1,10
*/
ALTER PROC smsapp_smsbase_GetListTag
	@bgntime datetime,
	@endtime datetime,
	@kid int,
	@page int, 
	@size int
AS
BEGIN
	SET NOCOUNT ON
			 
	SELECT s.ID, s.kid, s.ncount smscount, s.remark, s.intime, ISNULL(u.name,'ƽ̨��ֵ') uname
		into #result 
		FROM ossapp.dbo.smsbase s
			left join BasicData.dbo.[user] u
				on s.uid = u.userid
				and s.remark = '������ֵ'
		where s.kid = @kid
			and intime >= CONVERT(varchar(10),@bgntime,120)
			and intime < CONVERT(varchar(10),DATEADD(dd,1,@endtime),120)
		
	exec dbo.sp_GridViewByPager    
		 @viewName = '#result',             --����
     @fieldName = 'kid, smscount, remark, intime, uname',      --��ѯ�ֶ�
     @keyName = 'ID',       --�����ֶ�
     @pageSize = @size,                 --ÿҳ��¼��
     @pageNo = @page,                     --��ǰҳ
     @orderString = ' intime desc ',          --��������
     @whereString = '1=1',  --WHERE����
     @IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����
     @IsRowNo = 0	
			
END

GO