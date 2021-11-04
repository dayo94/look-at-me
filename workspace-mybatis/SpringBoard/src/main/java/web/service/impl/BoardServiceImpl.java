package web.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.dao.face.BoardDao;
import web.dto.Board;
import web.dto.Paging;
import web.service.face.BoardService;

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
	public Paging getPaging(HttpServletRequest req) {

		// 전달파라미터 curPage 파싱
		String param = req.getParameter("curPage");
		int curPage = 0;
		if (param != null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		} else {
			System.out.println("[WARNING] curPage값이 null이거나 비어있습니다");
		}

		// Board 테이블의 총 게시글 수를 조회한다
		int totalCount = boardDao.selectCntAll();

		// Paging객체 생성
		Paging paging = new Paging(totalCount, curPage);

		return paging;
	}

}
