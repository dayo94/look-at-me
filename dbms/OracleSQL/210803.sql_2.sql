--서브쿼리 Subquery


--'king'의 부서번호 조회 : 10

SELECT deptno FROM emp
WHERE ename = upper('king');

SELECT * FROM dept
WHERE deptno = 10;


--서브쿼리를 이용하여 해결하기 성능별로 ㅠ
SELECT * FROM dept
WHERE deptno = ( 
    SELECT deptno FROM emp
    WHERE ename = upper('king') );


--조인을 이용하여 해결하기
SELECT D.* FROM dept D, emp E
WHERE D.deptno = e.deptno  --조인조건
    AND ename = upper('king'); --일반조회조건
    
    
    
    
--QUIZ 전체 평균임금보다 급여가 많은 사원(emp) 조회하기
-- 평균 : 그룹함수 avg()


SELECT * FROM emp;

--에러, 그룹함수는 WHERE절에서 사용할 수 없다
SELECT empno, ename 
FROM emp
WHERE avg(sal) < sal;


--에러 HAVING절은 GROUP BY 절이 있어야 사용할 수 있다
SELECT empno, ename 
FROM emp
HAVING avg(sal) < sal;


--서브쿼리

SELECT empno, ename FROM emp
WHERE sal > (
    SELECT avg(sal) FROM emp
);



--조회되는 컬럼에 전체 평균임금 추가하기
SELECT
    empno, ename, ( SELECT round(avg(sal),2) FROM emp ) avg_sal
FROM emp
WHERE sal > (
    SELECT avg(sal) FROM emp ) ;
    
    
--가장 최근에 입사한 사원 조회하기

SELECT max(hiredate) FROM emp; --가장 최근에 입사한 날짜


SELECT * FROM emp
WHERE hiredate = (
    SELECT MAX(hiredate) FROM emp
);



SELECT empno, ename, MAX(hiredate)
FROM emp
GROUP BY empno, ename; --다 나와서 잘못된 문법

SELECT empno, ename
FROM emp
WHERE hiredate = MAX(hitrdate); --그룹바이필수(HAVING은 그룹바이없이 쓸수없음)



--QUIZ 전체 평균 입금보다 부서 별 평균임금이 높은 부서
--deptno, avg_sal 을 조회한다

--10  2916.67
--20  2258.33

--SELECT deptno, ( SELECT round(avg(sal),2) FROM emp ) avg_sal
--FROM emp;
--WHERE ( SELECT round(avg(sal),2) FROM emp )


SELECT deptno, round( avg(sal),2 ) avg_sal
FROM emp
GROUP BY deptno
HAVING avg(sal) > (
    SELECT avg(sal) FROM emp )
ORDER BY deptno;

--인라인 뷰
SELECT * FROM emp; --테이블 조회

SELECT * FROM ( --인라인 뷰 조회
    SELECT empno,ename FROM emp
);

SELECT sal FROM ( --sal은 안쪽에 없어서 조회불가
    SELECT empno,ename FROM emp
);



--인라인뷰와 dept테이블 조인하기
SELECT
    E.deptno, D.dname, E.avg_sal
FROM (
    SELECT deptno, round(avg(sal), 2) avg_sal
    FROM emp
    GROUP BY deptno
    HAVING avg(sal) > (
        SELECT avg(sal) FROM emp )
) E
INNER JOIN dept D
    ON E.deptno = D.deptno
ORDER BY deptno;




-- WITH절을 이용하여 인라인뷰 꺼내기
WITH E AS
(
    SELECT deptno, round(avg(sal), 2) avg_sal
    FROM emp
    GROUP BY deptno
    HAVING avg(sal) > (
        SELECT avg(sal) FROM emp )
)

SELECT
    E.deptno, D.dname, E.avg_sal
FROM E
INNER JOIN dept D
    ON E.deptno = D.deptno
ORDER BY deptno;











--스칼라 서브쿼리
SELECT
    empno,
    ename,
    deptno,
    ( SELECT dname FROM dept D WHERE D.deptno = E.deptno ) dname,
    ( SELECT loc FROM dept WHERE deptno = E.deptno ) loc
FROM emp E;


--상호 연관 서브쿼지 (상관쿼리) 조인이더조음
-- 메인쿼리와 서브쿼리의 관계를 이용해서 조회되는 서브쿼리
-- 메인쿼리의 테이블과 서브쿼리의 테이블이 연관을 가지도록 조건을 부여해서 사용하는 서브쿼리
