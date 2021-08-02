-- 조인, JOIN

SELECT * FROM emp   -- SMITH, deptno == 20
WHERE empno = 7369;

SELECT * FROM dept  -- 20, RESEARCH
WHERE deptno = 20;


--조인 구문
SELECT * FROM emp, dept; --테이블들의 모든 조합을 구한다

SELECT * FROM emp, dept
WHERE emp.deptno = dept.deptno; --공통된 데이터가 같은 조건으로 조회한다 (조인 조건)

-- emp테이블 = 12행, 8컬럼
-- dept테이블 = 4행, 3컬럼

-- emp X dept 조인 = 48행(12*4), 11컬럼(8+3)


