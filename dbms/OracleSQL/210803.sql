SELECT * FROM emp, dept
WHERE emp.deptno = dept.deptno; --(조인 조건)

SELECT deptno FROM emp, dept --에러, deptno컬럼을 테이블에 지정하지 않음
WHERE emp.deptno = dept.deptno;



SELECT ename,empno,emp.deptno,dept.deptno FROM emp, dept
WHERE emp.deptno = dept.deptno;



--테이블이름에 ALIAS 붙여 작성하면 편하다
SELECT ename, empno, E.deptno FROM emp E, dept D
WHERE E.deptno = D.deptno;





--오라클 EQUI JOIN, 등가조인

SELECT ename, empno, E.deptno, dname 
FROM emp E, dept D
WHERE E.deptno = D.deptno --조인조건
    AND empno > 7600 --일반 조회 조건
ORDER BY deptno, empno; --정렬




--ANSI, INNER JOIN 내부 조인

SELECT empno, ename, E.deptno, dname
FROM emp E --조인대상테이블
INNER JOIN dept D --조인테이블
    ON E.deptno = d.deptno --조인조건
WHERE empno > 7600 --일반조회조건
ORDER BY deptno, empno; --정렬


--NON-EQUI JOIN 비등가 조인

SELECT * FROM emp;
SELECT * FROM salgrade;


--오라클 구문
SELECT ename, sal, grade
FROM emp, salgrade
WHERE sal BETWEEN losal AND hisal --조인조건
ORDER BY grade, sal;


--ANSI구문
SELECT ename, sal, grade
FROM emp
INNER JOIN salgrade
    ON sal BETWEEN losal AND hisal --조인조건
ORDER BY grade, sal;


--SELF JOIN 자체 조인

SELECT * FROM emp EMPLOTEE;
SELECT * FROM emp MANAGER;


--오라클
SELECT
    E.empno, E.ename, E.mgr, M.empno MGRNO,  M.ename MGRNAME
FROM emp E, emp M
WHERE E.mgr = M.empno --조인조건
ORDER By E.empno;




--ANSI
SELECT
    E.empno, E.ename, E.mgr, M.empno MGRNO,  M.ename MGRNAME
FROM emp E 
INNER JOIN emp M
    ON E.mgr = M.empno --조인조건
ORDER By E.empno;



--CROSS JOIN 상호조인

SELECT * FROM emp, dept; --조인조건없이조회

SELECT * FROM emp
CROSS JOIN dept;



--NATURAL JOIN 자연조인 안쓰는게좋음

SELECT *
FROM emp
NATURAL JOIN dept
ORDER BY deptno, empno;


--USING 키워드
--JOIN키워드와 함께 사용 가능
--조인 컬럼을 지정한다
--연산자 없이 컬럼만 지정한다
SELECT * FROM emp
INNER JOIN dept
USING ( deptno );


--INNER JOIN에서 INNER키워드 생략 가능
SELECT * FROM emp E
JOIN dept D
    ON E.deptno = D.deptno;

SELECT * FROM emp E
JOIN dept D USING ( deptno );


--사원들이 근무중인 부서의 번호
SELECT DISTINCT deptno FROM emp;

--부서번호
SELECT deptno FROM dept;

SELECT * FROM dept
WHERE deptno = 40;



--OUTER JOIN 외부조인

--오라클 구문

SELECT empno, ename, D.deptno, dname
FROM emp E, dept D
WHERE E.deptno(+) = d.deptno --조인조건
ORDER BY deptno, empno;


--ANSI 구문

SELECT empno, ename, D.deptno, dname
FROM emp E
RIGHT OUTER JOIN dept D --위치한곳 반대쪽. 왼쪽에 (+) 있으니까 오른쪽을 적어준다
    ON E.deptno = d.deptno --조인조건
ORDER BY deptno, empno;




SELECT
    E.empno, E.ename, E.mgr, M.ename MGR_NAME
FROM emp E, emp M
WHERE E.mgr = m.empno(+)
ORDER BY E.empno;


SELECT
    E.empno, E.ename, E.mgr, M.ename MGR_NAME
FROM emp E
LEFT OUTER JOIN emp M
    ON E.mgr = m.empno
ORDER BY E.empno;


--FULL OUTER JOIN 테스트 데이터
DROP TABLE test1; --테이블 삭제
DROP TABLE test2; --테이블 삭제
CREATE TABLE test1 ( no NUMBER ); --테이블 생성
CREATE TABLE test2 ( no NUMBER ); --테이블 생성

DELETE test1; --테이블 데이터 전체 삭제
INSERT INTO test1 VALUES ( 10 ); --데이터 삽입
INSERT INTO test1 VALUES ( 20 ); --데이터 삽입
INSERT INTO test1 VALUES ( 30 ); --데이터 삽입

DELETE test2; --테이블 데이터 전체 삭제
INSERT INTO test2 VALUES ( 10 ); --데이터 삽입
INSERT INTO test2 VALUES ( 20 ); --데이터 삽입
INSERT INTO test2 VALUES ( 40 ); --데이터 삽입

SELECT * FROM test1; --10, 20, 30
SELECT * FROM test2; --10, 20, 40


--내부조인
SELECT * FROM test1 T1 ,test2 T2
WHERE T1.no = T2.no;

--외부조인
SELECT * FROM test1 T1 ,test2 T2
WHERE T1.no(+) = T2.no; --왼쪽TI테이블에 null 추가


SELECT * FROM test1 T1 ,test2 T2
WHERE T1.no = T2.no(+); --오른쪽T2테이블에 null 추가

--에러 (+)연산자는 조인조건의 양쪽 컬럼에 동시에 사용할수없다
SELECT * FROM test1 T1 ,test2 T2
WHERE T1.no(+) = T2.no(+); 


--FULL OUTER JOIN 양쪽 테이블에 모두 null 추가 (ANSI)에만 가능

SELECT * FROM test1 T1
FULL OUTER JOIN test2 T2
    ON T1.no = T2.no; 

















    




