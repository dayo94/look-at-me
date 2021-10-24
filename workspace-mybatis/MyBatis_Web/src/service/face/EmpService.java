package service.face;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.Emp;

public interface EmpService {

	/**
	 * 전체 정보 조회하기
	 * 
	 * @return 조회된 전체 사원들 정보 목록
	 */
	public List<Emp> getList();
	
	/**
	 * 전달파라미터 empno 파싱하기
	 * 
	 * @param req - 요청 정보 객체
	 * @return 파싱된 empno값을 저장한 Emp DTO객체
	 */
	public Emp getParamEmpno(HttpServletRequest req);

	/**
	 * 사원 정보 상세 조회
	 * 
	 * @param emp - 조회할 empno를 가진 DTO객체
	 * @return 조회된 사원의 상세 정보 DTO객체
	 */
	public Emp getEmpDetail(Emp emp);
	
}


















