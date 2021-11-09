package web.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import web.dao.face.BoardDao;
import web.dto.Board;
import web.dto.BoardFile;
import web.service.face.BoardService;
import web.util.Paging;

@Service
public class BoardServiceImpl implements BoardService {

	// 로깅 객체
	private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);

	// 서블릿 컨텍스트 객체
	@Autowired
	ServletContext context;

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

	@Override
	public void write(Board board, MultipartFile file) {
		logger.info("write()");

		int boardNo = boardDao.getNextBoardno();

		board.setBoardNo(boardNo);

		boardDao.insertBoard(board);

		if (file.getSize() <= 0) {

			logger.info("파일의 크기가 0, 처리 중단");
			return;
		}

		// 파일이 저장될 경로(RealPath)
		String storedPath = context.getRealPath("upload");
		logger.info("upload realPath : {} ", storedPath);

		// upload폴더가 존재하지 않으면 생성한다
		File storedFolder = new File(storedPath);
		if (!storedFolder.exists()) {
			storedFolder.mkdir();

		}

		// 저장될 파일의 이름 생성하기
		String filename = file.getOriginalFilename(); // 원본파일명
		filename += UUID.randomUUID().toString().split("-")[4]; // UUID추가

		logger.info("filename : {} ", filename);

		// 저장될 파일의 정보 객체 - java.util.File
		File dest = new File(storedFolder, filename);

		try {
			// 업로드된 파일을 저장하기
			file.transferTo(dest);

		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		// DB에 기록할 정보 객체 - DTO

		BoardFile boardFile = new BoardFile();
		boardFile.setOriginName(file.getOriginalFilename());
		boardFile.setStoredName(filename);
		boardFile.setBoardNo(boardNo);

		boardDao.insertBoardFile(boardFile);

	}

	@Override
	public BoardFile getFile(int boardno) {

		logger.info("boardno: {}", boardno);

		BoardFile boardFile = boardDao.selectFileByBoardNo(boardno);

		logger.info("boardFile: {}", boardFile);

		return boardFile;
	}

	@Override
	public Board viewBoard(int boardno) {
		Board board = boardDao.select(boardno);

		return board;
	}

//	@Override
//	public void boardUpdate(Board board) {
//
//		boardDao.updateBoard(board);
//
//	}

	@Override
	public void boardDelete(int boardno) {

		if (boardDao.selectFileByBoardNo(boardno) != null) {
			boardDao.deleteBoardFile(boardno);
			boardDao.deleteBoard(boardno);
		} else if (boardDao.selectFileByBoardNo(boardno) == null) {
			boardDao.deleteBoard(boardno);
		}

	}

	@Override
	public void boardUpdate(Board board, MultipartFile file) {

		if (file.getSize() <= 0) {

			logger.info("파일의 크기가 0, 처리 중단");
			boardDao.updateBoard(board);
			return;
		}


		if (file.getOriginalFilename() != null
				&& boardDao.selectFileByBoardNo(board.getBoardNo()) != null) {

			// 파일이 저장될 경로(RealPath)
			String storedPath = context.getRealPath("upload");
			logger.info("upload realPath : {} ", storedPath);

			// upload폴더가 존재하지 않으면 생성한다
			File storedFolder = new File(storedPath);
			if (!storedFolder.exists()) {
				storedFolder.mkdir();

			}

			// 저장될 파일의 이름 생성하기
			String filename = file.getOriginalFilename(); // 원본파일명
			filename += UUID.randomUUID().toString().split("-")[4]; // UUID추가

			logger.info("filename : {} ", filename);

			// 저장될 파일의 정보 객체 - java.util.File
			File dest = new File(storedFolder, filename);

			try {
				// 업로드된 파일을 저장하기
				file.transferTo(dest);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

			// DB에 기록할 정보 객체 - DTO

			BoardFile boardFile = new BoardFile();
			boardFile.setOriginName(file.getOriginalFilename());
			boardFile.setStoredName(filename);
			boardFile.setBoardNo(board.getBoardNo());
		
			boardDao.updateBoard(board);
			boardDao.updateBoardFile(boardFile);

		} else if (file.getOriginalFilename() != null
				&& boardDao.selectFileByBoardNo(board.getBoardNo()) == null) {

			// 파일이 저장될 경로(RealPath)
			String storedPath = context.getRealPath("upload");
			logger.info("upload realPath : {} ", storedPath);

			// upload폴더가 존재하지 않으면 생성한다
			File storedFolder = new File(storedPath);
			if (!storedFolder.exists()) {
				storedFolder.mkdir();

			}

			// 저장될 파일의 이름 생성하기
			String filename = file.getOriginalFilename(); // 원본파일명
			filename += UUID.randomUUID().toString().split("-")[4]; // UUID추가

			logger.info("filename : {} ", filename);

			// 저장될 파일의 정보 객체 - java.util.File
			File dest = new File(storedFolder, filename);

			try {
				// 업로드된 파일을 저장하기
				file.transferTo(dest);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

			// DB에 기록할 정보 객체 - DTO

			BoardFile boardFile = new BoardFile();
			boardFile.setOriginName(file.getOriginalFilename());
			boardFile.setStoredName(filename);
			boardFile.setBoardNo(board.getBoardNo());

			boardDao.insertBoardFile(boardFile);
			boardDao.updateBoard(board);

		}

	}

	
	
	@Override
	public BoardFile getFileByFileNo(int fileNo) {

		logger.info("fileNo: {}", fileNo);

		BoardFile boardFile = boardDao.selectByFileNo(fileNo);

		logger.info("boardFile: {}", boardFile);

		return boardFile;
	}
	
	
	
	
	
	
	
	
	
}// class
