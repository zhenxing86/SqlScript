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
exec �����԰����ͳ�Ʊ����ѯ '2013-07-01','2013-07-01'
*/
ALTER PROC �����԰����ͳ�Ʊ����ѯ
	@bgndate date,
	@enddate date
as
BEGIN
	SET NOCOUNT ON
	SELECT	��������, �׶�, �Ѷ�, 
					����ͳ�ƽ������, ����ͳ����ɴ���, ����ͳ��δ�����, [����ͳ��ƽ����ʱ(����)], 
					��ʷ�ۼƽ������, ��ʷ�ۼ���ɴ���, ��ʷ�ۼ�δ�����, [��ʷ�ۼ�ƽ����ʱ(����)]
		FROM �����԰����ͳ�Ʊ���		
		WHERE ���� = @bgndate
END