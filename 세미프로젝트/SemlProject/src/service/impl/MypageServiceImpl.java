package service.impl;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.util.Iterator;
import java.util.List;
//import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import common.JDBCTemplate;
import dao.face.MypageDao;
import dao.impl.MypageDaoImpl;
import dto.Attachment_profile;
import dto.Custom_board;
import dto.Free_board;
import dto.User_info;
import service.face.MypageService;

public class MypageServiceImpl implements MypageService {

	private MypageDao mypageDao = new MypageDaoImpl();

	@Override
	public List<User_info> getList() {
		return mypageDao.selectAll(JDBCTemplate.getConnection());

	}

	@Override
	public User_info getLoginUser_info(HttpServletRequest req) {

		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		User_info user_info = new User_info();

		user_info.setUser_email(req.getParameter("user_email"));
		user_info.setUser_password(req.getParameter("user_password"));

		return user_info;

	}

	@Override
	public boolean login(User_info user_info) {

		if (mypageDao.selectCntUser_infoByUseremailUserpassword(JDBCTemplate.getConnection(), user_info) > 0) {
			return true; // 로그인 성공
		} else {
			return false; // 로그인 실패
		}

	}

	@Override
	public User_info info(User_info user_info) {

		return mypageDao.selectUser_infoByUser_email(JDBCTemplate.getConnection(), user_info);
	}

	@Override
	public User_info getUser_no(HttpServletRequest req) {
		// user_no를 저장할 객체 생성
		User_info user_no = new User_info();

		// user_no 전달파라미터 검증 - null, ""
		String param = req.getParameter("user_no");
		if (param != null && !"".equals(param)) {

			// user_no 전달파라미터 추출
			user_no.setUser_no(Integer.parseInt(param));
		}

		// 결과 객체 반환
		return user_no;

	}
//
//	@Override
//	public void update(HttpServletRequest req) {
//
////		// 유저정보 DTO객체
//		User_info user_info = null;
//
//		// 첨부파일 정보 DTO객체
//		Attachment attachment = null;
//
//		// 파일업로드 형태의 데이터가 맞는지 검사
//		boolean isMultipart = false;
//		isMultipart = ServletFileUpload.isMultipartContent(req);
//
//		if (!isMultipart) {
//			System.out.println("[ERROR] multipart/form-data 형식이 아님");
//
//			return;
//		}
//
//		user_info = new User_info();
//
//		// 디스크기반 아이템 팩토리
//		DiskFileItemFactory factory = new DiskFileItemFactory();
//
//		// 메모리 처리 사이즈 지정
//		factory.setSizeThreshold(1 * 1024 * 1024); // 1MB
//
//		// 임시 저장소 설정
//		File repository = new File(req.getServletContext().getRealPath("tmp"));
//		repository.mkdir(); // 임시 저장소 폴더 생성
//		factory.setRepository(repository); // 임시 저장소 폴더 지정
//
//		// 파일업로드 객체 생성
//		ServletFileUpload upload = new ServletFileUpload(factory);
//
//		// 업로드 용량 제한
//		upload.setFileSizeMax(10 * 1024 * 1024); // 10MB
//
//		// 전달 데이터 파싱
//		List<FileItem> items = null;
//		try {
//			items = upload.parseRequest(req);
//		} catch (FileUploadException e) {
//			e.printStackTrace();
//		}
//
//		// 파싱된 전달파라미터를 처리할 반복자
//		Iterator<FileItem> iter = items.iterator();
//
//		while (iter.hasNext()) { // 모든 요청 정보 처리
//			FileItem item = iter.next();
//
//			// --- 1) 빈 파일에 대한 처리 ---
//			if (item.getSize() <= 0) {
//				continue; // 빈 파일은 무시하고 다음 FileItem처리로 넘긴다
//			}
//
////			User_info user_info = new User_info();
//
//			// --- 2) form-data에 대한 처리 ---
//			if (item.isFormField()) {
//				// 키 추출하기
//				String key = item.getFieldName();
//
//				// 값 추출하기
//				String value = null;
//				try {
//					value = item.getString("UTF-8");
//				} catch (UnsupportedEncodingException e1) {
//					e1.printStackTrace();
//				}
//
//				// 키(name)에 따라서 value저장하기
//				if ("user_no".equals(key)) {
//					user_info.setUser_no(Integer.parseInt(value));
//				} else if ("user_password".equals(key)) {
//					user_info.setUser_password(value);
//				} else if ("user_nickname".equals(key)) {
//					user_info.setUser_nickname(value);
//				}
//
//			} // if( item.isFormField() ) end
//
//			// --- 3) 파일에 대한 처리 ---
//			if (!item.isFormField()) {
//
//				// UUID 생성
//				UUID uuid = UUID.randomUUID(); // 랜덤 UUID
//				String uid = uuid.toString().split("-")[0]; // 8자리 uuid
//
//				// 로컬 저장소의 업로드 폴더
//				File upFolder = new File(req.getServletContext().getRealPath("upload"));
//				upFolder.mkdir(); // 폴더 생성
//
//				// 업로드 파일 객체
//				String origin = item.getName(); // 원본파일명
//				String stored = origin + "_" + uid; // 원본파일명_uid
//				File up = new File(upFolder, stored);
//
//				try {
//					item.write(up); // 실제 업로드(임시파일을 최종결과파일로 생성함)
//					item.delete(); // 임시파일을 삭제
//				} catch (Exception e) {
//					e.printStackTrace();
//				}
//
//				attachment = new Attachment();
//				attachment.setOriginal_file_name(origin);
//				attachment.setStored_file_name(stored);
//				attachment.setFile_size((int) item.getSize());
//
//			} // if( !item.isFormField() ) end
//		} // while( iter.hasNext() ) end
//
//		// DB연결 객체
//		Connection conn = JDBCTemplate.getConnection();
//
//
//		if (user_info != null) {
//			if (mypageDao.update(conn, user_info) > 0) {
//				JDBCTemplate.commit(conn);
//			} else {
//				JDBCTemplate.rollback(conn);
//			}
//		}
//
//		if (attachment != null) {
//
//			attachment.setAttach_no(mypageDao.getNextAttachNo(conn));
//
//			if (mypageDao.insertFile(conn, attachment) > 0) {
//				JDBCTemplate.commit(conn);
//			} else {
//				JDBCTemplate.rollback(conn);
//			}
//
//			if (mypageDao.updateProfile(conn, user_info, attachment) > 0) {
//				JDBCTemplate.commit(conn);
//			} else {
//				JDBCTemplate.rollback(conn);
//			}
//
//		}
//
//	}

	@Override
	public Attachment_profile getFile(int user_no) {
		return mypageDao.getByUser_no(JDBCTemplate.getConnection(), user_no);
	}

	@Override
	public User_info getUserInfo(int user_no) {
		return mypageDao.selectUserInfoByUserNo(JDBCTemplate.getConnection(), user_no);
	}

	@Override
	public List<Custom_board> selectAll(int user_no) {
		return mypageDao.customBoardByUserno(JDBCTemplate.getConnection(), user_no);
	}

	
	@Override
	public List<Free_board> selectAll2(int user_no) {
		return mypageDao.freeBoardByUserno(JDBCTemplate.getConnection(), user_no);
	}
	
	
	
	
	@Override
	public void update(HttpServletRequest req) {

//		// 유저정보 DTO객체
		User_info user_info = null;

		// 첨부파일 정보 DTO객체
		Attachment_profile attachment_profile = null;

		// 파일업로드 형태의 데이터가 맞는지 검사
		boolean isMultipart = false;
		isMultipart = ServletFileUpload.isMultipartContent(req);

		if (!isMultipart) {
			System.out.println("[ERROR] multipart/form-data 형식이 아님");

			return;
		}

		user_info = new User_info();

		// 디스크기반 아이템 팩토리
		DiskFileItemFactory factory = new DiskFileItemFactory();

		// 메모리 처리 사이즈 지정
		factory.setSizeThreshold(1 * 1024 * 1024); // 1MB

		// 임시 저장소 설정
		File repository = new File(req.getServletContext().getRealPath("tmp"));
		repository.mkdir(); // 임시 저장소 폴더 생성
		factory.setRepository(repository); // 임시 저장소 폴더 지정

		// 파일업로드 객체 생성
		ServletFileUpload upload = new ServletFileUpload(factory);

		// 업로드 용량 제한
		upload.setFileSizeMax(10 * 1024 * 1024); // 10MB

		// 전달 데이터 파싱
		List<FileItem> items = null;
		try {
			items = upload.parseRequest(req);
		} catch (FileUploadException e) {
			e.printStackTrace();
		}

		// 파싱된 전달파라미터를 처리할 반복자
		Iterator<FileItem> iter = items.iterator();

		while (iter.hasNext()) { // 모든 요청 정보 처리
			FileItem item = iter.next();

			// --- 1) 빈 파일에 대한 처리 ---
			if (item.getSize() <= 0) {
				continue; // 빈 파일은 무시하고 다음 FileItem처리로 넘긴다
			}

//			User_info user_info = new User_info();

			// --- 2) form-data에 대한 처리 ---
			if (item.isFormField()) {
				// 키 추출하기
				String key = item.getFieldName();

				// 값 추출하기
				String value = null;
				try {
					value = item.getString("UTF-8");
				} catch (UnsupportedEncodingException e1) {
					e1.printStackTrace();
				}

				// 키(name)에 따라서 value저장하기
				if ("user_no".equals(key)) {
					user_info.setUser_no(Integer.parseInt(value));
				} else if ("user_password".equals(key)) {
					user_info.setUser_password(value);
				} else if ("user_nickname".equals(key)) {
					user_info.setUser_nickname(value);
				}

			} // if( item.isFormField() ) end

			// --- 3) 파일에 대한 처리 ---
			if (!item.isFormField()) {

				// UUID 생성
//				UUID uuid = UUID.randomUUID(); // 랜덤 UUID
//				String uid = uuid.toString().split("-")[0]; // 8자리 uuid

				// 로컬 저장소의 업로드 폴더
				File upFolder = new File(req.getServletContext().getRealPath("upload"));
				upFolder.mkdir(); // 폴더 생성

				// 업로드 파일 객체
				String origin = item.getName(); // 원본파일명
//				String stored = origin + "_" + uid; // 원본파일명_uid
				File up = new File(upFolder, origin);

				try {
					item.write(up); // 실제 업로드(임시파일을 최종결과파일로 생성함)
					item.delete(); // 임시파일을 삭제
				} catch (Exception e) {
					e.printStackTrace();
				}

				attachment_profile = new Attachment_profile();
				attachment_profile.setProfile_name(origin);

			} // if( !item.isFormField() ) end
		} // while( iter.hasNext() ) end

		// DB연결 객체
		Connection conn = JDBCTemplate.getConnection();


		if (user_info != null) {
			if (mypageDao.update(conn, user_info) > 0) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);
			}
		}

		if (attachment_profile != null) {

			attachment_profile.setProfile_no(mypageDao.getNextProfileNo(conn));

			if (mypageDao.insertFile(conn, attachment_profile) > 0) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);
			}

			if (mypageDao.updateProfile(conn, user_info, attachment_profile) > 0) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);
			}

		}

	}
	
	
	
	
	
}// class
