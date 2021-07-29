-- SQL Functions

-- ename ������ ���̸� ������ �࿡ ����Ͽ� ��ȸ�Ѵ�
SELECT ename, length(ename) FROM emp; -- ���� �� �Լ�


-- ��ü ������(��)�� ������ ��ȸ�Ѵ�
SELECT count(*) FROM emp; -- �׷� �Լ�





-- DUAL ���̺�

SELECT 1+2 FROM emp; --��� �࿡ �������� ��ȸ�ȴ�

SELECT 1+2 FROM dual; --�ϳ��� �࿡ �������� ��ȸ�ȴ�

SELECT 1+2 AS FIRST, 6*6 SECOND
FROM dual;





--���� �Լ�
SELECT abs(-44) Absolute FROM dual;

SELECT abs(-745.2342) Absolute FROM dual;

SELECT abs(comm) abs_comm FROM emp;

SELECT empno, ename, abs(comm) AS comm FROM emp;



-- �����Լ� ����

--round()
-- 12.523 -> �Ҽ������� �ݿø�
SELECT round(12.523) FROM dual;

-- -12.723 -> �Ҽ������� �ݿø�
SELECT round(-12.723) FROM dual;

-- 12.567 -> �Ҽ��� 3°�ڸ����� �ݿø�
SELECT round(12.567, 2) FROM dual;

-- 12345 -> 1�� �ڸ����� �ݿø�
SELECT round(12345, -1) FROM dual;

-- 56789 -> 10�� �ڸ����� �ݿø�
SELECT round(12345, -2) FROM dual;


--trunc()
-- 12.456 -> �Ҽ������� ����
SELECT trunc(12.456) FROM dual;

-- 12.456 -> �Ҽ��� 3°�ڸ����� ����
SELECT trunc(12.456, 2) FROM dual;

-- 12345 -> 1���ڸ����� ����
SELECT trunc(12345, -1) FROM dual;

-- 56789 -> 10���ڸ����� ����
SELECT trunc(56789, -2) FROM dual;


--mod()
-- 13�� 8�� ���� ������
SELECT mod(13, 8) FROM dual;


--ceil()
-- 12.345 �ø� -> 13
SELECT ceil(12.345) FROM dual;

-- -12.567 �ø� -> -12
SELECT ceil(-12.567) FROM dual;


--floor()
-- 12.567 ���� -> 12
SELECT floor(12.567) FROM dual;
-- 12.123 ���� -> 12
SELECT floor(12.123) FROM dual;

-- -12.567 ���� -> -13
SELECT floor(-12.567) FROM dual;
-- -12.123 ���� -> -13
SELECT floor(-12.123) FROM dual;


--power()
-- 3�� 4���� -> 81
SELECT power(3, 4) FROM dual;

-- 3�� -1 ���� -> 0.33333333333
SELECT power(3, -1) FROM dual;


--sqrt()
-- 9�� ������ -> 3
SELECT sqrt(9) FROM dual;

-- 11�� ������ -> 3.3166...
SELECT sqrt(11) FROM dual;





-- ���� �Լ� ����

-- 'hELlo' ��� �빮�ڷ� ��ȯ -> HELLO      UPPER
SELECT upper('hELlo') FROM dual;
-- 'hELlo' ��� �ҹ��ڷ� ��ȯ -> hello      LOWER
SELECT lower('hELlo') FROM dual;
-- 'hELlo' �̴ϼ�(ù����) �빮�� -> Hello   INITCAP
SELECT initcap('hELlo') FROM dual;
SELECT initcap('hELlo orACle') FROM dual;



-- 'Alice Bob'�� ���ڿ� ���� -> 9
SELECT length('Alice Bob') FROM dual;
-- '�ȳ��ϼ���'�� ���ڿ� ���� -> 5
SELECT length('�ȳ��ϼ���') FROM dual;

-- 'Alice Bob'�� ���ڿ� ����Ʈ �� -> 9
SELECT lengthb('Alice Bob') FROM dual;
-- '�ȳ��ϼ���'�� ���ڿ� ����Ʈ �� -> 15
SELECT lengthb('�ȳ��ϼ���') FROM dual;

--  lengthb()�� ���ڸ� ǥ���ϱ� ���� �ʿ��� ����Ʈ ���� ��ȯ�Ѵ�

--  ����ŬXE �� �ѱ� ���ڵ��� 'AL32UTF8' ���� ����Ѵ�
--   -> �� ���ڿ� 3B�� ����Ѵ�



-- 'Alice Bob' ���ڿ� ����Ʈ �� -> 9
SELECT lengthb('Alice Bob') FROM dual;

-- 'ACE �ȳ��ϼ���'���ڿ� ����Ʈ �� -> 19
SELECT lengthb('ACE �ȳ��ϼ���') FROM dual;

-- (����Ŭ�� �ѱ� ���ڵ��� UTF-8�� �⺻���� �ϸ�
--  UTF-8�� �ѱ� �ѱ��ڿ� 3����Ʈ�� �ʿ��ϴ�)



-- 'ABCDEFGHI'���� 'D' �� ��ġ -> 4
SELECT instr('ABCDEFGHI', 'D') FROM dual;
-- 'ABCDEFGHI'���� 'DEF'���ڿ��� ��ġ ->4
SELECT instr('ABCDEFGHI', 'DEF') FROM dual;
-- 'ABCDEFGHI'���� 'DF'���ڿ��� ��ġ -> 0
SELECT instr('ABCDEFGHI', 'DF') FROM dual;
-- '�ȳ��ϼ���'���� '��'���ڿ��� ��ġ -> 3
SELECT instr('�ȳ��ϼ���', '��') FROM dual;
SELECT instrb('�ȳ��ϼ���', '��') FROM dual;
SELECT instrb('hello �ȳ��ϼ���', '��') FROM dual;
-- 'ABCABCDDD'���� 'C'���ڿ��� ��ġ -> 3
SELECT instrb('ABCABCDDD', 'C') FROM dual;
SELECT instrb('ABCABCDDD', 'C', 1, 2) FROM dual; -- ù��° ���ں��� ã�� �����ؼ�, 2��°�� ã������ 'C'�� ��ġ



--'Oracle SQL Developer'���� 5��° �ε��� ������ ���ڿ��� �ڸ���
SELECT substr('Oracle SQL Developer', 5) FROM dual;
SELECT substr('Oracle SQL Developer', 6) FROM dual;

--'Oracle SQL Developer'���� 5��° �ε������� 5���ڷ� �ڸ���
SELECT substr('Oracle SQL Developer', 5, 5) FROM dual;

--'����Ŭ SQL'���� 2��° �ε������� 5���ڷ� �ڸ���
SELECT substr('����Ŭ SQL', 2, 5) FROM dual;

--'�ȳ��ϼ������Ŭ'���� 3��° ���� �ڸ���
SELECT substr('�ȳ��ϼ������Ŭ', 3) FROM dual;
SELECT substrb('�ȳ��ϼ������Ŭ', 2) FROM dual;



-- �е�, Padding
--  ���ڿ��� ǥ���ϱ� ���� ������ Ȯ���ϰ�
-- ������� ����� ������ ���ڷ� ä���

-- LPAD() : LEFT PADDING
SELECT lpad('SQL', 5) l FROM dual;
SELECT lpad('SQL', 5, '*') l FROM dual;

SELECT ename, lpad(ename, 10), lpad(ename, 10, '*-') FROM emp;

SELECT lpad('ABCDEFSER', 5) l FROM dual;


-- RPAD() : RIGHT PADDING
SELECT rpad('SQL', 5, '*') r FROM dual;
SELECT rpad('SQL', 5) r FROM dual;





-- TRIM
--  �������� �� ���ܿ� �ִ� ' '(����, ����)�� �����ϴ� �Լ�

SELECT '  SQL   '
    , ltrim('  SQL   ') l
    , rtrim('  SQL   ') r
    , trim('  SQL   ') t
    , ltrim(rtrim('  SQL   ')) lr
FROM dual;


SELECT trim(LEADING FROM '  SQL   ') t FROM dual;

SELECT trim(TRAILING '*' FROM '**SQL***') t FROM dual;





-- ��¥ �Լ�
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
--    , 'ABC' + 1 --����
--    , '2021/09/03' + 1 --����
    , to_date('2021/09/03') + 1 --��¥�� �����ϸ� ���ڰ� �߰��ȴ�
FROM dual;




--MONTHS_BETWEEN : ���� �� ���� ���ϱ�
SELECT
    months_between('21-01-01', '21-02-01') A
    , months_between('21-02-15', '21-01-01') B
FROM dual;

--�Ի��� �� �� ���� ������ ��ȸ�ϱ�
SELECT
    ename
    , months_between( sysdate, hiredate ) diff
FROM emp;


-- LAST_DAY : ������ ��¥�� �ش� �� ������ ��¥
SELECT
    last_day(sysdate)
    , last_day('17-2-6')
FROM dual;


-- NEXT_DAY : ������ ������ �ٰ����� ��¥
SELECT
    next_day(sysdate, '��')
FROM dual;



-- TRUNC(datetime) : ��¥�ð������Ϳ��� �ð��� ������(�������� �����)
SELECT
    sysdate
    , to_char( sysdate, 'YYYY/MM/DD HH24:MI:SS' )
    , to_char( trunc(sysdate), 'YYYY/MM/DD HH24:MI:SS' )
FROM dual;




--���� -> ����
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

--    to_char( sysdate, 'SCC' ) --����
--    , to_char( to_date('328/04/03'), 'SCC' )

--    to_char( sysdate, 'YEAR' ), --���� �⵵(�빮��)
--    to_char( sysdate, 'year' ), --���� �⵵(�ҹ���)
--    to_char( sysdate, 'Year' ) --���� �⵵(ù���� �빮��)
    
--    to_char( sysdate, 'YYYY' ), --���� �⵵
--    to_char( sysdate, 'YY' ),
--    to_char( sysdate, 'Y' ),
--    to_char( sysdate, 'YYY' ),
--    to_char( sysdate, 'YYYYYY' ) -- 'YYYY YY'

--    to_char( sysdate, 'MM' ), --���� ��
--    to_char( sysdate, 'MONTH' ), --���� ��
--    to_char( sysdate, 'MON' )

--    to_char( sysdate, 'Q' ), --�б�
--    to_char( to_date('2021/01/01'), 'Q' ) "1",
--    to_char( to_date('2021/04/01'), 'Q' ) "2",
--    to_char( to_date('2021/07/01'), 'Q' ) "3",
--    to_char( to_date('2021/10/01'), 'Q' ) "4"

--    to_char( sysdate, 'DD' ), --�� ���� ��¥
--    to_char( sysdate, 'D' ), --�� ���� ��¥(�Ͽ���: 1)
--    to_char( sysdate, 'DDD' ) --�� ���� ��¥

--    to_char( sysdate, 'DAY' ), --����
--    to_char( sysdate, 'DY' )
    
--    to_char( sysdate, 'HH' ), --12�ð� ǥ�� �ð�
--    to_char( sysdate, 'HH12' ), --12�ð� ǥ�� �ð�
--    to_char( sysdate, 'HH24' ) --24�ð� ǥ�� �ð�

--    to_char( sysdate, 'MI' ), --��
--    to_char( sysdate, 'SS' ) --��

    to_char( sysdate, 'am' ), --����/����
    to_char( sysdate, 'pm' ),
    to_char( sysdate, 'a.m.' ),
    to_char( sysdate, 'p.m.' )
FROM dual;