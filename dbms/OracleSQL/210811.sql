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

