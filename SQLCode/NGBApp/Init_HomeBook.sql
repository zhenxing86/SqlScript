USE NGBApp
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master̷
-- Create date: 2013-08-15
-- Description:	
��ʼ����԰��ϵ�ᣬ����ȡhbid,������cid,term���߼��������hbidֱ��ȡ�����أ������ʼ��homebook��
���ã���ȡ��԰��ϵ���б�ͽ���ɳ�����ʱ���á�
-- Memo:		
declare @hbid int
exec @hbid = Init_HomeBook 46144, '2013-1'
select @hbid
*/
CREATE PROC Init_HomeBook
	@cid int,
	@term varchar(6)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @hbid int
	
	select @hbid = hbid 
		from HomeBook 
		where cid = @cid 
			and term = @term
	IF @hbid IS NOT NULL
		RETURN @hbid
	ELSE
	BEGIN
		INSERT INTO HomeBook(kid, grade, cid, term)
			SELECT kid, grade, cid, @term
				FROM BasicData.dbo.class 
				where cid = @cid
		RETURN @@IDENTITY		
	END 
	
END
GO