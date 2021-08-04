--다중 열 서브쿼리

--부서 별 최고 임금
SELECT deptno, max(sal) FROM emp
GROUP BY deptno
ORDER BY deptno;



--부서 별 최고 임금을 받고있는 사원의 정보 조회하기
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




--집합 연산자

SELECT empno, ename, job, deptno FROM emp
WHERE job = 'SALESMAN'
UNION
SELECT empno, ename, job, deptno FROM emp
WHERE job = 'MANAGER'
ORDER BY job, deptno;


--UNION : 합집합, 중복 허용하지않음 <<<<<<<<<<<<<젤많이쓰임
SELECT empno, ename, job, deptno FROM emp
WHERE sal < 2000
UNION
SELECT empno, ename, job, deptno FROM emp
WHERE sal < 3000;




--UNION ALL : 합집합, 중복 허용
SELECT empno, ename, job, deptno FROM emp
WHERE sal < 2000
UNION ALL
SELECT empno, ename, job, deptno FROM emp
WHERE sal < 3000
ORDER BY job, deptno;




--INTERSECT : 교집합
SELECT empno, ename, job, deptno FROM emp
WHERE sal < 2000
INTERSECT
SELECT empno, ename, job, deptno FROM emp
WHERE sal < 3000
ORDER BY job, deptno;



--MINUS : 차집합
SELECT empno, ename, job, deptno FROM emp
WHERE sal < 3000
MINUS
SELECT empno, ename, job, deptno FROM emp
WHERE sal < 2000
ORDER BY job, deptno;


