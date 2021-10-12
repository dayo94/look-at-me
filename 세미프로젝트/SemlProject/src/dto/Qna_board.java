package dto;

import java.util.Date;

public class Qna_board {

	
	private int qna_board_no;
	private int user_no;
	private String qna_board_type;
	private String qna_board_content;
	private Date qna_board_date;
	
	@Override
	public String toString() {
		return "Qna_board [qna_board_no=" + qna_board_no + ", user_no=" + user_no + ", qna_board_type=" + qna_board_type
				+ ", qna_board_content=" + qna_board_content + ", qna_board_date=" + qna_board_date + "]";
	}

	public int getQna_board_no() {
		return qna_board_no;
	}

	public void setQna_board_no(int qna_board_no) {
		this.qna_board_no = qna_board_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getQna_board_type() {
		return qna_board_type;
	}

	public void setQna_board_type(String qna_board_type) {
		this.qna_board_type = qna_board_type;
	}

	public String getQna_board_content() {
		return qna_board_content;
	}

	public void setQna_board_content(String qna_board_content) {
		this.qna_board_content = qna_board_content;
	}

	public Date getQna_board_date() {
		return qna_board_date;
	}

	public void setQna_board_date(Date qna_board_date) {
		this.qna_board_date = qna_board_date;
	}

	
	
}
