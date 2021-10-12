package dto;

import java.util.Date;

public class Custom_board {

	
	private int custom_board_no;
	private String board_type;
	private int user_no;
	private int attach_no;
	private String custom_board_title;
	private String custom_board_content;
	private Date custom_board_date;
	private int custom_board_hit;
	private int custom_board_vote;
	
	@Override
	public String toString() {
		return "Custom_board [custom_board_no=" + custom_board_no + ", board_type=" + board_type + ", user_no="
				+ user_no + ", attach_no=" + attach_no + ", custom_board_title=" + custom_board_title
				+ ", custom_board_content=" + custom_board_content + ", custom_board_date=" + custom_board_date
				+ ", custom_board_hit=" + custom_board_hit + ", custom_board_vote=" + custom_board_vote + "]";
	}

	public int getCustom_board_no() {
		return custom_board_no;
	}

	public void setCustom_board_no(int custom_board_no) {
		this.custom_board_no = custom_board_no;
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

	public String getCustom_board_title() {
		return custom_board_title;
	}

	public void setCustom_board_title(String custom_board_title) {
		this.custom_board_title = custom_board_title;
	}

	public String getCustom_board_content() {
		return custom_board_content;
	}

	public void setCustom_board_content(String custom_board_content) {
		this.custom_board_content = custom_board_content;
	}

	public Date getCustom_board_date() {
		return custom_board_date;
	}

	public void setCustom_board_date(Date custom_board_date) {
		this.custom_board_date = custom_board_date;
	}

	public int getCustom_board_hit() {
		return custom_board_hit;
	}

	public void setCustom_board_hit(int custom_board_hit) {
		this.custom_board_hit = custom_board_hit;
	}

	public int getCustom_board_vote() {
		return custom_board_vote;
	}

	public void setCustom_board_vote(int custom_board_vote) {
		this.custom_board_vote = custom_board_vote;
	}
	
	
	
	
	
}
