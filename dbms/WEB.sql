--����Ŭ sql �ּ�

-- �ڹ��� //�� ���� ����

-- ���� �ּ�ó�� ctrl+/

--SELECT�⺻ �׽�Ʈ

SELECT * FROM bonus; --���ʽ��������̺�
SELECT * FROM dept; --�μ��������̺�

SELECT * FROM emp; --����������̺�

SELECT * FROM salgrade; --�޿�����������̺�

-- tabs ���̺� ���� �ڷ����
SELECT * FROM tabs;



--���̺��� ����(��Ű��, Schema) ������ Ȯ���ϱ�

DESC dept;
DESC emp;


--���̺��� �÷� �� ���� �ڷ����
SELECT * FROM user_tab_columns;


--��ü �÷��� �̿��Ͽ� ���̺� ��ȸ�ϱ�

SELECT * FROM dept;


--�κ� �÷��� �����Ͽ� ���̺� ��ȸ�ϱ�

SELECT dname FROM dept; --�μ��� ��ȸ


SELECT empno, ename
FROM emp;



