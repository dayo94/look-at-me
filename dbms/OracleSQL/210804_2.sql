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


-- 그룹핑
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
-- -> 그룹핑하는 컬럼의 조합을 직접 명시한다
-- -> 그룸핑 조합을 적지 않으면 그룹화하지않는다
-- -> 전체 그룹핑은 ()로 적는다
-- -> 원하는 그룹이 2개 이상의 컬럼으로 이러어져 있으면 ( col1,col2 ) 형식으로 작성한다
SELECT deptno, job, count(*) CNT, sum(sal) total_sal
FROM emp
GROUP BY GROUPING SETS ( deptno, job, ( deptno, job ),())
ORDER BY deptno, job;

