--  DCL DATA CONTROL LANGUAGE

--권한

--권한 자료사전
SELECT * FROM user_sys_privs; --사용자계정으로 부여한 시스템 권한
SELECT * FROM user_tab_privs; --사용자계정으로 부여한 객체 권한


SELECT * FROM dba_sys_privs --관리자계정으로 부여한 시스템 권한
WHERE GRANTEE = 'SCOTT';
SELECT * FROM dba_tab_privs; --관리자계정으로 부여한 객체 권한


--(SCOTT계정 이용)
--privs_test 사용자계정 생성하기 (privs_test/1234)
CREATE USER privs_test IDENTIFIED BY 1234; --에러, 권한 불충분


--(system계정 이용)
CREATE USER privs_test IDENTIFIED BY 1234;

--SQL PIUS 이용해서 privs_test/1234 접속 테스트
-- -> 접속 실패, CREATE SESSION권한이 없어서 DB접속이 안된다

--(system계정 이용)
GRANT CREATE SESSION
TO privs_test;

SELECT * FROM dba_sys_privs
WHERE grantee = 'PRIVS_TEST';


--privs_test계정에 CREATE SESSION 권한 회수하기
REVOKE CREATE SESSION
FROM privs_test;

SELECT * FROM dba_sys_privs
WHERE grantee = 'PRIVS_TEST';


SELECT * FROM dba_sys_privs
WHERE grantee = 'SCOTT';

--CREATE SESSION이 없음 -> 롤(권한집합)을 이용해서 부여받고 있다


--SCOTT계정의 롤 확인
SELECT * FROM dba_role_privs
WHERE grantee = 'SCOTT';



SELECT * FROM dba_sys_privs
WHERE grantee IN ('RESOURCE','CONNECT')
ORDER BY grantee, privilege;



--ROLE을 포함한 시스템 권한 조회
SELECT * FROM dba_sys_privs
WHERE grantee IN (
    SELECT granted_role FROM DBA_ROLE_PRIVS
    WHERE grantee=UPPER('scott') 
)
UNION
SELECT * FROM dba_sys_privs
WHERE grantee = UPPER('scott');


--롤을 이용하여 기본시스템권한을 PRIVS-TEST에 부여하기

GRANT RESOURCE, CONNECT
TO privs_test;



--인덱스

--인덱스 관련 자료사전
SELECT * FROM user_indexes
WHERE table_name = 'EMP';


--인덱스가 적용된 컬럼 자료사전
SELECT * FROM user_ind_columns
--WHERE table_namee = 'EMP';
WHERE index_name = 'PK_EMP';



--SALGRADE 테이블에 적용된 인덱스 조회
SELECT * FROM user_indexes
WHERE table_name = 'SALGRADE';

SELECT * FROM SALGRADE;



--인덱스 객체 생성 : 중복값 허용
CREATE INDEX idx_salgrade
ON salgrade ( grade );


SELECT * FROM SALGRADE
ORDER BY GRADE;

INSERT INTO SALGRADE VALUES (5,7777,8888);

--인덱스를 생성한 후에 테이블에 변화 (INSERT, UPDATE, DELETE)가 있더라도 인덱스에 반영되지 않는다
-- -> 인덱스를 직접 재구성해야한다

--인덱스 재생성하기
ALTER INDEX idx_salgrade REBUILD;

--인덱스 삭제하기
DROP INDEX idx_salgrade;


--UNIQUE인덱스 생ㅇ성하기  : 에러, 중복값을 가지고 있어서 생성불가
CREATE UNIQUE INDEX idx_salgrade
ON salgrade ( grade );



SELECT * FROM SALGRADE;
--DELETE salgrade
--WHERE GRADE = 5 AND losal = 7777;


--UNIQUE인덱스 생ㅇ성하기 
CREATE UNIQUE INDEX idx_salgrade
ON salgrade ( grade );


INSERT INTO SALGRADE VALUES (5,7777,8888); --중복값 추가 불가






--부서, 이름으로 조회

SELECT * FROM EMP
WHERE DEPTNO = 10
    AND ENAME = 'MILLER';




--복합 컬럼 인덱스

CREATE INDEX IDX_EMP_DEPTNO_ENAME
ON EMP ( DEPTNO,ENAME );


--뷰

--(SCOTT계정 이용)
--뷰 객체 생성
CREATE VIEW TEST_VIEW
AS (
    SELECT * FROM EMP
    WHERE empno < 7600
);


--(SYSTEM계정 이용)
--SCOTT계정에 CREATE VIEW 권한 부여
GRANT CREATE VIEW
TO SCOTT;


--(SCOTT계정 이용)
--뷰 객체 생성
CREATE VIEW TEST_VIEW
AS (
    SELECT * FROM EMP
    WHERE empno < 7600
);

DROP VIEW TEST_VIEW;


--뷰 자료사전
SELECT * FROM user_views
WHERE view_name = UPPER('TEST_VIEW');



--뷰를 이용한 조회
SELECT * FROM TEST_VIEW;

--인라인 뷰를 이용한 조회
SELECT * FROM (
    SELECT "EMPNO","ENAME","JOB","MGR","HIREDATE","SAL","COMM","DEPTNO" FROM EMP
    WHERE empno < 7600
);


CREATE OR REPLACE VIEW TEST_VIEW
AS (
    SELECT empno, ename FROM EMP
    WHERE empno < 7700
);

--뷰를 이용한 조회
SELECT * FROM TEST_VIEW;

SELECT * FROM user_views;

--뷰를 이용한 데이터 삽입
INSERT INTO TEST_VIEW ( empno, ename )
VALUES ( 8000, '뷰TEST' ); --뷰의 조건문 범위를 벗어나지만 원본테이블에는 들어감

--뷰를 이용한 데이터 삽입
INSERT INTO TEST_VIEW ( empno, ename )
VALUES ( 7000, '뷰TEST' );


INSERT INTO TEST_VIEW ( empno, deptno ) --서브쿼리에 없는 컬럼은 X
VALUES ( 8500,30 );

SELECT * FROM EMP;

--WITH CHECK OPTION 적용하기
-- -> 뷰를 통해서 조회되지 않는 데이터는 INSERT 할 수 없도록 설정한다
CREATE OR REPLACE VIEW TEST_VIEW
AS (
    SELECT empno, ename FROM emp
    WHERE empno < 7700
)
WITH CHECK OPTION;


--DELETE EMP
--	WHERE empno = 9000; --삭제할 행 지정하기


INSERT INTO TEST_VIEW VALUES ( 9000, 'TEST!!'); --에러, 조회가능 범위를 벗어난 데이터
INSERT INTO TEST_VIEW VALUES ( 7001, 'TEST!!'); 


--시퀀스, SEQUENCE

--시퀀스 생성
CREATE SEQUENCE seq_emp;

--시퀀스 자료사전
SELECT * FROM user_sequences;


--시퀀스의 다음값 : 시퀀스이름.nextval
--시퀀스의 현재값 : 시퀀스이름.currval

SELECT seq_emp.nextval FROM dual;
SELECT seq_emp.currval FROM dual;


INSERT INTO emp (empno, ename)
VALUES (seq_emp.nextval, 'GGGGGGG');

SELECT * FROM EMP
WHERE EMPNO < 1000;

DROP SEQUENCE seq_emp; 


--옵션(조건) 을 부여해서 시퀀스 생성하기
CREATE SEQUENCE TEST_SEQ
START WITH 2001
INCREMENT BY 100
MINVALUE 2001
MAXVALUE 3000;


--2001부터 100씩 증가한다, 3000을 넘어갈 수 없다
SELECT TEST_SEQ.NEXTVAL FROM DUAL;



--CYCLE(순환구조) 부여하기 -> 에러, 1사이클의 개수가 캐시의 개수보다 적음
ALTER SEQUENCE TEST_SEQ
CYCLE;

SELECT * FROM user_sequences
WHERE sequence_name = 'TEST_SEQ';



ALTER SEQUENCE TEST_SEQ
CACHE 5 --캐시의 개수를 5개로 변경함
CYCLE;

--순환구조(CYCLE)이 적용되어 에러없이 NEXTVAL을 생성한다
SELECT TEST_SEQ.NEXTVAL FROM DUAL;




