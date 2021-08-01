
-- QUIZ

-- 조회 컬럼
-- deptno, dname, cnt, tot_sal, avg_sal

--  dname -> 한글로
--  cnt, tot_sal, avg_sal -> 부서별 통계
--  avg_sal -> 소수점 2자리까지


SELECT
    deptno,
    case deptno
        WHEN 10 THEN '회계팀'
        WHEN 20 THEN '연구팀'
        WHEN 30 THEN '영업팀'
        WHEN 40 THEN '운영팀'
    END dname,
    count(*) cnt,
    sum(sal) tot_sal,
    round( avg(sal), 2 ) avg_sal
FROM emp
GROUP BY deptno
--    , case deptno 
--        WHEN 10 THEN '회계팀'
--        WHEN 20 THEN '연구팀'
--        WHEN 30 THEN '영업팀'
--        WHEN 40 THEN '운영팀'
--    END
ORDER BY deptno;

