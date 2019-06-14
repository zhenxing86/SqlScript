USE [SMS]
GO
/****** Object:  StoredProcedure [dbo].[sms_message_move_to_history]    Script Date: 2014/11/24 23:27:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





------------------------------------
--用途：历史短信移动代理 
--项目名称：sms
--说明：
------------------------------------
CREATE PROCEDURE [dbo].[sms_message_move_to_history]
AS
insert into SMS_History..[sms_message]( [guid], [smstype], [recuserid], [recmobile], [sender], [content], [status], [sendtime], [writetime], [kid], [cid], [code]) 
 select  [guid], [smstype], [recuserid], [recmobile], [sender], [content], [status], [sendtime], [writetime], [kid], [cid], [code] from sms_message_curmonth

delete from sms_message_curmonth --where status in(1,3,6,8)




GO
