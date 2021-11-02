package login.dao.face;

import login.dto.Login;

public interface LoginDao {

	
	public void insert(Login loginInfo);
	
	
	/**
	 * 로그인 ID&PW가 일치하는 행의 수 구하기
	 * -> 인증에 활용
	 * @param login - 로그인 정보
	 * @return 일치하는 행의 수
	 */
	public int selectCnt(Login login);


	/**
	 * 전달된 id를 이용하여 사용자 정보를 조회한다
	 * @param loginid
	 * @return
	 */
	public Login selectLoginById(String loginid);


	
	
}
