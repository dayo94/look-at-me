--���� �� ��������

--�μ� �� �ְ� �ӱ�
SELECT deptno, max(sal) FROM emp
GROUP BY deptno
ORDER BY deptno;



--�μ� �� �ְ� �ӱ��� �ް��ִ� ����� ���� ��ȸ�ϱ�
SELECT deptno, empno, ename, sal
FROM emp
WHERE ( deptno, sal ) IN (
    SELECT deptno, max(sal) FROM emp
    GROUP BY deptno
)
ORDER BY deptno;








SELECT E.deptno, dname, empno, ename, sal
FROM emp E, dept D
WHERE E.deptno = D.deptno 
    AND ( E.deptno, sal ) IN (
        SELECT deptno, max(sal) FROM emp
        GROUP BY deptno
    )
ORDER BY deptno;




--���� ������

SELECT empno, ename, job, deptno FROM emp
WHERE job = 'SALESMAN'
UNION
SELECT empno, ename, job, deptno FROM emp
WHERE job = 'MANAGER'
ORDER BY job, deptno;


--UNION : ������, �ߺ� ����������� <<<<<<<<<<<<<�����̾���
SELECT empno, ename, job, deptno FROM emp
WHERE sal < 2000
UNION
SELECT empno, ename, job, deptno FROM emp
WHERE sal < 3000;




--UNION ALL : ������, �ߺ� ���
SELECT empno, ename, job, deptno FROM emp
WHERE sal < 2000
UNION ALL
SELECT empno, ename, job, deptno FROM emp
WHERE sal < 3000
ORDER BY job, deptno;




--INTERSECT : ������
SELECT empno, ename, job, deptno FROM emp
WHERE sal < 2000
INTERSECT
SELECT empno, ename, job, deptno FROM emp
WHERE sal < 3000
ORDER BY job, deptno;



--MINUS : ������
SELECT empno, ename, job, deptno FROM emp
WHERE sal < 3000
MINUS
SELECT empno, ename, job, deptno FROM emp
WHERE sal < 2000
ORDER BY job, deptno;


-- �׷���
--GROUP BY
SELECT deptno, job, count(*) CNT, sum(sal) total_sal
FROM emp
GROUP BY deptno, job
ORDER BY deptno, job;



--GROUP BY ROLLUP()
SELECT deptno, job, count(*) CNT, sum(sal) total_sal
FROM emp
GROUP BY ROLLUP ( deptno, job )
ORDER BY deptno, job;




--GROUP BY CUBE()
SELECT deptno, job, count(*) CNT, sum(sal) total_sal
FROM emp
GROUP BY CUBE ( deptno, job )
ORDER BY deptno, job;



--GROUP BY GROUPING SETS ()
-- -> �׷����ϴ� �÷��� ������ ���� ����Ѵ�
-- -> �׷��� ������ ���� ������ �׷�ȭ�����ʴ´�
-- -> ��ü �׷����� ()�� ���´�
-- -> ���ϴ� �׷��� 2�� �̻��� �÷����� �̷����� ������ ( col1,col2 ) �������� �ۼ��Ѵ�
SELECT deptno, job, count(*) CNT, sum(sal) total_sal
FROM emp
GROUP BY GROUPING SETS ( deptno, job, ( deptno, job ),())
ORDER BY deptno, job;

