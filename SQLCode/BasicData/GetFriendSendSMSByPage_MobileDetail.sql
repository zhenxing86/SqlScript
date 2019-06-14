

alter PROC [dbo].[GetFriendSendSMSByPage_MobileDetail]
 @Userid int,
 @frienduid int, 
 @page int,  
 @size int  
AS  
BEGIN  
 SET NOCOUNT ON  

--�ҷ����Է�
 select u.userid,u.name,msgcon,msgtype,CrtDate,0 msgfrom 
	into #temp
	from FriendSMS f 
	inner join BasicData..[user] u
		on f.Userid=u.userid and u.deletetag=1
	where (f.Touserid=@frienduid and f.Userid=@Userid)
		
--�Է�������
insert into #temp
 select u.userid,u.name,msgcon,msgtype,CrtDate,1 msgfrom
	from FriendSMS f 
	inner join BasicData..[user] u
		on f.Userid=u.userid and u.deletetag=1
	where (f.Touserid=@Userid and f.Userid=@frienduid)


 exec	sp_MutiGridViewByPager
		@fromstring = '#temp ',      --���ݼ�
		@selectstring = 
		'userid,name,msgcon,msgtype,CrtDate,msgfrom',      --��ѯ�ֶ�
		@returnstring = 
		'userid,name,msgcon,msgtype,CrtDate,msgfrom',      --�����ֶ�
		@pageSize = @Size,                 --ÿҳ��¼��
		@pageNo = @page,                     --��ǰҳ
		@orderString = ' CrtDate desc',          --��������
		@IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����
		@IsRowNo = 0,										 --�Ƿ�����к�
		@D1 = @Userid
		
 drop table #temp
 end
 GO
 [GetFriendSendSMSByPage_MobileDetail] 653612,567195,1,20