package dto;

import java.util.Date;

public class Official_board {

	
	private int official_board_no;
	private String board_type;
	private int user_no;
	private int attach_no;
	private String official_board_title;
	private String official_board_content;
	private Date official_board_date;
	private int official_board_vote;
	
	
	@Override
	public String toString() {
		return "Official_board [official_board_no=" + official_board_no + ", board_type=" + board_type + ", user_no="
				+ user_no + ", attach_no=" + attach_no + ", official_board_title=" + official_board_title
				+ ", official_board_content=" + official_board_content + ", official_board_date=" + official_board_date
				+ ", official_board_vote=" + official_board_vote + "]";
	}


	public int getOfficial_board_no() {
		return official_board_no;
	}


	public void setOfficial_board_no(int official_board_no) {
		this.official_board_no = official_board_no;
	}


	public String getBoard_type() {
		return board_type;
	}


	public void setBoard_type(String board_type) {
		this.board_type = board_type;
	}


	public int getUser_no() {
		return user_no;
	}


	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}


	public int getAttach_no() {
		return attach_no;
	}


	public void setAttach_no(int attach_no) {
		this.attach_no = attach_no;
	}


	public String getOfficial_board_title() {
		return official_board_title;
	}


	public void setOfficial_board_title(String official_board_title) {
		this.official_board_title = official_board_title;
	}


	public String getOfficial_board_content() {
		return official_board_content;
	}


	public void setOfficial_board_content(String official_board_content) {
		this.official_board_content = official_board_content;
	}


	public Date getOfficial_board_date() {
		return official_board_date;
	}


	public void setOfficial_board_date(Date official_board_date) {
		this.official_board_date = official_board_date;
	}


	public int getOfficial_board_vote() {
		return official_board_vote;
	}


	public void setOfficial_board_vote(int official_board_vote) {
		this.official_board_vote = official_board_vote;
	}
	
	
	
	
	
}
