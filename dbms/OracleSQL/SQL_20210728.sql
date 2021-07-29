-- 컬럼명에 Alias(별칭)을 적용하여 조회하기
SELECT
    empno AS "eno", --사원번호
    ename AS 사원이름, --사원이름
    sal AS "급여", --급여
    deptno --부서정보
FROM emp 사원; --테이블 Alias에서는 AS 키워드를 넣지 않아야 한다










--WHERE절

SELECT * FROM emp;

-- 급여(sal)가 2000 미만인 사원
SELECT * FROM emp
WHERE sal < 2000;

--영업사원(job - SALESMAN)들만 조회하기
SELECT * FROM emp
WHERE job = 'SALESMAN';

--급여(sal)가 2500이 넘고 관리자(job - MANAGER)가 아닌 사원
SELECT * FROM emp
WHERE sal > 2500
--    AND job <> 'MANAGER';
    AND NOT( job = 'MANAGER' );





-- BETWEEN a AND b
-- 사원번호(empno)가 7700~7900인 사원들을 조회하기
SELECT empno, ename FROM emp
WHERE empno BETWEEN 7700 AND 7900; -- 7700포함, 7900포함
-- CLARK, KING, TURNER, JAMES

SELECT empno, ename FROM emp
WHERE empno >= 7700 AND empno <= 7900;


-- 사원번호가 7700~7900이 아닌 사원들 조회하기
SELECT empno, ename FROM emp
WHERE NOT( empno BETWEEN 7700 AND 7900 );

SELECT empno, ename FROM emp
WHERE empno NOT BETWEEN 7700 AND 7900;


-- 사원이름(ename)이 'ALLEN' ~ 'KING' 사이인 사원들 조회하기
SELECT empno, ename FROM emp
--WHERE ename BETWEEN 'ALLEN' AND 'KING'; --사전순서대로 문자를 비교한다 (ASCII값 기준)
WHERE ename >= 'ALLEN' AND ename <= 'KING';





-- IN (list)
SELECT empno, ename FROM emp
WHERE empno IN ( 7521, 7654, 7839, 7902 );

SELECT empno, ename FROM emp
WHERE empno NOT IN ( 7521, 7654, 7839, 7902 );

SELECT empno, ename FROM emp
WHERE ename IN ( 'SMITH', 'ALLEN', 'KING', 'JAMES', 'JAVA' );

SELECT empno, ename FROM emp
WHERE ename = 'SMITH'
    OR ename = 'ALLEN'
    OR ename = 'KING'
    OR ename = 'JAMES'
    OR ename = 'JAVA';





-- LIKE
SELECT empno, ename FROM emp
--WHERE ename LIKE '%R%'; -- 이름에 R을 포함하는 모든 사원
--WHERE ename LIKE '_A%'; -- 이름의 두번째 알파벳이 A인 모든 사원
--WHERE ename LIKE '%RD'; -- 이름이 RD로 끝나는 모든 사원
WHERE ename NOT LIKE '%R%'; -- 이름에 R을 포함하지 않는 모든 사원


-- LIKE연산자와 IN연산자를 같이 사용하는 문법은 없다
SELECT empno, ename FROM emp
--WHERE ename LIKE ( IN ( '%R%', '%L%' ) ); --문법 에러, 안됨
WHERE ename LIKE '%R%'
    OR ename LIKE '%L%';


-- 같은 값인지 비교
SELECT * FROM emp
WHERE ename = 'SMITH'; -- INDEX-SCAN -> FULL-SCAN

-- 절대 사용하면 안된다! - 같은 값인지 비교할 때 LIKE연산자 사용하면 안됨
--  LIKE연산자는 FULL-SCAN(전체 탐색)으로 작동한다 -> 느려짐
SELECT * FROM emp
WHERE ename LIKE 'SMITH';





-- IS NULL
SELECT * FROM emp
--WHERE comm = null; -- 조회되지 않음
--WHERE mgr = null; -- 조회되지 않음
--WHERE mgr IS NULL; --조회됨
WHERE mgr IS NOT NULL; --조회됨





--WHERE 문제
-- SELECT empno, ename, deptno FROM emp
-- WHERE	 
-- 구조를 이용하여 해결할 것

 -- 부서번호가 30이고 직무가 영업인 사원 조회
--	ALLEN, WARD, MARTIN, TURNER
SELECT empno, ename, deptno FROM emp
WHERE deptno = 30
    AND job = 'SALESMAN';

 -- 부서번호가 30이고 직무가 영업이 아닌 사원 조회
--	BLAKE, JAMES
SELECT empno, ename, deptno FROM emp
WHERE deptno = 30
    AND job ^= 'SALESMAN';


 -- 부서번호가 30이 아니고 직무가 영업이 아닌 사원 조회
--	SMITH, JONES, CLARK, KING, FORD, MILLER
SELECT empno, ename, deptno FROM emp
WHERE deptno != 30
    AND job != 'SALESMAN';


 -- 사원번호가 7782에서 7900 사이인 사원 조회
--	CLARK, KING, TURNER, JAMES
SELECT empno, ename, deptno FROM emp
--WHERE empno BETWEEN 7782 AND 7900;
WHERE empno >= 7782 AND empno <= 7900;

 -- 사원명이 'A'부터 'C'로 시작하는 사원 조회
--	ALLEN, BLAKE, CLARK
SELECT empno, ename, deptno FROM emp
--WHERE ename BETWEEN 'A' AND 'C'; --잘못됨, C로 시작하는 이름들이 조회되지 않음
--WHERE ename BETWEEN 'A%' AND 'C%'; --잘못됨, %서식문자는 LIKE에서만 사용한다!
--WHERE ename BETWEEN 'A' AND 'D'; --잘못됨, 'D'를 포함하여 조회된다
--WHERE ename BETWEEN 'A' AND 'C~'; --조회는 된다
WHERE ename >='A' AND ename < 'D'; --적당한 조건식


 -- 부서번호가 10 또는 30인 사원 조회 (IN 사용)
--	ALLEN, WARD, MARTIN, BLAKE, CLARK, KING, TURNER, JAMES, MILLER
SELECT empno, ename, deptno FROM emp
WHERE deptno IN ( 10, 30 );





-- ORDER BY 절
SELECT * FROM emp
--ORDER BY empno; -- empno컬럼을 기준으로 오름차순 정렬 (기본 오름차순)
--ORDER BY empno DESC; -- empno컬럼을 기준으로 내림차순 정렬 (DESC)
--ORDER BY empno ASC; -- empno컬럼을 기준으로 오름차순 정렬 (ASC)
--ORDER BY ename DESC; -- ename컬럼을 기준으로 내림차순 정렬
ORDER BY hiredate; --hiredate컬럼을 기준으로 오름차순 정렬


-- deptno 기준으로 정렬은 한 뒤에
--deptno를 같은 값으로 가진 그룹 내에서 ename을 기준으로 정렬한다
SELECT empno, ename, deptno FROM emp
ORDER BY deptno DESC, ename DESC;


-- null을 가진 컬럼 정렬하기 + null값 제외
SELECT empno, ename, deptno, comm FROM emp
WHERE comm IS NOT NULL
ORDER BY comm DESC;


-- null을 가진 컬럼 정렬하기 + null값을 마지막으로
SELECT empno, ename, deptno, comm FROM emp
ORDER BY comm DESC NULLS LAST;
--ORDER BY comm ASC NULLS FIRST;


-- 조회 대상 컬럼으로 지정되지 않아도 정렬 기준 컬럼으로 사용 가능
SELECT empno, ename, comm
FROM emp
ORDER BY sal;





--DISTINCT
SELECT DISTINCT * FROM emp; --중복제거 없음, 잘못 사용한 방식

--30 SALESMAN 데이터가 4행 조회됨
SELECT deptno, job FROM emp
ORDER BY deptno, job;

--30 SALESMAN 데이터가 중복제거되어 1행으로 조회됨
SELECT DISTINCT deptno, job FROM emp
ORDER BY deptno, job;


--DISTCINT의 잘못된 사용법 - DISTINCT는 컬럼에 적용하는 키워드가 아니다
SELECT
    DISTINCT deptno,
    DISTINCT job
FROM emp;

--DISTCINT의 잘못된 사용법 - DISTINCT는 컬럼에 적용하는 키워드가 아니다
SELECT empno, DISTINCT deptno FROM emp
ORDER BY deptno, empno;


-- 근무중인 사원들의 직무 형태
SELECT DISTINCT job FROM emp
ORDER BY job;

-- 부서별 직무 조회하기
SELECT DISTINCT deptno, job FROM emp
ORDER BY deptno, job;




-- 데이터 연결 연산자, ||
SELECT ename, job
FROM emp;

SELECT ename || job AS EMPLOYEE
FROM emp;

SELECT empno, ename || ' is ' || job AS employee
FROM emp;

SELECT ename || ' is hired at ' || hiredate AS hired
FROM emp;

-- 키워드 -> 대문자 (SELECT, FROM, ...)
-- 식별자 -> 소문자 (컬럼명, 테이블명)
