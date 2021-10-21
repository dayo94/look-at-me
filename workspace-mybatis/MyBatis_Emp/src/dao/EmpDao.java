package dao;

import java.util.List;

import dto.Emp;

public interface EmpDao {

	/**
	 * 전체 정보 조회
	 * 
	 * @return 조회된 전체 사원의 목록
	 */
	public List<Emp> selectAll();
	
	/**
	 * 사원 번호를 이용하여 사원 정보를 조회한다
	 * 
	 * @param selectEmp - 조회할 사원 번호를 가진 DTO객체
	 * @return 조회된 사원 정보 DTO객체
	 */
	public Emp selectByEmpNo(Emp selectEmp);

	/**
	 * 신규 사원 정보 삽입
	 * 
	 * @param insertEmp - 새로 삽입할 사원 정보 DTO객체
	 */
	public void insertEmp(Emp insertEmp);
	
	/**
	 * 사원 번호를 이용하여 사원 정보를 삭제한다
	 * 
	 * @param deleteEmp - 삭제할 사원 번호를 가진 DTO객체
	 */
	public void deleteByEmpNo(Emp deleteEmp);

}
