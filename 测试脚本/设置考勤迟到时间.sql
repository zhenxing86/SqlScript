
������������ʱ���ǿ��ԣ�������7:45�ϰ࣬����5:20�°�
24152	 �������������׶�԰��л�� ����û��


select * from cardapp..attendancetimeset where kid= 24152 

declare @KID int =24152,@UserType int=1
,@Time1 varchar(50)='07:45'
,@Time2 varchar(50)='12:00'
,@Time3 varchar(50)='14:00'
,@Time4 varchar(50)='17:20'
,@Time5 varchar(50)='20:00'
,@Time6 varchar(50)='22:00'
insert into cardapp..attendancetimeset(KID,UserType,DepartmentID,Time1,Time2,Time3,Time4,Time5,Time6)
select @KID,@UserType,did,@Time1,@Time2,@Time3,@Time4,@Time5,@Time6
from BasicData..department where kid= @kid and deletetag=1
