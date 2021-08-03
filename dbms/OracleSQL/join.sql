--JOIN
--오라클 구문

SELECT ename,sal, D.deptno, dname
FROM emp E, dept D
WHERE e.deptno = d.deptno
    AND sal>500
ORDER BY deptno;

------------------------------------------

SELECT empno, ename, E.deptno
FROM emp E, dept D
WHERE E.deptno = D.deptno
ORDER BY deptno, empno;

-------------------------------------------------
SELECT empno, ename, D.deptno, dname
FROM emp E , dept D
WHERE E.deptno (+) = D.deptno
ORDER BY deptno;


--ANSI

SELECT empno, ename, D.deptno, dname
FROM emp E
RIGHT OUTER JOIN dept D
    ON E.deptno = D.deptno
ORDER BY deptno;





--ANSI INNER JOIN

SELECT empno, ename, e.deptno, dname
FROM emp e
    INNER JOIN dept d
    ON e.deptno = d.deptno
WHERE sal>500
ORDER by deptno;

