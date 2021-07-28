-- �÷��� Alias(��Ī)�� �����Ͽ� ��ȸ�ϱ�
SELECT
    empno AS "eno", --�����ȣ
    ename AS ����̸�, --����̸�
    sal AS "�޿�", --�޿�
    deptno --�μ�����
FROM emp ���; --���̺� Alias������ AS Ű���带 ���� �ʾƾ� �Ѵ�










--WHERE��

SELECT * FROM emp;

-- �޿�(sal)�� 2000 �̸��� ���
SELECT * FROM emp
WHERE sal < 2000;

--�������(job - SALESMAN)�鸸 ��ȸ�ϱ�
SELECT * FROM emp
WHERE job = 'SALESMAN';

--�޿�(sal)�� 2500�� �Ѱ� ������(job - MANAGER)�� �ƴ� ���
SELECT * FROM emp
WHERE sal > 2500
--    AND job <> 'MANAGER';
    AND NOT( job = 'MANAGER' );





-- BETWEEN a AND b
-- �����ȣ(empno)�� 7700~7900�� ������� ��ȸ�ϱ�
SELECT empno, ename FROM emp
WHERE empno BETWEEN 7700 AND 7900; -- 7700����, 7900����
-- CLARK, KING, TURNER, JAMES

SELECT empno, ename FROM emp
WHERE empno >= 7700 AND empno <= 7900;


-- �����ȣ�� 7700~7900�� �ƴ� ����� ��ȸ�ϱ�
SELECT empno, ename FROM emp
WHERE NOT( empno BETWEEN 7700 AND 7900 );

SELECT empno, ename FROM emp
WHERE empno NOT BETWEEN 7700 AND 7900;


-- ����̸�(ename)�� 'ALLEN' ~ 'KING' ������ ����� ��ȸ�ϱ�
SELECT empno, ename FROM emp
--WHERE ename BETWEEN 'ALLEN' AND 'KING'; --����������� ���ڸ� ���Ѵ� (ASCII�� ����)
WHERE ename >= 'ALLEN' AND ename <= 'KING';





-- IN (list)
SELECT empno, ename FROM emp
WHERE empno IN ( 7521, 7654, 7839, 7902 );

SELECT empno, ename FROM emp
WHERE empno NOT IN ( 7521, 7654, 7839, 7902 );

SELECT empno, ename FROM emp
WHERE ename IN ( 'SMITH', 'ALLEN', 'KING', 'JAMES', 'JAVA' );

SELECT empno, ename FROM emp
WHERE ename = 'SMITH'
    OR ename = 'ALLEN'
    OR ename = 'KING'
    OR ename = 'JAMES'
    OR ename = 'JAVA';





-- LIKE
SELECT empno, ename FROM emp
--WHERE ename LIKE '%R%'; -- �̸��� R�� �����ϴ� ��� ���
--WHERE ename LIKE '_A%'; -- �̸��� �ι�° ���ĺ��� A�� ��� ���
--WHERE ename LIKE '%RD'; -- �̸��� RD�� ������ ��� ���
WHERE ename NOT LIKE '%R%'; -- �̸��� R�� �������� �ʴ� ��� ���


-- LIKE�����ڿ� IN�����ڸ� ���� ����ϴ� ������ ����
SELECT empno, ename FROM emp
--WHERE ename LIKE ( IN ( '%R%', '%L%' ) ); --���� ����, �ȵ�
WHERE ename LIKE '%R%'
    OR ename LIKE '%L%';


-- ���� ������ ��
SELECT * FROM emp
WHERE ename = 'SMITH'; -- INDEX-SCAN -> FULL-SCAN

-- ���� ����ϸ� �ȵȴ�! - ���� ������ ���� �� LIKE������ ����ϸ� �ȵ�
--  LIKE�����ڴ� FULL-SCAN(��ü Ž��)���� �۵��Ѵ� -> ������
SELECT * FROM emp
WHERE ename LIKE 'SMITH';





-- IS NULL
SELECT * FROM emp
--WHERE comm = null; -- ��ȸ���� ����
--WHERE mgr = null; -- ��ȸ���� ����
--WHERE mgr IS NULL; --��ȸ��
WHERE mgr IS NOT NULL; --��ȸ��





--WHERE ����
-- SELECT empno, ename, deptno FROM emp
-- WHERE	 
-- ������ �̿��Ͽ� �ذ��� ��

 -- �μ���ȣ�� 30�̰� ������ ������ ��� ��ȸ
--	ALLEN, WARD, MARTIN, TURNER
SELECT empno, ename, deptno FROM emp
WHERE deptno = 30
    AND job = 'SALESMAN';

 -- �μ���ȣ�� 30�̰� ������ ������ �ƴ� ��� ��ȸ
--	BLAKE, JAMES
SELECT empno, ename, deptno FROM emp
WHERE deptno = 30
    AND job ^= 'SALESMAN';


 -- �μ���ȣ�� 30�� �ƴϰ� ������ ������ �ƴ� ��� ��ȸ
--	SMITH, JONES, CLARK, KING, FORD, MILLER
SELECT empno, ename, deptno FROM emp
WHERE deptno != 30
    AND job != 'SALESMAN';


 -- �����ȣ�� 7782���� 7900 ������ ��� ��ȸ
--	CLARK, KING, TURNER, JAMES
SELECT empno, ename, deptno FROM emp
--WHERE empno BETWEEN 7782 AND 7900;
WHERE empno >= 7782 AND empno <= 7900;

 -- ������� 'A'���� 'C'�� �����ϴ� ��� ��ȸ
--	ALLEN, BLAKE, CLARK
SELECT empno, ename, deptno FROM emp
--WHERE ename BETWEEN 'A' AND 'C'; --�߸���, C�� �����ϴ� �̸����� ��ȸ���� ����
--WHERE ename BETWEEN 'A%' AND 'C%'; --�߸���, %���Ĺ��ڴ� LIKE������ ����Ѵ�!
--WHERE ename BETWEEN 'A' AND 'D'; --�߸���, 'D'�� �����Ͽ� ��ȸ�ȴ�
--WHERE ename BETWEEN 'A' AND 'C~'; --��ȸ�� �ȴ�
WHERE ename >='A' AND ename < 'D'; --������ ���ǽ�


 -- �μ���ȣ�� 10 �Ǵ� 30�� ��� ��ȸ (IN ���)
--	ALLEN, WARD, MARTIN, BLAKE, CLARK, KING, TURNER, JAMES, MILLER
SELECT empno, ename, deptno FROM emp
WHERE deptno IN ( 10, 30 );





-- ORDER BY ��
SELECT * FROM emp
--ORDER BY empno; -- empno�÷��� �������� �������� ���� (�⺻ ��������)
--ORDER BY empno DESC; -- empno�÷��� �������� �������� ���� (DESC)
--ORDER BY empno ASC; -- empno�÷��� �������� �������� ���� (ASC)
--ORDER BY ename DESC; -- ename�÷��� �������� �������� ����
ORDER BY hiredate; --hiredate�÷��� �������� �������� ����


-- deptno �������� ������ �� �ڿ�
--deptno�� ���� ������ ���� �׷� ������ ename�� �������� �����Ѵ�
SELECT empno, ename, deptno FROM emp
ORDER BY deptno DESC, ename DESC;


-- null�� ���� �÷� �����ϱ� + null�� ����
SELECT empno, ename, deptno, comm FROM emp
WHERE comm IS NOT NULL
ORDER BY comm DESC;


-- null�� ���� �÷� �����ϱ� + null���� ����������
SELECT empno, ename, deptno, comm FROM emp
ORDER BY comm DESC NULLS LAST;
--ORDER BY comm ASC NULLS FIRST;


-- ��ȸ ��� �÷����� �������� �ʾƵ� ���� ���� �÷����� ��� ����
SELECT empno, ename, comm
FROM emp
ORDER BY sal;





--DISTINCT
SELECT DISTINCT * FROM emp; --�ߺ����� ����, �߸� ����� ���

--30 SALESMAN �����Ͱ� 4�� ��ȸ��
SELECT deptno, job FROM emp
ORDER BY deptno, job;

--30 SALESMAN �����Ͱ� �ߺ����ŵǾ� 1������ ��ȸ��
SELECT DISTINCT deptno, job FROM emp
ORDER BY deptno, job;


--DISTCINT�� �߸��� ���� - DISTINCT�� �÷��� �����ϴ� Ű���尡 �ƴϴ�
SELECT
    DISTINCT deptno,
    DISTINCT job
FROM emp;

--DISTCINT�� �߸��� ���� - DISTINCT�� �÷��� �����ϴ� Ű���尡 �ƴϴ�
SELECT empno, DISTINCT deptno FROM emp
ORDER BY deptno, empno;


-- �ٹ����� ������� ���� ����
SELECT DISTINCT job FROM emp
ORDER BY job;

-- �μ��� ���� ��ȸ�ϱ�
SELECT DISTINCT deptno, job FROM emp
ORDER BY deptno, job;




-- ������ ���� ������, ||
SELECT ename, job
FROM emp;

SELECT ename || job AS EMPLOYEE
FROM emp;

SELECT empno, ename || ' is ' || job AS employee
FROM emp;

SELECT ename || ' is hired at ' || hiredate AS hired
FROM emp;

-- Ű���� -> �빮�� (SELECT, FROM, ...)
-- �ĺ��� -> �ҹ��� (�÷���, ���̺��)
