
--QUIZ
-- emp테이블 이용

-- 10부서인 사원들은 급여(sal)를 15% 인상하여 조회
-- 20부서인 사원들은 급여(sal)를 8% 인상하여 조회

SELECT empno, ename, sal, deptno
    , DECODE( deptno 
        , 10, sal * 1.15
        , 20, sal * 1.08
        , sal
    ) increase
FROM emp;

