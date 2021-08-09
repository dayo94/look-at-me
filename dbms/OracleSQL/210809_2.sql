--��������, �������

CREATE TABLE cons_01 (
    data VARCHAR2(10) NOT NULL
);

DESC cons_01;

INSERT INTO cons_01 VALUES (NULL) ; --����, NULL �Է� �Ұ�


--�������� �ڷ���� : user_constraints

SELECT * FROM user_constraints
WHERE table_name = UPPER('cons_01');


--���̺� �ڷ���� : user_tables, tabs
SELECT * FROM user_tables;
SELECT * FROM tabs;


--�������ǿ� �̸� �ٿ��� �����ϱ�
CREATE TABLE cons_02 (
    data VARCHAR2(10) CONSTRAINT NNDATA NOT NULL
);

SELECT * FROM user_constraints
WHERE table_name = upper('cons_02');


--�������� ���� ���̺� ����


CREATE TABLE cons_03 (
    data VARCHAR2(10)
);


--NOT NULL ���������� �����̺� ���� �Ŀ� �����ϱ�
-- -> MODIFY col ������ ����ؾ� �Ѵ�


ALTER TABLE cons_03
MODIFY data NOT NULL;



SELECT * FROM user_constraints
WHERE table_name = upper('cons_03');



--UNIQUE
CREATE TABLE cons_04 (
    data VARCHAR(10) CONSTRAINT UKDATA1 UNIQUE
);


SELECT * FROM user_constraints
WHERE table_name = upper('cons_04');


INSERT INTO cons_04 VALUES ('BANANA');
--INSERT INTO cons_04 VALUES ('BANANA'); --����, �ߺ������� ���� �ȵ�
SELECT * FROM cons_04;



CREATE TABLE cons_05 (
    data1 NUMBER,
    data2 NUMBER CONSTRAINT UKDATA2 UNIQUE, --�÷� ������ ����ũ �������� ����
    data3 NUMBER,
    
    CONSTRAINT UKDATA1 UNIQUE ( data1 ), --���̺� ������ ����ũ �������� ����
    CONSTRAINT UKDATA3 UNIQUE ( data3 )

);


SELECT * FROM user_constraints
WHERE table_name = upper('cons_05')
ORDER BY constraint_name;


--���������� �ɷ��ִ� �÷� �ڷ����

--SELECT * FROM user_constraints; �������

SELECT * FROM user_tab_columns
WHERE table_name = UPPER('cons_08');


--�������� ��ȸ ����


SELECT
    A.TABLE_NAME,
	SUBSTR(A.COLUMN_NAME,1,15) COLUMN_NAME,
	DECODE(B.CONSTRAINT_TYPE,
		'P','PRIMARY KEY',
		'U','UNIQUE KEY',
		'C','CHECK OR NOT NULL',
		'R','FOREIGN KEY'
	) CONSTRAINT_TYPE,
	A.CONSTRAINT_NAME,
    SEARCH_CONDITION
FROM USER_CONS_COLUMNS A, USER_CONSTRAINTS B
WHERE A.TABLE_NAME = UPPER('&table_name')
	AND A.TABLE_NAME = B.TABLE_NAME
	AND A.CONSTRAINT_NAME = B.CONSTRAINT_NAME
ORDER BY 1;

SELECT * FROM USER_CONSTRAINTS; -- ������� ��� �������
SELECT * FROM USER_CONS_COLUMNS; -- �÷��� �ش��ϴ� ������� ��ȸ



--CHECK

--CREATE TABLE cons_06 (
--    data NUMBER CONSTRAINT UKDATA1 UNIQUE
--);


CREATE TABLE cons_06 (
    data NUMBER CHECK (data>=1 AND data<=100)
);

INSERT INTO cons_06 VALUES ( -100 );
INSERT INTO cons_06 VALUES ( 123 );
INSERT INTO cons_06 VALUES ( 54 );


SELECT * FROM cons_06;



CREATE TABLE cons_07 (
    data VARCHAR2(1) CHECK (data IN ('Y','N'))
);
INSERT INTO cons_07 VALUES ('Y');
INSERT INTO cons_07 VALUES ('N');

INSERT INTO cons_07 VALUES ('y'); --���ڵ����ʹ� ��ҹ��� ����O 


SELECT * FROM cons_07;


--DEFAULT
CREATE TABLE cons_08 (
    data1 NUMBER DEFAULT 10,
    data2 DATE DEFAULT SYSDATE,
    data3 VARCHAR2(10) DEFAULT 'HI' NOT NULL
);


SELECT * FROM user_constraints
WHERE table_name = upper('cons_08')
ORDER BY constraint_name;


--�������� �ڷ���� ��ȸ�� ����Ʈ�� X
--�÷� ���� �ڷ���� ��ȸ

SELECT * FROM user_tab_columns
WHERE table_name = UPPER('cons_08');


--DEFAULT���������� NULL���� ��ü�ϴ� ���� �ƴϴ�
INSERT INTO cons_08
VALUES (NULL, NULL, 'AA');
SELECT * FROM cons_08;

--�μ�Ʈ�Ҷ� �ƿ� ���� �������� �ʾƾ� ����
INSERT INTO cons_08 (data3)
VALUES ('BB');
SELECT * FROM cons_08;


INSERT INTO cons_08; --����, ������ �ϼ��������� VLAUES���� ����
INSERT INTO cons_08 VALUES (); --���� VALUES���� �ƹ� �����͵� ����




--PRIMARY KEY
--�⺻Ű, ��Ű

CREATE TABLE cons_09 (
    no NUMBER CONSTRAINT PK_NO PRIMARY KEY, --�̸��������ϸ�, �÷� ������ ������
    data VARCHAR2(10) NOT NULL
);
SELECT * FROM cons_09;



CREATE TABLE cons_10 (
    no NUMBER PRIMARY KEY, --�̸����� �÷� ������ ������
    data VARCHAR2(10) NOT NULL
);



CREATE TABLE cons_11 (
    no NUMBER, --�̸����� �÷� ������ ������
    data VARCHAR2(10) NOT NULL,
    CONSTRAINT PK_CONS11 PRIMARY KEY ( NO ) --�̸��� �ο��ϸ� ���̺� ������ ������
);


CREATE TABLE cons_12 (
    no NUMBER, --�̸����� �÷� ������ ������
    data VARCHAR2(10) NOT NULL,
    PRIMARY KEY ( NO ) --�̸����� ���̺� ������ ������ (��������������)
);



--FOREIGN KEY

CREATE TABLE cons_13 (
    num NUMBER,
    data VARCHAR2(20),
    CONSTRAINT FK_NUM FOREIGN KEY ( num )-- FK����, �ڽ� ���̺��� �÷����� �����Ѵ�
        REFERENCES cons_12 ( no ) --������ PK����, ������ ���̺�� �÷������� �����Ѵ�
);



CREATE TABLE pk_test (
    no NUMBER,
    data VARCHAR2(20),
    CONSTRAINT pkno PRIMARY KEY ( NO )
);


CREATE TABLE fk_test (
    id VARCHAR2(30),
    no NUMBER,
    CONSTRAINT pkid PRIMARY KEY ( id ),
    CONSTRAINT fkno FOREIGN KEY ( no )
        REFERENCES pk_test ( no )
);



INSERT INTO pk_test VALUES ( 1, 'APPLE' );
INSERT INTO pk_test VALUES ( 2, 'BANANA' );
INSERT INTO pk_test VALUES ( 3, 'CHERRY' );


INSERT INTO fk_test VALUES ( 'A', 10 ); --����, 10�� ������� PK�� ������ �������� �ʴ´�
INSERT INTO fk_test VALUES ( 'A', 1 );
INSERT INTO fk_test VALUES ( 'B', 2 );

--����, PK�� �� '1'�� FK�� �����ϰ� �ִ� ���̱⋚���� �����Ҽ�����
DELETE pk_test WHERE no = 1;

--�����ϰ� �ִ� FK�� ���� ������ '3'�� �����Ҽ��ִ�
DELETE pk_test WHERE no = 3;



--ON DELETE CASCADE

--���̺� ����
DROP TABLE fk_test;
DROP TABLE pk_test;

CREATE TABLE pk_test (
    no NUMBER,
    data VARCHAR2(20),
    CONSTRAINT pkno PRIMARY KEY ( no ) );

CREATE TABLE fk_test (
    id VARCHAR2(30),
    no NUMBER,
    CONSTRAINT pkid PRIMARY KEY ( id ),
    CONSTRAINT fkno FOREIGN KEY ( no )
        REFERENCES pk_test ( no )
        ON DELETE CASCADE -- PK�� �������� FK�� ���� ���������� �����Ѵ�
);

INSERT INTO pk_test VALUES ( 1, 'Apple' );
INSERT INTO pk_test VALUES ( 2, 'Banana' );
INSERT INTO pk_test VALUES ( 3, 'Cherry' );

INSERT INTO fk_test VALUES ( 'A', 1 );
INSERT INTO fk_test VALUES ( 'B', 2 );



--ON DELETE CASCADE ���� ������, PK�� FK�� ��� ��������
DELETE pk_test WHERE no = 1;

SELECT * FROM pk_test;
SELECT * FROM fk_test;




--ON DELETE SET NULL

--���̺� ����
DROP TABLE fk_test;
DROP TABLE pk_test;

CREATE TABLE pk_test (
    no NUMBER,
    data VARCHAR2(20),
    CONSTRAINT pkno PRIMARY KEY ( no ) );

CREATE TABLE fk_test (
    id VARCHAR2(30),
    no NUMBER,
    CONSTRAINT pkid PRIMARY KEY ( id ),
    CONSTRAINT fkno FOREIGN KEY ( no )
        REFERENCES pk_test ( no )
        ON DELETE SET NULL -- PK�� �������� FK�� NULL������ �����Ѵ�
);

INSERT INTO pk_test VALUES ( 1, 'Apple' );
INSERT INTO pk_test VALUES ( 2, 'Banana' );
INSERT INTO pk_test VALUES ( 3, 'Cherry' );

INSERT INTO fk_test VALUES ( 'A', 1 );
INSERT INTO fk_test VALUES ( 'B', 2 );

--ON DELETE CASCADE ���� ������, PK�� FK�� ��� ��������
DELETE pk_test WHERE no = 1;

SELECT * FROM pk_test;
SELECT * FROM fk_test;
