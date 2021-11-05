package web.service.impl;

import java.util.List;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.dao.face.BoardDao;
import web.dto.Board;
import web.service.face.BoardService;
import web.util.Paging;

@Service
public class BoardServiceImpl implements BoardService {

	// 로깅 객체
	private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);

	@Autowired
	private BoardDao boardDao;

	@Override
	public List<Board> getList(Paging paging) {
		logger.info("service getList 호출");

		List<Board> list = boardDao.selectAll(paging);

		return list;
	}

	@Override
	public Paging getPaging(Paging paramData) {

		int totalCount = boardDao.selectCntAll();

		// Paging객체 생성
		Paging paging = new Paging(totalCount, paramData.getCurPage());

		return paging;
	}

	@Override
	public Board view(int boardno) {

		Board board = boardDao.select(boardno);
		boardDao.hit(boardno);
		
		return board;
	}
	
	
	
}//class
