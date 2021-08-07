

SELECT * FROM patient; --ȯ��
SELECT * FROM treat; --����
SELECT * FROM doctor; --�ǻ�
SELECT * FROM department; --�����
SELECT * FROM inpatient; --�Կ�


--1. 2012�� 1�� 3�� ����ȯ�� �� 
-- �����ܰ�(�ڵ�:05xx)�� �����ܰ�(�ڵ�:08xx)�� �̺����İ�(�ڵ�:13xx)
-- ȯ����ȸ

SELECT P.PAT_CODE, P.PAT_NAME 
FROM patient P, TREAT T, DOCTOR D, DEPARTMENT DE
WHERE P.PAT_CODE = T.PAT_CODE
AND T.DOC_CODE = D.DOC_CODE
AND D.DEP_CODE = DE.DEP_CODE
AND TRT_YEAR = 2012
AND TRT_DATE = 0103
AND substr(D.DEP_CODE,1,2) IN (05,08,13);


32	��ȯ��
33	���̳�
37	����
42	����
43	�����


--2. 2012�� 1�� 3�� ����ȯ�� �� ���� ����ð��� 09:00 ~ 12:00 �̰�
-- ������� �����ܰ�(�ڵ�:05xx)�� �����ܰ�(�ڵ�:08xx)�� �̺����İ�(�ڵ�:13xx)
-- �� �ƴ� ȯ����ȸ

SELECT P.PAT_CODE, P.PAT_NAME 
FROM patient P, TREAT T, DOCTOR D, DEPARTMENT DE
WHERE P.PAT_CODE = T.PAT_CODE
AND T.DOC_CODE = D.DOC_CODE
AND D.DEP_CODE = DE.DEP_CODE
AND TRT_YEAR = 2012
AND TRT_DATE = 0103
AND TRT_TIME BETWEEN 0900 AND 1200 
AND substr(D.DEP_CODE,1,2) NOT IN (05,08,13)
ORDER BY PAT_CODE;



30	��ȯ��
35	Ȳȯ��
39	��⸮
40	�����


--3. 2014�� 1�� 1�� ����ȯ�� �� 5�� ���
-- (����ð����� �� ������ ����ȯ�� 5��)

SELECT * FROM patient; --ȯ��
SELECT * FROM treat; --����
SELECT * FROM doctor; --�ǻ�
SELECT * FROM department; --�����
SELECT * FROM inpatient; --�Կ�

SELECT P.PAT_CODE, P.PAT_NAME FROM (
    SELECT ROWNUM rnum, TRT.*
    FROM ( 
        SELECT *
        FROM treat
        WHERE trt_year = '2014'
            AND trt_date = '0101'
        ORDER BY trt_time DESC
    ) TRT
) R, patient P
WHERE R.pat_code = P.pat_code
    AND rnum BETWEEN 1 AND 5
ORDER BY P.pat_code;

5	�����
19	�캰��
21	������
24	������
27	�ȼ���


-----------