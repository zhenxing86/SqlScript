USE [AndroidApp]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*  
-- Author:      Master̷  
-- Create date: 
-- Description: 
-- Memo:
*/ 
alter PROCEDURE [dbo].[and_msg_GetList] 
	@page int,
	@size int,
	@userid int
AS
BEGIN
	SELECT	m.ID,m.title, m.contents, m.push_type, m.msg_type, 
					m.sent_time, d.userid, d.tag, m.msg_code, m.sender, m.send_status, 
					m.intime, m.[param], d.readstate,0 senderuid
		INTO #T  
		FROM [AndroidApp].[dbo].[and_msg] m  
			inner join 	[AndroidApp].dbo.and_msg_detail d 
				on d.sms_id = m.ID
		where	m.sent_time < GETDATE()
			and d.userid = @userid  
			and d.deletetag = 1 	
			and m.send_status = 1	
			and m.msg_type <> 0	
			and m.msg_code <> '402'
  
  INSERT INTO #T(
					ID, title, contents, push_type, msg_type, 
					sent_time, userid, tag, msg_code, sender, send_status, 
					intime, [param], readstate,senderuid)  
		select	f.ID, '������Ϣ', f.msgcon, 1, 1, f.CrtDate, f.Touserid, 
						0, 402, u.name, 1, f.CrtDate, CONVERT(VARCHAR(10),f.CrtDate,120) +'A402a', f.IsRead,u.userid senderuid  
			FROM basicdata..FriendSMS f
				inner join BasicData..[user] u on f.Userid = u.userid
			where Touserid = @userid
  
   exec sp_GridViewByPager      
    @viewName = '#T',             --����      
    @fieldName = 'ID,title,contents,sent_time,userid,msg_code,sender,param,readstate,senderuid',      --��ѯ�ֶ�      
    @keyName = 'ID',       --�����ֶ�      
    @pageSize = @size,                 --ÿҳ��¼��      
    @pageNo = @page,                     --��ǰҳ      
    @orderString = '  sent_time desc  ',          --��������      
    @whereString = ' 1 = 1  ' ,  --WHERE����      
    @IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����      
    @IsRowNo = 0    
   
END
GO
[and_msg_GetList] 1,10,288556

