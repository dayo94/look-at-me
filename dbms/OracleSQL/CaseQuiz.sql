--QUIZ
-- emp���̺� �̿�

-- 10�μ��� ������� �޿�(sal)�� 15% �λ��Ͽ� ��ȸ
-- 20�μ��� ������� �޿�(sal)�� 8% �λ��Ͽ� ��ȸ

SELECT empno, ename, sal, deptno
    , CASE deptno
        WHEN 10 THEN sal*1.15
        WHEN 20 THEN sal*1.08
        ELSE sal
    END increase
FROM emp;

