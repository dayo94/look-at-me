-- SQL Functions

-- ename 문자의 길이를 각각의 행에 계산하여 조회한다
SELECT ename, length(ename) FROM emp; -- 단일 행 함수


-- 전체 데이터(행)의 개수를 조회한다
SELECT count(*) FROM emp; -- 그룹 함수





-- DUAL 테이블

SELECT 1+2 FROM emp; --모든 행에 연산결과가 조회된다

SELECT 1+2 FROM dual; --하나의 행에 연산결과가 조회된다

SELECT 1+2 AS FIRST, 6*6 SECOND
FROM dual;





--숫자 함수
SELECT abs(-44) Absolute FROM dual;

SELECT abs(-745.2342) Absolute FROM dual;

SELECT abs(comm) abs_comm FROM emp;

SELECT empno, ename, abs(comm) AS comm FROM emp;



-- 숫자함수 문제

--round()
-- 12.523 -> 소수점이하 반올림
SELECT round(12.523) FROM dual;

-- -12.723 -> 소수점이하 반올림
SELECT round(-12.723) FROM dual;

-- 12.567 -> 소수점 3째자리에서 반올림
SELECT round(12.567, 2) FROM dual;

-- 12345 -> 1의 자리에서 반올림
SELECT round(12345, -1) FROM dual;

-- 56789 -> 10의 자리에서 반올림
SELECT round(12345, -2) FROM dual;


--trunc()
-- 12.456 -> 소수점이하 버림
SELECT trunc(12.456) FROM dual;

-- 12.456 -> 소수점 3째자리에서 버림
SELECT trunc(12.456, 2) FROM dual;

-- 12345 -> 1의자리에서 버림
SELECT trunc(12345, -1) FROM dual;

-- 56789 -> 10의자리에서 버림
SELECT trunc(56789, -2) FROM dual;


--mod()
-- 13을 8로 나눈 나머지
SELECT mod(13, 8) FROM dual;


--ceil()
-- 12.345 올림 -> 13
SELECT ceil(12.345) FROM dual;

-- -12.567 올림 -> -12
SELECT ceil(-12.567) FROM dual;


--floor()
-- 12.567 내림 -> 12
SELECT floor(12.567) FROM dual;
-- 12.123 내림 -> 12
SELECT floor(12.123) FROM dual;

-- -12.567 내림 -> -13
SELECT floor(-12.567) FROM dual;
-- -12.123 내림 -> -13
SELECT floor(-12.123) FROM dual;


--power()
-- 3의 4제곱 -> 81
SELECT power(3, 4) FROM dual;

-- 3의 -1 제곱 -> 0.33333333333
SELECT power(3, -1) FROM dual;


--sqrt()
-- 9의 제곱근 -> 3
SELECT sqrt(9) FROM dual;

-- 11의 제곱근 -> 3.3166...
SELECT sqrt(11) FROM dual;





-- 문자 함수 문제

-- 'hELlo' 모두 대문자로 변환 -> HELLO      UPPER
SELECT upper('hELlo') FROM dual;
-- 'hELlo' 모두 소문자로 변환 -> hello      LOWER
SELECT lower('hELlo') FROM dual;
-- 'hELlo' 이니셜(첫글자) 대문자 -> Hello   INITCAP
SELECT initcap('hELlo') FROM dual;
SELECT initcap('hELlo orACle') FROM dual;



-- 'Alice Bob'의 문자열 길이 -> 9
SELECT length('Alice Bob') FROM dual;
-- '안녕하세요'의 문자열 길이 -> 5
SELECT length('안녕하세요') FROM dual;

-- 'Alice Bob'의 문자열 바이트 수 -> 9
SELECT lengthb('Alice Bob') FROM dual;
-- '안녕하세요'의 문자열 바이트 수 -> 15
SELECT lengthb('안녕하세요') FROM dual;

--  lengthb()는 문자를 표현하기 위해 필요한 바이트 수를 반환한다

--  오라클XE 는 한글 인코딩을 'AL32UTF8' 으로 사용한다
--   -> 한 글자에 3B를 사용한다



-- 'Alice Bob' 문자열 바이트 수 -> 9
SELECT lengthb('Alice Bob') FROM dual;

-- 'ACE 안녕하세요'문자열 바이트 수 -> 19
SELECT lengthb('ACE 안녕하세요') FROM dual;

-- (오라클은 한글 인코딩을 UTF-8을 기본으로 하며
--  UTF-8은 한글 한글자에 3바이트가 필요하다)



-- 'ABCDEFGHI'에서 'D' 의 위치 -> 4
SELECT instr('ABCDEFGHI', 'D') FROM dual;
-- 'ABCDEFGHI'에서 'DEF'문자열의 위치 ->4
SELECT instr('ABCDEFGHI', 'DEF') FROM dual;
-- 'ABCDEFGHI'에서 'DF'문자열의 위치 -> 0
SELECT instr('ABCDEFGHI', 'DF') FROM dual;
-- '안녕하세요'에서 '하'문자열의 위치 -> 3
SELECT instr('안녕하세요', '하') FROM dual;
SELECT instrb('안녕하세요', '하') FROM dual;
SELECT instrb('hello 안녕하세요', '하') FROM dual;
-- 'ABCABCDDD'에서 'C'문자열의 위치 -> 3
SELECT instrb('ABCABCDDD', 'C') FROM dual;
SELECT instrb('ABCABCDDD', 'C', 1, 2) FROM dual; -- 첫번째 글자부터 찾기 시작해서, 2번째로 찾아지는 'C'의 위치



--'Oracle SQL Developer'에서 5번째 인덱스 이후의 문자열로 자르기
SELECT substr('Oracle SQL Developer', 5) FROM dual;
SELECT substr('Oracle SQL Developer', 6) FROM dual;

--'Oracle SQL Developer'에서 5번째 인덱스부터 5글자로 자르기
SELECT substr('Oracle SQL Developer', 5, 5) FROM dual;

--'오라클 SQL'에서 2번째 인덱스부터 5글자로 자르기
SELECT substr('오라클 SQL', 2, 5) FROM dual;

--'안녕하세요오라클'에서 3번째 부터 자르기
SELECT substr('안녕하세요오라클', 3) FROM dual;
SELECT substrb('안녕하세요오라클', 2) FROM dual;



-- 패딩, Padding
--  문자열을 표현하기 위한 공간을 확보하고
-- 빈공간이 생기면 설정한 문자로 채운다

-- LPAD() : LEFT PADDING
SELECT lpad('SQL', 5) l FROM dual;
SELECT lpad('SQL', 5, '*') l FROM dual;

SELECT ename, lpad(ename, 10), lpad(ename, 10, '*-') FROM emp;

SELECT lpad('ABCDEFSER', 5) l FROM dual;


-- RPAD() : RIGHT PADDING
SELECT rpad('SQL', 5, '*') r FROM dual;
SELECT rpad('SQL', 5) r FROM dual;





-- TRIM
--  데이터의 양 끝단에 있는 ' '(띄어쓰기, 공백)을 제거하는 함수

SELECT '  SQL   '
    , ltrim('  SQL   ') l
    , rtrim('  SQL   ') r
    , trim('  SQL   ') t
    , ltrim(rtrim('  SQL   ')) lr
FROM dual;


SELECT trim(LEADING FROM '  SQL   ') t FROM dual;

SELECT trim(TRAILING '*' FROM '**SQL***') t FROM dual;





-- 날짜 함수
SELECT sysdate FROM dual;

SELECT
    to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS') d
FROM dual;

SELECT
    '21/7/3'
    , '21-3-5'
FROM dual;

SELECT
    '123' + 1
    , 123 + 1
--    , 'ABC' + 1 --에러
--    , '2021/09/03' + 1 --에러
    , to_date('2021/09/03') + 1 --날짜에 덧셈하면 일자가 추가된다
FROM dual;




--MONTHS_BETWEEN : 개월 수 차이 구하기
SELECT
    months_between('21-01-01', '21-02-01') A
    , months_between('21-02-15', '21-01-01') B
FROM dual;

--입사한 지 몇 개월 차인지 조회하기
SELECT
    ename
    , months_between( sysdate, hiredate ) diff
FROM emp;


-- LAST_DAY : 지정된 날짜의 해당 월 마지막 날짜
SELECT
    last_day(sysdate)
    , last_day('17-2-6')
FROM dual;


-- NEXT_DAY : 지정된 요일이 다가오는 날짜
SELECT
    next_day(sysdate, '수')
FROM dual;



-- TRUNC(datetime) : 날짜시간데이터에서 시간을 버린다(자정으로 만든다)
SELECT
    sysdate
    , to_char( sysdate, 'YYYY/MM/DD HH24:MI:SS' )
    , to_char( trunc(sysdate), 'YYYY/MM/DD HH24:MI:SS' )
FROM dual;




--숫자 -> 문자
-- TO_CHAR(NUMBER)
-- TO_CHAR(NUMBER, format)

SELECT
    12345 "0",
    to_char(12345) "1",
    to_char(12345, '99') "2",
    to_char(12345, '9999999999') "3",
    to_char(12345, '0000000000') "4",
    to_char(12345, '9990000000') "5"
FROM dual;

SELECT
    to_char(12345.6789) "1",
    to_char(12345.6789, '99999.9') "2",
    to_char(12345.6789, '99,999.99') "3",
    to_char(12345.6789, '99,999.9999999') "4"
FROM dual;

SELECT
    to_char(12345) "1",
    to_char(12345, '$999999') "2",
    to_char(12345, 'L999999') "3",
    trim( to_char(12345, 'L999999') ) "4"
FROM dual;





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