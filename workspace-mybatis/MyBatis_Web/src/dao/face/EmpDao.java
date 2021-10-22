package dao.face;

import java.util.List;

import dto.Emp;

public interface EmpDao {

	
	
	/**
	 * 전체 조회하기
	 * 
	 * @retur 조회된 전체 결과 리스트
	 */
	public List<Emp> selectAll();
	
	
	public Emp selectByEmpno(int empno);
	
}
