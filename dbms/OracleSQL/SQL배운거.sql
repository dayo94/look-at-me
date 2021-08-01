SELECT count(*) FROM emp;

SELECT
    to_char(sysdate, 'YYYY"��" MM"��" DD"��" HH24 HH"��" MI"��" SS"��"') AS ����
FROM dual;


SELECT * FROM emp;

-- QUIZ

-- ��ȸ �÷�
-- deptno, dname, cnt, tot_sal, avg_sal

--  dname -> �ѱ۷�
--  cnt, tot_sal, avg_sal -> �μ��� ���
--  avg_sal -> �Ҽ��� 2�ڸ�����

SELECT deptno,
    CASE deptno
    WHEN 10 THEN '����'
    WHEN 20 THEN '����'
    WHEN 30 THEN '����'
    END dname,
    count(*),
    sum(sal) tot_sal,
    round(avg(sal),2) avg_sal
FROM emp
GROUP BY deptno,
CASE deptno
    WHEN 10 THEN '����'
    WHEN 20 THEN '����'
    WHEN 30 THEN '����'
    END
ORDER BY deptno;


SELECT * FROM emp;


SELECT NVL(comm,'0') FROM emp;



SELECT NVL2(comm,comm,'0') FROM emp;

SELECT * FROM emp;
SELECT 
    NVL( NULLIF(job,'SALESMAN') ,'������')
FROM emp;




