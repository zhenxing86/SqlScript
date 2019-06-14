--and_smsapp

use basicdata
go

/*
Author: xie
DataTime: 2014-09-15
Desitipation:����userid��ȡ��ʦ��¼��Ϣ
select * from blogapp..permissionsetting where ptype = 100

[LoginUser_Info_GetModel] 567195  

*/
alter PROCEDURE [dbo].LoginUser_Info_GetModel   
@userid int 
as   
begin  
 declare @usertype int = CommonFun.dbo.[fn_KWebCMS_Right_max](@userid)
 select u.kid,u.userid,u.[name] username,@usertype usertype,ISNULL(ptype,0) openWebSms
   from BasicData..[user] u 
    left join blogapp..permissionsetting p 
     on p.kid = u.kid and p.ptype= 100
    --left join KWebCMS.dbo.site_config s
    -- on u.kid = s.siteid   
    where u.userid = @userid
end  

go

use basicdata
go

/*
Author: xie
DataTime: 2014-09-15
Desitipation:����kid��ȡ��ʦ�б�

[Teacher_Info_GetList] 12511

*/
create PROCEDURE [dbo].[Teacher_Info_GetList]   
@kid int 
as   
begin  
 select u.userid,u.[name] username,u.mobile  
   from BasicData..teacher t  
   inner join BasicData..[user] u   
    on u.userid=t.userid
   where u.kid=@kid   
    and u.deletetag=1  
    and u.usertype>0  
end  

go

use basicdata
go
/*
Author: xie
DataTime: 2014-09-15
Desitipation:����kid,��ʦ/԰��/����Աuserid��ȡѧ���༶�û��б�

[ClassChild_Info_GetList] 12511,718440  

*/
alter PROCEDURE [dbo].[ClassChild_Info_GetList]   
@kid int,  
@userid int=0  
as   
    if(CommonFun.dbo.[fn_KWebCMS_Right_max](@userid)<=2)  
    begin  
		select cid into #cids from BasicData..user_class where userid=@userid 
		 
		select grade gradeid,gname,c.cid,cname,COUNT(u.userid) childcount   
	   from BasicData..class c   
		inner join #cids s on s.cid=c.cid  
		inner join BasicData..grade g   
		 on c.grade=g.gid  
		inner join BasicData..user_class uc  
		 on uc.cid=c.cid  
		inner join BasicData..[user] u  
		 on uc.userid=u.userid   
		  and u.usertype=0    
		  and u.deletetag=1   
		  and u.kid=@kid  
		where c.kid=@kid  
		   and c.deletetag=1  
		group by grade,gname,c.cid,cname,g.[order],c.[order]  
		order by g.[order],c.[order] desc  
	    
	   select s.cid,u.userid,u.name username,u.mobile 
	   from #cids s 
		inner join BasicData..user_class uc  
		 on s.cid=uc.cid  
		inner join BasicData..[user] u  
		 on uc.userid=u.userid   
		  and u.usertype=0    
		  and u.deletetag=1   
		  and u.kid=@kid   
		order by s.cid,u.name desc  
		drop table #cids  
    end  
    else  
    begin  
      
	  select c.grade gradeid,gname,c.cid,cname,COUNT(u.userid) childcount  
	   from BasicData..class c   
		inner join BasicData..grade g   
		 on c.grade=g.gid  
		inner join BasicData..user_class uc  
		 on uc.cid=c.cid  
		inner join BasicData..[user] u  
		 on uc.userid=u.userid   
		  and u.usertype=0    
		  and u.deletetag=1   
		  and u.kid=@kid  
		where c.kid=@kid  
		   and c.deletetag=1  
		group by c.grade,gname,c.cid,cname,g.[order],c.[order]  
		order by g.[order],c.[order] desc  
      
       select uc.cid,u.userid,u.name username,u.mobile  
	   from BasicData..user_class uc  
		inner join BasicData..[user] u  
		 on uc.userid=u.userid   
		  and u.usertype=0    
		  and u.deletetag=1   
		  and u.kid=@kid   
		order by uc.cid,u.name desc  
    end  
go

use sms
go
/*
Author: xie
DataTime: 2014-09-15
Desitipation:��ȡ֪ͨģ��

[SMS_Temp_GetListTag] 3,1,5  

*/
create proc SMS_Temp_GetListTag
@smstype int
,@page int 
,@size int
as
BEGIN
 DECLARE @fromstring NVARCHAR(2000)          
 SET @fromstring = 'zgyey_om..[SMS_Temp] s where smstype=@D1'          
  --IF @bgncard <> '' SET @fromstring = @fromstring + ' AND g.[cardno] like @S1 + ''%'''      
  --IF @usest <> -3 SET @fromstring = @fromstring + ' AND g.usest = @D2'                           
 --��ҳ��ѯ          
 exec sp_MutiGridViewByPager          
  @fromstring = @fromstring,      --���ݼ�          
  @selectstring =           
  ' id,smstype,smscontent content',      --��ѯ�ֶ�          
  @returnstring =           
  ' id,smstype,content',      --�����ֶ�          
  @pageSize = @Size,                 --ÿҳ��¼��          
  @pageNo = @page,                     --��ǰҳ          
  @orderString = ' smstype ',          --��������          
  @IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����          
  @IsRowNo = 0,           --�Ƿ�����к�          
  @D1 = @smstype  
END
go

use sms
go
/*  
-- Author:  xie
-- Create date: 2014-09-22
-- Description: ��ȡ���͵���Ϣ/֪ͨ�б�

demo:
And_Sms_Notice_GetListTag 567195,1,100

select *from sms..sms_batch where sender=567195

*/  
create proc And_Sms_Notice_GetListTag
@userid int
,@page int
,@size int
as
BEGIN

  select taskid,sender,smscontent,kid,sendtime,noreadcnt,isnotice,smstype,smstitle
   into #Msg
   from (
	  select anb.taskid,anb.sender,anb.smscontent,anb.kid,anb.sendtime,an.noreadcnt,1 isnotice,smstype,smstitle
	   from and_notice_batch anb
	   outer apply( select count(1) noreadcnt 
		from and_notice_detial d 
		 where anb.taskid=d.taskid and d.[status]=0
	   ) an
	   where anb.sender = @userid
	  union all
	  select ab.taskid,ab.sender,ab.smscontent,ab.kid,ab.sendtime,ab.sendusercount,0 isnotice,smstype,''
	   from sms_batch ab
	   where sender = @userid
	)t
   
 DECLARE @fromstring NVARCHAR(2000)          
 SET @fromstring = ' #Msg'          
  --IF @bgncard <> '' SET @fromstring = @fromstring + ' AND g.[cardno] like @S1 + ''%'''      
  --IF @usest <> -3 SET @fromstring = @fromstring + ' AND g.usest = @D2'                           
 --��ҳ��ѯ          
 exec sp_MutiGridViewByPager          
  @fromstring = @fromstring,      --���ݼ�          
  @selectstring =           
  ' taskid,sender,smscontent content,kid,sendtime,noreadcnt,isnotice,smstype,smstitle',      --��ѯ�ֶ�          
  @returnstring =           
  ' taskid,sender,content,kid,sendtime,noreadcnt,isnotice,smstype,smstitle',      --�����ֶ�          
  @pageSize = @Size,                 --ÿҳ��¼��          
  @pageNo = @page,                     --��ǰҳ          
  @orderString = ' sendtime desc,isnotice desc ',          --��������          
  @IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����          
  @IsRowNo = 0     
 
 drop table #Msg
END
go

use sms
go
/*  
-- Author:  xie
-- Create date: 2014-09-22
-- Description: ��ȡ���͵�֪ͨ��ϸ�б�

demo:
And_Notice_Detial_GetListTag 567195,11,2,5,0

*/  
create proc And_Notice_Detial_GetListTag
@userid int
,@taskid int 
,@page int
,@size int
,@isread int=-1
as
BEGIN

 select * into #Msg
  from (
  select an.sendtime,u.name username,cname,an.[status],u.usertype
   from and_notice_detial an
    inner join basicdata..[user] u
     on an.recuserid=u.userid and u.usertype=0
    inner join basicdata..user_class uc 
     on an.recuserid = uc.userid
    inner join basicdata..class c 
     on uc.cid = c.cid
   where an.sender = @userid 
    and an.taskid = @taskid
  union all
  select an.sendtime,u.name username,'��ʦ' cname,an.[status],u.usertype
   from and_notice_detial an
    inner join basicdata..[user] u
     on an.recuserid=u.userid and u.usertype>0
   where an.sender = @userid 
    and an.taskid = @taskid
    ) t
 
 DECLARE @fromstring NVARCHAR(2000)=''      

 SET @fromstring = ' #Msg where status=@D1'                                
 --��ҳ��ѯ          
 exec sp_MutiGridViewByPager          
  @fromstring = @fromstring,      --���ݼ�          
  @selectstring =           
  ' sendtime,username,cname',      --��ѯ�ֶ�          
  @returnstring =           
  ' sendtime,username,cname',      --�����ֶ�          
  @pageSize = @Size,                 --ÿҳ��¼��          
  @pageNo = @page,                     --��ǰҳ          
  @orderString = ' usertype desc,cname ',          --��������          
  @IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����          
  @IsRowNo = 0,
  @D1 = @isread  
	  
 drop table #Msg	 
END
go

use sms
go
/*  
-- Author:  xie
-- Create date: 2014-09-22
-- Description: ��ȡ���͵�֪ͨ��ϸ�б�

demo:
And_Notice_Detial_Receive_GetListTag 295767,1,5

select *from and_notice_detial where recuserid=801368
select *from and_notice_batch where taskid=11

update and_notice_detial set status=0 where recuserid=801368
*/  
alter proc And_Notice_Detial_Receive_GetListTag  
@userid int  
,@page int  
,@size int
,@type int =0 
as  
BEGIN  
   
DECLARE @fromstring NVARCHAR(2000)='' 
DECLARE @filterstring NVARCHAR(2000)=''    
declare @taskid table( pcount int,smsid bigint,title nvarchar(50),smscontent varchar(500))   
Declare @ss table (pcount int,sendtime datetime,name nvarchar(50),title nvarchar(50),smscontent varchar(500))   
      
SET @fromstring = ' and_notice_batch b   
 inner join and_notice_detial a   
  on b.taskid= a.taskid   
   where a.recuserid = @D1 '   

if @type=1 set @fromstring = @fromstring + ' and a.writetime>=''' + convert(varchar(10),getdate(),120)+''''
                
 --��ҳ��ѯ   
 insert into @taskid            
 exec sp_MutiGridViewByPager            
  @fromstring = @fromstring,      --���ݼ�            
  @selectstring =             
  ' a.smsid,b.smstitle,b.smscontent',      --��ѯ�ֶ�            
  @returnstring =             
  ' smsid,smstitle,smscontent',      --�����ֶ�            
  @pageSize = @Size,                 --ÿҳ��¼��            
  @pageNo = @page,                     --��ǰҳ            
  @orderString = 'b.writetime desc, b.taskid desc ',          --��������            
  @IsRecordTotal = 1,             --�Ƿ�����ܼ�¼����            
  @IsRowNo = 0,  
  @D1 = @userid    
  
  update a Set [status] = 1, readtime = getdate()   
   output t.pcount,deleted.writetime sendtime,u.name,t.title,replace(replace(t.smscontent, '%stuname%', u.name), '%teaname%', u.name) smscontent  
    into @ss  
   from sms.dbo.and_notice_detial a  
    inner join @taskid t   
     on a.smsid = t.smsid  
    inner join basicdata.dbo.[user] u  
     on a.recuserid=@userid and a.recuserid = u.userid  
    
  select pcount,sendtime,name,title ,smscontent from @ss order by sendtime desc   
    
END  

go

use basicdata
go
/*      
-- Author:      xie
-- Create date: 2014-09-19     
-- Description: �������ڸ���cid���ϻ�ȡ��Ӧ��С�����б�      
-- Paradef:       
-- Memo:   
*/  
create proc GetUseridList
@reccid varchar(8000)
 as
 begin
  select distinct uc.userid  --�������ַ���ת��Ϊ�б�      
   from BasicData.dbo.f_split(@reccid,',') c
    inner join BasicData..user_class uc
     on c.col=uc.userid
    inner join basicdata..[user] u
     on uc.userid=u.userid and u.usertype=0
      and u.kid>0 and u.deletetag=1
 end
go

   
use sms
go
/*      
-- Author:      xie
-- Create date: 2014-09-19     
-- Description: �����������������ֻ�web֪ͨ      
-- Paradef:       
-- Memo:     Send_Sms   
 
 exec Send_And_Notice '����xxx%stuname%xxx', 567195,'',',296418,296922',1,2,12511       
  exec Send_And_Notice '������������ʼ�ż١�','԰��֪ͨ', 567195,'',',560725',1,2,12511         
*/       
alter PROCEDURE [dbo].Send_And_Notice     
 @content varchar(500) , 
 @smstitle varchar(50)='',    
 @senderuserid int ,     
 @reccid varchar(8000), 
 @recuserid varchar(8000),      
 @sendtype int,--���ͷ�ʽ(0��С���ѣ�1����ʦ��2���꼶��3���༶��4�����ţ�5��ְλ)              
 @smstype int,      
 @kid int      
AS       
BEGIN      
 SET NOCOUNT ON      
       
 declare @vip int,@taskid int        
 CREATE TABLE #receiver(userid int, name varchar(50), mobile varchar(50), content varchar(5000))      
 CREATE TABLE #userid(col int)
  
 insert into #userid         
  select distinct col  --�������ַ���ת��Ϊ�б�     
   from BasicData.dbo.f_split(@recuserid,',')   
    
 insert into #userid   
  select uc.userid  --�������ַ���ת��Ϊ�б�       
   from BasicData.dbo.f_split(@reccid,',') c
    inner join BasicData..user_class uc
     on c.col=uc.cid
    inner join basicdata..[user] u
     on u.userid=uc.userid and u.usertype=0
      and u.deletetag=1 and u.kid>0
     
     
  select distinct col 
   into #recuserid  
   from #userid  
    
  /*===========�����ͷ�ʽ��ȡ������Ա�б�===============================================================*/      
  if @sendtype in(0,1)-- ��С���ѡ���ʦ      
  insert into #receiver(userid, name, mobile)      
   select u.userid, u.name, u.mobile     
    from #recuserid rc      
     inner join BasicData.dbo.[user] u      
      on rc.col = u.userid           
          
  if @sendtype = 2 -- ���꼶      
  insert into #receiver(userid, name, mobile)      
   select u.userid, u.name, u.mobile      
    from #recuserid rc       
     inner join BasicData..class c       
      on c.grade = rc.col      
     inner join BasicData..user_class uc       
      on uc.cid=c.cid      
     inner join BasicData.dbo.[user] u      
      on u.userid = uc.userid  
      and u.deletetag = 1       
      and u.kid = @kid            
      and u.usertype = 0      
            
  if @sendtype = 3 --���༶      
  insert into #receiver(userid, name, mobile)      
   select u.userid, u.name, u.mobile        
    from #recuserid rc       
     inner join BasicData..user_class uc       
      on uc.cid=rc.col    
     inner join BasicData.dbo.[user] u      
      on u.userid = uc.userid          
      and u.deletetag = 1        
      and u.kid = @kid          
      and u.usertype = 0         
        
  if @sendtype = 4 --������      
  insert into #receiver(userid, name, mobile)      
   select u.userid, u.name, u.mobile   
    from #recuserid rc       
     inner join BasicData..teacher t       
      on t.did=rc.col      
           
     inner join BasicData.dbo.[user] u      
      on u.userid = t.userid            
      and u.deletetag = 1       
      and u.kid = @kid       
      and u.usertype > 0         
                 
  if @sendtype = 5 --��ְλ      
  insert into #receiver(userid, name, mobile)      
   select u.userid, u.name, u.mobile     
    from #recuserid rc       
     inner join BasicData..teacher t       
      on t.title=rc.col      
     inner join BasicData.dbo.[user] u      
      on u.userid = t.userid           
      and u.deletetag = 1       
      and u.kid = @kid      
      and u.usertype > 0        
  
 --if @sendtype in(2,3) --��ȫ԰���͵��׶�԰��ɾ����VIP��С����      
 --BEGIN      
 -- select @vip=COUNT(1)       
 --  from KWebCMS..site_config       
 --  where isvipcontrol=1       
 --   and siteid=@kid      
 -- if(@vip=1)      
 --  DELETE #receiver      
 --   from #receiver rc      
 --    inner join BasicData.dbo.Child d       
 --     on d.userid=rc.userid      
 --   where ISNULL(d.vipstatus,0) <> 1       
 --END    
   
  INSERT INTO and_notice_batch(sender, smscontent, sendtime,kid, sendtype, recobjid, smstype,smstitle)        
  SELECT @senderuserid, @content, getdate(),@kid, @sendtype,@reccid+'$'+@recuserid, @smstype,@smstitle           
  select @taskid = ident_current('and_notice_batch')       
 
 --set @content = Replace(@content,'%teaname%','%stuname%')      
 --update #receiver       
 -- set content = Replace(@content, '%stuname%', name) 
       
 insert into and_notice_detial      
  (Guid, recMObile, Status,Kid, WriteTime, sender,recuserid,smstype,taskid)      
   select replace(newid(), '-', ''), mobile,0,       
	  @kid, getdate(), @senderuserid, userid, @smstype, @taskid     
	 from #receiver         
           
 select 1 result      
 drop table #receiver      

END

  



--select *from sms..and_notice_detial where recuserid=801368

--insert into sms..and_notice_detial(smstype,recuserid,sender,content,status,writetime,kid,taskid)
--select smstype,recuserid,sender,'����ż�7��,�ú���Ϣ',0,GETDATE(),kid,taskid
--from sms..and_notice_detial
-- where recuserid=801368
 
 
-- And_Notice_Detial_Receive_GetListTag 801368,1,5

--select *from and_notice_detial where recuserid=801368
--select *from and_notice_batch where taskid=11

--update and_notice_detial set status=0 where recuserid=801368