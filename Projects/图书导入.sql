select cs.bookcount,b.BOOK_COUNT,*
--update cs set bookcount=b.BOOK_COUNT
from [ossapp].[dbo].[company_storebook] cs
left join [ossapp].[dbo].[book_in] b
 on cs.ISBN=b.ISBN
where b.BOOK_COUNT>0 

and b.ISBN in(
'9787533271855',
'9787539191355',
'9787539198231',
'9787539421391'
)

title,cover,author,elected_reason,price,tip,store,ISBN,dotime,authorinfo
,publisher,summary,Theme,age,keyword,Remarks

����   ��ѡ����      ����   age         keyword  Remarks
Cover  ElectedReason Theme  ��������     �ؼ���  ��ע

select * from  company_storebook where ISBN like'%-%'
select * from  company_storebook where isbn='9787544246729'
9787544246729/9787539198255
update company_storebook set Remarks='9787544246729/9787539198255' where isbn='9787544246729'
select * from  company_storebook where isbn='9787539180083'
--update   book4 set [��ѡ����]='' where isbn='9787539180083'

select * into company_storebook_0312 from [ossapp].[dbo].company_storebook where 
select * delete from [ossapp].[dbo].company_storebook where bookcount is null
select * from [ossapp].[dbo].company_storebook where dotime='2015-02-28 11:48:29.737' -- bookcount is null 

select COUNT(1) from [ossapp].[dbo].company_storebook where bookcount is null
--dotime=getdate(),

;With Data as (  
Select convert(nvarchar(50),[ISBN],120) [ISBN],[����],[����],[���ߣ�����)],[��ѡ����],[���߼��],[���ݼ��],[����/����],[��������],[�۸�(Ԫ)],[������],[�ؼ���],[��ע] 
 from dbo.book0327 where [ISBN] is not null
)  
Merge [ossapp].[dbo].[company_storebook] a  
Using Data b On a.ISBN = b.ISBN and a.title=b.[����]
When Matched Then  
Update Set cover=b.[����]+'.jpg',author=b.[���ߣ�����)],
elected_reason = b.[��ѡ����],price=b.[�۸�(Ԫ)],authorinfo=b.[���߼��]
,publisher=b.[������],summary=b.[���ݼ��],Theme=b.[����/����],age=b.[��������],keyword=b.[�ؼ���],Remarks=b.[��ע] 
When not Matched Then  
Insert (title,cover,author,elected_reason,price,ISBN,authorinfo
,publisher,summary,Theme,age,keyword,Remarks) 
 Values(b.[����], b.[����]+'.jpg', b.[���ߣ�����)], b.[��ѡ����], b.[�۸�(Ԫ)], b.ISBN,
 b.[���߼��],b.[������],b.[���ݼ��],b.[����/����],b.[��������],b.[�ؼ���],b.[��ע]);  

select * into company_storebook_0314 from company_storebook
select * from
update company_storebook set ISBN='9787544246729/9787539198255' where Remarks like '%/%' and ISBN='9787544246729'
select 679 +236
--��Ȼ

update b  set store=sb.store,bookcount=sb.bookcount
from company_storebook b
 inner join company_storebook0327 sb
  on b.isbn=sb.isbn and b.title=sb.title
