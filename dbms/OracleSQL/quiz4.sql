

SELECT * FROM patient; --ȯ��
SELECT * FROM treat; --����
SELECT * FROM doctor; --�ǻ�
SELECT * FROM department; --�����
SELECT * FROM inpatient; --�Կ�



--1. 2014�� 1�� 2�� ����ȯ�� ��ü ������ȸ
--   ȯ�ڹ�ȣ, ȯ���̸�, �������, ����, �����ǻ��, �������
-- ��Į�� ���������� ǥ��

SELECT
    T.pat_code
    , ( SELECT pat_name FROM PATIENT P WHERE T.pat_code=P.pat_code ) pat_name
    , ( SELECT pat_birth FROM PATIENT P WHERE T.pat_code=P.pat_code ) pat_birth
    , ( SELECT pat_gender FROM PATIENT P WHERE T.pat_code=P.pat_code ) pat_gender
    , ( SELECT DOC_NAME FROM DOCTOR D WHERE D.doc_code = T.doc_code ) DOC_NAME
    , ( SELECT DEP_NAME FROM DEPARTMENT M, DOCTOR D WHERE D.doc_code = T.doc_code AND M.DEP_CODE=D.DEP_CODE ) DEP_NAME
FROM TREAT T
WHERE 1=1
    AND trt_year='2014'
    AND trt_date='0102'
ORDER BY PAT_CODE;


1	��ȯ��1	19831203	F	Ȳ����	�ܻ��
2	��ȯ��	19710108	M	������	���
3	��ȯ��	19890330	F	�ּ���	������ܰ�
5	�����	19801222	M	������	���
10	���	19790322	M	�Ѽ���	������ܰ�
16	�輺��	20060903	M	�輱��	�����ܰ�
17	��âȯ	20030407	M	�輱��	ȣ��⳻��
18	�輺��	20051219	M	�ϼ���	���׳���
21	������	19910225	F	�ּ���	�Ҿƿܰ�
22	�赵��	19921125	F	�ּ���	�Ҿƿܰ�
24	������	19840302	F	�ڼ���	���׳���
27	�ȼ���	20091106	F	�⼱��	�����̽Ŀܰ�
30	��ȯ��	20040526	M	������	�˷����⳻��
34	��ȯ��	19700713	F	������	�����̽Ŀܰ�
35	Ȳȯ��	19970323	M	�Ѽ���	������ܰ�
38	����	20020523	F	������	ô�߿ܰ�
42	����	19881010	F	������	���
44	����	19831129	M	Ȳ����	�����׹��ܰ�
49	����	20070627	M	������	���
50	�����	20001221	M	�ڼ���	�̰�





--2.2014�� 1�� 2�� ����ȯ�� �� �μ����̺��� WHERE �� SubQuery�� 
--����Ͽ� ��ȸ
--   ȯ�ڹ�ȣ, ȯ���̸�, �������, ����, �����ǻ��, �������

-- �� �ܰ��迭 ȯ�ڸ���ȸ('02xx')
-- where�� subquery

1	��ȯ��1	19831203	F	Ȳ����	�ܻ��
3	��ȯ��	19890330	F	�ּ���	������ܰ�
10	���	19790322	M	�Ѽ���	������ܰ�
21	������	19910225	F	�ּ���	�Ҿƿܰ�
22	�赵��	19921125	F	�ּ���	�Ҿƿܰ�
27	�ȼ���	20091106	F	�⼱��	�����̽Ŀܰ�
34	��ȯ��	19700713	F	������	�����̽Ŀܰ�
35	Ȳȯ��	19970323	M	�Ѽ���	������ܰ�
44	����	19831129	M	Ȳ����	�����׹��ܰ�
