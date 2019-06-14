USE CommonFun
GO
/****** Object:  StoredProcedure [dbo].[CanSetCurTerm]    Script Date: 07/02/2014 17:27:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*------------------------------------
-- Author:      xie
-- Create date: 2014-07-02 
-- Description: ����ʱ���kid�ж��Ƿ������õ�ǰѧ�ڵ�Ȩ��
-- Paradef:  
@result int=0 --������ѧ�ڣ�1��--Ҫ��ѧ�ڣ�����û����ѧ�ڡ�2��Ҫ��ѧ�ڣ������Ѿ���ѧ�ڡ�

�����ǰѧ���Ѿ����ã��Ͳ������ã�
1�������ǰѧ�ڣ�term='xxxx-1'����û�����ã�����
1����ǰʱ�仹û�е����ڣ���ѧ�ڣ��������봺��������2���£�����������ѧ�ڡ�
2�����������1����������������ѧ��

2�������ǰѧ�ڣ�term='xxxx-0'����û�����ã�����
1����ǰʱ�仹û�е�9��1�գ���ѧ�ڣ���������9��1��������2���£�����������ѧ�ڡ�
2�����������1����������������ѧ��
-- Memo:  
 declare @t_date datetime,@date datetime='2014-09-30 10:00:00',@ret int=0,@term_s nvarchar(10)=''
 select @term_s = fn_dbo.getCurrentTerm(17709,@date,1)  
 select @term_s
 
 set @date='2014-07-31 10:00:00'
 set @ret =0
 select dbo.fn_getCurrentTerm(17709,@date,1)  

declare @t_date datetime,@date datetime='2014-06-30 10:00:00',@ret int=0
 exec @ret=CanSetCurTerm 17709,@date
 select @ret
 
 set @t_date = Month(dateadd(MONTH,2,@date))
 select 1 from BasicData.dbo.kid_term   
	  where bgndate <= @t_date
	   and enddate >= @t_date
	   and kid = 17709 
------------------------------------*/
alter PROCEDURE [dbo].[CanSetCurTerm]
@kid int
,@date datetime
 AS 

begin 
  
Begin tran       
 BEGIN TRY  
 
	DECLARE @type int,@term nvarchar(10)='1',@next_term nvarchar(10)='1',
	@t_date datetime,@result int=0 --������ѧ��
	
	set @t_date = dateadd(mm,2,@date)
	select @term = CommonFun.dbo.fn_getCurrentTerm(@kid,@date,0)
	select @next_term = CommonFun.dbo.fn_getCurrentTerm(@kid,@t_date,0)
	
	IF @term<>@next_term --Ҫ��ѧ��
	begin 
		if not exists --Ҫ��ѧ�ڣ�����û����ѧ�ڡ�
		(
		 select 1 from BasicData.dbo.kid_term   
		  where bgndate <= @t_date
		   and enddate >= @t_date
		   and kid = @kid 
		) 
		begin 
			set @result=1
		end
		else--Ҫ��ѧ�ڣ������Ѿ���ѧ�ڡ�
		begin
			set @result=2
		end
	end 
	
	  
 Commit tran                                  
 End Try          
 Begin Catch    
    select ERROR_LINE() as Line,   
  ERROR_MESSAGE() as message1,   
  ERROR_NUMBER() as number,   
  ERROR_PROCEDURE() as proc1,   
  ERROR_SEVERITY() as severity,   
  ERROR_STATE() as state1     
    Rollback tran          
 end Catch  
	  
	RETURN @result 
	
	
end
