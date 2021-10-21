package dao;

import java.util.List;

import dto.Emp;

public interface EmpDao {

	/**
	 * ��ü ���� ��ȸ
	 * 
	 * @return ��ȸ�� ��ü ����� ���
	 */
	public List<Emp> selectAll();
	
	/**
	 * ��� ��ȣ�� �̿��Ͽ� ��� ������ ��ȸ�Ѵ�
	 * 
	 * @param selectEmp - ��ȸ�� ��� ��ȣ�� ���� DTO��ü
	 * @return ��ȸ�� ��� ���� DTO��ü
	 */
	public Emp selectByEmpNo(Emp selectEmp);

	/**
	 * �ű� ��� ���� ����
	 * 
	 * @param insertEmp - ���� ������ ��� ���� DTO��ü
	 */
	public void insertEmp(Emp insertEmp);
	
	/**
	 * ��� ��ȣ�� �̿��Ͽ� ��� ������ �����Ѵ�
	 * 
	 * @param deleteEmp - ������ ��� ��ȣ�� ���� DTO��ü
	 */
	public void deleteByEmpNo(Emp deleteEmp);

}
