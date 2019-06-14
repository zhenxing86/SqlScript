USE [SMS]
GO
/****** Object:  StoredProcedure [dbo].[GetYMSmsList]    Script Date: 2014/11/24 23:27:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








------------------------------------
--用途： 
--项目名称：sms
--说明：[GetYMSmsList] 1
--insert into sms_message_ym(recMObile,Status,content,SendTime,Kid, Cid,WriteTime, sender,recuserid)values('18028633611',5,'testsms_from ym',getdate(),18,88,getdate(),0,0)

------------------------------------
CREATE PROCEDURE [dbo].[GetYMSmsList]
@recuserid int
AS

--delete a from sms_message_ym a
--where (a.recmobile+a.content) in (select a.recmobile+a.content from sms_message_ym group by recmobile,content having count(*) > 1)
--and smsid not in (select min(smsid) from sms_message_ym group by recmobile,content having count(*)>1)



declare @Now varchar(50)  --当前时间
declare @Zero varchar(50) --当天零点

SET @Now = getdate()
SET @Zero = str(year(@Now),4) + '-' + str(month(@Now),2) + '-' + str(day(@Now),2) + ' 00:00:00.000'
declare @errsmscount int

select @errsmscount=count(*)  from sms_message_ym 
where status=5 and [SendTime] <= @Now AND [SendTime] > @Zero
group by recuserid, recmobile,content having(count(1))>1
print @errsmscount
if(@errsmscount>0)
begin
	insert into sms_message_zy_ym(recMObile,Status,content,SendTime,Kid, Cid,WriteTime, sender,recuserid)values('18028633611',8,'紧急通知阿浪：有重复提交短信现象，请急时检查处理。',getdate(),18,88,getdate(),0,0)    
	exec DealErrorSMS
end
else
begin
	select top 100 smsid, recmobile,[content],sendtime From sms_message_ym where status=5 
	and [SendTime] <= @Now AND [SendTime] > @Zero
end

--edu
INSERT INTO [SMS].[dbo].[sms_message_yx]([guid],[smstype],[recuserid],[recmobile],[sender],[content],[status],[sendtime],[writetime],[kid],[cid],[code])     
SELECT [guid],[smstype],[recuserid],[recmobile],[sender],[content],10,[sendtime],[writetime],[kid],[cid],[sender]
  FROM [edu_jn].[dbo].[sms_message_jnedu] 
	where status=0

update [edu_jn].[dbo].[sms_message_jnedu] set status= 1 where status=0











GO
