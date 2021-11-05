package member.dao.face;

import member.dto.Member;

public interface MemberDao {

	public int selectCntMemberByMemberInfo(Member member);

	
	
	
	public void insertMember(Member memberInfo);
	
	
	
}
