
--COMMENT, 주석, 코멘트
SELECT * FROM emp;

SELECT * FROM user_tab_comments; --테이블 주석 자료사전
SELECT * FROM user_col_comments; --컬럼 주석 자료사전

--테이블에 코멘트 추가하기

COMMENT ON TABLE emp IS '사원정보 테이블';

SELECT * FROM user_tab_comments; --테이블 주석 자료사전
SELECT * FROM user_col_comments; --컬럼 주석 자료사전

--테이블에 코멘트 삭제하기
COMMENT ON TABLE emp IS ''; --지우는건 딱히없고 빈문자열 준다


--컬럼에 코멘트 추가하기
COMMENT ON COLUMN emp.empno IS '사원번호';
COMMENT ON COLUMN emp.ename IS '사원이름';
COMMENT ON COLUMN emp.job IS '직무';
COMMENT ON COLUMN emp.mgr IS '담당자';
COMMENT ON COLUMN emp.hiredate IS '입사일자';
COMMENT ON COLUMN emp.sal IS '급여';
COMMENT ON COLUMN emp.comm IS '상여금';
COMMENT ON COLUMN emp.deptno IS '부서번호';


SELECT * FROM user_tab_comments --테이블 주석 자료사전
WHERE table_name = upper('emp');
SELECT * FROM user_col_comments --컬럼 주석 자료사전
WHERE table_name = upper('emp');



