--제약조건, 제약사항

CREATE TABLE cons_01 (
    data VARCHAR2(10) NOT NULL
);

DESC cons_01;

INSERT INTO cons_01 VALUES (NULL) ; --에러, NULL 입력 불가


--제약조건 자료사전 : user_constraints

SELECT * FROM user_constraints
WHERE table_name = UPPER('cons_01');


--테이블 자료사전 : user_tables, tabs
SELECT * FROM user_tables;
SELECT * FROM tabs;


--제약조건에 이름 붙여서 설정하기
CREATE TABLE cons_02 (
    data VARCHAR2(10) CONSTRAINT NNDATA NOT NULL
);

SELECT * FROM user_constraints
WHERE table_name = upper('cons_02');


--제약조건 없이 테이블 생성


CREATE TABLE cons_03 (
    data VARCHAR2(10)
);


--NOT NULL 제약조건을 ㅈ테이블 생성 후에 적용하기
-- -> MODIFY col 구문을 사용해야 한다


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
--INSERT INTO cons_04 VALUES ('BANANA'); --에러, 중복데이터 삽입 안됨
SELECT * FROM cons_04;



CREATE TABLE cons_05 (
    data1 NUMBER,
    data2 NUMBER CONSTRAINT UKDATA2 UNIQUE, --컬럼 레벨로 유니크 제약조건 설정
    data3 NUMBER,
    
    CONSTRAINT UKDATA1 UNIQUE ( data1 ), --테이블 레벨로 유니크 제약조건 설정
    CONSTRAINT UKDATA3 UNIQUE ( data3 )

);


SELECT * FROM user_constraints
WHERE table_name = upper('cons_05')
ORDER BY constraint_name;


--제약조건이 걸려있는 컬럼 자료사전

--SELECT * FROM user_constraints; 못썻어요

SELECT * FROM user_tab_columns
WHERE table_name = UPPER('cons_08');


--제약조건 조회 쿼리


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

SELECT * FROM USER_CONSTRAINTS; -- 사용자의 모든 제약사항
SELECT * FROM USER_CONS_COLUMNS; -- 컬럼에 해당하는 제약사항 조회



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

INSERT INTO cons_07 VALUES ('y'); --문자데이터는 대소문자 구분O 


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


--제약조건 자료사전 조회에 디폴트는 X
--컬럼 정보 자료사전 조회

SELECT * FROM user_tab_columns
WHERE table_name = UPPER('cons_08');


--DEFAULT제약조건은 NULL값을 대체하는 값이 아니다
INSERT INTO cons_08
VALUES (NULL, NULL, 'AA');
SELECT * FROM cons_08;

--인서트할때 아예 값을 지정하지 않아야 가능
INSERT INTO cons_08 (data3)
VALUES ('BB');
SELECT * FROM cons_08;


INSERT INTO cons_08; --에러, 문법이 완성되지않음 VLAUES절이 없음
INSERT INTO cons_08 VALUES (); --에러 VALUES절에 아무 데이터도 없음




--PRIMARY KEY
--기본키, 주키

CREATE TABLE cons_09 (
    no NUMBER CONSTRAINT PK_NO PRIMARY KEY, --이름을지정하며, 컬럼 레벨로 설정함
    data VARCHAR2(10) NOT NULL
);
SELECT * FROM cons_09;



CREATE TABLE cons_10 (
    no NUMBER PRIMARY KEY, --이름없이 컬럼 레벨로 설정함
    data VARCHAR2(10) NOT NULL
);



CREATE TABLE cons_11 (
    no NUMBER, --이름없이 컬럼 레벨로 설정함
    data VARCHAR2(10) NOT NULL,
    CONSTRAINT PK_CONS11 PRIMARY KEY ( NO ) --이름을 부여하며 테이블 레벨로 설정함
);


CREATE TABLE cons_12 (
    no NUMBER, --이름없이 컬럼 레벨로 설정함
    data VARCHAR2(10) NOT NULL,
    PRIMARY KEY ( NO ) --이름없이 테이블 레벨로 설정함 (절대하지마세욥)
);



--FOREIGN KEY

CREATE TABLE cons_13 (
    num NUMBER,
    data VARCHAR2(20),
    CONSTRAINT FK_NUM FOREIGN KEY ( num )-- FK설정, 자신 케이블의 컬럼으로 설정한다
        REFERENCES cons_12 ( no ) --참조할 PK설정, 참조할 테이블과 컬럼명으로 설정한다
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


INSERT INTO fk_test VALUES ( 'A', 10 ); --에러, 10은 참조대상 PK의 값으로 존재하지 않는다
INSERT INTO fk_test VALUES ( 'A', 1 );
INSERT INTO fk_test VALUES ( 'B', 2 );

--에러, PK의 값 '1'은 FK가 참조하고 있는 값이기떄문에 삭제할수없다
DELETE pk_test WHERE no = 1;

--참조하고 있는 FK가 없기 때문에 '3'운 삭제할수있다
DELETE pk_test WHERE no = 3;



--ON DELETE CASCADE

--테이블 삭제
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
        ON DELETE CASCADE -- PK가 지워지면 FK도 같이 지워지도록 설정한다
);

INSERT INTO pk_test VALUES ( 1, 'Apple' );
INSERT INTO pk_test VALUES ( 2, 'Banana' );
INSERT INTO pk_test VALUES ( 3, 'Cherry' );

INSERT INTO fk_test VALUES ( 'A', 1 );
INSERT INTO fk_test VALUES ( 'B', 2 );



--ON DELETE CASCADE 설정 때문에, PK와 FK가 모두 지워진다
DELETE pk_test WHERE no = 1;

SELECT * FROM pk_test;
SELECT * FROM fk_test;




--ON DELETE SET NULL

--테이블 삭제
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
        ON DELETE SET NULL -- PK가 지워지면 FK는 NULL값으로 변경한다
);

INSERT INTO pk_test VALUES ( 1, 'Apple' );
INSERT INTO pk_test VALUES ( 2, 'Banana' );
INSERT INTO pk_test VALUES ( 3, 'Cherry' );

INSERT INTO fk_test VALUES ( 'A', 1 );
INSERT INTO fk_test VALUES ( 'B', 2 );

--ON DELETE CASCADE 설정 때문에, PK와 FK가 모두 지워진다
DELETE pk_test WHERE no = 1;

SELECT * FROM pk_test;
SELECT * FROM fk_test;
