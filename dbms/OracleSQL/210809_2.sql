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



