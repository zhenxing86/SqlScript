use basicdata
go


select  * from BasicData.dbo.kid_term where kid=14496      
select  * from BasicData.dbo.class_all where kid=14496 and term='2019-0'  --28      
select uca.* from basicdata..user_class_all uca      
inner join basicdata..[user] u on uca.userid=u.userid       
where kid= 14496 and term='2019-0'   --1466      

/*

delete from BasicData.dbo.kid_term where kid=14496 and term='2019-0'      

declare @date datetime=getdate()  
exec commonfun.dbo.SetCurTerm @kid=14496,@date=@date,@douserid=374,@del_leave =1  --0����ɾ��user_class_all������԰���û���1��ɾ��user_class_all������԰���û�  

14496]������׶�԰2018-2019 ��ѧ��

*/

select * from ossapp..users where name like '%��%'
