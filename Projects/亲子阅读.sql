use payapp
go

--24170	 ��ݸ��ݸ�ǵ�һ�׶�԰

select *from basicdata..[user] where kid=11061 and usertype=98

select *from payapp..order_record o
 left join basicdata..[user] u 
  on o.userid=u.userid
 where [from]='10001' 
 --and u.kid=24170 
 and actiondatetime>='2015-01-01'
 
 