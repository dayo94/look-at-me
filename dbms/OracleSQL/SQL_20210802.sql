-- ����, JOIN

SELECT * FROM emp   -- SMITH, deptno == 20
WHERE empno = 7369;

SELECT * FROM dept  -- 20, RESEARCH
WHERE deptno = 20;


--���� ����
SELECT * FROM emp, dept; --���̺���� ��� ������ ���Ѵ�

SELECT * FROM emp, dept
WHERE emp.deptno = dept.deptno; --����� �����Ͱ� ���� �������� ��ȸ�Ѵ� (���� ����)

-- emp���̺� = 12��, 8�÷�
-- dept���̺� = 4��, 3�÷�

-- emp X dept ���� = 48��(12*4), 11�÷�(8+3)


