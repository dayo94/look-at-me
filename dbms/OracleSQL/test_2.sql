--서술

--직원의 급여를 인상하고자 한다
--
--직급코드가 J7인 직원은 급여의 8%를 인상하고,
--
--직급코드가 J6인 직원은 급여의 7%를 인상하고,
--
--직급코드가 J5인 직원은 급여의 5%를 인상한다.
--
--그 외 직급의 직원은 3%만 인상한다.
--
--직원 테이블(EMP)에서 직원명(EMPNAME), 직급코드(JOBCODE), 급여(SALARY), 인상급여(위 조건)을
--
--조회하세요(단, DECODE를 이용해서 출력하시오.)


SELECT EMPNAME, JOBCODE, SALARY, 
    DECODE (
        JOBCODE,
        J7 , SALARY*1.08,
        J6 , SALARY*1.07,
        J5 , SALARY*1.05,
        SALARY*1.03
    ) 인상급여
FROM EMP;




SELECT ename, empno, sal, 
    DECODE (
        empno,
        10 , sal*1.08,
        20 , sal*1.07,
        30 , sal*1.05,
        sal*1.03
    ) 인상급여
FROM EMP;




    