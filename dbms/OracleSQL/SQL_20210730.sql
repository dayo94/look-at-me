-- to_char(date)
SELECT
--    sysdate,
--    to_char( sysdate )

--    to_char( sysdate, 'SCC' ) --세기
--    , to_char( to_date('328/04/03'), 'SCC' )

--    to_char( sysdate, 'YEAR' ), --영문 년도(대문자)
--    to_char( sysdate, 'year' ), --영문 년도(소문자)
--    to_char( sysdate, 'Year' ) --영문 년도(첫글자 대문자)
    
--    to_char( sysdate, 'YYYY' ), --숫자 년도
--    to_char( sysdate, 'YY' ),
--    to_char( sysdate, 'Y' ),
--    to_char( sysdate, 'YYY' ),
--    to_char( sysdate, 'YYYYYY' ) -- 'YYYY YY'

--    to_char( sysdate, 'MM' ), --숫자 월
--    to_char( sysdate, 'MONTH' ), --문자 월
--    to_char( sysdate, 'MON' )

--    to_char( sysdate, 'Q' ), --분기
--    to_char( to_date('2021/01/01'), 'Q' ) "1",
--    to_char( to_date('2021/04/01'), 'Q' ) "2",
--    to_char( to_date('2021/07/01'), 'Q' ) "3",
--    to_char( to_date('2021/10/01'), 'Q' ) "4"

--    to_char( sysdate, 'DD' ), --월 단위 날짜
--    to_char( sysdate, 'D' ), --주 단위 날짜(일요일: 1)
--    to_char( sysdate, 'DDD' ) --년 단위 날짜

--    to_char( sysdate, 'DAY' ), --요일
--    to_char( sysdate, 'DY' )
    
--    to_char( sysdate, 'HH' ), --12시간 표기 시간
--    to_char( sysdate, 'HH12' ), --12시간 표기 시간
--    to_char( sysdate, 'HH24' ) --24시간 표기 시간

--    to_char( sysdate, 'MI' ), --분

--    to_char( sysdate, 'SS' ) --초

    to_char( sysdate, 'am' ), --오전/오후
    to_char( sysdate, 'pm' ),
    to_char( sysdate, 'a.m.' ),
    to_char( sysdate, 'p.m.' )
FROM dual;



--초, 밀리초
SELECT
--    to_char(sysdate, 'FF') "밀리초" --DATE타입인 sysdate는 밀리초가 없다

    systimestamp, --TIMESTAMP타입인 systimestamp에는 밀리초가 있다
    to_char(systimestamp, 'FF'), --밀리초
    to_char(systimestamp, 'FF1'), --밀리초 한자리 0.1초단위
    to_char(systimestamp, 'FF2'), --밀리초 두자리 0.01초단위
    to_char(systimestamp, 'FF3') --밀리초 세자리 0.001초단위
FROM dual;



--접미어 서식
SELECT
    to_char(sysdate+1, 'DD') "일",
    to_char(sysdate+1, 'ddth') "축약된 서수",
    to_char(sysdate+1, 'Ddsp') "기수",
    to_char(sysdate+1, 'DDspth') "서수",
    to_char(sysdate+1, 'DDthsp') "서수"
FROM dual;





-- to_number(varchar2) : 문자 -> 숫자
--  숫자형식(Number Format)을 가진 문자를 숫자로 변환한다

SELECT
    123.678 "1" -- 숫자 ( NUMBER )
    , '123.678' "2" -- 문자 ( VARCHAR2 )
    , to_number( '123.678' ) "3"
    , to_number( '123.678', '99999.999' ) "4" -- 서식문자 9 : 허용 가능한 범위를 나타내는 서식 
--    , to_number( '123.678', '99999.9' ) "5" -- 에러, 소수점이하 자리가 1개만 허용된다
--    , to_number( '12345.678', '999.99999' ) "5" -- 에러, 정수부분 자리가 3개만 허용된다
FROM dual;

SELECT
--    to_number( '67,800' ) --에러, ',' 를 숫자형식으로 받아들이지 않는다
    to_number( '67,800', '999,999' )
FROM dual;

SELECT
    to_number( '$1,676.54', '$999,999,999.99' ) "1"
FROM dual;





-- to_date(varchar2) : 문자 -> 날짜
--  날짜형식(Datetime Format)의 문자를 날짜로 변환한다

SELECT
--    '19/11/03' + 1  -- 에러, DATE포맷이지만 자동 변환은 안된다
    to_date('19/11/03') + 3
FROM dual;

SELECT
    '12 1 11' "1",
    to_date('12 1 11') "2",
    to_date('12 1 11', 'mm dd yy') "3",
    to_date('12-1-11', 'yy mm dd') "4"
FROM dual;





--기타 함수

--NVL(a, b)함수
--  a가 null일 경우 b로 치환한다
SELECT empno, ename, NVL(comm, 0) comm
FROM emp;

--NVL2(a, b, c) 함수
--  a값이 null이 아닐 경우 b로 치환, null일 경우 c로 치환
SELECT empno, ename, sal, comm, NVL2(comm, sal + comm, sal) total
FROM emp;


--NULLIF(a, b) 함수
--  a값과 b값을 비교하여 같으면 NULL을 반환, 다르면 a를 반환한다
SELECT empno, ename, job
    , NULLIF( job, 'SALESMAN' ) NIF
    , NVL( NULLIF( job, 'SALESMAN' ), '영업' ) jobName
FROM emp;





-- DECODE 함수
SELECT * FROM dept;

SELECT empno, ename, deptno
    , DECODE(
        deptno
        , 10,
        '회계팀'
        , 20, '연구팀'
        , 30, '영업팀'
        , 40, '운영팀'
        , '부서없음' ) AS dname
FROM emp
ORDER BY empno;


-- CASE 구문
SELECT empno, ename, deptno
    , CASE deptno
        WHEN 10 THEN '회계팀'
        WHEN 20 THEN '연구팀'
        WHEN 30 THEN '영업팀'
        WHEN 40 THEN '운영팀'
        ELSE '부서없음'
    END AS dname
FROM emp;


SELECT empno, ename, deptno
    , CASE
        WHEN job='PRESIDENT' THEN '사장'
        WHEN deptno=10 THEN '회계팀'
        WHEN deptno=20 THEN '연구팀'
        WHEN deptno=30 THEN '영업팀'
        WHEN deptno=40 THEN '운영팀'
        ELSE '부서없음'
    END AS dname
FROM emp;






-- 그룹함수

-- COUNT
SELECT * FROM emp;
SELECT count(*) FROM emp; -- 12

SELECT empno FROM emp;
SELECT count(empno) FROM emp; --12

SELECT mgr FROM emp;
SELECT count(mgr) FROM emp; --11 (1개는 NULL값)

SELECT comm FROM emp;
SELECT count(comm) FROM emp; --4


SELECT * FROM emp;
SELECT 1 FROM emp;

SELECT count(*) FROM emp;
SELECT count(1) FROM emp;



-- SUM : 합계
SELECT sal FROM emp;
SELECT sum(sal) FROM emp;

-- AVG : 평균
SELECT avg(sal) FROM emp;

-- MAX : 최대값
SELECT max(sal) FROM emp;

-- MIN : 최소값
SELECT min(sal) FROM emp;




-- 그룹화

-- 부서별로 급여의 합계를 구한다 
SELECT
    deptno
    , sum(sal) --그룹별 합계 계산
FROM emp
GROUP BY deptno -- 같은 데이터값(부서번호)로 그룹이 만들어진다
ORDER BY deptno;


--부서별 인원수 구하기
SELECT
    deptno
    , count(*) CNT
FROM emp
GROUP BY deptno
ORDER BY deptno;




SELECT deptno, job FROM emp
ORDER BY deptno, job;

SELECT deptno, job
    , count(*)
FROM emp
GROUP BY deptno, job
ORDER BY deptno, job;



SELECT empno, ename
FROM emp
ORDER BY empno;


--잘못 사용한 경우
--  문법은 맞지만 결과가 의미가 없다
--  empno, ename 조합의 데이터는 중복값이 없으므로 그룹화할 필요가 없다
SELECT empno, ename
    , count(*) CNT
FROM emp
GROUP BY empno, ename
ORDER BY empno;



-- 그룹함수를 조건으로 사용하기
SELECT
    deptno
    , count(*) CNT
FROM emp
--WHERE count(*) < 5 -- 에러, WHERE절에서 그룹함수를 사용할 수 없다
GROUP BY deptno
HAVING count(*) < 5 --그룹화 이후에 사용할 수 있는 조건절
ORDER BY deptno;


