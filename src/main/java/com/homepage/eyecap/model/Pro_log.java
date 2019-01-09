package com.homepage.eyecap.model;

import java.sql.Date;

public class Pro_log {
	
	private int pro_seq;
	private String pro_name;
	private String pro_date;
	private int pro_hit;
	public int getPro_seq() {
		return pro_seq;
	}
	public void setPro_seq(int pro_seq) {
		this.pro_seq = pro_seq;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public String getPro_date() {
		return pro_date;
	}
	public void setPro_date(String pro_date) {
		this.pro_date = pro_date;
	}
	public int getPro_hit() {
		return pro_hit;
	}
	public void setPro_hit(int pro_hit) {
		this.pro_hit = pro_hit;
	}
	@Override
	public String toString() {
		return "Pro_log [pro_seq=" + pro_seq + ", pro_name=" + pro_name + ", pro_date=" + pro_date + ", pro_hit="
				+ pro_hit + "]";
	}
	
	
	

}
