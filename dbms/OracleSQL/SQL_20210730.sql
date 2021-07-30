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



--��, �и���
SELECT
--    to_char(sysdate, 'FF') "�и���" --DATEŸ���� sysdate�� �и��ʰ� ����

    systimestamp, --TIMESTAMPŸ���� systimestamp���� �и��ʰ� �ִ�
    to_char(systimestamp, 'FF'), --�и���
    to_char(systimestamp, 'FF1'), --�и��� ���ڸ� 0.1�ʴ���
    to_char(systimestamp, 'FF2'), --�и��� ���ڸ� 0.01�ʴ���
    to_char(systimestamp, 'FF3') --�и��� ���ڸ� 0.001�ʴ���
FROM dual;



--���̾� ����
SELECT
    to_char(sysdate+1, 'DD') "��",
    to_char(sysdate+1, 'ddth') "���� ����",
    to_char(sysdate+1, 'Ddsp') "���",
    to_char(sysdate+1, 'DDspth') "����",
    to_char(sysdate+1, 'DDthsp') "����"
FROM dual;





-- to_number(varchar2) : ���� -> ����
--  ��������(Number Format)�� ���� ���ڸ� ���ڷ� ��ȯ�Ѵ�

SELECT
    123.678 "1" -- ���� ( NUMBER )
    , '123.678' "2" -- ���� ( VARCHAR2 )
    , to_number( '123.678' ) "3"
    , to_number( '123.678', '99999.999' ) "4" -- ���Ĺ��� 9 : ��� ������ ������ ��Ÿ���� ���� 
--    , to_number( '123.678', '99999.9' ) "5" -- ����, �Ҽ������� �ڸ��� 1���� ���ȴ�
--    , to_number( '12345.678', '999.99999' ) "5" -- ����, �����κ� �ڸ��� 3���� ���ȴ�
FROM dual;

SELECT
--    to_number( '67,800' ) --����, ',' �� ������������ �޾Ƶ����� �ʴ´�
    to_number( '67,800', '999,999' )
FROM dual;

SELECT
    to_number( '$1,676.54', '$999,999,999.99' ) "1"
FROM dual;





-- to_date(varchar2) : ���� -> ��¥
--  ��¥����(Datetime Format)�� ���ڸ� ��¥�� ��ȯ�Ѵ�

SELECT
--    '19/11/03' + 1  -- ����, DATE���������� �ڵ� ��ȯ�� �ȵȴ�
    to_date('19/11/03') + 3
FROM dual;

SELECT
    '12 1 11' "1",
    to_date('12 1 11') "2",
    to_date('12 1 11', 'mm dd yy') "3",
    to_date('12-1-11', 'yy mm dd') "4"
FROM dual;





--��Ÿ �Լ�

--NVL(a, b)�Լ�
--  a�� null�� ��� b�� ġȯ�Ѵ�
SELECT empno, ename, NVL(comm, 0) comm
FROM emp;

--NVL2(a, b, c) �Լ�
--  a���� null�� �ƴ� ��� b�� ġȯ, null�� ��� c�� ġȯ
SELECT empno, ename, sal, comm, NVL2(comm, sal + comm, sal) total
FROM emp;


--NULLIF(a, b) �Լ�
--  a���� b���� ���Ͽ� ������ NULL�� ��ȯ, �ٸ��� a�� ��ȯ�Ѵ�
SELECT empno, ename, job
    , NULLIF( job, 'SALESMAN' ) NIF
    , NVL( NULLIF( job, 'SALESMAN' ), '����' ) jobName
FROM emp;





-- DECODE �Լ�
SELECT * FROM dept;

SELECT empno, ename, deptno
    , DECODE(
        deptno
        , 10,
        'ȸ����'
        , 20, '������'
        , 30, '������'
        , 40, '���'
        , '�μ�����' ) AS dname
FROM emp
ORDER BY empno;


-- CASE ����
SELECT empno, ename, deptno
    , CASE deptno
        WHEN 10 THEN 'ȸ����'
        WHEN 20 THEN '������'
        WHEN 30 THEN '������'
        WHEN 40 THEN '���'
        ELSE '�μ�����'
    END AS dname
FROM emp;


SELECT empno, ename, deptno
    , CASE
        WHEN job='PRESIDENT' THEN '����'
        WHEN deptno=10 THEN 'ȸ����'
        WHEN deptno=20 THEN '������'
        WHEN deptno=30 THEN '������'
        WHEN deptno=40 THEN '���'
        ELSE '�μ�����'
    END AS dname
FROM emp;






-- �׷��Լ�

-- COUNT
SELECT * FROM emp;
SELECT count(*) FROM emp; -- 12

SELECT empno FROM emp;
SELECT count(empno) FROM emp; --12

SELECT mgr FROM emp;
SELECT count(mgr) FROM emp; --11 (1���� NULL��)

SELECT comm FROM emp;
SELECT count(comm) FROM emp; --4


SELECT * FROM emp;
SELECT 1 FROM emp;

SELECT count(*) FROM emp;
SELECT count(1) FROM emp;



-- SUM : �հ�
SELECT sal FROM emp;
SELECT sum(sal) FROM emp;

-- AVG : ���
SELECT avg(sal) FROM emp;

-- MAX : �ִ밪
SELECT max(sal) FROM emp;

-- MIN : �ּҰ�
SELECT min(sal) FROM emp;




-- �׷�ȭ

-- �μ����� �޿��� �հ踦 ���Ѵ� 
SELECT
    deptno
    , sum(sal) --�׷캰 �հ� ���
FROM emp
GROUP BY deptno -- ���� �����Ͱ�(�μ���ȣ)�� �׷��� ���������
ORDER BY deptno;


--�μ��� �ο��� ���ϱ�
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


--�߸� ����� ���
--  ������ ������ ����� �ǹ̰� ����
--  empno, ename ������ �����ʹ� �ߺ����� �����Ƿ� �׷�ȭ�� �ʿ䰡 ����
SELECT empno, ename
    , count(*) CNT
FROM emp
GROUP BY empno, ename
ORDER BY empno;



-- �׷��Լ��� �������� ����ϱ�
SELECT
    deptno
    , count(*) CNT
FROM emp
--WHERE count(*) < 5 -- ����, WHERE������ �׷��Լ��� ����� �� ����
GROUP BY deptno
HAVING count(*) < 5 --�׷�ȭ ���Ŀ� ����� �� �ִ� ������
ORDER BY deptno;


