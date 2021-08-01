SELECT count(*) FROM emp;

SELECT
    to_char(sysdate, 'YYYY"년" MM"월" DD"일" HH24 HH"시" MI"분" SS"초"') AS 지금
FROM dual;


SELECT * FROM emp;

-- QUIZ

-- 조회 컬럼
-- deptno, dname, cnt, tot_sal, avg_sal

--  dname -> 한글로
--  cnt, tot_sal, avg_sal -> 부서별 통계
--  avg_sal -> 소수점 2자리까지

SELECT deptno,
    CASE deptno
    WHEN 10 THEN 'ㅇㅇ'
    WHEN 20 THEN 'ㄴㄴ'
    WHEN 30 THEN 'ㄹㄹ'
    END dname,
    count(*),
    sum(sal) tot_sal,
    round(avg(sal),2) avg_sal
FROM emp
GROUP BY deptno,
CASE deptno
    WHEN 10 THEN 'ㅇㅇ'
    WHEN 20 THEN 'ㄴㄴ'
    WHEN 30 THEN 'ㄹㄹ'
    END
ORDER BY deptno;


SELECT * FROM emp;


SELECT NVL(comm,'0') FROM emp;



SELECT NVL2(comm,comm,'0') FROM emp;

SELECT * FROM emp;
SELECT 
    NVL( NULLIF(job,'SALESMAN') ,'영업팀')
FROM emp;




