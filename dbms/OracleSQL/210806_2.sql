--DDL
--������ ���Ǿ�

CREATE TABLE type_test_01 (
    data1 NUMBER,
    data2 NUMBER(10),
    data3 NUMBER(5,2),
    data4 NUMBER(4,5)
);

--data1 ; NUMBER

INSERT INTO type_test_01 ( data1 )
VALUES (1234567890123456789012345678901234567890);
INSERT INTO type_test_01 ( data1 )
VALUES (12345678901234567890123456789012345678901234567890);
INSERT INTO type_test_01 ( data1 )
VALUES (1234.5678);


SELECT data1 FROM type_test_01;

SELECT * FROM type_test_01;


--data2 : NUMBER(10)
INSERT INTO type_test_01 ( data2 )
VALUES ( 123.444 ); --�Ҽ� ǥ�� �Ұ�


SELECT data2 FROM type_test_01;

SELECT * FROM type_test_01;

INSERT INTO type_test_01 ( data2 )
VALUES ( 555.777 ); --�Ҽ��� �ݿø� �ȴ�


SELECT data2 FROM type_test_01;
SELECT * FROM type_test_01;


SELECT data2 FROM type_test_01;

--data3 : NUMBER(5,2)
INSERT INTO type_test_01 ( data3 )
VALUES ( 0.1 );  

INSERT INTO type_test_01 ( data3 )
VALUES ( 34.56 ); 

INSERT INTO type_test_01 ( data3 )
VALUES ( 56.7894 ); 


INSERT INTO type_test_01 ( data3 )
VALUES ( 12345.6789 ); --���� �����κ��� 3�ڸ��� ������ �ȵȴ�



SELECT data3 FROM type_test_01;
SELECT * FROM type_test_01;




--data4 : NUMBER(4,5) 0.0xxxx (�߾Ⱦ�)


INSERT INTO type_test_01 ( data4 )
VALUES ( 1234 ); --����, ������ ǥ�������� �ڸ��� ������

INSERT INTO type_test_01 ( data4 )
VALUES ( 0.1234 ); --����, ù��°�ڸ����� 0�̾���Ѵ�

INSERT INTO type_test_01 ( data4 )
VALUES ( 0.0234567 ); --�Ҽ��κ� ������°�ڸ����� �ݿø� 

INSERT INTO type_test_01 ( data4 )
VALUES ( 0.0134 );


SELECT data4 FROM type_test_01;
SELECT * FROM type_test_01;

