
-- QUIZ

-- ��ȸ �÷�
-- deptno, dname, cnt, tot_sal, avg_sal

--  dname -> �ѱ۷�
--  cnt, tot_sal, avg_sal -> �μ��� ���
--  avg_sal -> �Ҽ��� 2�ڸ�����


SELECT
    deptno,
    case deptno
        WHEN 10 THEN 'ȸ����'
        WHEN 20 THEN '������'
        WHEN 30 THEN '������'
        WHEN 40 THEN '���'
    END dname,
    count(*) cnt,
    sum(sal) tot_sal,
    round( avg(sal), 2 ) avg_sal
FROM emp
GROUP BY deptno
--    , case deptno 
--        WHEN 10 THEN 'ȸ����'
--        WHEN 20 THEN '������'
--        WHEN 30 THEN '������'
--        WHEN 40 THEN '���'
--    END
ORDER BY deptno;

