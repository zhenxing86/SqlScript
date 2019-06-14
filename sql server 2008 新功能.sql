--sql server 2008 �¹���

���stu_mc_day���м�¼���͸��£�û�о�������
use mcapp
MERGE stu_mc_day AS sm
	USING #T t
	ON (CONVERT(VARCHAR(10),sm.cdate,120) = CONVERT(VARCHAR(10),t.cdate,120) and t.stuid = sm.stuid)
	WHEN MATCHED AND ISNULL(sm.status,0) = 0 THEN
	UPDATE SET 
		sm.tw = t.tw,
		sm.zz = t.zz,
		sm.card = t.card,
		sm.cdate = t.cdate,
		sm.adate = t.adate,
		sm.devid = t.devid,
		sm.gunid = t.gunid
	WHEN NOT MATCHED THEN
	INSERT (stuid, card, cdate, tw, zz, adate, devid, gunid)
	VALUES (t.stuid, t.card, t.cdate, t.tw, t.zz, t.adate, t.devid, t.gunid);