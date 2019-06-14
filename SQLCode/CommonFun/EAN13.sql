USE CommonFun
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
-- Author:      Master̷
-- Create date: 2013-10-18
-- Description:	��ȡEAN-13��ļ���λ
-- Memo:		EAN-13��Ʒ�����е�У����������Ǽ���ǰ��12�������Ƿ���ȷ���������ÿ�ζ�������ʱ���������һ�����ݷ���У�鲢��У������бȶԡ�
    У����ļ��㷽����
    ��12�����ݷ����������е�����λ��ӵó�һ����a��
    �����е�ż��λ��ӵó�һ����b��
    Ȼ����b����3����a��ӵõ���c��
    ��10��ȥ��c�ĸ�λ����
    ��������Ϊ10������Ϊ����������Ϊ10������Ϊ0
*/
create function EAN13(@s char(12))  
returns varchar(1)  
as  
begin  
  return (10-(  
  (cast(substring(@s,2,1) as int)+substring(@s,4,1)+substring(@s,6,1)  
   +substring(@s,8,1)+substring(@s,10,1)+substring(@s,12,1)  
   )*3  
  +substring(@s,1,1)+substring(@s,3,1)+substring(@s,5,1)  
  +substring(@s,7,1)+substring(@s,9,1)+substring(@s,11,1)  
  )%10)%10    
end  
go  
  
  
--select dbo.ean13('690102807501')  
