package login.service.face;

import login.dto.Login;

public interface LoginService {

	
	
	public void join(Login login);
	
	
	
	/**
	 * 로그인 인증 처리
	 * ID&PW를 조회하여 행 카운트를 확잉ㄴ한다
	 * 
	 * 인증성공 - true
	 * 인증실패 - false 
	 * 
	 * @param login
	 * @return
	 */
	public boolean login(Login login);


	/**
	 * 전달되는 id를 이용하여 사용자 정보 조회하기
	 * @param loginid - 조회할 사용자의 id
	 * @return 
	 */
	public Login info(String loginid);
	
	
	
	
	
	
}
