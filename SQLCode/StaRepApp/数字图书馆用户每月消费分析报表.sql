USE StaRepApp
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master̷
-- Create date: 2013-08-20
-- Description:	
-- Memo:		
exec ����ͼ����û�ÿ�����ѷ��������ѯ '2013-07-01','2013-07-01'
*/
ALTER PROC ����ͼ����û�ÿ�����ѷ��������ѯ
	@bgndate date,
	@enddate date
as
BEGIN
	SET NOCOUNT ON
	SELECT	����, �û�����, �����û���, �޹�����Ϊ�û���, ��Ĭ�û���, 
					�û���ֵ����, �û���ֵ���, ����ͼ������, �Ķ�����, 
					����ͼ�����, ƽ��ÿ���Ķ�ʱ��, ƽ��ÿ���Ķ�����
		FROM ����ͼ����û�ÿ�����ѷ�������		
		WHERE ���� = @bgndate 
END
GO