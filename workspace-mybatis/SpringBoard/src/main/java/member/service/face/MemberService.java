package member.service.face;

import member.dto.Member;

public interface MemberService {

	
	public boolean login(Member member);
	
	public void joinMember(Member member);

	public Member getNick(Member member);
	
	
	
	
	
}
