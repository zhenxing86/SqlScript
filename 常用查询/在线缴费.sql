use ReportApp
go
 
 ---�Ķ��ɷ�  feetype in (3,4)
 sgs_pay_class_Sum 1,5,28277,'','2016-01-01 00:00:00','2016-03-24 23:59:59'      
 sgs_pay_class_Detail 1,5,116482,'2016-01-01 00:00:00','2016-03-24 23:59:59'  

--���������������ϸ  feetype in (3,4)
[ReportApp]..[user_fees_GetList]
[ReportApp]..[user_fees_GetListTag_ByCID]

--���쿨����  feetype=5
reportapp..rpt_card_user_fees_GetList 25294
reportapp..rpt_card_user_fees_GetListTag_ByCID

--��Ƶ��ؽɷ�
reportapp..rpt_userfee_buytime_GetList
reportapp..rpt_userfee_buytime_GetList_ByCID

