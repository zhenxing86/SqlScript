USE [ossapp]
GO
/****** Object:  StoredProcedure [dbo].[onsale_GetListTag]    Script Date: 2014/11/24 23:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


------------------------------------
--鐢ㄩ€旓細鏌ヨ璁板綍淇℃伅 
--椤圭洰鍚嶇О锛?
--璇存槑锛?
--鏃堕棿锛?012/3/8 9:13:44
------------------------------------
CREATE PROCEDURE [dbo].[onsale_GetListTag]
 @page int
,@size int
,@kid int
,@modelname varchar(100)
 AS 

declare @pcount int

--SELECT @pcount=count(1) FROM [onsale] where deletetag=1 and kid=@kid and modelname=@modelname
SELECT 
	@pcount      ,ID    ,kid    ,name    ,ischecked    ,remark    ,modelname    ,uid    ,intime    ,deletetag  	 FROM [onsale] g where deletetag=1  and kid=@kid and modelname=@modelname





GO
