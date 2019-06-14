USE [mcapp]
GO
/****** Object:  StoredProcedure [dbo].[addrunstatus]    Script Date: 2014/11/24 23:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[addrunstatus]
@devid varchar(9),
@kid int,
@status varchar(255)

as

	INSERT INTO [mcapp].[dbo].[runstatus]
           ([devid]
           ,[kid]
           ,[status])
     VALUES
           (@devid
           ,@kid
           ,@status)
                
  /* 
   declare @delstu int
   declare @deltea int
   select @delstu=COUNT(1)
		from stuinfo where card1='' and card2='' and card3='' and card4=''
			and kid=@kid 
  select @delstu=COUNT(1)
		from teainfo where card=''
			and kid=@kid  

	if(@delstu>0)
	begin			       
		insert into userdelete_tmp(oid,devid,adate)
			select stuid,@devid,GETDATE() 
				from stuinfo where card1='' and card2='' and card3='' and card4=''
					and kid=@kid
		delete stuinfo where card1='' and card2='' and card3='' and card4=''
					and kid=@kid
	end
	if(@deltea>0)	
	begin
		
		insert into userdelete_tmp(oid,devid,adate)
		select teaid,@devid,GETDATE() 
			from teainfo where card=''
				and kid=@kid	
				
		delete teainfo where card=''
				and kid=@kid
		
	end
	if((@deltea+@delstu)>0)
	begin
		INSERT INTO [mcapp].[dbo].[querycmd]([kid],[devid],[querytag],[adatetime],[syndatetime],[status])
     VALUES(@kid,@devid,3,getdate(),getdate()+0.01,1)
	end




*/
GO
