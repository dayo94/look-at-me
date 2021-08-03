--서브쿼리 Subquery


--'king'의 부서번호 조회 : 10

SELECT deptno FROM emp
WHERE ename = upper('king');

SELECT * FROM dept
WHERE deptno = 10;


--서브쿼리를 이용하여 해결하기 성능별로 ㅠ
SELECT * FROM dept
WHERE deptno = ( 
    SELECT deptno FROM emp
    WHERE ename = upper('king') );


--조인을 이용하여 해결하기
SELECT D.* FROM dept D, emp E
WHERE D.deptno = e.deptno  --조인조건
    AND ename = upper('king'); --일반조회조건


