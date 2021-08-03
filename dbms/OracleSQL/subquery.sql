--subquery

-- 'KING' �� �μ���ȣ ��ȸ : 10
SELECT deptno FROM emp
WHERE ename = upper('king');

-- 10�� �μ��� ���� ��ȸ
SELECT * FROM dept
WHERE deptno = 10;


SELECT * FROM dept
WHERE deptno = (
    SELECT deptno FROM emp
    WHERE ename = upper('king')
    );
    
    
--join���� �ٲٱ� 
SELECT D.* FROM dept D, emp E
WHERE D.deptno = E.deptno
    AND ename = upper('king');
    

--QUIZ. ��ü ��� �ӱݺ��� �޿��� ���� ���(emp) ��ȸ�ϱ�
--  ��� : �׷��Լ� avg()


SELECT * FROM emp E
WHERE sal < (
    SELECT avg(sal) FROM emp
);



SELECT empno, ename, sal, ( SELECT round(avg(sal),2) FROM emp ) avg_sal
FROM emp
WHERE sal < (SELECT avg(sal) FROM emp);
    
    
    
    
--QUIZ. ��ü ��� �ӱݺ��� �μ� �� ����ӱ��� ���� �μ�
--deptno, avg_sal �� ��ȸ�Ѵ�

--  10  2916.67
--  20  2258.33

SELECT deptno, round(avg(sal),2) avg_sal
FROM emp
GROUP by deptno
HAVING avg(sal) > (
    SELECT avg(sal) FROM emp
    )
ORDER BY deptno;


---- �ζ��κ� �� dept���̺� �����ϱ�

SELECT
    E.deptno, D.dname, E.avg_sal
FROM (
    SELECT deptno, round(avg(sal),2) avg_sal
FROM emp
GROUP by deptno
HAVING avg(sal) > (
    SELECT avg(sal) FROM emp
    )
ORDER BY deptno
) E
INNER JOIN dept D
    ON E.deptno = D.deptno
ORDER BY deptno;


--WITH�� ������
WITH E AS
(SELECT deptno, round(avg(sal),2) avg_sal
FROM emp
GROUP by deptno
HAVING avg(sal) > (
    SELECT avg(sal) FROM emp)
)
SELECT
    E.deptno, D.dname, E.avg_sal
FROM E
INNER JOIN dept D
    ON E.deptno = D.deptno
ORDER BY deptno;






