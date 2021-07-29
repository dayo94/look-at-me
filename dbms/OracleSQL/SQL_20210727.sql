--오라클 sql 주석

-- 자바의 //와 같은 역할

-- 한줄 주석처리 ctrl+/

--SELECT기본 테스트

SELECT * FROM bonus; --보너스정보테이블
SELECT * FROM dept; --부서정보테이블

SELECT * FROM emp; --사원정보테이블

SELECT * FROM salgrade; --급여등급정보테이블

-- tabs 테이블 정보 자료사전
SELECT * FROM tabs;



--테이블의 구조(스키마, Schema) 간단히 확인하기

DESC dept;
DESC emp;


--테이블의 컬럼 상세 정보 자료사전
SELECT * FROM user_tab_columns;


--전체 컬럼을 이용하여 테이블 조회하기

SELECT * FROM dept;


--부분 컬럼을 지정하여 테이블 조회하기

SELECT dname FROM dept; --부서명 조회


SELECT empno, ename
FROM emp;



