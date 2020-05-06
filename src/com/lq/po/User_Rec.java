package com.lq.po;
/**
 * 招聘者持久类
 * @author 流云
 *
 */
public class User_Rec {
	public int getUr_id() {
		return ur_id;
	}
	public void setUr_id(int ur_id) {
		this.ur_id = ur_id;
	}
	public String getUr_code() {
		return ur_code;
	}
	public void setUr_code(String ur_code) {
		this.ur_code = ur_code;
	}
	public String getUr_password() {
		return ur_password;
	}
	public void setUr_password(String ur_password) {
		this.ur_password = ur_password;
	}
	private int ur_id;
	private String ur_code;
	private String ur_password;
}
