-- ORDER BY���� �������� ����ϱ�

SELECT empno, ename, sal, deptno
FROM emp E
ORDER BY (
    SELECT loc FROM dept D
    WHERE E.deptno = D.deptno
);

SELECT * FROM dept
ORDER BY loc;



--rownum Ű����
-- ��ȸ�� ����� ���ȣ�� �����Ͽ� �ٿ��ִ� Ű����
-- �����÷����� �߰��ȴ�
--  **�����÷� : ���� ���̺��� ������ �������� ����� ����ϴ� �÷�

SELECT rownum, empno, ename --���ȣ ��ȸ(1,2,3,4,5...)
FROM emp;



SELECT rownum, empno, ename
FROM emp
WHERE deptno = 30;



--�߸����
--*��ȣ�� emp���̺�Ӹ��ƴ϶� rownum���� �����Ϸ��� �ϱ� ������ ����
-- ->rownumŰ����� ���̺��� ��ȸ�� �Ŀ� ���������� �ش� ���� ��ȣ�� �ٿ��ش�


SELECT --����Ұ�
    rownum, --���ȣ
    * --��ü �÷� (rownum�� �����ؼ� ��ȸ�Ϸ��� �ϱ⶧���� ����)
FROM emp;


--�ذ� ���
-- ->rownum�� ����� ������ ��ȸ�Ϸ��� �÷��� ���̺��� �����Ͽ� ���� ���־���Ѵ�

SELECT
    rownum,
    E.*
FROM emp E;



--�߸����
--SELECT������ rownum�� ���� ���ȣ�� ���� ���Ŀ� ORDER BY���� �����Ѵ�
-- ->ORDER BY���Ļ��°� rownum�� �ݿ����� �ʴ´�


SELECT rownum sal_rank, E.*
FROM emp E
ORDER BY sal DESC;



--�ذ���
-- ���������� �̿��Ͽ� �����ϰ�, ������������ rownum�� ����Ѵ�

SELECT rownum sal_rank, E.* FROM (
    SELECT * FROM emp
    ORDER BY sal DESC
) E;


--�߸����
--rownumŰ����� ���ȣ�� 1���� ������� �ο��Ѵ�
-- -> rownumŰ���带 �߰������� ���� ����� �� ����
-- -> WHERE������ rownumŰ���带 ���� ������ 1���� �������������� ��ȸ���� �ʴ´�
SELECT rownum sal_rank, E.* FROM (
    SELECT * FROM emp
    ORDER BY sal DESC
) E
--WHERE rownum BETWEEN 1 AND 3; --TOP3 �߳���
WHERE rownum BETWEEN 5 AND 10; --�����߻� ��ȸ��� ����



--�ذ���
SELECT * FROM (
    SELECT rownum sal_rank, E.* FROM (
        SELECT * FROM emp
        ORDER BY sal DESC
        ) E
) R
WHERE sal_rank BETWEEN 5 AND 10;






--QUIZ. �Ի糯¥ (hiredate)�� ���� ������ 3�� ��ȸ�ϱ�

SELECT * FROM emp;

SELECT * FROM (
    SELECT rownum xmf, E.* FROM
    ( SELECT * FROM emp
    ORDER BY hiredate ) E
    )
WHERE xmf BETWEEN 1 AND 3;




--OVER () �Լ�

SELECT
    empno, ename, sal
FROM emp
ORDER BY sal DESC;


SELECT
    empno, ename, sal, deptno
FROM emp
ORDER By deptno, sal DESC;

--OVER()�Լ��� ORDER BY �����Ͽ� ���ϱ� (���Ļ��¸� �������� ó����)
SELECT
    empno, ename, sal, deptno,
    sum(sal) OVER( ORDER BY sal DESC ) sum_sal --sal���� �������� �����հ�
FROM emp;

--OVER()�Լ��� sum�̳� avg�� ��︰��. min,max�� ��...
SELECT
    empno, ename, sal, deptno,
    min(sal) OVER( ORDER BY sal DESC ) sum_sal 
FROM emp;


SELECT
    empno, ename, sal, deptno,
    max(sal) OVER( ORDER BY sal DESC ) sum_sal 
FROM emp;



SELECT
    empno, ename, sal, deptno,
    sum(sal) OVER ( PARTITION BY deptno) sum_sal
FROM emp;




SELECT
    empno, ename, sal, deptno,
    sum(sal) OVER ( PARTITION BY deptno ORDER BY sal) sum_sal
FROM emp;

--�μ��� �ο����� �����Ͽ� ��ȸ�ϱ�
SELECT
    empno, ename, deptno,
    count(*) OVER ( PARTITION by deptno ) DEPT_CNY
FROM emp;


--ROW_NUMBER() : ���ȣ ����

SELECT
    empno, ename, deptno, sal,
    row_number() OVER( ORDER BY sal DESC ) r
FROM emp;

SELECT * FROM (
    SELECT
        empno, ename, deptno, sal,
        row_number() OVER( ORDER BY sal DESC ) rnum
    FROM emp
)
WHERE rnum <= 3;




--row_number(), rank(), dense_rank() �м��Լ�

SELECT
    empno, ename, sal, deptno,
    row_number() OVER ( ORDER BY sal DESC ) rnum,
    rank()  OVER ( ORDER BY sal DESC ) rank,
    dense_rank() OVER ( ORDER BY sal DESC ) dense_rank
FROM emp;




--���� �� ��������

--salesman�餷�l �޿� ��ȸ
SELECT DISTINCT sal
FROM emp
WHERE job = upper('salesman')
ORDER By sal;


--salesman��� ���� �޿��� �޴� �����
SELECT * FROM emp
WHERE sal IN ( 1250, 1500, 1600 );



--���������� �̿��Ͽ� �ϳ��� �ڵ�� �����

SELECT * FROM emp
WHERE sal IN (
    SELECT DISTINCT sal
    FROM emp
    WHERE job = upper('salesman')
    --WHERE�� ������������ ���������� ���� X
);



--������ ���� �μ���ȣ ��ȸ�ϱ�
SELECT deptno FROM emp
WHERE job = upper('president');

--����� ���� �μ����� �ٹ����� ����� ��ȸ�ϱ�

SELECT * FROM emp
WHERE deptno IN (
    SELECT deptno FROM emp
    WHERE job = upper('president')
);




--ANT ������
SELECT * FROM emp
WHERE sal = ANY( --IN�����ڿ� ���� ������
    SELECT DISTINCT sal
    FROM emp
    WHERE job = upper('salesman') -- 1250, 1500, 1600
);



SELECT * FROM emp
WHERE sal < ANY( --sal < 1600, ���� �� �������� ��ȸ ��� �� �ִ밪���� ������ ����
    SELECT DISTINCT sal
    FROM emp
    WHERE job = upper('salesman') -- 1250, 1500, 1600
);


SELECT * FROM emp
WHERE sal > ANY( --sal > 1250, ���� �� �������� ��ȸ ��� �� �ּҰ����� ũ�� ����
    SELECT DISTINCT sal
    FROM emp
    WHERE job = upper('salesman') -- 1250, 1500, 1600
);
--ANY = SOME



--ALL ������ ���θ����ϴ�

SELECT * FROM emp
WHERE sal = ALL (
    SELECT DISTINCT sal
    FROM emp
    WHERE job = upper('salesman') -- 1250, 1500, 1600
);



SELECT * FROM emp
WHERE sal < ALL ( --1250���� ���� �ֵ� �ּҰ����� ������
    SELECT DISTINCT sal
    FROM emp
    WHERE job = upper('salesman') -- 1250, 1500, 1600
);




SELECT * FROM emp
WHERE sal > ALL ( -- 1600 �ִ밪���� ū�ֵ� 
    SELECT DISTINCT sal
    FROM emp
    WHERE job = upper('salesman') -- 1250, 1500, 1600
);





--EXISTS


--�Ŵ��������� �ð��ִ� ����� 
SELECT DISTINCT mgr FROM emp
ORDER BY mgr;


SELECT * FROM emp E
WHERE EXISTS ( --IN�� ���� �� ��, EXSITS�� ���� �ܼ�(���翩�θ������� ä��)
    --EXISTS �������� SELECT�� �÷��� ���� ��ȸ������ ������ �ʴ´�
    --������� ���Ǹ� �����ϸ� �����͸� ���� ��ȸ�Ͽ� �������ʰ� ��������� �߰��Ѵ�
    
    
    SELECT DISTINCT mgr --���ʿ���� �ϰų��ᵵ�� �׳� ���ִ°�
    FROM emp M
    WHERE E.empno = M.mgr --�������(����Ǵºκ��������Ѵ�) ����
)
ORDER BY empno;

--EXISTS ������ ���

SELECT * FROM dept D
WHERE EXISTS (
    SELECT * FROM emp E
    WHERE D.deptno = E.deptno )
ORDER BY deptno;


