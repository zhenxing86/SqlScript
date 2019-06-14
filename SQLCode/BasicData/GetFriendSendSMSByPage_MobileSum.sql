

alter PROC [dbo].[GetFriendSendSMSByPage_MobileSum]
 @Userid int, 
 @page int,  
 @size int  
AS  
BEGIN  
 SET NOCOUNT ON  

 select u.userid,u.name,COUNT(1) msgcount,lastmsg.msgcon,lastmsg.msgtype,lastmsg.CrtDate 
	into #temp
	from FriendSMS f 
	outer apply
	(
		select top 1 msgcon,msgtype,CrtDate from FriendSMS 
			where Userid=@Userid or Touserid=@Userid 
				order by CrtDate desc
	) as lastmsg
	inner join BasicData..[user] u
		on f.Userid=u.userid and u.deletetag=1
	where Touserid=@Userid and IsRead=0
	group by u.userid,u.name,lastmsg.msgcon,lastmsg.CrtDate,lastmsg.msgtype
		order by lastmsg.CrtDate desc
 
 exec	sp_MutiGridViewByPager
		@fromstring = '#temp ',      --���ݼ�
		@selectstring = 
		'userid,name,msgcount,msgcon,msgtype,CrtDate',      --��ѯ�ֶ�
		@returnstring = 
		'userid,name,msgcount,msgcon,msgtype,CrtDate',      --�����ֶ�
		@pageSize = @Size,                 --ÿҳ��¼��
		@pageNo = @page,                     --��ǰҳ
		@orderString = ' CrtDate desc',          --��������
		@IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����
		@IsRowNo = 0,										 --�Ƿ�����к�
		@D1 = @Userid
		
 drop table #temp
 
 end
 GO
 [GetFriendSendSMSByPage_MobileSum] 653612,1,2