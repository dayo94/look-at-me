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


