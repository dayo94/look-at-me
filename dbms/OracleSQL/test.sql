
SELECT * FROM (
    SELECT deptno, sum(sal) �հ� , floor(avg(sal)) ��� , COUNT(*) FROM emp
    GROUP BY deptno
    )
WHERE ��� > 2800
ORDER BY DEPTno ASC;








SELECT ROWNUM, Ename, SAL FROM (
    SELECT * FROM EMP
    ORDER BY SAL DESC
)
WHERE ROWNUM <= 3;

