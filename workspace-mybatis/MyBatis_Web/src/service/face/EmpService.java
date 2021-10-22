package service.face;

import java.util.List;

import dto.Emp;

public interface EmpService {

	
	
	/**
	 * 전체 정보 조회하기
	 * 
	 * @return 조회된 전체 사원들 정보 목록
	 */
	public List<Emp> getList();
	
	
	
	
}
