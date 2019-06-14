use ReportApp
go
 
 ---ÔÄ¶Á½É·Ñ  feetype in (3,4)
 sgs_pay_class_Sum 1,5,28277,'','2016-01-01 00:00:00','2016-03-24 23:59:59'      
 sgs_pay_class_Detail 1,5,116482,'2016-01-01 00:00:00','2016-03-24 23:59:59'  

--½¡¿µ·þÎñ°ü¹ºÂòÃ÷Ï¸  feetype in (3,4)
[ReportApp]..[user_fees_GetList]
[ReportApp]..[user_fees_GetListTag_ByCID]

--³¿¼ì¿¨¹ºÂò  feetype=5
reportapp..rpt_card_user_fees_GetList 25294
reportapp..rpt_card_user_fees_GetListTag_ByCID

--ÊÓÆµ¼à¿Ø½É·Ñ
reportapp..rpt_userfee_buytime_GetList
reportapp..rpt_userfee_buytime_GetList_ByCID

