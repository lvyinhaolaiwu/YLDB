--1����ǰ�����¡�����

--2021-11-24 21:01:21.153
--2021-11-24 21:01:28.590
select getdate()  --��ǰʱ���
select day(getdate())  --�����ǵ��µĶ��ٺ�  ��
select month(getdate())--��
select year(getdate()) --��
--2���������ڵļ������

--���ڼӼ�
--���ڼ�
select dateadd(day,10 ,getdate())  --��ǰʱ����ǰ��10��  0-180��  180-360��  ����360��
select dateadd(month,10 ,getdate())  --��ǰʱ����ǰ��10����  �״������û�  ���״������û�
select dateadd(year,10 ,getdate())  --��ǰʱ����ǰ��10��
select dateadd(week,10 ,getdate())  --��ǰʱ����ǰ��10��
--���ڼ�
select dateadd(day,-10 ,getdate())  --��ǰʱ��������10��  0-180��  180-360��  ����360��
select dateadd(month,-10 ,getdate())  --��ǰʱ��������10����  �״������û�  ���״������û�
select dateadd(year,-10 ,getdate())  --��ǰʱ��������10��
select dateadd(week,-10 ,getdate())  --��ǰʱ��������10��

--���ڵļ��ʱ��
select datediff(day,getdate() ,getdate()+10)  --��ʼ���ںͽ������ڼ������
select datediff(week,getdate() ,getdate()+10)  --��ʼ���ںͽ������ڼ������
select datediff(week,getdate() ,getdate()+100)  --��ʼ���ںͽ������ڼ������
select datediff(month,getdate() ,getdate()+100)  --��ʼ���ںͽ������ڼ���·���
select datediff(year,getdate() ,getdate()+100)  --��ʼ���ںͽ������ڼ�������
select datediff(year,getdate() ,getdate()+200)  --��ʼ���ںͽ������ڼ�������

--3������Date��Time����


--���µ�һ��  1900.01.01  00:00:00  1902.11.24
--            2021.11.01  00:00:00
select datediff(month,0,getdate())  --2021-1900=121  121*12+10=1462����
select dateadd(month, datediff(month,0,getdate()), 0)

--�������һ��   �¸��µĵ�һ���һ��
select dateadd(month,1,getdate())
select dateadd(month,-1,getdate())
select dateadd(month,-1,0)
select dateadd(month,1,0)
select dateadd(month,-1,-1)
select dateadd(month,-1,-2)
--select datediff(month,1,getdate())
select datediff(month,0,getdate())
select datediff(month,0,dateadd(month,1,getdate()))
select datediff(month,1,dateadd(month,1,getdate()))
select datediff(month,-1,dateadd(month,1,getdate()))
select datediff(month,-2,dateadd(month,1,getdate()))
select dateadd(month, datediff(month,0,dateadd(month,1,getdate())), -1)
select dateadd(month, datediff(month,0,dateadd(month,1,getdate())), 0)
--�����һ��
select getdate()
select datediff(year, 0, getdate())
select dateadd(year, datediff(year, 0, getdate()),  0)

--�������һ��
select dateadd(year,1,getdate())
select datediff(year, 0,  dateadd(year,1,getdate()))
select dateadd(year, datediff(year, 0,  dateadd(year,1,getdate())),  -1)

--���õ����ڸ�ʽ
--4���������ڸ�ʽ��ʾ
select getdate()--2021-11-25 00:05:48.073
select CONVERT(varchar(100),getdate(),111)
select CONVERT(varchar(8),getdate(),112)--20211124
select CONVERT(varchar(100),getdate(),112)--20211124     
select CONVERT(varchar(6),getdate(),112)--202111    
select CONVERT(varchar(100),getdate(),120)--2021-11-24 23:38:41
select CONVERT(datetime,getdate(),120)--2021-11-24 23:40:20.120
select CONVERT(datetime,'2021-01-01',120)--2021-01-01 00:00:00.000
select CONVERT(datetime,'20210101',120)--2021-01-01 00:00:00.000

select CONVERT(varchar,112)
select CONVERT(int,112)
select CONVERT(int,'112')
select CONVERT(int,'A')

select CONVERT(varchar(100),getdate(),0)--11 24 2021 11:10PM     
select CONVERT(varchar(100),getdate(),1)--11/24/21     
select CONVERT(varchar(100),getdate(),2)--21.11.24
select CONVERT(varchar(100),getdate(),3)--24/11/21     
select CONVERT(varchar(100),getdate(),4)--24.11.21     
select CONVERT(varchar(100),getdate(),5)--24-11-21
select CONVERT(varchar(100),getdate(),6)--24 11 21 
select CONVERT(varchar(100),getdate(),7)--11 24, 21     
select CONVERT(varchar(100),getdate(),8)--23:44:34
select CONVERT(varchar(100),getdate(),9)--11 24 2021 11:44:48:730PM    
select CONVERT(varchar(100),getdate(),10)--11-24-21    
select CONVERT(varchar(100),getdate(),11)--21/11/24
select CONVERT(varchar(100),getdate(),12)--211124 
select CONVERT(varchar(100),getdate(),13)--24 11 2021 23:46:41:843     
select CONVERT(varchar(100),getdate(),14)--23:46:52:230
select CONVERT(varchar(100),getdate(),20)--2021-11-24 23:47:29   
select CONVERT(varchar(100),getdate(),21)--2021-11-24 23:47:39.563
select CONVERT(varchar(100),getdate(),22)--11/24/21 11:47:47 PM    
select CONVERT(varchar(100),getdate(),23)--2021-11-24 
select CONVERT(varchar(100),getdate(),24)--23:48:07
select CONVERT(varchar(100),getdate(),25)--2021-11-24 23:56:50.653
select CONVERT(varchar(100),getdate(),100)--11 24 2021 11:57PM
select CONVERT(varchar(100),getdate(),101)--11/24/2021
select CONVERT(varchar(100),getdate(),102)--2021.11.24
select CONVERT(varchar(100),getdate(),103)--24/11/2021
select CONVERT(varchar(100),getdate(),104)--24.11.2021
select CONVERT(varchar(100),getdate(),105)--24-11-2021
select CONVERT(varchar(100),getdate(),106)--24 11 2021
select CONVERT(varchar(100),getdate(),107)--11 24, 2021
select CONVERT(varchar(100),getdate(),108)--23:59:47
select CONVERT(varchar(100),getdate(),109)--11 24 2021 11:59:55:307PM
select CONVERT(varchar(100),getdate(),110)--11-25-2021
select CONVERT(varchar(100),getdate(),111)--2021/11/25
select CONVERT(varchar(100),getdate(),112)--20211125
select CONVERT(varchar(100),getdate(),113)--25 11 2021 00:01:33:757
select CONVERT(varchar(100),getdate(),114)--00:01:46:377
select CONVERT(varchar(100),getdate(),120)--2021-11-25 00:02:30
select CONVERT(varchar(100),getdate(),121)--2021-11-25 00:02:38.383
select CONVERT(varchar(100),getdate(),126)--2021-11-25T00:03:27.447
select CONVERT(varchar(100),getdate(),130)--20 ???? ?????? 1443 12:03:35:160AM