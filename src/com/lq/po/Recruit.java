package com.lq.po;
/**
 * 招聘信息持久类
 * @author 27602
 *
 */
public class Recruit {
	private int rec_id;
	private String rec_name;
	private int rec_number;
	private String rec_sex;
	private String rec_describe;
	private String rec_city;
	private int rec_pay;
	public int getRec_id() {
		return rec_id;
	}
	public void setRec_id(int rec_id) {
		this.rec_id = rec_id;
	}
	public String getRec_name() {
		return rec_name;
	}
	public void setRec_name(String rec_name) {
		this.rec_name = rec_name;
	}
	public int getRec_number() {
		return rec_number;
	}
	public void setRec_number(int rec_number) {
		this.rec_number = rec_number;
	}
	public String getRec_sex() {
		return rec_sex;
	}
	public void setRec_sex(String rec_sex) {
		this.rec_sex = rec_sex;
	}
	public String getRec_describe() {
		return rec_describe;
	}
	public void setRec_describe(String rec_describe) {
		this.rec_describe = rec_describe;
	}
	public String getRec_city() {
		return rec_city;
	}
	public void setRec_city(String rec_city) {
		this.rec_city = rec_city;
	}
	public int getRec_pay() {
		return rec_pay;
	}
	public void setRec_pay(int i) {
		this.rec_pay = i;
	}
	/*@Override
	public String toString() {
		return "Recruit [rec_id=" + rec_id + ", rec_name=" + rec_name
				+ ", rec_number=" + rec_number + ", rec_sex=" + rec_sex
				+ ", rec_describe=" + rec_describe + ", rec_city=" + rec_city
				+ ", rec_pay=" + rec_pay + "]";
	}*/
}
