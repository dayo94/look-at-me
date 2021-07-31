--QUIZ
-- emp테이블 이용

-- 10부서인 사원들은 급여(sal)를 15% 인상하여 조회
-- 20부서인 사원들은 급여(sal)를 8% 인상하여 조회

SELECT empno, ename, sal, deptno
    , CASE deptno
        WHEN 10 THEN sal*1.15
        WHEN 20 THEN sal*1.08
        ELSE sal
    END increase
FROM emp;

