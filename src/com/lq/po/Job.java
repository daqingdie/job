package com.lq.po;
/**
 * 求职信息持久类
 * @author 流云
 *
 */

public class Job {
	private int job_id;
	private String job_name;
	private String job_type;
	private String job_place;
	private int job_pay;
	private String job_sex;
	private String job_birth;
	private int job_time;
	private String job_education;
	private String job_phone;
	private String job_introduce;
	@Override
	public String toString() {
		return "Job [job_id=" + job_id + ", job_name=" + job_name
				+ ", job_type=" + job_type + ", job_place=" + job_place
				+ ", job_pay=" + job_pay + ", job_sex=" + job_sex
				+ ", job_birth=" + job_birth + ", job_time=" + job_time
				+ ", job_education=" + job_education + ", job_phone="
				+ job_phone + ", job_introduce=" + job_introduce + "]";
	}
	public int getJob_id() {
		return job_id;
	}
	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}
	public String getJob_name() {
		return job_name;
	}
	public void setJob_name(String job_name) {
		this.job_name = job_name;
	}
	public String getJob_type() {
		return job_type;
	}
	public void setJob_type(String job_type) {
		this.job_type = job_type;
	}
	public String getJob_place() {
		return job_place;
	}
	public void setJob_place(String job_place) {
		this.job_place = job_place;
	}
	public int getJob_pay() {
		return job_pay;
	}
	public void setJob_pay(int job_pay) {
		this.job_pay = job_pay;
	}
	public String getJob_sex() {
		return job_sex;
	}
	public void setJob_sex(String job_sex) {
		this.job_sex = job_sex;
	}
	public String getJob_birth() {
		return job_birth;
	}
	public void setJob_birth(String job_birth) {
		this.job_birth = job_birth;
	}
	public int getJob_time() {
		return job_time;
	}
	public void setJob_time(int job_time) {
		this.job_time = job_time;
	}
	public String getJob_education() {
		return job_education;
	}
	public void setJob_education(String job_education) {
		this.job_education = job_education;
	}
	public String getJob_phone() {
		return job_phone;
	}
	public void setJob_phone(String job_phone) {
		this.job_phone = job_phone;
	}
	public String getJob_introduce() {
		return job_introduce;
	}
	public void setJob_introduce(String job_introduce) {
		this.job_introduce = job_introduce;
	}
}