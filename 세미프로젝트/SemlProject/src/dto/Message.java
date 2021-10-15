package dto;

import java.util.Date;

public class Message {

	private int msg_no;
	private String mad_send;
	private String msg_rec;
	private String msg_content;
	private String msg_check;
	private Date send_date;
	@Override
	public String toString() {
		return "Message [msg_no=" + msg_no + ", mad_send=" + mad_send + ", msg_rec=" + msg_rec + ", msg_content="
				+ msg_content + ", msg_check=" + msg_check + ", send_date=" + send_date + "]";
	}
	public int getMsg_no() {
		return msg_no;
	}
	public void setMsg_no(int msg_no) {
		this.msg_no = msg_no;
	}
	public String getMad_send() {
		return mad_send;
	}
	public void setMad_send(String mad_send) {
		this.mad_send = mad_send;
	}
	public String getMsg_rec() {
		return msg_rec;
	}
	public void setMsg_rec(String msg_rec) {
		this.msg_rec = msg_rec;
	}
	public String getMsg_content() {
		return msg_content;
	}
	public void setMsg_content(String msg_content) {
		this.msg_content = msg_content;
	}
	public String getMsg_check() {
		return msg_check;
	}
	public void setMsg_check(String msg_check) {
		this.msg_check = msg_check;
	}
	public Date getSend_date() {
		return send_date;
	}
	public void setSend_date(Date send_date) {
		this.send_date = send_date;
	}

	
	
	
	
}
