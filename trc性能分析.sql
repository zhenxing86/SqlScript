--ͨ�� Select ��ѯ  ����trc�ļ���
--��ʾa.CPU,a.Reads,a.Writes,a.Duration,a.TextData���ļ����ݣ��������£�

--���͡���������\�༶��ҳ���������ϴ󣬷������ϴ�
SELECT top 100 a.CPU,a.Reads,a.Writes,a.Duration,a.TextData,* 
from  fn_trace_gettable('d:\test\20120504.trc', default) a
where TextData is not NULL--order by a.Reads desc
--order by a.CPU desc
--order by a.Writes desc
order by a.Duration desc ('d:\test\20120504.trc':�����ļ���ȫ·��)
--��ѯ������£�



SELECT top 100 a.CPU,a.Reads,a.Writes,a.Duration,a.TextData,* 
from  fn_trace_gettable('E:\zgyey20130415.trc', default) a
where TextData is not NULL
--order by a.Reads desc
--order by a.CPU desc
--order by a.Writes desc
order by a.Duration desc 