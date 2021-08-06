--INSERT

DESC emp;

SELECT * FROM emp;

INSERT INTO emp  ( empno, ename, job, mgr, hiredate, sal, comm, deptno )
VALUES ( 1001, 'ALICE', 'CLERK', 1003, '17/04/08', 800, NULL, 30 );


SELECT * FROM emp;

INSERT INTO emp 
VALUES ( 1002, 'MORRIS', 'CLERK', 1003, '17/01/02', 800, NULL, 30 );


SELECT * FROM emp;

SELECT 1, 2, 'A', 'B', '18/3/2' FROM dual;


SELECT * FROM EMP;

SELECT 1003, 'MATHEW', 'SALESMAN', null, sysdate, 1500, 100, 30 FROM dual;



--SELECT������ �̿��� ������ ����
INSERT INTO emp
SELECT 1003, 'MATHEW', 'SALESMAN', null, sysdate, 1500, 100, 30 FROM dual;
SELECT * FROM EMP;



-- QUIZ. ���� �� ����� ������ �����Ͻÿ�

-- ��� 1011, �̸� EDWARD, ���� MANAGER
--  empno, ename, job

-- ��� 1015, �̸� Richard, �޿� 2000
--  empno, ename, sal


INSERT INTO EMP ( EMPNO, ENAME, JOB )
VALUES ( 1011, 'EDWARD', 'MANAGER' );

INSERT INTO EMP ( EMPNO, ENAME, SAL )
VALUES ( 1015, 'RICHARD', 2000 );


SELECT * FROM emp;



--���̺� ����
--SELECT������ ����� �纻���̺��� �����ϴ� ����
--emp���̺� ��ȸ ����� emp_research���̺�� �����Ѵ�
CREATE TABLE emp_research
AS
SELECT * FROM emp;

--���̺� Ȯ��
SELECT * FROM emp_research;

--���̺� ����
DROP TABLE emp_research;

--�� ���̺� ��ȸ 
SELECT * FROM emp
WHERE 1=0; --FALSE
--WHERE 1=1; --TRUE

--�� ���̺� �����Ͽ� ����
-- ->������ ����, �÷������� ����

CREATE TABLE emp_research
AS
SELECT * FROM emp
WHERE 1=0;

SELECT * FROM emp_research;

DESC emp_research;



--emp���̺��� 20���μ��� ��� �����͸� INSERT
INSERT INTO emp_research
SELECT * FROM EMP WHERE DEPTNO = 20;


--30�� �μ��� empno�� ename�� �����Ͽ� INSERT
INSERT INTO emp_research ( empno, ename )
SELECT empno, ename FROM emp WHERE DEPTNO = 30;

SELECT * FROM emp_research;
DESC emp_research;


--���̺��� ��� ������ ����
DELETE emp_research;

SELECT * FROM emp_research;
DESC emp_research;



--INSERT ALL

INSERT ALL
    WHEN deptno = 20
        THEN INTO emp_research 
    WHEN deptno = 30
        THEN INTO emp_research (empno, ename)
        VALUES ( empno, ename)
SELECT * FROM emp;


SELECT * FROM emp_research;



--INSERT ALL QUIZ
CREATE TABLE emp_hire
AS SELECT empno, ename, hiredate
    FROM emp WHERE 1=0;
    
    
CREATE TABLE emp_sal
AS SELECT empno, ename, sal
    FROM emp WHERE 1=0;
    
    
--INSERT ALL ����ؼ� �ذ��ϱ�

--emp_hire ���̺�, '1981/06/01' ���� ���
INSERT ALL
    WHEN hiredate < '1981/06/01'
        THEN INTO emp_hire ( empno, ename, hiredate )
        VALUES ( empno, ename, hiredate )
SELECT * FROM emp;

SELECT * FROM emp_hire;


--emp_sal ���̺�, 2000���� ���� ���
INSERT ALL
    WHEN sal > 2000
        THEN INTO emp_sal ( empno, ename, sal )
        VALUES ( empno, ename, sal )
SELECT * FROM emp;

SELECT * FROM emp_sal;



--���ļ�

INSERT ALL
    WHEN hiredate < '1981/06/01'
        THEN INTO emp_hire ( empno, ename, hiredate )
        VALUES ( empno, ename, hiredate )
    WHEN sal > 2000
        THEN INTO emp_sal ( empno, ename, sal )
        VALUES ( empno, ename, sal )
SELECT * FROM emp;

--commit; --���̺� ������� �ݿ��ϱ�



--���̺� ������ ����
DELETE emp_hire;
SELECT * FROM emp_hire;


--ROLLBACK; --�۾� ���� �ǵ�����


--DELETE ���� �ڵ带 ���� ������ SELECT ������ ���� �����
SELECT * FROM emp_sal
--DELETE emp_sal
WHERE empno = 7839;


--ROLLBACK; --�۾� �ǵ�����
--COMMIT; --�۾� �ݿ��ϱ�



--emp_hire ���̺� ��ü �� ����

SELECT * FROM emp_hire;
--DELETE emp_hire

--ROLLBACK;



SELECT * FROM emp_hire
--DELETE emp_hire
WHERE ename = 'SMITH';

--ROLLBACK;


--UPDATE

SELECT * FROM emp
--UPDATE emp SET ename = 'BURGER' , job='KING'
WHERE empno = 1001;

--COMMIT;




--UPDATE QUIZ

--EMP_HIRE ���̺��� ��ü ���� �Խ����� ������ ����

SELECT * FROM emp_hire;
--UPDATE emp_hire SET hiredate = trunc(sysdate);


--EMP_SAL�� ��� ������� �޿� ���� 550 �λ��Ű��

SELECT * FROM emp_sal;
--UPDATE emp_sal SET sal = sal+550;


--ROLLBACK;
--COMMIT;



--MERGE 
--����Ŭ ���� ����

CREATE TABLE emp_merge
AS
SELECT empno, ename, sal, deptno
FROM emp
WHERE deptno IN (10, 20 );

--���̺� Ȯ��
SELECT * FROM emp_merge
ORDER BY deptno, empno;


--emp���̺��� 20,30 �μ� ����� ���� ��ȸ ( USING, SELECT )
--emp_merge���̺� ���� (MERGE)
--�̹� �����ϴ� ����̶�� sal�� 30%�λ� ( UPDATE )
--emp_merge���̺� �������� ������ ���� ( INSERT )


MERGE INTO emp_merge M
USING (
    SELECT empno, ename, deptno, sal
    FROM emp 
    WHERE deptno IN ( 20, 30 )
) E
ON ( M.empno = E.empno )
WHEN MATCHED THEN
    UPDATE SET M.sal = M.sal*1.3
WHEN NOT MATCHED THEN
    INSERT ( M.empno, M.ename, M.deptno, M.sal )
    VALUES ( E.empno, E.ename, E.deptno, E.sal );
    
    
SELECT * FROM emp_merge;

--ROLLBACK;
--COMMIT;



