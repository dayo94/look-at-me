
--QUIZ
-- emp���̺� �̿�

-- 10�μ��� ������� �޿�(sal)�� 15% �λ��Ͽ� ��ȸ
-- 20�μ��� ������� �޿�(sal)�� 8% �λ��Ͽ� ��ȸ

SELECT empno, ename, sal, deptno
    , DECODE( deptno 
        , 10, sal * 1.15
        , 20, sal * 1.08
        , sal
    ) increase
FROM emp;

