
SELECT * FROM (
    SELECT deptno, sum(sal) ÇÕ°è , floor(avg(sal)) Æò±Õ , COUNT(*) FROM emp
    GROUP BY deptno
    )
WHERE Æò±Õ > 2800
ORDER BY DEPTno ASC;








SELECT ROWNUM, Ename, SAL FROM (
    SELECT * FROM EMP
    ORDER BY SAL DESC
)
WHERE ROWNUM <= 3;

