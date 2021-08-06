--INSERT

DESC emp;

SELECT * FROM emp;

INSERT INTO emp  ( empno, ename, job, mgr, hiredate, sal, comm, deptno )
VALUES ( 1001, 'ALICE', 'CLERK', 1003, '17/04/08', 800, NULL, 30 );


SELECT * FROM emp;

INSERT INTO emp 
VALUES ( 1002, 'MORRIS', 'CLERK', 1003, '17/01/02', 800, NULL, 30 );


SELECT * FROM emp;

SELECT 1, 2, 'A', 'B', '18/3/2' FROM dual;


SELECT * FROM EMP;

SELECT 1003, 'MATHEW', 'SALESMAN', null, sysdate, 1500, 100, 30 FROM dual;



--SELECT쿼리를 이용한 데이터 삽입
INSERT INTO emp
SELECT 1003, 'MATHEW', 'SALESMAN', null, sysdate, 1500, 100, 30 FROM dual;
SELECT * FROM EMP;



-- QUIZ. 다음 두 사원의 정보를 삽입하시오

-- 사번 1011, 이름 EDWARD, 직무 MANAGER
--  empno, ename, job

-- 사번 1015, 이름 Richard, 급여 2000
--  empno, ename, sal


INSERT INTO EMP ( EMPNO, ENAME, JOB )
VALUES ( 1011, 'EDWARD', 'MANAGER' );

INSERT INTO EMP ( EMPNO, ENAME, SAL )
VALUES ( 1015, 'RICHARD', 2000 );


SELECT * FROM emp;



--테이블 생성
--SELECT구문의 결과로 사본테이블을 생성하는 구문
--emp테이블 조회 결과를 emp_research테이블로 생성한다
CREATE TABLE emp_research
AS
SELECT * FROM emp;

--테이블 확인
SELECT * FROM emp_research;

--테이블 삭제
DROP TABLE emp_research;

--빈 테이블 조회 
SELECT * FROM emp
WHERE 1=0; --FALSE
--WHERE 1=1; --TRUE

--빈 테이블 복사하여 생성
-- ->데이터 없음, 컬럼형식은 유지

CREATE TABLE emp_research
AS
SELECT * FROM emp
WHERE 1=0;

SELECT * FROM emp_research;

DESC emp_research;



--emp테이블의 20번부서의 모든 데이터를 INSERT
INSERT INTO emp_research
SELECT * FROM EMP WHERE DEPTNO = 20;


--30번 부서의 empno와 ename만 복사하여 INSERT
INSERT INTO emp_research ( empno, ename )
SELECT empno, ename FROM emp WHERE DEPTNO = 30;

SELECT * FROM emp_research;
DESC emp_research;


--테이블의 모든 데이터 삭제
DELETE emp_research;

SELECT * FROM emp_research;
DESC emp_research;



--INSERT ALL

INSERT ALL
    WHEN deptno = 20
        THEN INTO emp_research 
    WHEN deptno = 30
        THEN INTO emp_research (empno, ename)
        VALUES ( empno, ename)
SELECT * FROM emp;


SELECT * FROM emp_research;



--INSERT ALL QUIZ
CREATE TABLE emp_hire
AS SELECT empno, ename, hiredate
    FROM emp WHERE 1=0;
    
    
CREATE TABLE emp_sal
AS SELECT empno, ename, sal
    FROM emp WHERE 1=0;
    
    
--INSERT ALL 사용해서 해결하기

--emp_hire 테이블, '1981/06/01' 이전 사원
INSERT ALL
    WHEN hiredate < '1981/06/01'
        THEN INTO emp_hire ( empno, ename, hiredate )
        VALUES ( empno, ename, hiredate )
SELECT * FROM emp;

SELECT * FROM emp_hire;


--emp_sal 테이블, 2000보다 많은 사원
INSERT ALL
    WHEN sal > 2000
        THEN INTO emp_sal ( empno, ename, sal )
        VALUES ( empno, ename, sal )
SELECT * FROM emp;

SELECT * FROM emp_sal;



--합쳐서

INSERT ALL
    WHEN hiredate < '1981/06/01'
        THEN INTO emp_hire ( empno, ename, hiredate )
        VALUES ( empno, ename, hiredate )
    WHEN sal > 2000
        THEN INTO emp_sal ( empno, ename, sal )
        VALUES ( empno, ename, sal )
SELECT * FROM emp;

--commit; --테이블 변경사항 반영하기



--테이블 데이터 삭제
DELETE emp_hire;
SELECT * FROM emp_hire;


--ROLLBACK; --작업 내역 되돌리기


--DELETE 삭제 코드를 적을 때에는 SELECT 구문을 먼저 적어본다
SELECT * FROM emp_sal
--DELETE emp_sal
WHERE empno = 7839;


--ROLLBACK; --작업 되돌리기
--COMMIT; --작업 반영하기



--emp_hire 테이블 전체 행 삭제

SELECT * FROM emp_hire;
--DELETE emp_hire

--ROLLBACK;



SELECT * FROM emp_hire
--DELETE emp_hire
WHERE ename = 'SMITH';

--ROLLBACK;


--UPDATE

SELECT * FROM emp
--UPDATE emp SET ename = 'BURGER' , job='KING'
WHERE empno = 1001;

--COMMIT;




--UPDATE QUIZ

--EMP_HIRE 테이블의 전체 행의 입시일을 온을로 변경

SELECT * FROM emp_hire;
--UPDATE emp_hire SET hiredate = trunc(sysdate);


--EMP_SAL의 모든 사원들의 급여 전부 550 인상시키기

SELECT * FROM emp_sal;
--UPDATE emp_sal SET sal = sal+550;


--ROLLBACK;
--COMMIT;



--MERGE 
--오라클 전용 구문

CREATE TABLE emp_merge
AS
SELECT empno, ename, sal, deptno
FROM emp
WHERE deptno IN (10, 20 );

--테이블 확인
SELECT * FROM emp_merge
ORDER BY deptno, empno;


--emp테이블에서 20,30 부서 사원들 정보 조회 ( USING, SELECT )
--emp_merge테이블에 병합 (MERGE)
--이미 존재하는 사원이라면 sal만 30%인상 ( UPDATE )
--emp_merge테이블에 존재하지 않으면 삽입 ( INSERT )


MERGE INTO emp_merge M
USING (
    SELECT empno, ename, deptno, sal
    FROM emp 
    WHERE deptno IN ( 20, 30 )
) E
ON ( M.empno = E.empno )
WHEN MATCHED THEN
    UPDATE SET M.sal = M.sal*1.3
WHEN NOT MATCHED THEN
    INSERT ( M.empno, M.ename, M.deptno, M.sal )
    VALUES ( E.empno, E.ename, E.deptno, E.sal );
    
    
SELECT * FROM emp_merge;

--ROLLBACK;
--COMMIT;



