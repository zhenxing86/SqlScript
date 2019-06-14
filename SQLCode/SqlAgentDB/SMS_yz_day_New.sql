USE SqlAgentDB
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master̷
-- Create date: 2013-04-27
-- Description:	�����������ɳ���ÿ��԰������
-- Paradef: @flag 0 ����ִ��
									1 ����ִ��
-- Memo:
	exec SMS_yz_day_New 0, 6
	exec SMS_yz_day_New 1
		
*/  
alter PROCEDURE SMS_yz_day_New
	@flag int = 0,
	@smstime int = 0
	
as  
BEGIN  
 SET NOCOUNT ON  
 SELECT DISTINCT CheckDate  
  into #T   
  FROM mcapp..stu_mc_day   
  where Status = 0  
 DECLARE @T datetime  
 WHILE (1 = 1)  
 BEGIN  
  SELECT TOP(1) @T = CheckDate FROM #T ORDER BY CheckDate  
  IF @@ROWCOUNT = 0 BREAK  
  EXEC mcapp..SMS_yz_day @flag, @T, @smstime  
  delete #T where CheckDate = @T   
 END  

Select kid Into #kid_send_list From mcapp..sms_man_kid
--ɾ���׶�԰�ڼ���
Delete a 
  From #kid_send_list a, BasicData.dbo.HolidayWorkday b
  where a.kid = b.KID and b.Date = CONVERT(VARCHAR(10),GETDATE(),120) and b.Type = 1

--ɾ�����ҷ����ڼ���
Delete a 
  From #kid_send_list a, BasicData.dbo.HolidayWorkday b
  where b.KID = -1 and b.Date = CONVERT(VARCHAR(10),GETDATE(),120) and b.Type = 1
    and not Exists(Select * From BasicData.dbo.HolidayWorkday c 
                     Where a.kid = c.KID and c.Date = CONVERT(VARCHAR(10),GETDATE(),120) and c.Type = 2)

--ɾ��������
Delete a 
  From #kid_send_list a
  where CommonFun.dbo.fn_Week(GETDATE()) in(6,7)
    and Not Exists(Select * From BasicData.dbo.HolidayWorkday b 
                     Where a.kid = b.KID and b.Date = CONVERT(VARCHAR(10),GETDATE(),120) and b.Type = 2)

Delete a 
  From #kid_send_list a
  where CommonFun.dbo.fn_Week(GETDATE()) in(6,7)
    and Not Exists(Select * From BasicData.dbo.HolidayWorkday b 
                     Where b.KID = -1 and b.Date = CONVERT(VARCHAR(10),GETDATE(),120) and b.Type = 2)
                     
IF  @flag = 0 
 insert into mcapp..[sms_mc](  
     smstype, [recuserid], [recmobile], [sender], [content], [status], [sendtime], [writetime], [kid])  
 select 1, u.userid,u.mobile,0,'�𾴵�԰��,���� ,���յĳ���������δ�ϴ�������ȷ���׶�԰�����Ƿ�����������ʱ�ɼ�����ǹ���ݡ�',  
   0,GETDATE(),GETDATE(),k.kid  
  from mcapp..kindergarten k  
   inner join [BasicData].[dbo].[user] u   
    ON k.kid = u.kid      
   INNER JOIN mcapp..sms_man_kid sm --ֻ���͸ñ��ڵ��û�  
    on sm.userid = u.userid and sm.roletype = 1  
  WHERE k.smstime = @smstime  
   and exists(select * from blogapp..permissionsetting where kid=k.kid and ptype=90)  
   and not exists(select * from mcapp..stu_mc_day where kid = k.kid and CheckDate = CONVERT(VARCHAR(10),GETDATE(),120))  
   and commonfun.dbo.fn_cellphone(u.mobile) = 1 --ֻ�����ֻ�����Ϸ����û�  
   and k.kid In (Select kid From #kid_send_list)
   
END  
GO