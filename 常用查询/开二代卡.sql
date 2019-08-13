--卡号：7803090  
--转给：[20850]荔湾区金花幼儿园   李兆然

select * from BasicData..user_child where kid=20850 and name='刘锦旭'
select * 
--update c set udate=getdate(),userid=2505645,EnrolNum=716
from mcapp..cardinfo where kid=20850 and cardno = '8408761'
select * from mcapp..cardinfo where card like '%418733%'
select * from mcapp..cardinfo_log where card like '%7803090%'

basicdata..move_user
--我把418733这个卡分配给[20850]荔湾区金花幼儿园 大二班的刘锦旭

select distinct EnrolNum from mcapp..cardinfo where kid=20850
-----------------单个添加--------------------------
INSERT INTO dbo.cardinfo(kid, card, udate, usest, CardType, userid, EnrolNum,activ_time)
values(20850,'418733',GETDATE(),1,2,2505642,802,GETDATE())

insert into mcapp..cardinfo_log(kid,card ,udate ,usest ,CardType ,userid ,EnrolNum ,DoUserid ,DoWhere ,openCardDate,memo,ipaddr)            
select  20850,'418733',GETDATE(),1 ,2 ,2505642 ,802,132,0,'2017-05-04 10:42:00.163','','58.63.227.50'      

----------------批量添加-----------------
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

select max(EnrolNum) from mcapp..cardinfo where kid=18699
declare @EnrolNum int=1121,@kid int=20850,@tokid int=18699
Select ID, CardType, EnrolNum, udate, ROW_NUMBER() OVer(Order by ID) RowNo Into #card
 From mcapp.dbo.cardinfo Where kid =@kid and cardno in(
'8677833'
,'8674650'
,'8695917'
,'4131286'
,'6649877'
,'8443817'
,'4230812'
,'4229682'
,'4237591'
,'4238057'
,'4231667'
,'4230249'
,'4229337'
,'4226438'
,'4049250'
,'6803062'
)
Update #card Set EnrolNum = @EnrolNum + RowNo, udate = GETDATE()
--select @tokid tokid,b.EnrolNum,b.udate
Update a Set kid = @tokid, EnrolNum = b.EnrolNum, udate = b.udate 
 From mcapp.dbo.cardinfo a, #card b
 Where a.kid = @kid and a.ID = b.ID  
drop table #card