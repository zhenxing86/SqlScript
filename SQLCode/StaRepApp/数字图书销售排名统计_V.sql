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
*/
ALTER VIEW ����ͼ����������ͳ��_V
AS
SELECT	a.����,a.ͼ������,a.�����ݲ�,a.������,a.����ʱ��,oa1.�ܹ������,oa1.���Ķ�����,
				a.���¹������,a.�����Ķ�����,
				ISNULL(oa.���¹������,0)���¹������,ISNULL(oa.�����Ķ�����,0)�����Ķ����� 
	FROM ����ͼ����������ͳ�� a 
		OUTER apply
		(
			select top(1)���¹������ ���¹������,�����Ķ����� �����Ķ����� 
			FROM ����ͼ����������ͳ�� b 
			where a.���� > b.���� 
			AND a.ͼ������ = b.ͼ������ 
			ORDER BY b.���� DESC
		)oa
		OUTER apply
		(
			select sum(���¹������) �ܹ������,sum(�����Ķ�����) ���Ķ����� 
			FROM ����ͼ����������ͳ�� b 
			where a.ͼ������ = b.ͼ������ 
		)oa1