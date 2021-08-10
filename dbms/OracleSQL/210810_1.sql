--ALTER


--ALTER TABLE
--테스트용 테이블생성

CREATE TABLE alter_test (
    empno NUMBER(4),
    ename VARCHAR2(30),
    CONSTRAINT pk_alter_test PRIMARY KEY(empno)
);
--테이블 구조확인
DESC alter_test;
--데이터 조회
SELECT * FROM alter_test;

--emp테이블을 이용하여 데이터 삽입

INSERT INTO alter_test ( empno, ename )
SELECT empno, ename FROM emp;

--데이터 조회
SELECT * FROM alter_test;


--새로운 컬럼 추가하기 : phone VARCHAR(11)

ALTER TABLE alter_test
ADD ( phone VARCHAR2(11) );

--테이블 구조확인
DESC alter_test;
--데이터 조회
SELECT * FROM alter_test;


--기존 컬럼의 데이터타입 변경하기 : phone VARCHAR2(11) -> phone VARCHAR2(20)

ALTER TABLE alter_test
MODIFY ( phone VARCHAR(20) );


--테이블 구조확인
DESC alter_test;
--데이터 조회
SELECT * FROM alter_test;

--기존 컬럼에 NOT NULL속성 부여하기

ALTER TABLE alter_test
MODIFY ( empno NOT NULL );


--테이블 구조확인
DESC alter_test;
--데이터 조회
SELECT * FROM alter_test;

--phone 컬럼 삭제하기

ALTER TABLE alter_test
DROP COLUMN phone;

--테이블 구조확인
DESC alter_test;
--데이터 조회
SELECT * FROM alter_test;



--ename 컬럼을 비활성화한다 (복구불가능) --락걸리기때문에 먼저 비활성화하고
ALTER TABLE alter_test
SET UNUSED ( ename );

SELECT * FROM alter_test;

--비활성화된 컬럼을 실제(물리적)으로 삭제하기


ALTER TABLE alter_test --점검할때 삭제
DROP UNUSED COLUMNS;


--테이블명 변경하기

ALTER TABLE alter_test
RENAME TO alter_tb;

--테이블 구조확인
DESC alter_test;
--데이터 조회
SELECT * FROM alter_test;

--테이블 구조확인
DESC alter_tb;
--데이터 조회
SELECT * FROM alter_tb;


--컬럼명 변경하기 (alter_tb.empno -> alter_tb.eno)
ALTER TABLE alter_tb
RENAME COLUMN empno TO eno;

--테이블 구조확인
DESC alter_tb;
--데이터 조회
SELECT * FROM alter_tb;





--ALTER TABLE을 이용한 제약사항 설정


CREATE TABLE alter_cons (
    data VARCHAR2(10)
);

DESC alter_cons;
SELECT * FROM alter_cons;

--NOT NULL 제약사항
ALTER TABLE alter_cons
--MODIFY data NOT NULL; --NOT NULL 특성 부여
MODIFY data NULL; --NOT NULL특성 제거


DESC alter_cons;
SELECT * FROM alter_cons;



--DEFAULT 제약사항
ALTER TABLE alter_cons
--MODIFY data DEFAULT 'HI'; --DEFAULR 특성 부여
MODIFY data DEFAULT NULL; --DEFAULT 특성 제거


--UNIQUE 제약사항
ALTER TABLE alter_cons
ADD CONSTRAINT uk_data UNIQUE ( data ); --UNIQUE 제약사항 부여

ALTER TABLE alter_cons
DROP CONSTRAINT uk_data; --UNIQUE 제약사항 제거


--CHECK 제약사항

ALTER TABLE alter_cons
ADD CONSTRAINT ck_data CHECK ( data>='A' AND data<='Z' ); --CHECK 제약사항 부여

ALTER TABLE alter_cons
DROP CONSTRAINT ck_data; --CHECK 제약사항 제거



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



--데이터 삭제
DELETE alter_tb; --DML
ROLLBACK; --DELETE는 롤백가능

--데이터 삭제
TRUNCATE TABLE alter_tb; --DDL, TRUNCATE TABLE은 롤백 불가능 



