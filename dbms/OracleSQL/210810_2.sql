
--COMMENT, �ּ�, �ڸ�Ʈ
SELECT * FROM emp;

SELECT * FROM user_tab_comments; --���̺� �ּ� �ڷ����
SELECT * FROM user_col_comments; --�÷� �ּ� �ڷ����

--���̺� �ڸ�Ʈ �߰��ϱ�

COMMENT ON TABLE emp IS '������� ���̺�';

SELECT * FROM user_tab_comments; --���̺� �ּ� �ڷ����
SELECT * FROM user_col_comments; --�÷� �ּ� �ڷ����

--���̺� �ڸ�Ʈ �����ϱ�
COMMENT ON TABLE emp IS ''; --����°� �������� ���ڿ� �ش�


--�÷��� �ڸ�Ʈ �߰��ϱ�
COMMENT ON COLUMN emp.empno IS '�����ȣ';
COMMENT ON COLUMN emp.ename IS '����̸�';
COMMENT ON COLUMN emp.job IS '����';
COMMENT ON COLUMN emp.mgr IS '�����';
COMMENT ON COLUMN emp.hiredate IS '�Ի�����';
COMMENT ON COLUMN emp.sal IS '�޿�';
COMMENT ON COLUMN emp.comm IS '�󿩱�';
COMMENT ON COLUMN emp.deptno IS '�μ���ȣ';


SELECT * FROM user_tab_comments --���̺� �ּ� �ڷ����
WHERE table_name = upper('emp');
SELECT * FROM user_col_comments --�÷� �ּ� �ڷ����
WHERE table_name = upper('emp');



