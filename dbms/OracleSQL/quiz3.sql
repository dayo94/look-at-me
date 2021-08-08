

SELECT * FROM patient; --ȯ��
SELECT * FROM treat; --����
SELECT * FROM doctor; --�ǻ�
SELECT * FROM department; --�����
SELECT * FROM inpatient; --�Կ�

-----------

--1. 2013�� 1�� 25�� ������ ȯ���� ������ ������ȸ
-- �������, �����ǻ��, �����ð�, ȯ�ڹ�ȣ, ȯ���̸�, �������, ����
--(�����, ������, �����ð����� �������� ����)

SELECT DE.DEP_NAME, D.DOC_NAME, T.TRT_RECEIPT, P.PAT_CODE, P.PAT_NAME,
    P.PAT_BIRTH, P.PAT_GENDER
FROM patient P, TREAT T, DOCTOR D, DEPARTMENT DE
WHERE P.PAT_CODE = T.PAT_CODE
AND T.DOC_CODE = D.DOC_CODE
AND D.DEP_CODE = DE.DEP_CODE
AND TRT_YEAR = 2013
AND TRT_DATE = 0125
ORDER BY DE.DEP_NAME, D.DOC_NAME DESC ,T.TRT_RECEIPT DESC ;


--�����, ������, �����ð����� �������� ����

������ܰ�	�Ѽ���	1430	6	��â��	19730923	M
������ܰ�	�Ѽ���	1030	39	��⸮	20021104	M
������ܰ�	������	1250	38	����	    20020523	F
���	        ������	1330	33	���̳�	19751107	F
���      	������	1630	43	�����	19971115	F
�����ܰ�    	�輱��	0900	3	��ȯ��	19890330	F
�Ҿƿܰ�    	�ּ���	1000	15	�Ѽ�	    20030817	F
�Ҿ������ܰ�	�Ѽ���	1430	19	�캰��	20010105	F
�Ҿ������ܰ�	�Ѽ���	1100	17	��âȯ	20030407	M
�Ҿ������ܰ�	�Ѽ���	0900	45	Ȳ�����	19961012	F
��ȭ�⳻��	�ڼ���	1010	30	��ȯ��	20040526	M
��ȭ�⳻��	Ȳ����	1030	39	��⸮	20021104	M
��ȭ�⳻��	Ȳ����	0900	3	��ȯ��	19890330	F
�˷����⳻��	������	1000	40	�����	20070929	F
�̰�	        �ڼ���	0930	21	������	19910225	F
���οܰ�    	������	1400	2	��ȯ��	19710108	M
���οܰ�    	������	1330	31	��ȯ��	19810804	M
���׳���    	�ϼ���	1600	36	��ȯ��	20030514	F
ȣ��⳻��	�輱��	1400	26	������	20090404	F
ȣ��⳻��	�̼���	1400	2	��ȯ��	19710108	M





--2. 2013�� 12�� 25�� ������ ȯ���� ���� ������ȸ
--��������, ȯ�ڹ�ȣ, ȯ���̸�, �������, ����
--*�� 2014�� ���ķ� �Կ��ߴ����� �ִٸ� �Կ�����, �Կ��ð��� ���
--(����ð� ���� ����)
-- OUTER JOIN (+)

SELECT * FROM patient; --ȯ��
SELECT * FROM treat; --����
SELECT * FROM doctor; --�ǻ�
SELECT * FROM department; --�����
SELECT * FROM inpatient; --�Կ�
---------------------------------------------------------
--��������, ȯ�ڹ�ȣ, ȯ���̸�, �������, ����
--*�� 2014�� ���ķ� �Կ��ߴ����� �ִٸ� �Կ�����, �Կ��ð��� ���
--(����ð� ���� ����)
SELECT T.TRT_DATE, P.PAT_CODE, P.PAT_NAME, P.PAT_BIRHT, P.PAT_GENDER, I.INP_DATE, I.INP_TIME 
FROM TREAT T, PATIENT P, INPATIENT I
WHERE T.PAT_CODE(+) = P.PAT_CODE
AND P.PAT_CODE (+)= I.PAT_CODE
AND TRT_YEAR = '2013'
AND TRT_DATE = '1225'
AND I.INP_YEAR >= '2014';

SELECT T.TRT_DATE, P.PAT_CODE, P.PAT_NAME, P.PAT_BIRHT, P.PAT_GENDER, I.INP_DATE, I.INP_TIME
FROM PATIENT P, TREAT T, INPATIENT I
WHERE P.PAT_CODE = T.PAT_CODE
AND T.PAT_CODE = I.PAT_CODE;





1225	34	��ȯ��	19700713	F			
1225	49	����	20070627	M			
1225	12	������	20050119	M	2014	0123	1040
1225	22	�赵��	19921125	F			
1225	40	�����	20070929	F			
1225	16	�輺��	20060903	M			
1225	5	�����	19801222	M			
1225	1	��ȯ��1	19831203	F			
1225	25	������	19880320	F			
1225	15	�Ѽ�	20030817	F	2015	0516	1450
1225	9	Ȳ����	19750603	M			
1225	29	������	20020402	M			
1225	48	����	20000816	M	2014	1212	1450
1225	46	������	20020628	M			
1225	9	Ȳ����	19750603	M			
1225	21	������	19910225	F			
1225	39	��⸮	20021104	M	2015	0425	1350
1225	33	���̳�	19751107	F	2014	1002	1300
1225	13	���ÿ���	20041211	M			
1225	32	��ȯ��	19941117	M	2015	0303	1150
1225	7	��ȯ��3	19790102	M	2015	1026	1330
1225	49	����	20070627	M			
1225	50	�����	20001221	M	2015	0623	1050
1225	44	����	19831129	M	2014	0602	1340
1225	29	������	20020402	M			
1225	12	������	20050119	M	2014	0123	1040
1225	42	����	19881010	F			
1225	3	��ȯ��	19890330	F			


-- 3. 1���� ANSI �ڵ�� �ۼ��Ͻÿ�

SELECT DE.DEP_NAME, D.DOC_NAME, T.TRT_RECEIPT, P.PAT_CODE, P.PAT_NAME,
    P.PAT_BIRTH, P.PAT_GENDER
FROM patient P
INNER JOIN TREAT T
ON P.PAT_CODE = T.PAT_CODE
INNER JOIN DOCTOR D
ON T.DOC_CODE = D.DOC_CODE
INNER JOIN DEPARTMENT DE
ON D.DEP_CODE = DE.DEP_CODE
AND TRT_YEAR = 2013
AND TRT_DATE = 0125
ORDER BY DE.DEP_NAME, D.DOC_NAME DESC ,T.TRT_RECEIPT DESC ;




-- 4. 2���� ANSI �ڵ�� �ۼ��Ͻÿ�


