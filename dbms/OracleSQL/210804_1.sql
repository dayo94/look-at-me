-- ORDER BY절에 서브쿼리 사용하기

SELECT empno, ename, sal, deptno
FROM emp E
ORDER BY (
    SELECT loc FROM dept D
    WHERE E.deptno = D.deptno
);

SELECT * FROM dept
ORDER BY loc;



--rownum 키워드
-- 조회된 결과에 행번호를 지정하여 붙여주는 키워드
-- 가상컬럼으로 추가된다
--  **가상컬럼 : 실제 테이블에는 없지만 가상으로 만들어 사용하는 컬럼

SELECT rownum, empno, ename --행번호 조회(1,2,3,4,5...)
FROM emp;



SELECT rownum, empno, ename
FROM emp
WHERE deptno = 30;



--잘못사용
--*기호가 emp테이블뿐만아니라 rownum까지 추출하려고 하기 때문에 에러
-- ->rownum키워드는 테이블을 조회한 후에 마지막으로 해당 행의 번호를 붙여준다


SELECT --실행불가
    rownum, --행번호
    * --전체 컬럼 (rownum도 포함해서 조회하려고 하기때문에 에러)
FROM emp;


--해결 방법
-- ->rownum을 사용할 때에는 조회하려는 컬럼에 테이블을 지정하여 따로 써주어야한다

SELECT
    rownum,
    E.*
FROM emp E;



--잘못사용
--SELECT절에서 rownum을 통해 행번호가 붙은 이후에 ORDER BY절을 수행한다
-- ->ORDER BY정렬상태가 rownum에 반영되지 않는다


SELECT rownum sal_rank, E.*
FROM emp E
ORDER BY sal DESC;



--해결방법
-- 서브쿼리를 이용하여 정렬하고, 메인쿼리에서 rownum을 사용한다

SELECT rownum sal_rank, E.* FROM (
    SELECT * FROM emp
    ORDER BY sal DESC
) E;


--잘못사용
--rownum키워드는 행번호를 1부터 순서대로 부여한다
-- -> rownum키워드를 중간값부터 꺼내 사용할 수 없다
-- -> WHERE절에서 rownum키워드를 비교할 값으로 1부터 지정하지않으면 조회되지 않는다
SELECT rownum sal_rank, E.* FROM (
    SELECT * FROM emp
    ORDER BY sal DESC
) E
--WHERE rownum BETWEEN 1 AND 3; --TOP3 잘나옴
WHERE rownum BETWEEN 5 AND 10; --문제발생 조회결과 없음



--해결방법
SELECT * FROM (
    SELECT rownum sal_rank, E.* FROM (
        SELECT * FROM emp
        ORDER BY sal DESC
        ) E
) R
WHERE sal_rank BETWEEN 5 AND 10;






--QUIZ. 입사날짜 (hiredate)가 가장 오래된 3명 조회하기

SELECT * FROM emp;

SELECT * FROM (
    SELECT rownum xmf, E.* FROM
    ( SELECT * FROM emp
    ORDER BY hiredate ) E
    )
WHERE xmf BETWEEN 1 AND 3;




--OVER () 함수

SELECT
    empno, ename, sal
FROM emp
ORDER BY sal DESC;


SELECT
    empno, ename, sal, deptno
FROM emp
ORDER By deptno, sal DESC;

--OVER()함수에 ORDER BY 적용하여 구하기 (정렬상태를 기준으로 처리됨)
SELECT
    empno, ename, sal, deptno,
    sum(sal) OVER( ORDER BY sal DESC ) sum_sal --sal기준 내림차순 누적합계
FROM emp;

--OVER()함수는 sum이나 avg에 어울린다. min,max는 모...
SELECT
    empno, ename, sal, deptno,
    min(sal) OVER( ORDER BY sal DESC ) sum_sal 
FROM emp;


SELECT
    empno, ename, sal, deptno,
    max(sal) OVER( ORDER BY sal DESC ) sum_sal 
FROM emp;



SELECT
    empno, ename, sal, deptno,
    sum(sal) OVER ( PARTITION BY deptno) sum_sal
FROM emp;




SELECT
    empno, ename, sal, deptno,
    sum(sal) OVER ( PARTITION BY deptno ORDER BY sal) sum_sal
FROM emp;

--부서별 인원수를 포함하여 조회하기
SELECT
    empno, ename, deptno,
    count(*) OVER ( PARTITION by deptno ) DEPT_CNY
FROM emp;


--ROW_NUMBER() : 행번호 적용

SELECT
    empno, ename, deptno, sal,
    row_number() OVER( ORDER BY sal DESC ) r
FROM emp;

SELECT * FROM (
    SELECT
        empno, ename, deptno, sal,
        row_number() OVER( ORDER BY sal DESC ) rnum
    FROM emp
)
WHERE rnum <= 3;




--row_number(), rank(), dense_rank() 분석함수

SELECT
    empno, ename, sal, deptno,
    row_number() OVER ( ORDER BY sal DESC ) rnum,
    rank()  OVER ( ORDER BY sal DESC ) rank,
    dense_rank() OVER ( ORDER BY sal DESC ) dense_rank
FROM emp;




--다중 행 서브쿼리

--salesman들ㅇ릐 급여 조회
SELECT DISTINCT sal
FROM emp
WHERE job = upper('salesman')
ORDER By sal;


--salesman들과 같은 급여를 받는 사원들
SELECT * FROM emp
WHERE sal IN ( 1250, 1500, 1600 );



--서브쿼리를 이용하여 하나의 코드로 만들기

SELECT * FROM emp
WHERE sal IN (
    SELECT DISTINCT sal
    FROM emp
    WHERE job = upper('salesman')
    --WHERE절 서브쿼리에서 오더바이절 적용 X
);



--사장이 속한 부서번호 조회하기
SELECT deptno FROM emp
WHERE job = upper('president');

--사장과 같은 부서에서 근무중인 사원들 조회하기

SELECT * FROM emp
WHERE deptno IN (
    SELECT deptno FROM emp
    WHERE job = upper('president')
);




--ANT 연산자
SELECT * FROM emp
WHERE sal = ANY( --IN연산자와 같은 연산자
    SELECT DISTINCT sal
    FROM emp
    WHERE job = upper('salesman') -- 1250, 1500, 1600
);



SELECT * FROM emp
WHERE sal < ANY( --sal < 1600, 다중 행 서브쿼리 조회 결과 중 최대값보다 작으면 만족
    SELECT DISTINCT sal
    FROM emp
    WHERE job = upper('salesman') -- 1250, 1500, 1600
);


SELECT * FROM emp
WHERE sal > ANY( --sal > 1250, 다중 행 서브쿼리 조회 결과 중 최소값보다 크면 만족
    SELECT DISTINCT sal
    FROM emp
    WHERE job = upper('salesman') -- 1250, 1500, 1600
);
--ANY = SOME



--ALL 연산자 전부만족하는

SELECT * FROM emp
WHERE sal = ALL (
    SELECT DISTINCT sal
    FROM emp
    WHERE job = upper('salesman') -- 1250, 1500, 1600
);



SELECT * FROM emp
WHERE sal < ALL ( --1250보다 작은 애들 최소값보다 작으면
    SELECT DISTINCT sal
    FROM emp
    WHERE job = upper('salesman') -- 1250, 1500, 1600
);




SELECT * FROM emp
WHERE sal > ALL ( -- 1600 최대값보다 큰애들 
    SELECT DISTINCT sal
    FROM emp
    WHERE job = upper('salesman') -- 1250, 1500, 1600
);





--EXISTS


--매니저역할을 맡고있는 사원들 
SELECT DISTINCT mgr FROM emp
ORDER BY mgr;


SELECT * FROM emp E
WHERE EXISTS ( --IN은 직접 다 비교, EXSITS는 비교적 단순(존재여부만따져서 채움)
    --EXISTS 연산자의 SELECT절 컬럼은 실제 조회용으로 사용되지 않는다
    --상관쿼리 조건만 만족하면 데이터를 따로 조회하여 비교하지않고 최종결과로 추가한다
    
    
    SELECT DISTINCT mgr --별필요없음 암거나써도됨 그냥 써주는거
    FROM emp M
    WHERE E.empno = M.mgr --상관쿼리(연결되는부분이존재한다) 조건
)
ORDER BY empno;

--EXISTS 연산자 사용

SELECT * FROM dept D
WHERE EXISTS (
    SELECT * FROM emp E
    WHERE D.deptno = E.deptno )
ORDER BY deptno;


