SELECT * FROM emp, dept
WHERE emp.deptno = dept.deptno; --(���� ����)

SELECT deptno FROM emp, dept --����, deptno�÷��� ���̺� �������� ����
WHERE emp.deptno = dept.deptno;



SELECT ename,empno,emp.deptno,dept.deptno FROM emp, dept
WHERE emp.deptno = dept.deptno;



--���̺��̸��� ALIAS �ٿ� �ۼ��ϸ� ���ϴ�
SELECT ename, empno, E.deptno FROM emp E, dept D
WHERE E.deptno = D.deptno;





--����Ŭ EQUI JOIN, �����

SELECT ename, empno, E.deptno, dname 
FROM emp E, dept D
WHERE E.deptno = D.deptno --��������
    AND empno > 7600 --�Ϲ� ��ȸ ����
ORDER BY deptno, empno; --����




--ANSI, INNER JOIN ���� ����

SELECT empno, ename, E.deptno, dname
FROM emp E --���δ�����̺�
INNER JOIN dept D --�������̺�
    ON E.deptno = d.deptno --��������
WHERE empno > 7600 --�Ϲ���ȸ����
ORDER BY deptno, empno; --����


--NON-EQUI JOIN �� ����

SELECT * FROM emp;
SELECT * FROM salgrade;


--����Ŭ ����
SELECT ename, sal, grade
FROM emp, salgrade
WHERE sal BETWEEN losal AND hisal --��������
ORDER BY grade, sal;


--ANSI����
SELECT ename, sal, grade
FROM emp
INNER JOIN salgrade
    ON sal BETWEEN losal AND hisal --��������
ORDER BY grade, sal;


--SELF JOIN ��ü ����

SELECT * FROM emp EMPLOTEE;
SELECT * FROM emp MANAGER;


--����Ŭ
SELECT
    E.empno, E.ename, E.mgr, M.empno MGRNO,  M.ename MGRNAME
FROM emp E, emp M
WHERE E.mgr = M.empno --��������
ORDER By E.empno;




--ANSI
SELECT
    E.empno, E.ename, E.mgr, M.empno MGRNO,  M.ename MGRNAME
FROM emp E 
INNER JOIN emp M
    ON E.mgr = M.empno --��������
ORDER By E.empno;



--CROSS JOIN ��ȣ����

SELECT * FROM emp, dept; --�������Ǿ�����ȸ

SELECT * FROM emp
CROSS JOIN dept;



--NATURAL JOIN �ڿ����� �Ⱦ��°�����

SELECT *
FROM emp
NATURAL JOIN dept
ORDER BY deptno, empno;


--USING Ű����
--JOINŰ����� �Բ� ��� ����
--���� �÷��� �����Ѵ�
--������ ���� �÷��� �����Ѵ�
SELECT * FROM emp
INNER JOIN dept
USING ( deptno );


--INNER JOIN���� INNERŰ���� ���� ����
SELECT * FROM emp E
JOIN dept D
    ON E.deptno = D.deptno;

SELECT * FROM emp E
JOIN dept D USING ( deptno );


--������� �ٹ����� �μ��� ��ȣ
SELECT DISTINCT deptno FROM emp;

--�μ���ȣ
SELECT deptno FROM dept;

SELECT * FROM dept
WHERE deptno = 40;



--OUTER JOIN �ܺ�����

--����Ŭ ����

SELECT empno, ename, D.deptno, dname
FROM emp E, dept D
WHERE E.deptno(+) = d.deptno --��������
ORDER BY deptno, empno;


--ANSI ����

SELECT empno, ename, D.deptno, dname
FROM emp E
RIGHT OUTER JOIN dept D --��ġ�Ѱ� �ݴ���. ���ʿ� (+) �����ϱ� �������� �����ش�
    ON E.deptno = d.deptno --��������
ORDER BY deptno, empno;




SELECT
    E.empno, E.ename, E.mgr, M.ename MGR_NAME
FROM emp E, emp M
WHERE E.mgr = m.empno(+)
ORDER BY E.empno;


SELECT
    E.empno, E.ename, E.mgr, M.ename MGR_NAME
FROM emp E
LEFT OUTER JOIN emp M
    ON E.mgr = m.empno
ORDER BY E.empno;


--FULL OUTER JOIN �׽�Ʈ ������
DROP TABLE test1; --���̺� ����
DROP TABLE test2; --���̺� ����
CREATE TABLE test1 ( no NUMBER ); --���̺� ����
CREATE TABLE test2 ( no NUMBER ); --���̺� ����

DELETE test1; --���̺� ������ ��ü ����
INSERT INTO test1 VALUES ( 10 ); --������ ����
INSERT INTO test1 VALUES ( 20 ); --������ ����
INSERT INTO test1 VALUES ( 30 ); --������ ����

DELETE test2; --���̺� ������ ��ü ����
INSERT INTO test2 VALUES ( 10 ); --������ ����
INSERT INTO test2 VALUES ( 20 ); --������ ����
INSERT INTO test2 VALUES ( 40 ); --������ ����

SELECT * FROM test1; --10, 20, 30
SELECT * FROM test2; --10, 20, 40


--��������
SELECT * FROM test1 T1 ,test2 T2
WHERE T1.no = T2.no;

--�ܺ�����
SELECT * FROM test1 T1 ,test2 T2
WHERE T1.no(+) = T2.no; --����TI���̺� null �߰�


SELECT * FROM test1 T1 ,test2 T2
WHERE T1.no = T2.no(+); --������T2���̺� null �߰�

--���� (+)�����ڴ� ���������� ���� �÷��� ���ÿ� ����Ҽ�����
SELECT * FROM test1 T1 ,test2 T2
WHERE T1.no(+) = T2.no(+); 


--FULL OUTER JOIN ���� ���̺� ��� null �߰� (ANSI)���� ����

SELECT * FROM test1 T1
FULL OUTER JOIN test2 T2
    ON T1.no = T2.no; 

















    




