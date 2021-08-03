--�������� Subquery


--'king'�� �μ���ȣ ��ȸ : 10

SELECT deptno FROM emp
WHERE ename = upper('king');

SELECT * FROM dept
WHERE deptno = 10;


--���������� �̿��Ͽ� �ذ��ϱ� ���ɺ��� ��
SELECT * FROM dept
WHERE deptno = ( 
    SELECT deptno FROM emp
    WHERE ename = upper('king') );


--������ �̿��Ͽ� �ذ��ϱ�
SELECT D.* FROM dept D, emp E
WHERE D.deptno = e.deptno  --��������
    AND ename = upper('king'); --�Ϲ���ȸ����
    
    
    
    
--QUIZ ��ü ����ӱݺ��� �޿��� ���� ���(emp) ��ȸ�ϱ�
-- ��� : �׷��Լ� avg()


SELECT * FROM emp;

--����, �׷��Լ��� WHERE������ ����� �� ����
SELECT empno, ename 
FROM emp
WHERE avg(sal) < sal;


--���� HAVING���� GROUP BY ���� �־�� ����� �� �ִ�
SELECT empno, ename 
FROM emp
HAVING avg(sal) < sal;


--��������

SELECT empno, ename FROM emp
WHERE sal > (
    SELECT avg(sal) FROM emp
);



--��ȸ�Ǵ� �÷��� ��ü ����ӱ� �߰��ϱ�
SELECT
    empno, ename, ( SELECT round(avg(sal),2) FROM emp ) avg_sal
FROM emp
WHERE sal > (
    SELECT avg(sal) FROM emp ) ;
    
    
--���� �ֱٿ� �Ի��� ��� ��ȸ�ϱ�

SELECT max(hiredate) FROM emp; --���� �ֱٿ� �Ի��� ��¥


SELECT * FROM emp
WHERE hiredate = (
    SELECT MAX(hiredate) FROM emp
);



SELECT empno, ename, MAX(hiredate)
FROM emp
GROUP BY empno, ename; --�� ���ͼ� �߸��� ����

SELECT empno, ename
FROM emp
WHERE hiredate = MAX(hitrdate); --�׷�����ʼ�(HAVING�� �׷���̾��� ��������)



--QUIZ ��ü ��� �Աݺ��� �μ� �� ����ӱ��� ���� �μ�
--deptno, avg_sal �� ��ȸ�Ѵ�

--10  2916.67
--20  2258.33

--SELECT deptno, ( SELECT round(avg(sal),2) FROM emp ) avg_sal
--FROM emp;
--WHERE ( SELECT round(avg(sal),2) FROM emp )


SELECT deptno, round( avg(sal),2 ) avg_sal
FROM emp
GROUP BY deptno
HAVING avg(sal) > (
    SELECT avg(sal) FROM emp )
ORDER BY deptno;

--�ζ��� ��
SELECT * FROM emp; --���̺� ��ȸ

SELECT * FROM ( --�ζ��� �� ��ȸ
    SELECT empno,ename FROM emp
);

SELECT sal FROM ( --sal�� ���ʿ� ��� ��ȸ�Ұ�
    SELECT empno,ename FROM emp
);



--�ζ��κ�� dept���̺� �����ϱ�
SELECT
    E.deptno, D.dname, E.avg_sal
FROM (
    SELECT deptno, round(avg(sal), 2) avg_sal
    FROM emp
    GROUP BY deptno
    HAVING avg(sal) > (
        SELECT avg(sal) FROM emp )
) E
INNER JOIN dept D
    ON E.deptno = D.deptno
ORDER BY deptno;




-- WITH���� �̿��Ͽ� �ζ��κ� ������
WITH E AS
(
    SELECT deptno, round(avg(sal), 2) avg_sal
    FROM emp
    GROUP BY deptno
    HAVING avg(sal) > (
        SELECT avg(sal) FROM emp )
)

SELECT
    E.deptno, D.dname, E.avg_sal
FROM E
INNER JOIN dept D
    ON E.deptno = D.deptno
ORDER BY deptno;











--��Į�� ��������
SELECT
    empno,
    ename,
    deptno,
    ( SELECT dname FROM dept D WHERE D.deptno = E.deptno ) dname,
    ( SELECT loc FROM dept WHERE deptno = E.deptno ) loc
FROM emp E;


--��ȣ ���� �������� (�������) �����̴�����
-- ���������� ���������� ���踦 �̿��ؼ� ��ȸ�Ǵ� ��������
-- ���������� ���̺�� ���������� ���̺��� ������ �������� ������ �ο��ؼ� ����ϴ� ��������
