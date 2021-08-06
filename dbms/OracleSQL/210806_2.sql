--DDL
--데이터 정의어

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
VALUES ( 123.444 ); --소수 표현 불가


SELECT data2 FROM type_test_01;

SELECT * FROM type_test_01;

INSERT INTO type_test_01 ( data2 )
VALUES ( 555.777 ); --소수는 반올림 된다


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
VALUES ( 12345.6789 ); --에러 정수부분은 3자리를 넘으면 안된다



SELECT data3 FROM type_test_01;
SELECT * FROM type_test_01;




--data4 : NUMBER(4,5) 0.0xxxx (잘안씀)


INSERT INTO type_test_01 ( data4 )
VALUES ( 1234 ); --에러, 정수로 표현가능한 자릿수 없음ㅇ

INSERT INTO type_test_01 ( data4 )
VALUES ( 0.1234 ); --에러, 첫번째자리수가 0이어야한다

INSERT INTO type_test_01 ( data4 )
VALUES ( 0.0234567 ); --소수부분 여섯번째자리에서 반올림 

INSERT INTO type_test_01 ( data4 )
VALUES ( 0.0134 );


SELECT data4 FROM type_test_01;
SELECT * FROM type_test_01;

