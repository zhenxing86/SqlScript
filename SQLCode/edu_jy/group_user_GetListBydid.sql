USE [edu_jy]
GO
/****** Object:  StoredProcedure [dbo].[group_user_GetListBydid]    Script Date: 07/27/2013 16:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





ALTER PROCEDURE [dbo].[group_user_GetListBydid]
@did int
,@aid varchar(max)
,@uid int
as 

declare @udid int,@uareaid int,@udepid int

select @udid=did,@uareaid=areaid,@udepid=depid from dbo.group_user where userid=@uid


--if(@aid=-1)
--begin
--insert into #temp(tareaid)
--select ID from area a 
-- where (a.ID=@uareaid or a.Superior=@uareaid) 
--end
--else
--begin
--insert into #temp(tareaid)
--values(@aid)
--end



create table #temp
(
tareaid int
,lsuperior int
,aname nvarchar(100)
)


--��֤���������û��µ�
insert into #temp
select ID,-2,title from Area 
where superior=@uareaid or ID=@uareaid

--����Ҫ��ѯ�������б��ѯ����
insert into #temp
exec('select distinct a.ID,-1,title from #temp t
inner join Area a on superior=t.tareaid or ID=t.tareaid
where lsuperior=-2 and a.ID in ('+@aid+')')
--ɾ�����������
delete #temp where lsuperior=-2



--�й���Ա�ɿ����е�
if(@udepid=1 and @udid=0)
begin


select userid,username,aname from dbo.group_user
inner join #temp on tareaid=areaid
where  did=@did and deletetag=1
order by areaid asc


end
--���ع���Ա���Կ����ص�
else if(@udepid>1 and @udid=0)
begin

select userid,username,aname from dbo.group_user 
inner join #temp on tareaid=areaid
where did=@did  and deletetag=1
order by areaid asc
end
--�е��վ�������װ�ģ�ֻ�ܿ�����λ�ĺ�����������λ��
else if(@udepid=1 and @udid<0)
begin



select userid,username,aname from dbo.group_user 
inner join #temp on tareaid=areaid
where did=@udid and deletetag=1
order by areaid asc


end
--���ص��վ�������װ�ģ�ֻ�ܿ�����λ��
else if(@udepid>1 and @udid<0)
begin

if(@uareaid=724)
begin

select userid,username,aname from dbo.group_user 
inner join #temp on tareaid=areaid
where deletetag=1 and ((did=@udid and tareaid=724) or tareaid<>724)
order by areaid asc

end
else if(@aid='722' and @udepid=3)
begin

select userid,username,'������' aname from dbo.group_user 
where deletetag=1 and did=-2 and areaid=722
order by areaid asc

end
else
begin
select userid,username,aname from dbo.group_user 
inner join #temp on tareaid=areaid
where did=@udid and deletetag=1
order by areaid asc
end

end

drop table #temp

GO
[group_user_GetListBydid] -2,722,104

GO
[group_user_GetListBydid] -2,724,16
GO

[group_user_GetListBydid] -2,'-1,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077',36