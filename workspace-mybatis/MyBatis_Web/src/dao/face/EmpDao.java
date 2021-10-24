package dao.face;

import java.util.List;

import dto.Emp;

public interface EmpDao {

	/**
	 * 전체 조회하기
	 * 
	 * @return 조회된 전체 결과 리스트
	 */
	public List<Emp> selectAll();

	/**
	 * empno를 이용한 사원 정보 조회
	 * 
	 * @param emp - 조회할 empno를 가진 DTO 객체
	 * @return 상세 조회 결과 DTO객체
	 */
	public Emp selectByEmpno(Emp emp);
	
}


















