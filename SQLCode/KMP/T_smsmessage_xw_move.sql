USE [KMP]
GO
/****** Object:  StoredProcedure [dbo].[T_smsmessage_xw_move]    Script Date: 2014/11/24 23:12:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[T_smsmessage_xw_move]
AS
insert into T_SmsMessage_XW_History(number,guid,recmobile,content,sender,status,recuserid,sendtime,writetime,kid,cid)
select number,guid,recmobile,content,sender,status,recuserid,sendtime,writetime,kid,cid from t_smsmessage_xw where status in(1,3,6,8)
delete t_smsmessage_xw where status in(1,3,6,8)



GO
