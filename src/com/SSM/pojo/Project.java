package com.SSM.pojo;


public class Project {
	private int pro_id;
	private int priority;
	private String pro_name;
	private String pro_key;
	private String message;
	private String begin_date;
	private String user_name;
	public int getPro_id() {
		return pro_id;
	}
	public void setPro_id(int proId) {
		pro_id = proId;
	}
	
	public int getPriority() {
		return priority;
	}
	public void setPriority(int prior) {
		priority = prior;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String proName) {
		pro_name = proName;
	}
	public String getPro_key() {
		return pro_key;
	}
	public void setPro_key(String proKey) {
		pro_key = proKey;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getbegin_date() {
		return begin_date;
	}
	public void setbegin_date(String proDate) {
		begin_date = proDate;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String userName) {
		user_name = userName;
	}

	
}
