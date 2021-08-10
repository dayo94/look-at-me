--ALTER


--ALTER TABLE
--�׽�Ʈ�� ���̺����

CREATE TABLE alter_test (
    empno NUMBER(4),
    ename VARCHAR2(30),
    CONSTRAINT pk_alter_test PRIMARY KEY(empno)
);
--���̺� ����Ȯ��
DESC alter_test;
--������ ��ȸ
SELECT * FROM alter_test;

--emp���̺��� �̿��Ͽ� ������ ����

INSERT INTO alter_test ( empno, ename )
SELECT empno, ename FROM emp;

--������ ��ȸ
SELECT * FROM alter_test;


--���ο� �÷� �߰��ϱ� : phone VARCHAR(11)

ALTER TABLE alter_test
ADD ( phone VARCHAR2(11) );

--���̺� ����Ȯ��
DESC alter_test;
--������ ��ȸ
SELECT * FROM alter_test;


--���� �÷��� ������Ÿ�� �����ϱ� : phone VARCHAR2(11) -> phone VARCHAR2(20)

ALTER TABLE alter_test
MODIFY ( phone VARCHAR(20) );


--���̺� ����Ȯ��
DESC alter_test;
--������ ��ȸ
SELECT * FROM alter_test;

--���� �÷��� NOT NULL�Ӽ� �ο��ϱ�

ALTER TABLE alter_test
MODIFY ( empno NOT NULL );


--���̺� ����Ȯ��
DESC alter_test;
--������ ��ȸ
SELECT * FROM alter_test;

--phone �÷� �����ϱ�

ALTER TABLE alter_test
DROP COLUMN phone;

--���̺� ����Ȯ��
DESC alter_test;
--������ ��ȸ
SELECT * FROM alter_test;



--ename �÷��� ��Ȱ��ȭ�Ѵ� (�����Ұ���) --���ɸ��⶧���� ���� ��Ȱ��ȭ�ϰ�
ALTER TABLE alter_test
SET UNUSED ( ename );

SELECT * FROM alter_test;

--��Ȱ��ȭ�� �÷��� ����(������)���� �����ϱ�


ALTER TABLE alter_test --�����Ҷ� ����
DROP UNUSED COLUMNS;


--���̺�� �����ϱ�

ALTER TABLE alter_test
RENAME TO alter_tb;

--���̺� ����Ȯ��
DESC alter_test;
--������ ��ȸ
SELECT * FROM alter_test;

--���̺� ����Ȯ��
DESC alter_tb;
--������ ��ȸ
SELECT * FROM alter_tb;


--�÷��� �����ϱ� (alter_tb.empno -> alter_tb.eno)
ALTER TABLE alter_tb
RENAME COLUMN empno TO eno;

--���̺� ����Ȯ��
DESC alter_tb;
--������ ��ȸ
SELECT * FROM alter_tb;





--ALTER TABLE�� �̿��� ������� ����


CREATE TABLE alter_cons (
    data VARCHAR2(10)
);

DESC alter_cons;
SELECT * FROM alter_cons;

--NOT NULL �������
ALTER TABLE alter_cons
--MODIFY data NOT NULL; --NOT NULL Ư�� �ο�
MODIFY data NULL; --NOT NULLƯ�� ����


DESC alter_cons;
SELECT * FROM alter_cons;



--DEFAULT �������
ALTER TABLE alter_cons
--MODIFY data DEFAULT 'HI'; --DEFAULR Ư�� �ο�
MODIFY data DEFAULT NULL; --DEFAULT Ư�� ����


--UNIQUE �������
ALTER TABLE alter_cons
ADD CONSTRAINT uk_data UNIQUE ( data ); --UNIQUE ������� �ο�

ALTER TABLE alter_cons
DROP CONSTRAINT uk_data; --UNIQUE ������� ����


--CHECK �������

ALTER TABLE alter_cons
ADD CONSTRAINT ck_data CHECK ( data>='A' AND data<='Z' ); --CHECK ������� �ο�

ALTER TABLE alter_cons
DROP CONSTRAINT ck_data; --CHECK ������� ����



--PRIMARY KEY

ALTER TABLE alter_cons
ADD CONSTRAINT pk_data PRIMARY KEY ( data );

ALTER TABLE alter_cons
DROP CONSTRAINT pk_data;

DROP TABLE alter_fk_cons;
--FOREIGN KEY
CREATE TABLE alter_fk_cons (
    fk_data VARCHAR2(10)
);

ALTER TABLE alter_fk_cons
ADD CONSTRAINT fk_data
    FOREIGN KEY ( fk_data )
    REFERENCES alter_cons ( data );

ALTER TABLE alter_fk_cons
DROP CONSTRAINT fk_data;



--������ ����
DELETE alter_tb; --DML
ROLLBACK; --DELETE�� �ѹ鰡��

--������ ����
TRUNCATE TABLE alter_tb; --DDL, TRUNCATE TABLE�� �ѹ� �Ұ��� 



