--  DCL DATA CONTROL LANGUAGE

--����

--���� �ڷ����
SELECT * FROM user_sys_privs; --����ڰ������� �ο��� �ý��� ����
SELECT * FROM user_tab_privs; --����ڰ������� �ο��� ��ü ����


SELECT * FROM dba_sys_privs --�����ڰ������� �ο��� �ý��� ����
WHERE GRANTEE = 'SCOTT';
SELECT * FROM dba_tab_privs; --�����ڰ������� �ο��� ��ü ����


--(SCOTT���� �̿�)
--privs_test ����ڰ��� �����ϱ� (privs_test/1234)
CREATE USER privs_test IDENTIFIED BY 1234; --����, ���� �����


--(system���� �̿�)
CREATE USER privs_test IDENTIFIED BY 1234;

--SQL PIUS �̿��ؼ� privs_test/1234 ���� �׽�Ʈ
-- -> ���� ����, CREATE SESSION������ ��� DB������ �ȵȴ�

--(system���� �̿�)
GRANT CREATE SESSION
TO privs_test;

SELECT * FROM dba_sys_privs
WHERE grantee = 'PRIVS_TEST';


--privs_test������ CREATE SESSION ���� ȸ���ϱ�
REVOKE CREATE SESSION
FROM privs_test;

SELECT * FROM dba_sys_privs
WHERE grantee = 'PRIVS_TEST';


SELECT * FROM dba_sys_privs
WHERE grantee = 'SCOTT';

--CREATE SESSION�� ���� -> ��(��������)�� �̿��ؼ� �ο��ް� �ִ�


--SCOTT������ �� Ȯ��
SELECT * FROM dba_role_privs
WHERE grantee = 'SCOTT';



SELECT * FROM dba_sys_privs
WHERE grantee IN ('RESOURCE','CONNECT')
ORDER BY grantee, privilege;



--ROLE�� ������ �ý��� ���� ��ȸ
SELECT * FROM dba_sys_privs
WHERE grantee IN (
    SELECT granted_role FROM DBA_ROLE_PRIVS
    WHERE grantee=UPPER('scott') 
)
UNION
SELECT * FROM dba_sys_privs
WHERE grantee = UPPER('scott');


--���� �̿��Ͽ� �⺻�ý��۱����� PRIVS-TEST�� �ο��ϱ�

GRANT RESOURCE, CONNECT
TO privs_test;



--�ε���

--�ε��� ���� �ڷ����
SELECT * FROM user_indexes
WHERE table_name = 'EMP';


--�ε����� ����� �÷� �ڷ����
SELECT * FROM user_ind_columns
--WHERE table_namee = 'EMP';
WHERE index_name = 'PK_EMP';



--SALGRADE ���̺� ����� �ε��� ��ȸ
SELECT * FROM user_indexes
WHERE table_name = 'SALGRADE';

SELECT * FROM SALGRADE;



--�ε��� ��ü ���� : �ߺ��� ���
CREATE INDEX idx_salgrade
ON salgrade ( grade );


SELECT * FROM SALGRADE
ORDER BY GRADE;

INSERT INTO SALGRADE VALUES (5,7777,8888);

--�ε����� ������ �Ŀ� ���̺� ��ȭ (INSERT, UPDATE, DELETE)�� �ִ��� �ε����� �ݿ����� �ʴ´�
-- -> �ε����� ���� �籸���ؾ��Ѵ�

--�ε��� ������ϱ�
ALTER INDEX idx_salgrade REBUILD;

--�ε��� �����ϱ�
DROP INDEX idx_salgrade;


--UNIQUE�ε��� �������ϱ�  : ����, �ߺ����� ������ �־ �����Ұ�
CREATE UNIQUE INDEX idx_salgrade
ON salgrade ( grade );



SELECT * FROM SALGRADE;
--DELETE salgrade
--WHERE GRADE = 5 AND losal = 7777;


--UNIQUE�ε��� �������ϱ� 
CREATE UNIQUE INDEX idx_salgrade
ON salgrade ( grade );


INSERT INTO SALGRADE VALUES (5,7777,8888); --�ߺ��� �߰� �Ұ�






--�μ�, �̸����� ��ȸ

SELECT * FROM EMP
WHERE DEPTNO = 10
    AND ENAME = 'MILLER';




--���� �÷� �ε���

CREATE INDEX IDX_EMP_DEPTNO_ENAME
ON EMP ( DEPTNO,ENAME );


--��

--(SCOTT���� �̿�)
--�� ��ü ����
CREATE VIEW TEST_VIEW
AS (
    SELECT * FROM EMP
    WHERE empno < 7600
);


--(SYSTEM���� �̿�)
--SCOTT������ CREATE VIEW ���� �ο�
GRANT CREATE VIEW
TO SCOTT;


--(SCOTT���� �̿�)
--�� ��ü ����
CREATE VIEW TEST_VIEW
AS (
    SELECT * FROM EMP
    WHERE empno < 7600
);

DROP VIEW TEST_VIEW;


--�� �ڷ����
SELECT * FROM user_views
WHERE view_name = UPPER('TEST_VIEW');



--�並 �̿��� ��ȸ
SELECT * FROM TEST_VIEW;

--�ζ��� �並 �̿��� ��ȸ
SELECT * FROM (
    SELECT "EMPNO","ENAME","JOB","MGR","HIREDATE","SAL","COMM","DEPTNO" FROM EMP
    WHERE empno < 7600
);


CREATE OR REPLACE VIEW TEST_VIEW
AS (
    SELECT empno, ename FROM EMP
    WHERE empno < 7700
);

--�並 �̿��� ��ȸ
SELECT * FROM TEST_VIEW;

SELECT * FROM user_views;

--�並 �̿��� ������ ����
INSERT INTO TEST_VIEW ( empno, ename )
VALUES ( 8000, '��TEST' ); --���� ���ǹ� ������ ������� �������̺��� ��

--�並 �̿��� ������ ����
INSERT INTO TEST_VIEW ( empno, ename )
VALUES ( 7000, '��TEST' );


INSERT INTO TEST_VIEW ( empno, deptno ) --���������� ���� �÷��� X
VALUES ( 8500,30 );

SELECT * FROM EMP;

--WITH CHECK OPTION �����ϱ�
-- -> �並 ���ؼ� ��ȸ���� �ʴ� �����ʹ� INSERT �� �� ������ �����Ѵ�
CREATE OR REPLACE VIEW TEST_VIEW
AS (
    SELECT empno, ename FROM emp
    WHERE empno < 7700
)
WITH CHECK OPTION;


--DELETE EMP
--	WHERE empno = 9000; --������ �� �����ϱ�


INSERT INTO TEST_VIEW VALUES ( 9000, 'TEST!!'); --����, ��ȸ���� ������ ��� ������
INSERT INTO TEST_VIEW VALUES ( 7001, 'TEST!!'); 


--������, SEQUENCE

--������ ����
CREATE SEQUENCE seq_emp;

--������ �ڷ����
SELECT * FROM user_sequences;


--�������� ������ : �������̸�.nextval
--�������� ���簪 : �������̸�.currval

SELECT seq_emp.nextval FROM dual;
SELECT seq_emp.currval FROM dual;


INSERT INTO emp (empno, ename)
VALUES (seq_emp.nextval, 'GGGGGGG');

SELECT * FROM EMP
WHERE EMPNO < 1000;

DROP SEQUENCE seq_emp; 


--�ɼ�(����) �� �ο��ؼ� ������ �����ϱ�
CREATE SEQUENCE TEST_SEQ
START WITH 2001
INCREMENT BY 100
MINVALUE 2001
MAXVALUE 3000;


--2001���� 100�� �����Ѵ�, 3000�� �Ѿ �� ����
SELECT TEST_SEQ.NEXTVAL FROM DUAL;



--CYCLE(��ȯ����) �ο��ϱ� -> ����, 1����Ŭ�� ������ ĳ���� �������� ����
ALTER SEQUENCE TEST_SEQ
CYCLE;

SELECT * FROM user_sequences
WHERE sequence_name = 'TEST_SEQ';



ALTER SEQUENCE TEST_SEQ
CACHE 5 --ĳ���� ������ 5���� ������
CYCLE;

--��ȯ����(CYCLE)�� ����Ǿ� �������� NEXTVAL�� �����Ѵ�
SELECT TEST_SEQ.NEXTVAL FROM DUAL;




