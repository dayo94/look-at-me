--����

--������ �޿��� �λ��ϰ��� �Ѵ�
--
--�����ڵ尡 J7�� ������ �޿��� 8%�� �λ��ϰ�,
--
--�����ڵ尡 J6�� ������ �޿��� 7%�� �λ��ϰ�,
--
--�����ڵ尡 J5�� ������ �޿��� 5%�� �λ��Ѵ�.
--
--�� �� ������ ������ 3%�� �λ��Ѵ�.
--
--���� ���̺�(EMP)���� ������(EMPNAME), �����ڵ�(JOBCODE), �޿�(SALARY), �λ�޿�(�� ����)��
--
--��ȸ�ϼ���(��, DECODE�� �̿��ؼ� ����Ͻÿ�.)


SELECT EMPNAME, JOBCODE, SALARY, 
    DECODE (
        JOBCODE,
        J7 , SALARY*1.08,
        J6 , SALARY*1.07,
        J5 , SALARY*1.05,
        SALARY*1.03
    ) �λ�޿�
FROM EMP;




SELECT ename, empno, sal, 
    DECODE (
        empno,
        10 , sal*1.08,
        20 , sal*1.07,
        30 , sal*1.05,
        sal*1.03
    ) �λ�޿�
FROM EMP;




    