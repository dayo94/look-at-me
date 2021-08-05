
SELECT * FROM patient; --ȯ��
SELECT * FROM treat; --����
SELECT * FROM doctor; --�ǻ�
SELECT * FROM department; --�����
SELECT * FROM inpatient; --�Կ�


-----

--1. ������ ������ �������� ���� ȯ�� ��ȸ


SELECT PAT_NAME FROM patient
WHERE PAT_GENDER = 'M'
--    AND PAT_NAME LIKE '��%';
    AND SUBSTR(PAT_NAME,1,1) = '��';

4	��ȯ��2
5	�����
6	��â��
7	��ȯ��3


--2. ������ ������ �������� ���� ȯ���� 1979����� �ƴ� ��ȸ

SELECT PAT_NAME FROM patient
WHERE PAT_GENDER = 'M'
    AND SUBSTR(PAT_NAME,1,1) = '��' --(������ġ�� 0���� ��� ù��°���� �����Ѵ�)
    AND NOT SUBSTR(PAT_BIRTH,1,4) = '1979';


5	�����
6	��â��


--3. ��������� 1980��� ���� 1989��� ���� ȯ�� �� ���ڸ� ��ȸ

SELECT PAT_CODE, PAT_NAME FROM patient
WHERE PAT_GENDER = 'F'
    AND PAT_BIRTH BETWEEN 19800101 AND 19891231;



1	��ȯ��1
3	��ȯ��
23	�輺��
24	������
25	������
42	����


--4. ȯ���̸��� 4���̸� '����'���� ������ ȯ�� �� ��������� 2004��� ���� ȯ�ڸ� ��ȸ

SELECT * FROM patient;

SELECT PAT_CODE, PAT_NAME FROM patient
WHERE substr(PAT_NAME, -2, 2) = '����'
    AND pat_birth BETWEEN 20040101 AND 20041231
    AND length(PAT_NAME) = 4;



13	���ÿ���


--5. 2000��� ���� �� �̸� �� �α��ڰ� 'ȯ��'�� ������ �ʴ� ȯ����ȸ
SELECT * FROM patient;

SELECT PAT_CODE, PAT_NAME FROM patient
WHERE PAT_BIRTH BETWEEN 20000101 AND 20001231
    AND PAT_GENDER = 'F'
    AND substr(PAT_NAME,-2,2) != 'ȯ��';


28	�ѾƸ�


--6. ȯ���̸��� 4���λ�� �߿� �޴��� ��ȣ�� ��ϵǾ����� ���� ȯ����ȸ

SELECT * FROM patient;

SELECT PAT_CODE, PAT_NAME FROM patient
WHERE length(PAT_NAME) = 4 
    AND PAT_TEL IS NULL;


4	��ȯ��2
7	��ȯ��3
45	Ȳ�����
