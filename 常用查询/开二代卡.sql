--���ţ�7803090  
--ת����[20850]���������׶�԰   ����Ȼ

select * from BasicData..user_child where kid=20850 and name='������'
select * 
--update c set udate=getdate(),userid=2505645,EnrolNum=716
from mcapp..cardinfo where kid=20850 and cardno = '8408761'
select * from mcapp..cardinfo where card like '%418733%'
select * from mcapp..cardinfo_log where card like '%7803090%'

--�Ұ�418733����������[20850]���������׶�԰ ������������

select distinct EnrolNum from mcapp..cardinfo where kid=20850
-----------------�������--------------------------
INSERT INTO dbo.cardinfo(kid, card, udate, usest, CardType, userid, EnrolNum,activ_time)
values(20850,'418733',GETDATE(),1,2,2505642,802,GETDATE())

insert into mcapp..cardinfo_log(kid,card ,udate ,usest ,CardType ,userid ,EnrolNum ,DoUserid ,DoWhere ,openCardDate,memo,ipaddr)            
select  20850,'418733',GETDATE(),1 ,2 ,2505642 ,802,132,0,'2017-05-04 10:42:00.163','','58.63.227.50'      

----------------�������-----------------
use mcapp
go

select cardno,userid,ROW_NUMBER() over(order by userid) rowid into #data from gbapp..user_temp
declare @rowid int=1
while(exists(select 1 from #data where rowid =@rowid))
begin
  INSERT INTO dbo.cardinfo(kid, card, udate, usest, CardType, userid, EnrolNum,activ_time)
   select 20850,cardno,GETDATE(),1,2,userid,716+@rowid,GETDATE()
    from #data where rowid=@rowid

  insert into mcapp..cardinfo_log(kid,card ,udate ,usest ,CardType ,userid ,EnrolNum ,DoUserid ,DoWhere ,openCardDate,memo,ipaddr)            
   select  20850,cardno,GETDATE(),1 ,2 ,userid ,716+@rowid,132,0,'2016-05-26 09:28:56.997','','58.63.227.50'  
    from #data where rowid=@rowid
    
  set @rowid=@rowid+1  
end
-----------------------------

