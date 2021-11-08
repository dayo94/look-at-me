package member.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.dao.face.MemberDao;
import member.dto.Member;
import member.service.face.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

	
	// 로깅 객체
	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);
	
	@Autowired	
	private MemberDao memberDao;

	
	@Override
	public boolean login(Member member) {
		
		logger.info("login 호출 : {}", member);
		 
		if (memberDao.selectCntMemberByMemberInfo(member) >= 1 ) {
			return true; //로그인 인증 성공
		}
		return false; //로그인 인증 실패
	}
	
	@Override
	public void joinMember(Member member) {
		
		logger.info("joinMember 호출 : {}", member);
		
		memberDao.insertMember(member);
		
	}
	
	@Override
	public Member getNick(Member member) {

		Member memberNick = memberDao.selectNickById(member);
		
		
		return memberNick;
	}
	
	
}
