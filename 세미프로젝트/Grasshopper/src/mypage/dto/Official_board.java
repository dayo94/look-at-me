package mypage.dto;

import java.util.Date;

public class Official_board {

	
	private int official_board_no;
	private String official_board_title;
	private String official_board_content;
	private Date official_board_date;
	private int official_board_hit;
	@Override
	public String toString() {
		return "Official_board [official_board_no=" + official_board_no + ", official_board_title="
				+ official_board_title + ", official_board_content=" + official_board_content + ", official_board_date="
				+ official_board_date + ", official_board_hit=" + official_board_hit + "]";
	}
	public int getOfficial_board_no() {
		return official_board_no;
	}
	public void setOfficial_board_no(int official_board_no) {
		this.official_board_no = official_board_no;
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
	public int getOfficial_board_hit() {
		return official_board_hit;
	}
	public void setOfficial_board_hit(int official_board_hit) {
		this.official_board_hit = official_board_hit;
	}

	
	
	
}