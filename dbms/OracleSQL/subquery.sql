--subquery

-- 'KING' 의 부서번호 조회 : 10
SELECT deptno FROM emp
WHERE ename = upper('king');

-- 10번 부서의 정보 조회
SELECT * FROM dept
WHERE deptno = 10;


SELECT * FROM dept
WHERE deptno = (
    SELECT deptno FROM emp
    WHERE ename = upper('king')
    );
    
    
--join으로 바꾸기 
SELECT D.* FROM dept D, emp E
WHERE D.deptno = E.deptno
    AND ename = upper('king');
    

--QUIZ. 전체 평균 임금보다 급여가 많은 사원(emp) 조회하기
--  평균 : 그룹함수 avg()


SELECT * FROM emp E
WHERE sal < (
    SELECT avg(sal) FROM emp
);



SELECT empno, ename, sal, ( SELECT round(avg(sal),2) FROM emp ) avg_sal
FROM emp
WHERE sal < (SELECT avg(sal) FROM emp);
    
    
    
    
--QUIZ. 전체 평균 임금보다 부서 별 평균임금이 높은 부서
--deptno, avg_sal 을 조회한다

--  10  2916.67
--  20  2258.33

SELECT deptno, round(avg(sal),2) avg_sal
FROM emp
GROUP by deptno
HAVING avg(sal) > (
    SELECT avg(sal) FROM emp
    )
ORDER BY deptno;


---- 인라인뷰 와 dept테이블 조인하기

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


--WITH로 꺼내기
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






